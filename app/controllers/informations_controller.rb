class InformationsController < ApplicationController
  def show; end

  def create
    @information = Information.new(information_params)
    respone_to do |format|
      if @information.save
        format.html { redirect_to information_path, notice: ' information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @information = Information.new
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
    @application = Information.find(params[:id])
  end

  def information_params
    params.require(:information).permit(
      :tuition_amount,
      :fequency_id,
      :comments
    )
  end
end
