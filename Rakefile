desc "link vimrc to ~/.vimrc"
task :link_vim_files do
  %w[ .vimrc .vim ].each do |file|
    dest = File.expand_path("~/#{file}")
    unless File.exist?(dest)
      ln_s(File.expand_path("../#{file}", __FILE__), dest)
    end
  end
end

desc "Pull the latest"
task :pull do
  system "git pull"
end

desc "Getting the latest vundle"
task :get_vundle do
  dest = File.expand_path("~/.vim/bundle")
  unless File.exist?(dest)
    system "git clone http://github.com/gmarik/vundle.git #{dest}/vundle"
  end
end

desc "Install bundles"
task :install_bundles do
  system "vim +BundleInstall! +BundleClean +qa"
end

task :default => [
  :link_vim_files,
  :get_vundle,
  :install_bundles
]

desc "Upgrade vimfiles"
task :upgrade => [:pull, :default]
