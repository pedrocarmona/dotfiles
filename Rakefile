require 'pathname'

LINK_FILES = %w(zshrc aliases gemrc irbrc tmux.conf vimrc vimrc.bundles)

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

desc "Install brew dependencies"
task :dependencies do
  if RUBY_PLATFORM.include?("darwin")
		`brew install tmux` 
    `brew install macvim --override-system-vim` 
    `brew install reattach-to-user-namespace`
	elsif RUBY_PLATFORM.include?("linux")
    `
			if [ ! -e "$HOME"/.vim/autoload/plug.vim ]; then
				curl -fLo "$HOME"/.vim/autoload/plug.vim --create-dirs \
					https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
			fi
			vim -u "$HOME"/.vimrc.bundles +PlugInstall +PlugClean! +qa
		`
	end
end

desc "Install all dotfiles"
task :install => :dependencies do
  LINK_FILES.each do |file|
    _symlink("#{pwd}/#{file}", "#{home}/.#{file}")
  end
end

