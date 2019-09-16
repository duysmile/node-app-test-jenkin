# Documentation for install Jenkins
- Recommended hardware configuration for a small team:
  - 1 GB+ of RAM
  - 50 GB+ of drive space
## Install Jenkins:
- Refer to the following link: https://jenkins.io/doc/book/installing/
  - Debian/Ubuntu:
  > wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    sudo apt-get update
    sudo apt-get install jenkins
    
- When Jenkins is installed, it's now at **localhost:8080**.
<img src="https://miro.medium.com/max/1338/1*5ZOLIml6glgTRPmImNsFoA.png" />
- Create a admin user for Jenkins
- Click on **New Item** button or **create new job**, name the item **\<app-name\>** and select **Build a free-style software project** option and click the **OK** button.
- Add Build Step: Click on **Add Build Step** button and select **Execute Shell** option. Enter the the command you want to execute. Example:
> ssh -tt <your-name>@<ip-server> <<EOF
  sudo -s
  cd <absolute-path-to-your-app>
  git pull
  npm install
  pm2 restart all
  exit
  exit
  EOF
  
- Now when you want to build, you only need to click **Build now**.
- You can configure more plugin like **Bitbucket Plugin** and webhook for auto deployment.
