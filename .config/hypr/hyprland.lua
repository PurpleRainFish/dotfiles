-- This is an example Hyprland Lua config file.
-- Refer to the wiki for more information.
-- https://wiki.hypr.land/Configuring/Start/

-- Please note not all available settings / options are set here.
-- For a full list, see the wiki

-- You can (and should!!) split this configuration into multiple files
-- Create your files separately and then require them like this:
-- require("myColors")

------------------
---- MONITORS ----
------------------

require("./fishconf/Monitors.lua")

---------------------
---- MY PROGRAMS ----
---------------------

require("./fishconf/MyPrograms.lua")

-------------------
---- AUTOSTART ----
-------------------

require("./fishconf/Autostart.lua")

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

require("./fishconf/EnvironmentVariables.lua")

-----------------------
----- PERMISSIONS -----
-----------------------

require("./fishconf/Permissions.lua")

-----------------------
---- LOOK AND FEEL ----
-----------------------

require("./fishconf/LookAndFeel.lua")

----------------
----  MISC  ----
----------------

require("./fishconf/Misc.lua")

---------------
---- INPUT ----
---------------

require("./fishconf/Input.lua")

---------------------
---- KEYBINDINGS ----
---------------------

require("./fishconf/Keybindings.lua")

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

require("./fishconf/WindowsAndWorkspaces.lua")
