class List

  def initialize(list_name)
    @list_name = list_name
    @tasks = []
  end

  def list_name
    @list_name
  end

  def tasks
    @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def display_tasks
    @tasks.each do |task|
      puts task.description
    end
  end
end

