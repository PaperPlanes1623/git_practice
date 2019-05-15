def puts_git(cmd)
  puts `git #{cmd} -h`
  start_here
end

def start_here
  puts '1: Enter git command'
  puts '2: Exit'
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'
    puts_git(gets.strip)
    start_here
  when 2
    exit
  else
    puts 'Invalid choice'
    start_here
  end
end

start_here
