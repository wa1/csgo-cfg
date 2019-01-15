<pre>
██╗    ██╗ █████╗  ██╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
██║    ██║██╔══██╗███║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
██║ █╗ ██║███████║╚██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
██║███╗██║██╔══██║ ██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
╚███╔███╔╝██║  ██║ ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
 ╚══╝╚══╝ ╚═╝  ╚═╝ ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
</pre>

# CSGO Config

Generates an autoexec.cfg based on modular config files.

## Instructions

Either simply run the PowerShell script to generate an autoexec.cfg in /dist or follow the node.js/npm or gulp examples below.

### Powershell method (easiest)

* Run **concat.ps1** in Windows PowerShell, from project directory, autoexec.cfg will be generated in /dist directory. Manually replace autoexec in CSGO cfg directory or follow the next steps.
* Optional: edit csgo cfg folder path in **deploy.ps1** if the default isn't correct: `$path_csgo = "C:/Program Files (x86)/Steam/steamapps/common/Counter-Strike Global Offensive/csgo/cfg"`
* Optional: Run **deploy.ps1** to replace current autoexec (A backup will be saved in the cfg directory)

### Node/NPM

* Download node.js (which includes npm)
* Run `npm install` in the project directory. That will install all dependencies.\
* Run `npm run concat` to generate autoexec.cfg in /dist directory.

### Gulp 

* Open a cmd/terminal and go to the project directory
* Run `gulp` to generate autoexec.cfg in /dist directory

## Tips

Recommended editor: Visual Studio Code

Get clearer map overviews at http://simpleradar.com\
Add the files to `\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\overviews`

## Launch options

Add `+exec autoexec.cfg` to Launch options (right click the game in Steam > Library and open Properties, then click Set Launch Options).

An example with some additional launch options, for a 144 Hz monitor at 1440p resolution:

```js
-console -freq 144 -novid +exec autoexec.cfg -w 2560 -h 1440
```

Other launch options, not sure exactly what they do so I skip most of them:

```js
-tickrate 128
-console // show csgo console, enabling manual command entry
-novid // skip loading video
-freq 144 // monitor frequency
-refresh 144 
-maxplayers_override 50 
-nojoy 
-nod3d9ex1 
+exec autoexec.cfg
-w 1920 -h 1080 
-noforcemaccel 
-noforcemparms 
-noforcemspd 
+clientport 27015 //if private server game fails to connect, also add rules to firewall or disable virus protection, one might work.
+clientport 27006 //..7, 8, 9 if mm game disconnects
```