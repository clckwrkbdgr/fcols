#!/bin/bash
cat test/addcolumn | ./fcols '("' ')'             | diff - test/addcolumn.result || exit 1
cat test/countzero | ./fcols ' ' ' ' ' ' ' '      | diff - test/countzero.result || exit 1
cat test/newrow    | ./fcols '<<' '<<' '<<' '<<'  | diff - test/newrow.result    || exit 1
cat test/qfetch    | ./fcols ' '                  | diff - test/qfetch.result    || exit 1
cat test/spy       | ./fcols '('                  | diff - test/spy.result       || exit 1
