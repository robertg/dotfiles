import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO
import XMonad.Actions.UpdatePointer
import XMonad.ManageHook
import XMonad.Hooks.EwmhDesktops

startup = do
        spawn "xloadimage -onroot -fullscreen -center /home/rgawdzik/Pictures/background2.jpg && xrdb -merge ~/.Xresources"

main = do
xmproc <- spawnPipe "xmobar"
xmonad $ defaultConfig
    { manageHook = manageDocks <+> manageHook defaultConfig
	, terminal = "xterm"
    , layoutHook = avoidStruts  $  layoutHook defaultConfig
    , startupHook = startup
    , handleEventHook = fullscreenEventHook
    , logHook = updatePointer (Relative 0.99 0.99) <+> dynamicLog
    } `additionalKeys`
    [ ((mod4Mask .|. shiftMask, xK_z), spawn "gnome-screensaver-command --lock") --mod4mask is the windows key
    , ((0, xK_Print), spawn "gnome-screenshot")
    ]

--main = do
--xmproc <- spawnPipe "xmobar"
--xmonad $ defaultConfig
--    { manageHook = manageDocks <+> manageHook defaultConfig
--	, terminal = "xterm"
--    , layoutHook = avoidStruts  $  layoutHook defaultConfig
--    , startupHook = startup
--    , handleEventHook = fullscreenEventHook
--    , logHook = updatePointer (Relative 0.99 0.99)
--    } `additionalKeys`
--    [ ((mod4Mask .|. shiftMask, xK_z), spawn "gnome-screensaver-command --lock") --mod4mask is the windows key
--    , ((0, xK_Print), spawn "gnome-screenshot")
--    ]
--
