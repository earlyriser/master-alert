#!/bin/bash
if [ -z "$1" ]; then
    echo "Specify repository to install pre-push hook"
    exit 0
fi

TARGET_REPO=$1
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
PRE_PUSH=$TARGET_REPO/.git/hooks/pre-push

if which start >/dev/null; then
    PLAYER=start
else
    echo "Could not find start (windows)"
    exit 0
fi

cat > $PRE_PUSH <<EOL
#!/bin/bash
mysound="$DIR/sound.wav"
target_branch='master'
current_branch=\$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
if [[ \$current_branch = \$target_branch ]]; then
	start \$mysound
fi

EOL
chmod +x $PRE_PUSH
echo "Created pre-push hook in $TARGET_REPO"
exit 1
