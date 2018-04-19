CHEF COMMANDS:

<!-- compiles rb file seperately-->
chef-apply filename.rb

<!-- generates cookbook -->
chef generate cookbook <cookbookname>

<!-- compiles cookbook -->
chef-client --local-mode --runlist 'recipe[<cookbookname>]'

<!-- put cookbooks in cookbooks directory -->
chef  generate template <cookbookname> <filename.html>