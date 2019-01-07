class DetailsController < ApplicationController
  before_action :set_detail, only: [:show, :edit, :update]
  before_action :authenticate_user!


  def create
    @user = current_user.id
    @detail = current_user.details.build(detail_params)
     @detail = detail.new(detail_params)
    respone_to do |format|
      if @detail.save
        format.html { redirect_to "/users/#{@user}/families/new", notice: ' Information was saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @detail = current_user.details.build
  end

  def show; end

  def edit; end

  def update
    if @detail.update(detail_params)
      flash[:success] = 'detail was created '
    else
      render 'edit'
    end
  end

  def destroy; end

  private

  def set_detail
    @detail = detail.find(params[:id])
  end

  def detail_params
    params.require(:detail).permit(
      :tuition_amount,
      :user_id,
      :frequency_id,
      :comments
    )
  end
end
