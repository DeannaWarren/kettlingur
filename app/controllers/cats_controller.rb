class CatsController < ApplicationController
  def index
  end

  def create
  end

  def new
    @cat = Cat.new({gen_one: true})
    if @cat.save
      redirect_to @cat
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def update
  end

  def destroy
  end

 private

  def cat_params
    params.require(:cat).permit(:name, :age, :user_id, :coat_color, :marking_color, :coat_pattern, :marking_pattern, :gen_one)
  end
end
