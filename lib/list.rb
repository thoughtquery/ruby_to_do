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
      puts task.description + ", " + "priority level:" + " " + "#{task.priority}" + ", due by: " + "#{task.due_date}"
    end
  end

  def priority_sort
    @tasks.sort!  { |x,y| y.priority <=> x.priority }
  end

  def date_sort
    @tasks.sort!  { |x,y| x.due_date  <=> y.due_date }
  end
end

