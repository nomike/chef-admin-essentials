#!/bin/bash
set -e
ADMIN_ESSENTIALS="git://github.com/sometimesfood/chef-admin-essentials.git"
APT_REPO="git://github.com/sometimesfood/chef-apt-repo.git"
COOKBOOK_DIR=`mktemp -d -t chef-admin-essentials.XXXXXX`
cd ${COOKBOOK_DIR}
git clone ${ADMIN_ESSENTIALS} admin-essentials
git clone ${APT_REPO} apt-repo
sudo -E chef-solo -c admin-essentials/contrib/standalone-config.rb
