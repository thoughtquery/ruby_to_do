require './lib/task'
require './lib/list'

@list = []
@tasks = []

def main_menu
  loop do
    puts "Press 'n' to add a list"
    puts "Press 's' to show all lists"
    puts "Press 'a' to add a task"
    puts "Press 'l' to list all of your tasks"
    puts "Press 'd' to delete a task."
    puts "Press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_task
    elsif main_choice == 'n'
      add_list
    elsif main_choice == 's'
      show_lists
    elsif main_choice == 'l'
      list_tasks
    elsif main_choice == 'd'
      delete_task
    elsif main_choice== 'x'
      puts "Goodbye!"
      exit
    else
      puts "Sorry, that was not an option."
    end
  end
end

def add_list
  puts "Enter the name of your list here:"
  new_list = gets.chomp
  @list << List.new(new_list)
  puts "List added.\n\n"
end

def add_task
  show_lists
  puts "Enter the number of the list you would like to add a task to"
  list_selection = gets.chomp.to_i
  puts "Enter a description of the new task:"
  user_description = gets.chomp
  puts "Enter the priority level of your task from 1-5."
  user_priority = gets.chomp.to_i
  newTask = Task.new(user_description, user_priority)
  @list[list_selection].add_task(newTask)
  puts "Task added.\n\n"
end

def delete_task
  puts show_lists
  puts "Which list would you like to edit?"
  list_deletion = gets.chomp.to_i
  @list[list_deletion].tasks.each_with_index do |x, index|
    puts "#{index}. #{x.description}"
  end
  puts "Enter the number of the task you would like deleted"
  delete_index = gets.chomp.to_i

  @list[list_deletion].tasks.delete_at(delete_index)
  puts "your task was deleted"
end

def show_lists
  puts "Here are the lists:"
  @list.each_with_index do |x, index|
    puts x.list_name + ' ' + index.to_s
  end
  puts "\n"
end

def list_tasks
  show_lists
  puts "Enter the number of the list you would like to explore"
  list_selection = gets.chomp.to_i
  puts "Here are all of your tasks:"
  @list[list_selection].display_tasks
  puts "\n"
end

main_menu
