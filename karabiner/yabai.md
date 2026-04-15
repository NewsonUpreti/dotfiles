```json
{
  "description": "Yabai tweaks",
  "manipulators": [
    {
      "from": {
        "key_code": "j",
        "modifiers": { "mandatory": ["left_option"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --focus south" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "k",
        "modifiers": { "mandatory": ["left_option"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --focus north" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "h",
        "modifiers": { "mandatory": ["left_option"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --focus west" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "l",
        "modifiers": { "mandatory": ["left_option"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --focus east" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "r",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m space --rotate 270" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "y",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m space --mirror y-axis" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "x",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m space --mirror x-axis" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "v",
        "modifiers": { "mandatory": ["left_option"] }
      },
      "to": [
        {
          "shell_command": "/opt/homebrew/bin/yabai -m window --toggle float --grid 4:4:1:1:2:2"
        }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "m",
        "modifiers": { "mandatory": ["left_option"] }
      },
      "to": [
        {
          "shell_command": "/opt/homebrew/bin/yabai -m window --toggle zoom-fullscreen"
        }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "e",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [{ "shell_command": "/opt/homebrew/bin/yabai -m space --balance" }],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "j",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --swap south" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "k",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --swap north" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "h",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --swap west" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "l",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --swap east" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "j",
        "modifiers": { "mandatory": ["left_option", "left_control"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --warp south" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "k",
        "modifiers": { "mandatory": ["left_option", "left_control"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --warp north" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "h",
        "modifiers": { "mandatory": ["left_option", "left_control"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --warp west" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "l",
        "modifiers": { "mandatory": ["left_option", "left_control"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --warp east" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "1",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --space 1" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "2",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --space 2" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "3",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --space 3" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "4",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --space 4" }
      ],
      "type": "basic"
    },
    {
      "from": {
        "key_code": "5",
        "modifiers": { "mandatory": ["left_option", "left_shift"] }
      },
      "to": [
        { "shell_command": "/opt/homebrew/bin/yabai -m window --space 5" }
      ],
      "type": "basic"
    }
  ]
}
```
