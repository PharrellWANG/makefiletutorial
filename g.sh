#!/usr/bin/env bash
# usage: inside windows git bash, type ``. ./g.sh "YOUR COMMIT MESSAGE"``, done.
MSG=$1 &&
if [[ $MSG ]]; then
    echo "Commit message is $MSG"
    git add -A && git commit -m "$MSG"
else
    echo "No commit message provided, default to ``updates``"
    git add -A && git commit -m 'updates'
fi && git push
# trivial modificatin to try out autotest
