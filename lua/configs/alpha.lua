local Banners = {}

Banners.getBanner = function()
  math.randomseed(os.time())
  local headers = {
    {
      "⠀⠀⠀⠀⠀⢀⣶⡖⢦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠙⠋⠹⣦⠘⠉⠳⢤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠙⠛⠓⠶⣶⣶⣿⣛⣀⣰⣆⣀⣀⠉⠛⢶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠉⠉⠙⢷⣦⡀⠈⠻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡤⠶⢶⣶⣾⣿⡀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢠⡞⠋⠀⣠⣶⣖⣻⣿⠟⠀⠀⣸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢻⣄⠀⠀⠈⠙⠛⠉⠁⠀⣠⣾⡟⠉⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⢀⣠⠿⠿⣿⣿⣿⡿⠿⢿⣿⣯⣿⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣰⠟⠁⠀⣀⣤⣤⣤⣤⣤⣤⣼⣿⣿⠇⠀⢈⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⢰⡏⠀⠀⣾⣏⠁⠀⠀⠀⢀⣀⣴⡿⠋⠀⠀⣼⠟⣦⡀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠈⢷⣄⡀⠈⠙⠛⠛⠛⠛⠋⠉⠁⢀⣠⣴⣿⡟⠀⠸⣇⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⣈⣽⣿⣶⣶⣶⣶⣶⣶⣾⣿⣯⣍⠀⠘⡗⠀⠀⣿⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣰⠞⠉⠉⠀⢀⣀⣀⣀⣀⡀⠀⠀⠹⣿⣷⣼⡇⠀⢀⡿⠀⠀⠀⠀⢠⢦",
      "⠀⠀⠀⣾⠋⠀⠀⢰⡿⠛⠉⠉⠉⠉⠙⠿⠷⣦⣼⣿⠏⠀⢀⣾⡃⠀⠀⠀⣀⡿⣹",
      "⠀⠀⠀⢿⡀⠀⠀⠘⢿⣦⣄⣀⣤⣤⣤⣤⡶⠿⠋⠁⠀⣠⣾⡏⠛⠓⠒⠛⣩⡴⠃",
      "⠀⠀⠀⠈⠻⣦⣀⡀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⣀⣴⡾⠛⠛⠿⠶⠶⠶⠞⠋⠀⠀",
      "⠀⠀⠀⠀⠀⠈⠛⠿⠿⠿⠿⣿⣶⡶⠶⠶⠿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
      "⠀⠀⠀⠀⣤⣶⣶⣶⣶⣶⣶⣶⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⣿⣿⡇⠀⠀⣠⣤⣄⠀⠀⠀⠀",
      "⠀⠀⠀⠀⣠⣿⣿⡇⠀⠀⣿⣿⣧⡀⢀⣿⣿⣿⣷⣄⠀⠀",
      "⠀⠀⢠⣾⣿⠿⠋⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀",
      "⠀⢰⣿⣿⣯⣤⣤⣤⣤⣤⣤⣤⣬⣿⣿⣿⣿⡿⠋⠙⠉⠀",
      "⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀",
      "⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠐⠀⠀⠀⠀",
      "⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠙⠻⠿⠿⠿⠿⠿⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀",
    },
    {
      "⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣠⣤⣶⣶",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢰⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣀⣀⣾⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⡏⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿",
      "⣿⣿⣿⣿⣿⣿⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠁⠀⣿",
      "⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠙⠿⠿⠿⠻⠿⠿⠟⠿⠛⠉⠀⠀⠀⠀⠀⣸⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣴⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⢰⣹⡆⠀⠀⠀⠀⠀⠀⣭⣷⠀⠀⠀⠸⣿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠈⠉⠀⠀⠤⠄⠀⠀⠀⠉⠁⠀⠀⠀⠀⢿⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⢾⣿⣷⠀⠀⠀⠀⡠⠤⢄⠀⠀⠀⠠⣿⣿⣷⠀⢸⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⡀⠉⠀⠀⠀⠀⠀⢄⠀⢀⠀⠀⠀⠀⠉⠉⠁⠀⠀⣿⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿",
      "⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿",
    },
    {
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⠶⠾⠿⠛⠛⠿⠿⠶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⠿⠋⠉⠀⠀⣀⣠⣤⣤⣄⣀⠀⠀⠈⠙⠿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⠟⠁⠔⢻⡆⣰⣿⣿⣿⣿⣿⣿⣿⣿⣆⢰⡟⠢⠈⠻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡟⣡⠴⢦⣄⠾⢣⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡜⢷⣄⠴⠦⣌⢻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡏⠀⢃⣤⠾⢹⡇⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⢰⡟⠷⣦⡘⠀⢹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀⢠⡿⠃⠀⣸⢇⡄⢈⢿⣿⣿⣿⣿⣿⣿⡿⡇⢠⡸⣇⠀⠈⢿⣄⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⣿⠁⠀⣴⠟⣾⣿⣶⡷⠽⣿⣿⣿⣿⠯⢾⣷⣿⣷⠹⣦⠀⠀⣿⠀⢸⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡁⠀⠻⣦⡾⠋⠀⠘⠋⣹⣿⣦⣘⢿⡿⣃⣤⣾⣏⠙⠃⠀⠙⣷⣰⠟⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡇⠀⠀⣮⠛⠛⠿⠿⠿⣟⣛⡿⣿⣇⣰⣿⣿⣛⣿⠿⠿⠿⠟⠚⣷⡀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⠀⠸⣿⠀⡞⠛⣦⣾⠟⠉⣷⣹⣿⣿⣏⣾⠉⠻⣗⣴⠛⢳⠀⣿⠇⠀⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⠀⠹⣧⣀⠾⠟⣇⣠⣼⠟⢹⡟⢹⡏⠻⣧⣄⣸⠗⣷⣀⣴⠟⠀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣧⡀⠈⢹⣟⠃⣿⢉⣠⣤⣼⠇⠸⣣⣤⣄⡉⣿⠛⣸⡇⠁⢀⣼⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣦⡀⠻⠷⢾⣛⣁⣴⠟⡧⢸⠱⣦⣈⣳⡟⠾⠟⢁⣴⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣶⣤⣀⠉⠉⠁⠐⠁⠈⠂⠈⠉⠉⣀⣠⣶⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
      "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠶⢶⣶⣦⣴⣶⡶⠾⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    },
    {
      "",
      "                                                              ",
      "    ⢀⣀⣤⣤⣤⠤⢤⣤⣤⣤⣤⣄⣀⡀           ⢀⣠⣤⣄⡀            ⣀⣀⣀⣤⣤⣤⣤⣤⣤⣤⣤⣀⡀   ",
      " ⢀⣤⠚⠩⠁⡄ ⠠⣤⠒⠒⣂ ⢈⣨⣭⣿⠛⠶⣦⣤⣄⡀   ⢠⣾⡟⠉⠉⠝⠿⠇    ⢀⣠⡤⠔⠒⣻⠟⠋⠩⠉⢁⣀⡀  ⣶  ⠙⡛⠷  ",
      " ⠸⢟⡠⠒⢊⡤  ⠋⣠ ⠈⣉⣉⣉⣉⣀⣛⣿⡒⠭⡿⢿⣷⣤⣤⣀⣽⣇⣴⠆⣴⡃⢀⣠⣤⠴⣚⣫⡥ ⠒⠛⠁⣀⣉⣉⣙⢏⡉  ⢀⣼⣤⣜⠳⡦⠂  ",
      "   ⠐⠚⠫⣤⠖⢣⣤⡕ ⠉⣩⣤⠔ ⠂⣋⣭⣥⣤⠴⠛⣛⠈⢩⣿⠿⠛⢉  ⡐⠞⠫⢍⠙⣓⠢⠴⣥⣍⣙⠛⢓⡢⢤⣬⠉⠅ ⣤⡜⢛⠻⠛⠉⠁   ",
      "      ⠘⢔⢎⣡⡔⠂⣠⡿⠁⠒⢛⡻⢛⣩⠅  ⠉  ⠚⣯⣄⢠⣿⢀⣾⠇ ⠓ ⠁⠂⠈⠍⠐⠈⡉⣿⠛⣛⠛⠉⣤⣰⣿⣿⡟⠛⠁      ",
      "        ⠙⠛⠐⠚⠋ ⠒⣲⡿⠇⣋        ⢺⡏⠈⣀ ⠉⠈        ⠙⢿⠟⢰⣖⡢ ⠂⠒⠚⠉         ",
      "             ⣴⠛⠅⢀⣾⠟⢃       ⢹⠃⠠⠁⠈⠩         ⢠⣿ ⣀⢹⣿⡷             ",
      "             ⢿⣤⢚⣫⠅         ⢸⠇ ⢚ ⢀         ⣸⡇ ⠉⣿⣿⠇             ",
      "             ⠈⠛⢻⣥⡚⠔⣠⢣⣄⡀    ⢸⡇ ⢘ ⠈ ⠠⠈    ⣀⣰⡿⣧⣄⠾⠋⠁              ",
      "                ⠈⠑⠁        ⠘⣿⡀⣈⣀    ⠈  ⠈⠙⠁                    ",
      "                            ⠘⣷⠁                               ",
      "                             ⠙⣤                               ",
      "                              ⠛⠂                              ",
    },
    {
      "",
      [[]],
      [[]],
      [[]],
      [[]],
      "   ▄████▄        ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒    ▒▒▒▒▒ ",
      "  ███▄█▀        ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒  ▒ ▄▒ ▄▒",
      " ▐████  █  █    ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
      "  █████▄        ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒",
      "    ████▀       ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒  ▒ ▒ ▒ ▒",
      [[]],
      [[]],
      [[]],
      [[]],
      [[]],
    },

    {
      [[                                   /\                                ]],
      [[                              /\  //\\                               ]],
      [[                       /\    //\\///\\\        /\                    ]],
      [[                      //\\  ///\////\\\\  /\  //\\                   ]],
      [[         /\          /  ^ \/^ ^/^  ^  ^ \/^ \/  ^ \                  ]],
      [[        / ^\    /\  / ^   /  ^/ ^ ^ ^   ^\ ^/  ^^  \                 ]],
      [[       /^   \  / ^\/ ^ ^   ^ / ^  ^    ^  \/ ^   ^  \       *        ]],
      [[      /  ^ ^ \/^  ^\ ^ ^ ^   ^  ^   ^   ____  ^   ^  \     /|\       ]],
      [[     / ^ ^  ^ \ ^  _\___________________|  |_____^ ^  \   /||o\      ]],
      [[    / ^^  ^ ^ ^\  /______________________________\ ^ ^ \ /|o|||\     ]],
      [[   /  ^  ^^ ^ ^  /________________________________\  ^  /|||||o|\    ]],
      [[  /^ ^  ^ ^^  ^    ||___|___||||||||||||___|__|||      /||o||||||\   ]],
      [[ / ^   ^   ^    ^  ||___|___||||||||||||___|__|||          | |       ]],
      [[/ ^ ^ ^  ^  ^  ^   ||||||||||||||||||||||||||||||oooooooooo| |ooooooo]],
      [[ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],
    },
  }
  return headers[math.random(1, #headers)]
end


local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = Banners.getBanner
-- dashboard.section.header.opts.hl = "DashboardHeader"
-- dashboard.section.footer.opts.hl = "DashboardFooter"

-- local button = dashboard.button

-- dashboard.section.buttons.val = {
--     button("<leader>n ", "󰻭  New File     "),
--     button("<leader>fb", "  File Browser"),
--     button("<leader>fp", "󱒕  Find Projects"),
--     button("<leader>fo", "  Find Recent"),
--     button("<leader>ff", "  Find File    "),
--     button("<leader>Sl", "󰑏  Last Session "),
--     button("<leader>q ", "󰗼  Exit"),
-- }

dashboard.config.layout = {
  { type = "padding", val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) } },
  dashboard.section.header,
  { type = "padding", val = 2 },
  { type = "padding", val = 2 },
  dashboard.section.buttons,
  { type = "padding", val = 3 },
  dashboard.section.footer,
}
dashboard.config.opts.noautocmd = false

require("alpha").setup(dashboard.config)

vim.api.nvim_create_augroup("alpha", { clear = true })

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyVimStarted",
  desc = "Add Alpha dashboard footer",
  group = "dashboard",
  once = true,
  callback = function()
    local stats = require("lazy").stats()
    local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
    dashboard.section.footer.val = { "Nvim loaded " .. stats.count .. " plugins  in " .. ms .. "ms" }
    pcall(vim.cmd.AlphaRedraw)
  end,
})

-- prevent scroll on alph

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter",
  {
    group = "dashboard",
    desc = "Disable status, tablines, and cmdheight for alpha",
    callback = function(event)
      if
          (
            (event.event == "User" and event.file == "AlphaReady")
            or (event.event == "BufWinEnter" and vim.bo[event.buf].filetype == "alpha")
          ) and not vim.g.before_alpha
      then
        vim.g.before_alpha = {
          showtabline = vim.opt.showtabline:get(),
          laststatus = vim.opt.laststatus:get(),
          cmdheight = vim.opt.cmdheight:get(),
        }
        vim.opt.showtabline, vim.opt.laststatus, vim.opt.cmdheight = 0, 0, 0
      elseif vim.g.before_alpha and event.event == "BufWinEnter" and vim.bo[event.buf].buftype ~= "nofile" then
        vim.opt.laststatus = vim.g.before_alpha.laststatus
        vim.opt.showtabline = vim.g.before_alpha.showtabline
        vim.opt.cmdheight = vim.g.before_alpha.cmdheight
        vim.g.before_alpha = nil
      end
    end,
  }
)

autocmd("VimEnter",
  {
    pattern = "*",
    group = "dashboard",
    desc = "Start Alpha when vim is opened with no arguments",
    callback = function()
      local should_skip
      local lines = vim.api.nvim_buf_get_lines(0, 0, 2, false)
      if
          vim.fn.argc() > 0                                                                                    -- don't start when opening a file
          or #lines > 1                                                                                        -- don't open if current buffer has more than 1 line
          or (#lines == 1 and lines[1]:len() > 0)                                                              -- don't open the current buffer if it has anything on the first line
          or #vim.tbl_filter(function(bufnr) return vim.bo[bufnr].buflisted end, vim.api.nvim_list_bufs()) > 1 -- don't open if any listed buffers
          or not vim.o.modifiable                                                                              -- don't open if not modifiable
      then
        should_skip = true
      else
        for _, arg in pairs(vim.v.argv) do
          if arg == "-b" or arg == "-c" or vim.startswith(arg, "+") or arg == "-S" then
            should_skip = true
            break
          end
        end
      end
      if should_skip then return end
      require("lazy").load { plugins = { "alpha-nvim" } }
      require("alpha").start(true)
      vim.schedule(function() vim.cmd.doautocmd "FileType" end)
    end,
  }
)


vim.api.nvim_create_autocmd({ "BufWinEnter", "User" },
  {
    group = "dashboard",
    desc = "Disable status, tablines, and cmdheight for alpha",
    callback = function(event)
      if
          (
            (event.event == "User" and event.file == "AlphaReady")
            or (event.event == "BufWinEnter" and vim.bo[event.buf].filetype == "nvdash")
          ) and not vim.g.before_alpha
      then
        vim.g.before_alpha = {
          showtabline = vim.opt.showtabline:get(),
          laststatus = vim.opt.laststatus:get(),
          cmdheight = vim.opt.cmdheight:get(),
        }
        vim.opt.showtabline, vim.opt.laststatus, vim.opt.cmdheight = 0, 0, 0
      elseif vim.g.before_alpha and event.event == "BufWinEnter" and vim.bo[event.buf].buftype ~= "nofile" then
        vim.opt.laststatus = vim.g.before_alpha.laststatus
        vim.opt.showtabline = vim.g.before_alpha.showtabline
        vim.opt.cmdheight = vim.g.before_alpha.cmdheight
        vim.g.before_alpha = nil
      end
    end,
  }
)
vim.api.nvim_create_autocmd("VimEnter",
  {
    pattern = "*",
    group = "dashboard",
    desc = "Start Alpha when vim is opened with no arguments",
    callback = function()
      local should_skip
      local lines = vim.api.nvim_buf_get_lines(0, 0, 2, false)
      if
          vim.fn.argc() > 0                                                                                    -- don't start when opening a file
          or #lines > 1                                                                                        -- don't open if current buffer has more than 1 line
          or (#lines == 1 and lines[1]:len() > 0)                                                              -- don't open the current buffer if it has anything on the first line
          or #vim.tbl_filter(function(bufnr) return vim.bo[bufnr].buflisted end, vim.api.nvim_list_bufs()) > 1 -- don't open if any listed buffers
          or not vim.o.modifiable                                                                              -- don't open if not modifiable
      then
        should_skip = true
      else
        for _, arg in pairs(vim.v.argv) do
          if arg == "-b" or arg == "-c" or vim.startswith(arg, "+") or arg == "-S" then
            should_skip = true
            break
          end
        end
      end
      if should_skip then return end
      require("lazy").load { plugins = { "alpha-nvim" } }
      vim.cmd("Nvdash<cr>")
      vim.schedule(function() vim.cmd.doautocmd "FileType" end)
    end,
  }
)
