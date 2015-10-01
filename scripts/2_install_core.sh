#install_core.sh installs packages and gets the code
#and data required for the reference environment.  Configuration
#usually happens later in configure_core.sh unless something 
#depends on it here.

log=/vagrant/temp/install.log
echo Started install_core.sh | tee -a $log

echo Installing packages | tee -a $log
    #numpy/scipy requirements
	sudo apt-get -y install python3-numpy python3-scipy python3-matplotlib ipython3 ipython3-notebook python3-pandas python-sympy python3-nose
	sudo apt-get -y install unzip libxt6 libxtst6
	sudo apt-get -y update 
echo Completed package installation | tee -a $log

echo Getting MATLAB Runtime install files | tee -a $log
wget -q -O MCR_R2015a_glnxa64_installer.zip "http://au.mathworks.com/supportfiles/downloads/R2015a/deployment_files/R2015a/installers/glnxa64/MCR_R2015a_glnxa64_installer.zip"

echo Writing build info into build_info.txt | tee -a $log
printf 'MCR R2015a' >> /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt


echo Getting code | tee -a $log
	git clone https://github.com/uomsystemsbiology/particle_dosimetry.git ~/particle_dosimetry
	echo Writing build info into build_info.txt | tee -a $log
	printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
	date >> /vagrant/temp/build_info.txt
echo Got code | tee -a $log

echo Completed install_core.sh | tee -a $log