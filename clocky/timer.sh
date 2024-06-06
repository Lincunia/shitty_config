if [ $# -lt 1 ]; then
  echo "You can't do that, because you need to put a number for the minutes"
  echo "Usage method: $0 <minutes>"
  echo "Example (for a timer of 31 minutes): $0 31"
  exit 1
fi

alarm="./alarm.mp3"
time="$1*60"
start="$SECONDS"
s=1

function main () {
  echo "Hello, you're in a weird temporizer"
  while [ $s -gt 0 ]; do
    s="$((time - (SECONDS - start)))"
    echo -ne "\r                     \r"
    echo -ne "\r $s seconds left"
    sleep 1
  done
  echo -e "\nTime's up!\n"
  mpv --loop-file=10 "$alarm" 2>/dev/null
  exit 0
}

main
