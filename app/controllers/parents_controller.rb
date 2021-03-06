class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update]
  before_action :authenticate_user!


  def show; end

  def new
    @user = current_user.id
    @apply = Parent.where(user_id: @user)
    if @apply == nil
      @parent = current_user.parents.build
    else
      @parent = @apply
      redirect_to edit_user_parent_path(@user, @apply)
    end
  end

  def create
    @user = current_user.id
    @parent = current_user.parents.build(parent_params)
    respond_to do |format|
      if @parent.save
        format.html { redirect_to "/users/#{@user}/children/new", notice: 'Parent information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to new_user_childs_path, notice: 'Parent information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(
      :parent_type_id,
      :user_id,
      :first_name,
      :Middle_initial,
      :gender_id,
      :last_name,
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
      :marital_status_id,
      addresses_attributes: %i[id name zipcode city state _destroy]
    )
  end
end
