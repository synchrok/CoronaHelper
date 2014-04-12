# CoronaHelper

Helper Classes for Corona SDK
 * Helper
 * Eventer (Management Class for EventListener)
 * Resourcer (Management Class for Resources)

## Usage & Examples

### Herlper

First, Import helper class.
    
    require("helper")

...

### Eventer

###### First, create eventer object with import eventer class.
    
    local eventner = require("eventer"):new()

###### Second, add any event listeners with using eventer class.
(Example: Runtime-enterFrame)

	local function enterFrame(e)
		...
	end
	eventer:add(Runtime, "enterFrame", enterFrame)

or

	eventer:add(Runtime, "enterFrame", function(e)
		...
	end, "update")

###### Third, remove eventer listeners with using eventer class.

	eventer:remove("enterFrame")

or using event tag

	evneter:remove("update")
	
or remove all listeners

    eventer:clear()

...

### Resourcer

First, Import resourcer class.
    
    require("resourcer")

...

## License

WTFPL(Do What the Fuck You Want to Public License)

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
Version 2, December 2004

Copyright (C) 2014 Woosung Jeon (synchrok, ceo@viewide.kr)

Everyone is permitted to copy and distribute verbatim or modified
copies of this license document, and changing it is allowed as long
as the name is changed.

DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE
TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

0. You just DO WHAT THE FUCK YOU WANT TO.
