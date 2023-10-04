# in case cloud forgot
#git config --global user.email “astrid.elmann@gmail.com”
#git config --global user.name “AddiH”

# in case the local you are working on is outdated (if you’re switching between local, cloud and worker 02)
git pull

# pull from main
git checkout -b roberta-main main
git config pull.rebase false
git pull https://github.com/rbroc/NLP-AU-23.git main


# make changes
git checkout main
git merge --no-ff roberta-main
git push origin main

# delete branch
git branch --delete roberta-main