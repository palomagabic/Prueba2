class TareasController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  # GET /tareas
  # GET /tareas.json
  def index
    @tareas = Tarea.all
    @tareapositivas = Tarea.where(listo: true)
  end

  # GET /tareas/1
  # GET /tareas/1.json
  def show
    @tareapositivas = Tarea.where(listo: true)
    @tareas = Tarea.all
  end

  # GET /tareas/new
  def new
    @tarea = Tarea.new
    @tareapositivas = Tarea.where(listo: true)
    @tareas = Tarea.all
  end

  # GET /tareas/1/edit
  def edit
    @tareas = Tarea.all
    @tareapositivas = Tarea.where(listo: true)
  end

  # POST /tareas
  # POST /tareas.json
  def create
    @tareas = Tarea.all
    @tareapositivas = Tarea.where(listo: true)
    @tarea = Tarea.new(tarea_params)

    respond_to do |format|
      if @tarea.save
        format.html { redirect_to @tarea, notice: 'Tarea was successfully created.' }
        format.json { render :show, status: :created, location: @tarea }
      else
        format.html { render :new }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tareas/1
  # PATCH/PUT /tareas/1.json
  def update
    @tareas = Tarea.all
    @tareapositivas = Tarea.where(listo: true)
    respond_to do |format|
      if @tarea.update(tarea_params)
        format.html { redirect_to root_path, notice: 'Tarea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tarea }
      else
        format.html { render :edit }
        format.json { render json: @tarea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tareas/1
  # DELETE /tareas/1.json
  def destroy
    @tareapositivas = Tarea.where(listo: true)
    @tarea.destroy
    respond_to do |format|
      format.html { redirect_to tareas_url, notice: 'Tarea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    def correct_user
      @tareas = current_user.tareas.find_by(id: params[:id])
      redirect_to tareas_path, notice: "¡No estás autorizada/o para editar este post!" if @tarea.nil?
    end

    # Only allow a list of trusted parameters through.
    def tarea_params
      params.require(:tarea).permit(:nombre, :image, :subida, :listo, :user_id)
    end
end
