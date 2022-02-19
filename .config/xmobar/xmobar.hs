Config { font = "xft:Ubuntu Nerd Font:pixelsize=12:antialias=true:hinting=true"
       , additionalFonts = [ "xft:Ubuntu Mono:pixelsize=16:antialias=true:hinting=true"
                           , "xft:Overpass Nerd Font:pixelsize=12:antialias=true:hinting=true"
                           , "xft:Overpass Nerd Font:pixelsize=16:antialias=true:hinting=true"
                           , "xft:Weather Icons:size=17"
                           ]
       , borderColor = "#1E222A"
       , border = NoBorder
       , bgColor = "#282828"
       , fgColor = "#6b6666"
       , position = Static { xpos = 5, ypos = 5, width = 1356, height = 25 }
       , alpha =240
       , lowerOnStart = True
       , hideOnStart = False
       , persistent = True
       , iconRoot = "/home/manoj/.xmonad/xpm/" -- default: "."
       , commands = [ 
                     -- date and time
                      Run Date "<fc=#EBEBEB>\62965 %a, %_d %b</fc>  |  <fc=#A578EA>\61463 %I:%M %p</fc>" "datetime" 10
                    
                     -- network activity monitor (dynamic interface resolution)
                    , Run Network "wlp3s0" [ "--template", "<fc=#1BA6FA> <rx> <fn=2>\61813</fn><fn=2>\61814</fn> <tx></fc>"
                                                  , "-S",         "true"
                                                  ] 50

                     -- battery monitor
                    , Run Battery [ "--template" , "<acstatus>"
                             , "--Low"      , "10"        -- units: %
                             , "--High"     , "99"        -- units: %
                             , "--low"      , "#6E6E6E"
                             , "--normal"   , "#dAA520"
                             , "--high"     , "#0ac723"

                             , "--" -- battery specific options
                                       -- discharging status
                                       , "-o"   , "<fc=#dAA520>\xf580 <left>% (<timeleft>)</fc>"
                                       -- AC "on" status
                                       , "-O"   , "<fc=#dAA520>\xf583 <left>%</fc>"
                                       -- charged status
                                       , "-i"   , "<fc=#0ac723>\xf1e6 <left>%</fc>"
                             ] 50

                     -- weather status
                     , Run Weather "VOVZ" ["-t","<tempC>°C",
                                          "-L","18","-H","25",
                                          "--normal","green",
                                          "--high","red",
                                          "--low","lightblue"] 36000

                     --,Run WeatherX "VOVZ"
                     --    [ ("clear",                    "\58125 ")
                     --    , ("sunny",                    "\58125 ")
                     --    , ("mostly clear",             "\58125 ")
                     --   , ("mostly sunny",             "\58125 ")
                     --    , ("partly sunny",             "\58125 ")
                     --    , ("fair",                     "\58286 ")
                     --    , ("cloudy",                   "\58130 ")
                     --    , ("obscured",                 "\58130 ")
                     --    , ("overcast",                 "\58130 ")
                     --    , ("partly cloudy",            "\58114 ")
                     --    , ("mostly cloudy",            "\58130 ")
                     --    , ("rainy",                    "\58136 ")
                     --    , ("showers",                  "\58136 ")
                     --    , ("snowy",                    "流 ")
                     --    , ("snow",                     "流 ")
                     --    , ("heavy snow",               "流 ")
                     --    , ("light snow",               "流 ")
                     --    , ("moderate snow",            "流 ")
                     --    , ("patchy moderate snow",     "流 ")
                     --    , ("patchy heavy snow",        "流 ")
                     --    , ("considerable cloudiness",  "\58172 ")]
                     --   ["-t", "<fn=3><skyConditionS></fn><tempF>°"
                     --  , "-L","20", "-H", "60", "--normal", "#51afef"
                     --  , "--high", "#ff6c6b", "--low", "#4db5bd"]
                     --    600
 
                     -- Cpu usage in percent %cpu%
                     -- , Run Cpu ["-t", "<fc=#ebcb8d>﬙ (<total>%)</fc>","-H","50","--high","red"] 20
                    
                     -- Ram used number and percent %memory%
                     -- , Run Memory ["-t", "<fc=#ff6c6b> <used>M (<usedratio>%)</fc>"] 20


                     -- uptime %uptime%
                      , Run Uptime ["-t", "<fc=#c9866f>\61698 <hours>h <minutes>m</fc>"] 60
                     
                     -- Ram used number and percent %disku%
                     -- , Run DiskU [("/", "<fc=#bae67e>  <free> free</fc>")] [] 60

                     -- wireless connection
                     -- , Run Wireless "wlp3s0" [ "-t", "WIFI:<essid>" ] 10

                     -- BTC status (<fc=#ffd580><fn=3></fn> %btc% </fc>)
                     -- , Run Com "~/.config/xmobar/scripts/btc" [] "btc" 600
                     
                     -- Script that dynamically adjusts xmobar padding depending on number of trayer icons.
                     --, Run Com "~/.config/xmobar/scripts/trayer-padding-icon.sh" [] "trayerpad" 20

                     -- The workspaces
                     --, Run UnsafeStdinReader
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template =" <icon=haskell_20.xpm/> }\
       \{ %VOVZ%  |  %uptime%  |  %wlp3s0%  |  %battery%  |  %datetime%"
       }
