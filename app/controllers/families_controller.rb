class FamiliesController < ApplicationController
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

  def set_family
    @application = family.find(params[:id])
  end

  def family_params
    params.require(:family).permit(
                                  :pick_up_name,
                                  :pick_up_phone,
                                  :relationship_to_child,
                                  :pin,
                                  :pick_up,


                                  )


end
