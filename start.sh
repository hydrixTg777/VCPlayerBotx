echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/Hydrayt777/VCPlayerBotx /VCPlayerBotx
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/Hydrayt777/VCPlayerBotx -b $BRANCH /VCPlayerBotx
fi
cd /VCPlayerBotx
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
