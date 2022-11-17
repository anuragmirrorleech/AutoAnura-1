if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anuragmirrorleech/AutoAnura-1 /AutoAnura-1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoAnura-1
fi
cd /AutoAnura-1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
