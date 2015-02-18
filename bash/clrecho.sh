function initializeANSI() {
  esc=""

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"
  
  blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
  yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
  cyanb="${esc}[46m";    whiteb="${esc}[47m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}

initializeANSI
RES_COL=60
MOVE_TO_COL="echo -n ${esc}[${RES_COL}G"
SETCOLOR_SUCCESS="echo -n ${greenf}"
SETCOLOR_FAILURE="echo -n ${redf}"
SETCOLOR_WARNING="echo -n ${yellowf}"
 SETCOLOR_NORMAL="echo -n ${reset}"

function echo_success() {
  echo -n $1 && $MOVE_TO_COL
  echo -n "[" && $SETCOLOR_SUCCESS
  echo -n $"  OK  " && $SETCOLOR_NORMAL
  echo -n "]"
  echo
  return 0
}

function echo_failure() {
  echo -n $1 && $MOVE_TO_COL
  echo -n "[" && $SETCOLOR_FAILURE
  echo -n $"FAILED" && $SETCOLOR_NORMAL
  echo -n "]"
  echo
  return 1
}

function echo_passed() {
  echo -n $1 && $MOVE_TO_COL
  echo -n "[" && $SETCOLOR_WARNING
  echo -n $"PASSED" && $SETCOLOR_NORMAL
  echo -n "]"
  echo
  return 1
}

function echo_warning() {
  echo -n $1 && $MOVE_TO_COL
  echo -n "[" && $SETCOLOR_WARNING
  echo -n $" WARN " && $SETCOLOR_NORMAL
  echo -n "]"
  echo
  return 1
}