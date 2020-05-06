#!/bin/bash

# this install and configures git-secrets in a nice way.
# https://github.com/awslabs/git-secrets/blob/master/README.rst

# update repo
echo -n 'Clone the repo...'
git clone https://github.com/awslabs/git-secrets.git
cd git-secrets && make install
echo "done! ✓"

# add hooks to everything in the future
echo -n 'setting up global config...'
# git secrets --install ~/.git-templates/git-secrets 2>/dev/null
git secrets --register-aws --global 2>/dev/null
git config --global init.templateDir ~/.git-templates/git-secrets 2>/dev/null
echo "done! ✓"

# patterns we want to avoid
echo -n 'adding default pattern matching for passwords...'
git secrets --add '.*[pP][aA][sS][sS][wW][oO][rR][dD]\s*[:=]\s*.+' --global
git secrets --add '.*[sS][eE][cC][rR][eE][tT]\s*[:=]\s*.+' --global
git secrets --add '.*[aA][uU][tT][hH][oO][rR][iI][zZ][aA][tT][iI][oO][nN]\s*[:=]\s*.+' --global
git secrets --add '.*[tT][oO][kK][eE][nN]\s*[:=]\s*.+' --global
git secrets --add --allowed '/*/*/*REMOVED/*/*/*' --global
git secrets --add --allowed --literal '1234567890' --global
git secrets --add --allowed --literal '0987654321' --global
git secrets --add --allowed --literal 'docker_password' --global
git secrets --add --allowed --literal 'cassandra' --global
git secrets --add --allowed --literal 'gopass' --global
git secrets --add --allowed --literal "''" --global
echo "done! ✓"