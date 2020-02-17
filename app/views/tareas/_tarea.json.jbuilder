json.extract! tarea, :id, :nombre, :subida, :listo, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
