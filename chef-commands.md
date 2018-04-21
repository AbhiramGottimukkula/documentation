CHEF COMMANDS:

<!-- compiles rb file seperately-->
chef-apply filename.rb

<!-- generates cookbook -->
chef generate cookbook <cookbookname>

<!-- compiles cookbook -->
chef-client --local-mode --runlist 'recipe[<cookbookname>]'

<!-- put cookbooks in cookbooks directory -->
chef  generate template <cookbookname> <filename.html>

template '/var/www/html/index.html' do
	source 'index.html.erb'
end
/home/ubuntu/chef-assignments

bash 'install_something' do
  user 'root'
  cwd '/home/ubuntu/zipptest'
  code <<-EOH
  wget http://www.example.com/tarball.tar.gz
  tar -zxf tarball.tar.gz
  cd tarball
  ./configure
  make
  make install
  EOH

================================
CHEF ADVANCE:
================================
Installing chef-server

