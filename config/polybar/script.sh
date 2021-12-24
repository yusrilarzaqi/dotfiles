#!/usr/bin/env bash


get_percent(){
  used_mem_mb=$(free -h | awk '/^Mem/ {print $3}' | sed s/i//g)

  echo $used_mem_mb
}

main(){
  ram_percent=$(get_percent)
  echo "$ram_percent"
}


#run main driver
main
