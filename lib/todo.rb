class Todo
  def initialize
    @tasks = []
  end

  def create_task(text)
    @tasks << text
  end

  def tasks
    @tasks
  end

  def undone_tasks
    @tasks - @done_task
  end

  def done_tasks(text)
    @done_task = @tasks.select{ |task| task == text}
  end

  def show_done_tasks
    @done_task
  end

  def search(text)
    @tasks.select{ |task| task == text}
  end
end