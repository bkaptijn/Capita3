#!/bin/bash

echo version: "\"3.1\"" > train.yml
echo >> train.yml
echo nlu: >> train.yml
sed -i -- 's/^\#\#/ -/g' train.md
sed -e '/^ - intent/a\'$'\n''   examples: |' train.md >> train2.md
sed -i -- 's/^  -/    -/g' train2.md
sed  -- 's/^ - intent:/ - intent: /g' train2.md >> train.yml
rm train.md
rm train2.md

echo version: "\"3.1\"" > test.yml
echo >> test.yml
echo nlu: >> test.yml
sed -i -- 's/^\#\#/ -/g' test.md
sed -e '/^ - intent/a\'$'\n''   examples: |' test.md >> test2.md
sed -i -- 's/^  -/    -/g' test2.md
sed  -- 's/^ - intent:/ - intent: /g' test2.md >> test.yml
rm test.md
rm test2.md
