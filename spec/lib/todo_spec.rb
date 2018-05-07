require 'todo'
describe Todo do
  before do
    @todo = Todo.new
  end

  it "create task" do
    @todo.create_task("cucumber test")
    expect(@todo.tasks).to eq ["cucumber test"]
  end

  it "show undone tasks" do
    @todo.create_task("manual test")
    @todo.create_task("cucumber test")
    @todo.done_tasks("manual test")
    expect(@todo.undone_tasks).to eq ["cucumber test"]
  end

  it "show done tasks" do
    @todo.create_task("manual test")
    @todo.create_task("cucumber test")
    @todo.done_tasks("manual test")
    expect(@todo.show_done_tasks).to eq ["manual test"]
  end

  it "search task" do
    @todo.create_task("manual test")
    @todo.create_task("cucumber test")
    expect(@todo.search("cucumber test")).to eq ["cucumber test"]
  end

  it "advance search" do
    #TODO:I'm stuck here, how can we implement advance search?
    # @todo.create_task("manual test")
    # @todo.create_task("cucumber test")
    # expect(@todo.search("test")).to eq ["cucumber test", "manual test"]
  end
end