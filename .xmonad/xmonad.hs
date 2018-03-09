import XMonad
import XMonad.Layout.NoBorders
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO

main = do
  spawn "conky"            -- spawn a standard conky
  xmonad $ defaultConfig {
         manageHook = manageDocks <+> manageHook defaultConfig
         , layoutHook = avoidStruts  $  layoutHook defaultConfig
         , terminal = "termite"
         , modMask = mod4Mask
         , focusedBorderColor = "#6C71C4"
         , borderWidth = 0
         }
         `additionalKeys`
         [ ((0, 0x1008ff12         ), spawn "amixer -q sset Master toggle")
         , ((0, 0x1008ff13         ), spawn "amixer -q sset Master 10%+")
         , ((0, 0x1008ff11          ), spawn "amixer -q sset Master 10%-")
         , ((0, 0x1008FF02          ), spawn "xbacklight -inc 20")
         , ((0, 0x1008FF2E          ), spawn "xbacklight -inc 20")
         , ((0, 0x1008FF03          ), spawn "xbacklight -dec 20")
         ]
