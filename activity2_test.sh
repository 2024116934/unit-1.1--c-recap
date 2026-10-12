#!/bin/bash
# ELEC2645 activity test

echo "#####################################"
echo "       d[o_0]b ELEC2645 Bot          "
echo "#####################################"
echo "Running tests..."
echo

output=$(./activity2_data_types.out)
status=$?
expected=(
  "10"
  "9.424778"
  "7.068583"
  "7.068583m"
  "Leeds! Leeds! Leeds!"
)

if [ $status -ne 0 ]; then
  echo "Fail: Program crashed"
  exit 1
fi

mapfile -t lines <<< "$output"
failed=0
for i in "${!expected[@]}"; do
  if [ "${lines[$i]}" = "${expected[$i]}" ]; then
    echo "Pass [Line $((i+1))]: '${expected[$i]}'"
  else
    echo "Fail [Line $((i+1))]: Got '${lines[$i]}', Expected '${expected[$i]}'"
    failed=1
  fi
done

if [ "${#lines[@]}" -gt "${#expected[@]}" ]; then
  echo "Fail: Program printed extra lines"
  failed=1
fi

echo
if [ $failed -eq 0 ]; then
  echo "#####################################"
  echo "     d[o_0]b All tests passed :D     "
  echo "#####################################"
  exit 0
else
  echo "#####################################"
  echo "     d[o_0]b Some tests failed :(    "
  echo "#####################################"
  exit 1
fi
