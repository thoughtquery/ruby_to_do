class Task

  def initialize(description, priority, due_date)
    @description = description
    @priority = priority
    @due_date = due_date
  end

  def description
    @description
  end

  def priority
    @priority
  end

  def due_date
    @due_date
  end
end

