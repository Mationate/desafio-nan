class WorksController < ApplicationController
  before_action :set_proyect
  before_action :set_person
  def new
    @work = Work.new
  end
  
  def create
    work = Work.new(work_params)
    work.proyect = @proyect
    work.person = @person
    if work.save
      redirect_to @proyect, notice: 'Se ha añadido un trabajador al proyecto'
    else
      redirect_to new_proyect_person_work_path(@proyect, @person), alert: 'Hubo un error, intente nuevamente.'
    end
  end

  def destroy
    work = Work.
  end
  
  private

  def set_proyect
    @proyect = Proyect.find(params[:proyect_id])
  end

  def set_person
    @person = Person.find(params[:person_id])
  end

  def work_params
    params.require(:work).permit(:fee, :start_date, :finish_date)
  end
  
  
end
