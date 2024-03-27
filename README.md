# Adonis-Oops-All-False
This script demonstrates a bypass for the `indexInstance` detector in the Adonis Anti-Cheat system.

**Disclaimer:** This script is for educational purposes only. Using it in a real game environment may violate the game's terms of service and result in penalties.

How it works:

The script modifies the behavior of the `indexInstance` detector's callback function, effectively disabling its ability to detect suspicious activity related to instance indexing.

Here's a breakdown of the process:

1. Finding the relevant table:
- The script iterates through all objects collected by the garbage collector.
- It identifies the table associated with the anti-cheat's `indexInstance` detector by checking for specific keys and values.
2. Modifying the callback function:
- The script replaces the original callback function with a new function that always returns `false`.
- This disables the detection mechanism for suspicious instance indexing behavior.

Example code:
The original callback function in the `indexInstance` detector might look like this:

```lua
function()
  -- ... (code for checking metamethod and calling it with different arguments) ...

  if callstackInvalid or success or success2 or success3 then
    return true
  elseif not errorMessages["indexInstance"] then
    errorMessages["indexInstance"] = {err, err2, err3}
  end

  return not compareTables(errorMessages["indexInstance"], {err, err2, err3})
end
```

The bypass script replaces this function with:

```lua
function() return false end
```

This ensures that the `indexInstance` detector always returns `false`, regardless of the actual behavior of the metamethod.

Limitations:
- This bypass only affects the `indexInstance` detector.
- Anti-cheat developers may update their systems to address such bypasses, rendering this script ineffective.
