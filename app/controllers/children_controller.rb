class ChildrenController < ApplicationController
  before_action :set_child, only: %i[show edit update]

  def show; end

  def create
    @child = Child.new(child_params)
    respone_to do |format|
      if @child.save
        format.html { redirect_to parent_path, notice: 'Parent information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @child = Child.new
   end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_child
    @child = Child.find(params[:id])
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
