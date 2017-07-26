class AppliesController < ApplicationController
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
    def set_apply
      @application = Apply.find(params[:id])
    end

    def apply_params
      params.require(:apply).permit(
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
                                    :maritial_status_id,
                                    )
    end
end
