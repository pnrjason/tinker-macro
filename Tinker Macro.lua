local Macro_OFF = 7    -- mouse button for turning macro on/off
local Macro_ON = 8
local Macro_Activator

function OnEvent(event, arg) 
   if event == "PROFILE_ACTIVATED" then
      EnablePrimaryMouseButtonEvents(true)
   elseif event == "MOUSE_BUTTON_PRESSED" and arg == Macro_OFF then
      Macro_Activator = 0 
   elseif event == "MOUSE_BUTTON_PRESSED" and arg == Macro_ON then
      Macro_Activator = 1 
   elseif event == "MOUSE_BUTTON_PRESSED" and Macro_Activator == 1 then
      if event == "MOUSE_BUTTON_PRESSED" and arg == 4 then
      
      -- You can customize the hotkeys if you want to replace them with your own hotkeys
      -- Mouse Button 4 to activate script
      
        PressAndReleaseKey("B") -- Bottle (You can alternatively set this as Scythe of Vyse later on)
        PressAndReleaseKey("C") -- Soul Ring or Guardian Greaves
        --PressAndReleaseKey("X") -- Shiva's Guard
        --PressAndReleaseKey("Z") -- Ethereal Blade or you can situationally set this for just Ghost Scepter (no mana cost) 
        --PressAndReleaseKey("N") -- Dagon
        --PressAndReleaseKey("N") -- or Double Tap to Self Cast for Lotus Orb (best to use if there is Bounty Hunter on the enemy team)
      end
   end 
end
