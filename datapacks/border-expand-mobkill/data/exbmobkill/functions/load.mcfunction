# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

scoreboard objectives add should_expand totalKillCount
scoreboard objectives add nr_kills totalKillCount

execute as @p at @s align xyz run worldborder center ~.0 ~.0
execute as @p run worldborder set 1

gamerule spawnRadius 0
