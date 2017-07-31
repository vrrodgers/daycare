class ParentsController < ApplicationController
  before_action :set_parent, only: %i[show edit update]

  def show; end

  def create
    @parent = Parent.new(parent_params)
    respone_to do |format|
      if @parent.save
        format.html { redirect_to child_path, notice: 'Parent information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @parent = Parent.new
  end

  def edit; end

  def update
    if @parent.update(parent_params)
      flash[:success] = 'Parent was created '
    else
      render 'edit'
    end
  end

  private

  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(
      :parent_type_id,
      :first_name,
      :Middle_initial,
      :last_name,
      :address,
      :occupation,
      :home_phone,
      :employed_by,
      :office_phone,
      :work_address,
      :work_hours,
      :cell_phone,
      :custodial_parent,
      :mother_social,
      :email,
      :driver_license_number,
      :marital_status_id
    )
  end
end
