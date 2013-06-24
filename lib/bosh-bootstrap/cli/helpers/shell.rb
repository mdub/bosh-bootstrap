module Bosh::Bootstrap::Cli::Helpers::Shell

  def sh(*command)
    command = command.flatten
    puts "$ #{command.join(' ')}"
    system(*command) || raise("Error running: #{command.inspect}")
  end

end
