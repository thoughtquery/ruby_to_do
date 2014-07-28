require './lib/task'

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
  list_name = gets.chomp
  @list << List.new(list_name)
  puts "List added.\n\n"
end

def add_task
  puts "Enter a description of the new task:"
  user_description = gets.chomp
  @tasks << Task.new(user_description)
  puts "Task added.\n\n"
end

def delete_task
  list_tasks
  puts "Enter the number of the task you would like deleted"
  delete_index = gets.chomp.to_i
  @tasks.delete_at(delete_index)
  list_tasks
end

def show_lists
  puts "Here are the lists:"
  @list.each_with_index do |list, index|
    puts list.list_name + ' ' + index.to_s
  end
  puts "\n"
end

def list_tasks
  puts "Here are all of your tasks:"
  @tasks.each_with_index do |task, index|
    puts task.description + ' '+ index.to_s
  end
  puts "\n"
end

main_menu
