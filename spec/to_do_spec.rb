require 'rspec'
require 'task'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('clean your room')
    expect(test_task).to be_an_instance_of Task
  end
end

describe List do
  it 'is initialized with an empty array' do
    test_list = List.new('home')
    expect(test_list).to be_an_instance_of List
  end

  it "adds new tasks to the tasks array" do
    test_list = List.new('home')
    test_task = Task.new('clean your room')
    test_list.add_task(test_task)
    expect(test_list.tasks).to eq [test_task]
  end
end
