"use strict";
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

//COLORS
const black = '#1a1c2b';
const red = '#EB6383';
const green = '#71EFA3';
const yellow = '#FFEDA3';
const blue = '#57C7FF';
const magenta = '#C1B3FF';
const cyan = '#99EBFC';
const white = '#fff';

const lgBlack = '#686868';
const lgRed = '#EB6383';
const lgGreen = '#ACFFAD';
const lgYellow = '#FDFFB6';
const rose = '#FE6AC0';
const dark = '#191E2A'

module.exports = {
    config: {

        //THEME CONFIG
        // verminal: {
        //   fontFamily: '"Fira Code"',
        //   fontSize: 14
        // },

        // theme: {
        //   // Default: base
        //   // Can be base, moon or dawn
        //   variant: 'base',
        // },

        // choose either `'stable'` for receiving highly polished,
        // or `'canary'` for less polished but more frequent updates

        updateChannel: 'stable',

        // default font size in pixels for all tabs

        fontSize: 14,

        // font family with optional fallbacks

        fontFamily: '"MesloLGS NF", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',

        // default font weight: 'normal' or 'bold'

        fontWeight: 'normal',

        // font weight for bold characters: 'normal' or 'bold'

        fontWeightBold: 'bold',

        // line height as a relative unit

        lineHeight: 1,

        // letter spacing as a relative unit

        letterSpacing: 0,

        // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)

        cursorColor: rose,

        // terminal text color under BLOCK cursor

        cursorAccentColor: '#000',

        // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █

        cursorShape: 'UNDERLINE',

        // set to `true` (without backticks and without quotes) for blinking cursor

        cursorBlink: true,

        // color of the text

        foregroundColor: white,

        // terminal background color
        // opacity is only supported on macOS

        backgroundColor: black,

        // terminal selection color

        selectionColor: white,

        // border color (window, tabs)

        borderColor: lgBlack,

        // custom CSS to embed in the main window

        css: '',

        // custom CSS to embed in the terminal window

        termCSS: '',

        // set custom startup directory (must be an absolute path)

        workingDirectory: '',

        // if you're using a Linux setup which show native menus, set to false
        // default: `true` on Linux, `true` on Windows, ignored on macOS

        showHamburgerMenu: '',

        // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
        // additionally, set to `'left'` if you want them on the left, like in Ubuntu
        // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS

        showWindowControls: '',

        // custom padding (CSS format, i.e.: `top right bottom left`)

        padding: '12px 14px',

        // the full list. if you're going to provide the full color palette,
        // including the 6 x 6 color cubes and the grayscale map, just provide
        // an array here instead of a color map object

        colors: {
            black: black,
            red: red,
            green: green,
            yellow: yellow,
            blue: lgBlack,
            magenta: lgRed,
            cyan: green,
            white: white,
            lightBlack: lgBlack,
            lightRed: red,
            lightGreen: lgGreen,
            lightYellow: lgYellow,
            lightBlue: cyan,
            lightMagenta: magenta,
            lightCyan: blue,
            lightWhite: white,
        },

        // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
        // if left empty, your system's login shell will be used by default
        //
        // Windows
        // - Make sure to use a full path if the binary name doesn't work
        // - Remove `--login` in shellArgs
        //
        // Windows Subsystem for Linux (WSL) - previously Bash on Windows
        // - Example: `C:\\Windows\\System32\\wsl.exe`
        //
        // Git-bash on Windows
        // - Example: `C:\\Program Files\\Git\\bin\\bash.exe`
        //
        // PowerShell on Windows
        // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
        //
        // Cygwin
        // - Example: `C:\\cygwin64\\bin\\bash.exe`

        shell: '',
        // shell: 'C:\\Windows\\System32\\bash.exe',

        // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
        // by default `['--login']` will be used

        //shellArgs: ['--login'],
        // for environment variables
        env: {},
        // Supported Options:
        //  1. 'SOUND' -> Enables the bell as a sound
        //  2. false: turns off the bell
        bell: 'SOUND',
        // An absolute file path to a sound file on the machine.
        // bellSoundURL: '/path/to/sound/file',
        // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
        copyOnSelect: false,
        // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
        defaultSSHApp: true,
        // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
        // selection is present (`true` by default on Windows and disables the context menu feature)
        quickEdit: false,
        // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
        // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
        // (inside tmux or vim with mouse mode enabled for example).
        macOptionSelectionMode: 'vertical',
        // Whether to use the WebGL renderer. Set it to false to use canvas-based
        // rendering (slower, but supports transparent backgrounds)
        webGLRenderer: false,
        // keypress required for weblink activation: [ctrl|alt|meta|shift]
        // todo: does not pick up config changes automatically, need to restart terminal :/
        webLinksActivationKey: '',
        // if `false` (without backticks and without quotes), Hyper will use ligatures provided by some fonts
        disableLigatures: true,
        // for advanced config flags please refer to https://hyper.is/#cfg
    },

    // a list of plugins to fetch and install from npm
    // format: [@org/]project[#version]
    // examples:
    //   `hyperpower`
    //   `@company/project`
    //   `project#1.0.1`

    plugins: [
        //THEMES
        // "verminal",
        // 'hyper-dracula',
        // 'hyper-website-theme',
        // "hyper-firefox-devtools",
        // "hyper-rose-pine",
        // "hyper-aura-theme",
        // "hyper-named-css-colors",
        // "hyper-whimsy",
        // "hyper-flat",
        // "hyper-one-dark",
        // "hyperocean",
        // "hyper-snazzy",

        //TOOLS
        "hyperpower",
        "hyper-pane",
        "hyper-opacity",
        // "hyper-statusline",
        "hyperterm-dibdabs",
        "hyperterm-tabs",
        // "hyper-blink",
        // "hypergoogle",
        // "hyper-shellect"
        // "gitrocket",
        "hyper-tabs-enhanced",
    ],

    // in development, you can create a directory under
    // `~/.hyper_plugins/local/` and include it here
    // to load it and avoid it being `npm install`ed
    localPlugins: [],
    keymaps: {
        // Example
        // 'window:devtools': 'cmd+alt+o',
    },
};
//# sourceMappingURL=config-default.js.map
