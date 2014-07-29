require 'rspec'
require 'task'
require 'list'

describe Task do
  it 'is initialized with a description and priority' do
    test_task = Task.new('clean your room', 5)
    expect(test_task).to be_an_instance_of Task
    expect(test_task.description).to eq ('clean your room')
    expect(test_task.priority).to eq (5)
  end
end

describe List do
  it 'is initialized with an empty array' do
    test_list = List.new('home')
    expect(test_list).to be_an_instance_of List
  end

  it "adds new tasks to the tasks array" do
    test_list = List.new('home')
    test_task = Task.new('clean your room', 5)
    test_list.add_task(test_task)
    expect(test_list.tasks).to eq [test_task]
  end
end
