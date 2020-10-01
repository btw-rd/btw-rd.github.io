---
layout: post
title: "3ds Max Flip Tool"
date: 2020-09-23
tags: [code, 3ds max, gamedev, game, 3d, digital content, tools, tech art, script, add-on, addon, maxscript]
---
<style>img[src*="#preview"]{float:left; width:60%; padding-right: 20px}</style>

![preview-image]({{site.url}}/code/flip-tool/preview.png#preview)
A tool for 3ds Max made in maxscript. The script is designed to overcome limitations in a workflow based on importing bones as dummies. The goal is to be able to mirror a selected mesh and replace all bones ending in either '_l' or '_r' on the copy with their opposite side counterpart while keeping the correct weight.  
  
Normally this could be achieved by using 3ds' built-in mirror mode, but in certain situations where two dummy bones occupy the same space on the center line, mirror mode can fail to recognize them as center bones and instead set them as l/r opposites, ruining the skin.  

I chose to stick with a simple string-based solution for determing left and right because this situation was based on a particular game's skeleton system where the issue was becoming an obstruction.  
  
The tool was designed to streamline the existing workflow artists were using to circumvent the issue. The artists I consulted with were saving out the envelopes from their properly skinned half, loading them on the mirrored half, and then manually associating the '_l' and '_r' bones in the envelope import screen. I originally sought to recreate this directly via script, however by my research I could not control the envelope import screen through maxscript. In the end, I decided to create something with as much of the same functionality as possible, but using maxscript's skinOps methods.