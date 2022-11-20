# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

execute if score @p nr_kills matches 500.. run worldborder add 0.25
execute if score @p nr_kills matches 50..499 run worldborder add 0.5
execute if score @p nr_kills matches 10..49 run worldborder add 1
execute if score @p nr_kills matches 1..9 run worldborder add 2

scoreboard players remove @p should_expand 1
