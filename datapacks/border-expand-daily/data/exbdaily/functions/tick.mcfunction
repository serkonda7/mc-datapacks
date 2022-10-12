# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

execute store result score $days day_count run time query day

execute if score $days day_count > $days last_day run worldborder add 2
execute if score $days day_count > $days last_day run scoreboard players add $days last_day 1
