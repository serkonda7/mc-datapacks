# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0.
# If a copy of the MPL was not distributed with this file,
# You can obtain one at http://mozilla.org/MPL/2.0/.

# Increment by 2 so the border expands one full block in each direction
execute if score @p should_expand matches 1.. run worldborder add 2
execute if score @p should_expand matches 1.. run scoreboard players remove @p should_expand 1
