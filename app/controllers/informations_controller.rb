class InformationsController < ApplicationController
  def show
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_information
    @application = Information.find(params[:id])
  end

  def information_params
    params.require(:information).permit(
                                        :tuition_amount,
                                        :fequency_id,
                                        :comments,

                                        )


end
