class FamiliesController < ApplicationController
  def create
    @family = Family.new(parent_params)
    respone_to do |format|
      if @parent.save
        format.html { redirect_to family_path, notice: 'Parent information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @family = Family.new
  end

  def edit; end

  def update
    if @family.update(parent_params)
      flash[:success] = 'Family was created '
    else
      render 'edit'
    end
  end

  def destroy
    @family.destroy
    redirect_to root_path
  end

  private

  def set_family
    @family = Family.find(params[:id])
  end

  def family_params
    params.require(:family).permit(
      :pick_up_name,
      :pick_up_phone,
      :relationship_to_child,
      :pin,
      :pick_up
    )
  end
end
