json.extract! job, :id, :title, :description, :location, :job_benefits, :job_task, :job_link, :job_salary, :job_type, :created_at, :updated_at
json.url job_url(job, format: :json)
