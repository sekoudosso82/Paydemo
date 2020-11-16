class ItemsController < ApplicationController
    before_action :find_item, only: [:edit, :update, :destroy]
  # require "rubygems"
  # require "braintree"

  # Braintree::Configuration.environment => :sandbox,
  # Braintree::Configuration.merchant_id => "nrydrytj95n6j784",
  # Braintree::Configuration.public_key => "3pvq3t2ffk34xrwx",
  # Braintree::Configuration.private_key => "8dbb226c40a3317e53e67b248c2d4728",

    # def checkout 
    #   nonce = params[:payment_method_nonce]
    #   result = Braintree::Transaction.sale(
    #     :amount => params[:price],
    #     :payment_method_nonce => nonce,
    #     :option => {
    #       :submit_for_settlement => true
    #     }
    #   )
    # end

    def index 
      @items = Item.all
      @new_item = Item.new 
    #   render :index
    end 
  
    def show 
        @item = Item.find(params[:id])
        # token 
        @token = Braintree::clientToken.generate
      # render :show
    end
    
    def new 
      @item = Item.new
      @errors = flash[:errors]
    #   render :new 
    end 
    
    def create 
      @item = Item.create(item_params)
      if @item.valid?
        redirect_to items_path(@item)
      else
        flash[:errors] = @item.errors.full_messages
        redirect_to new_item_path
      end 
      
    end 
    
    def edit 
    #   @item = Item.find(params[:id])
      render :edit
    end 
    
    def update
      if @item.update(item_params)
        redirect_to item_path(@item.id)
      else
        flash[:errors] = @item.errors.full_messages
        redirect_to edit_item_path(@item)
      end  
    end 

    def destroy 
    #   @item = Item.find(params[:id])
      @item.destroy 
      redirect_to items_path(@item)
    end 
  
    private 
  
    def item_params 
      params.require(:item).permit(:user_id, :description, :img_url, :price)
    end 
  
    def find_item
      @item = Item.find(params[:id])
    end 

end
