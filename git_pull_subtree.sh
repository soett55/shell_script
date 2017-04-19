# initial variable setting
dir_name="mygit"
git_origin_url="https://github.com/blei-lab/edward"

# dir setting
echo "array = ${dir_name}"
mkdir ${dir_name}
git init ${dir_name}
cd ${dir_name}

# git sub directory setting to pull
git remote add -f origin ${git_origin_url}
git config core.sparseCheckout true
echo "docker/" >> .git/info/sparse-checkout
# echo "src/" >> .git/info/sparse-checkout

# pull from origin source
git pull origin master

