class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = activity.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to new_childs_path, notice: 'events information saved.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to new_childs_path, notice: 'events information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  private

  def set_event
    @event = Event.find(params[:id])
  end
  def event_params
    params.require(:events).permit(
                                    :name,
                                    :date,
                                    :cost,
                                    :description,
                                    :comments
                                    )
  end

end
