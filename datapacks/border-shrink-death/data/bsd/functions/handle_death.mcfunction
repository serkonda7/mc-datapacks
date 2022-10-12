# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

execute if score @p nr_deaths matches 101.. run worldborder add -6
execute if score @p nr_deaths matches 25..100 run worldborder add -4
execute if score @p nr_deaths matches 5..24 run worldborder add -2
execute if score @p nr_deaths matches 1..4 run worldborder add -1
scoreboard players remove @p new_death 1
