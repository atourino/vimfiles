desc "link vimrc to ~/.vimrc"
task :link_vim_files do
  %w[ .vimrc .vim ].each do |file|
    dest = File.expand_path("~/#{file}")
    unless File.exist?(dest)
      ln_s(File.expand_path("../#{file}", __FILE__), dest)
    end
  end
end

task :default => [
  :link_vim_files
]
