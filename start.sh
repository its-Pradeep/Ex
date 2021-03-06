if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/its-Pradeep/Ex.git /Ex
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ex
fi
cd /Ex
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
