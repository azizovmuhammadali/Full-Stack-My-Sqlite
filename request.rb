require_relative 'my_sqlite_request'

class MySqliteCLI
  def initialize
    @request = nil
  end

  def start
    puts "MySQLite version 0.1 #{Time.now.strftime('%Y-%m-%d')}"
    loop do
      print 'my_sqlite_cli> '
      input = gets.chomp
      break if input == 'quit'

      process_input(input)
    end
  end

  private

  def process_input(input)
    command, *args = input.split

    case command
    when 'SELECT'
      @request = MySqliteRequest.new.from(args[1]).select(args[3..-1])
    when 'INSERT'
      @request = MySqliteRequest.new.insert(args[2])
    when 'UPDATE'
      @request = MySqliteRequest.new.update(args[1])
    when 'DELETE'
      @request = MySqliteRequest.new.delete.from(args[2])
    else
      puts "Unknown command: #{command}"
      return
    end

    execute_request
  end

  def execute_request
    result = @request.run
    result.each { |row| puts row }
  end
end

cli = MySqliteCLI.new
cli.start
