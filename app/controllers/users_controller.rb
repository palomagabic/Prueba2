class UsersController < ApplicationController
  def index
    @tareas = Tarea.all
    @tareapositivas = Tarea.where(listo: true)
    @tareanegativas = Tarea.where.not(listo: true)
  end

  def positive
    @tareapositivas = Tarea.where(listo: true)
  end

  def negative
    @tareanegativas = Tarea.where.not(listo: true)
  end

  def like
  @tareas = Tarea.find(params[:id])
  @tareas.liked_by current_user

    if request.xhr?
      head :ok
    else
      redirect_to @tareas
    end
  end

end
