# onscripter-jh-trimui-smart
[WIP] My ONScripter-jh Trimui Smart port

## Original ONScripter-Jh readme
```
ONScripter是一个开源的NScripter脚本解释工具，主要由Ogapee开发维护
原版的Readme请查看Readme.old。

这是一个修改版的ONScripter源码，在GPLv2协议下发布，使用时请遵守。

修改目标：
	提供比原版ONScripter更好的性能，适当增加一些功能
	添加中文支持
	尽可能的兼容原版ONS脚本
	
进度

	SDL2分支提供各种改进并可在SDL2环境编译
	目前Windows、Android、iOS、Linux、Windows Phone平台均编译通过实测可用，其余平台未测试
```

## How to Build  
* Modify Makefile, where are gcc and stage_files   
* Run 'make clean && make MIYOO=1'  
```
用trimui smart运行我自己编译的onscripter-jh的效果。声音没搞出来，
用的工具链是miyoo mini的。framebuffer是16位的，
所以编译代码需要指定BPP，而且这里需要CCW反方向旋转90度，
因为屏幕其实是原生竖屏。如果用系统的SDL_ttf和SDL_image库的
话字体和图片都显示不出来，所以这里我是把库的代码静态编译进去
```

## Cross Compile Toolchains
* miyoomini-toolchain.tar.xz  
(use this, see https://github.com/MiyooMini/union-toolchain/blob/main/support/setup-toolchain.sh)  
https://github.com/shauninman/miyoomini-toolchain-buildroot/releases/tag/v0.0.3  
* gcc-arm-8.2-2018.08-x86_64-arm-linux-gnueabihf.tar.gz  
(don't use this) https://github.com/MiyooMini/miyoo-toolchain/releases/tag/v1.0  

## TODO, bugs
* No Sound
* Some key mapping not good 
* How to build under xubuntu   
