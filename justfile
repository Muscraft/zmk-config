commit MESSAGE *FLAGS:
  # Commit first to catch any errors git would give
  git commit {{FLAGS}} -m "{{MESSAGE}}"
  keymap parse -c 10 -z config/cradio.keymap >temp.yaml
  keymap draw temp.yaml >sweep.svg
  rm temp.yaml
  git add sweep.svg
  git commit --amend -C HEAD --no-verify

push:
  git push