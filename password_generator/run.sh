docker build -t passgen  . ; docker run passgen 2>clearpass.txt | sort | uniq | sed '/^$/d' | tee passwords
cat clearpass.txt | sort | uniq > users && rm clearpass.txt