class ChildrenController < ApplicationController
  def show; end

  def create; end

  def new; end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_child
    @application = Child.find(params[:id])
  end

  def child_params
    params.require(:child).permit(
      :first_name,
      :Middle_initial,
      :last_name,
      :grade,
      :child_address,
      :gender,
      :date_of_birth,
      :child_social_security,
      :medical_conditions,
      :allergies,
      :pediatrician_name,
      :pediatrician_phone,
      :pediatrician_address,
      :photagraphy

    )
  end
end
