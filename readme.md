# CSGO Config

Packages an autoexec.cfg based on several config files.

# Instructions

Setup: Download node.js (which includes npm), then run `npm install` in the project directory. That will install all dependencies.\
To generate a new autoexec.cfg: `npm run concat`\
Recommended editor: Visual Studio Code

## Tips

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