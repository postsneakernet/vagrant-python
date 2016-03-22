# non-privileged
cd ~/
git clone https://github.com/postsneakernet/cmkproject.git

cd ~/cmkproject
chmod +x cmkproject.py

echo $'\n' >> ~/.profile
echo "# cmkproject settings" >> ~/.profile
echo "export PATH=$HOME/cmkproject:$PATH" >> ~/.profile
echo "export C_PROJECT_ROOT=/vagrant/projects/cdev/" >> ~/.profile
echo "export C_PROJECT_AUTHOR=vagrant" >> ~/.profile