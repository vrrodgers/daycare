class InformationsController < ApplicationController
  before_action :set_information, only: [:show, :edit, :update]

  def show; end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    respone_to do |format|
      if @information.save
        format.html { redirect_to new_family_path, notice: ' information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    if @information.update(information_params)
      flash[:success] = 'Information was created '
    else
      render 'edit'
    end
  end

  def destroy; end

  private

  def set_information
    @information = Information.find(params[:id])
  end

  def information_params
    params.require(:information).permit(
      :tuition_amount,
      :frequency_id,
      :comments
    )
  end
end
