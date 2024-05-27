// For every option, see ~/.config/ags/modules/.configuration/user_options.js
// (vscode users ctrl+click this: file://./modules/.configuration/user_options.js)
// (vim users: `:vsp` to split window, move cursor to this path, press `gf`. `Ctrl-w` twice to switch between)
//   options listed in this file will override the default ones in the above file

const userConfigOptions = {
  'dock': {
    'enabled': true
  },
  'overview': {
    'scale': 0.18, // Relative to screen size
    'numOfRows': 2,
    'numOfCols': 5,
    'wsNumScale': 0.09,
    'wsNumMarginScale': 0.07,
  },
  'brightness': {
    // Object of controller names for each monitor, either "brightnessctl" or "ddcutil" or "auto"
    // 'default' one will be used if unspecified
    // Examples
    'controllers': {
      'default': "auto",
    },
  },

}

export default userConfigOptions;
