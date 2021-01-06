#!/bin/bash
echo "delete cscope.files, cscope.out, tags"  
rm -f cscope.files cscope.out tags  
  
echo "create cscope.files"  
find ./ -name '*.cc' -o -name '*.hh' -o -name '*.py' -name '*.cc.inc' >cscope.files
  
echo "cscope add cscope.files"  
cscope -bCkRq -i cscope.files  
  
echo "create tags"  
ctags --c-kinds=+px --c++-kinds=+px  --extra=+q -R  
