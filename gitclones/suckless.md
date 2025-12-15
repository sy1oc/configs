# Suckless
My own suckless apps config

## Dwm


- [centeredmaster](https://dwm.suckless.org/patches/centeredmaster/)

- [uselessgap](https://dwm.suckless.org/patches/uselessgap/)
```c
static const unsigned int gappx     = 6;        /* gaps between windows */
```

- border
```c
static const unsigned int borderpx  = 3;        /* border pixel of windows */
```

- font
```c
static const char *fonts[]          = { "JetBrainsMono Nerd Font:size=13" };
static const char dmenufont[]       = "JetBrainsMono Nerd Font:size=13";
```

- color
```c
static const char col_cyan[]        = "#89B4FA";    // catppuccin blue
```

- tagging
```c
static const char *tags[] = { "*]]", "*-]", "*[]", "*]", "*", "*[", "*][", "*-[", "*[[" };
```

- layout
```c
static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "T",      centeredmaster },
	{ "F",      centeredfloatingmaster },
	{ "T",      tile },    /* first entry is default */
	{ "F",      NULL },    /* no layout function means floating behavior */
	{ "M",      monocle },
};
```

- keys
```c
static const Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_e,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_i,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_t,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_n,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_o,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_l,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_u,      setlayout,      {.v = &layouts[1]} },
//	{ MODKEY|ShiftMask,             XK_l,      setlayout,      {.v = &layouts[2]} },
//	{ MODKEY|ShiftMask,             XK_u,      setlayout,      {.v = &layouts[3]} },
	{ MODKEY,                       XK_y,      setlayout,      {.v = &layouts[4]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};
```

## St (deprecated now, I use Kitty with tokyonight-moon)

- [alpha](https://st.suckless.org/patches/alpha/)
```c
float alpha = .5;
```

- font 
```c
static char *font = "JetBrainsMono Nerd Font:pixelsize=15:antialias=true:autohint=true";
```

- [catppuccin](https://github.com/catppuccin/st/)
