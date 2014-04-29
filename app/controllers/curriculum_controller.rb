class CurriculumController < ApplicationController
  before_action :set_curriculum, only: [:show, :edit, :update, :destroy]

  def new
    @curriculum = Curriculum.new
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)
    if @curriculum.save
      flash[:notice] = 'Curriculum Created'
      redirect_to new_curriculum_path(@curriculum)
    else
      flash[:notice] = @curriculum.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @curriculum.destroy
    redirect_to curriculum_index_path
  end

  def index
    @curriculums = Curriculum.all.order(:created_at)
  end

  def show
  end


  private

  def set_curriculum
    @event = Curriculum.find(params[:id])
  end

  def curriculum_params
    params[:curriculum].permit(:title, :desc, :goals)
  end
end
