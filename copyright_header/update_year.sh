#!/bin/bash
OLD_YEAR='2016'
NEW_YEAR='2017'
grep -rli "2010-$OLD_YEAR" * | xargs -i@ sed -i "s/2010-$OLD_YEAR/2010-$NEW_YEAR/" @
grep -rli "2013-$OLD_YEAR" * | xargs -i@ sed -i "s/2013-$OLD_YEAR/2013-$NEW_YEAR/" @
