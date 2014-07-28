require 'rspec'
require 'task'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('clean your room')
    expect(test_task).to be_an_instance_of Task
  end
  it 'lets the user mark a task as done and have it removed from the list' do
    test_task = Task.new('clean your room')
    expect(test_task.description).to eq ''
  end
end
