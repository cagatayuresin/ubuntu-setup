# ubuntu-setup
A bash script to setting up for any Ubuntu which is very new as a root user.

## Usage
Just copy-paste the command below. REMEMBER, YOU MUST BE ROOT USER!
```bash
git clone https://github.com/cagatayuresin/ubuntu-setup.git && chmod +x ubuntu-setup/setup.sh && ./ubuntu-setup/setup.sh
```
If GIT is not pre-installed on your Ubuntu image, you should install by this command before the setup command above.
```bash
apt-get update && apt-get upgrade -y && apt-get install git -y && git --version
```
