class CategoriesController < ApplicationController
    layout 'index'
    def index
        @categories = Category.all
    end

    def new
    end

    def create
        # render plain: params[:categories].inspect
        @category = Category.new(category_params)
        @category.save
            @categories = Category.all
            flash[:message] = 'Successfully created...'
            render 'index'
    end

    def edit
        @category = Category.find(params[:id])
    end

    def show
        
    end

    def destroy
        
    end

    private
        def category_params
            params.require(:categories).permit(:name, :status)
        end
end
