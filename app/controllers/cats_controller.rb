class CatsController < ApplicationController
  def index
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.name = "Unnamed"
    @cat.age = 0
    @cat.user_id = current_user.id
    if @cat.gen_one == true
      @cat.coat_color = 0
      @cat.marking_color = 0
      @cat.coat_pattern = 0
      @cat.marking_pattern = 0
    else
      #breeding logic here
    end
    if @cat.save
      redirect_to @cat
    else
      render 'new'
    end
  end

  def new
    @cat = Cat.new(gen_one: true)
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
