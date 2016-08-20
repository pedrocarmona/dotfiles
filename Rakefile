require 'pathname'

LINK_FILES = %w(bashrc bash_aliases bash_profile gemrc irbrc tmux.conf)

def stop_error(message)
  puts "ERROR: #{message}"
  exit(1)
end

def _symlink(target, link)
  puts "Linking #{link} => #{target}"
  if File.exist?(link) && Pathname.new(link).realpath.to_s != target
    stop_error("File exists: #{link}")
  elsif !File.exist?(link)
    File.symlink(target, link)
    puts
  end
end

def home
  ENV['HOME']
end

def pwd
  File.dirname(__FILE__)
end

desc "Install all dotfiles"
task :install do
  LINK_FILES.each do |file|
    _symlink("#{pwd}/#{file}", "#{home}/.#{file}")
  end
end
