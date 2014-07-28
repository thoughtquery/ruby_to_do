require './lib/task'

@list = []

def main_menu
  loop do
    puts "Press 'a' to add a task or 'l' to list all of your tasks or 'd' to delete a task."
    puts "press 'x' to exit."
    main_choice = gets.chomp
    if main_choice == 'a'
      add_task
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

def add_task
  puts "Enter a description of the new task:"
  user_description = gets.chomp
  @list << Task.new(user_description)
  puts "Task added.\n\n"
end

def delete_task
  list_tasks
  puts "Enter the number of the task you would like deleted"
  delete_index = gets.chomp.to_i
  @list.delete_at(delete_index)
  list_tasks
end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each_with_index do |task, index|
    puts task.description + ' '+ index.to_s
  end
  puts "\n"
end

main_menu
