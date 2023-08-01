# Update your system
sudo apt update -y
sudo apt upgrade -y

# Add the Jenkins repository to your system:
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update your package lists and install Jenkins:
sudo apt update -y
sudo apt install jenkins -y

#Install java
sudo apt install openjdk-11-jre-headless -y

# Start Jenkins:
sudo systemctl start jenkins

# Enable Jenkins
sudo systemctl enable jenkins

# Check the status of Jenkins:
sudo systemctl status jenkins
================================================
    1  sudo apt update
    2  sudo apt upgrade
    3  curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
    4  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
    5  sudo apt update
    6  sudo apt install jenkins
    7  sudo journalctl -xe
    8  sleep 5
    9  sudo service jenkins start
   10  sudo reboot
   11  sudo service jenkins start
   12  sudo journalctl -xe
   13  java --version
   14  sudo apt remove jenkins
   15  sudo apt install openjdk-11-jre-headless
   16  sudo apt install jenkins
   17  java --version
   18  sudo service jenkins start
   19  sudo service jenkins eneble
   20  sudo service jenkins status
   21  history
