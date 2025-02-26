---
layout: post
title: "Substance Composite Plugin"
date: 2025-02-25
tags: [code, Substance Painter, Substance, DCC, script, tech art, digital content, Python, Add-on, plugin, game dev]
---
<style>img[src*="#preview"]{display:block; margin:auto; width:80%}</style>
<style>video{width:60%;display:block;margin:auto}div.entry{display:inline-block;padding-top:40px}</style>
{::options parse_block_html="true" /}

<video autoplay muted loop>
    <source src="{{site.url}}/code/substance-composite/video.mp4" type="video/mp4">
</video>
<p></p>
### A python Substance plugin for automatically compositing exported maps according to their suffixes, triggered after export.  
<br>
This tool was created to work around an issue I discovered in my workflow using the pen tool in Substance Painter 2023. The stroke of the pen tool seems to be projected in 3d space and it is incapable of respecting 2d masks. In the event of having two pieces of geometry in close proximity such that projection issues are introduced it is necessary to break the meshes into separate Texture Sets in Substance (not just separate objects). The result of this workaround is having two sets of maps exported that are ultimately intended to be a single material. Instead of introducing an extra step and extra tool such as opening photoshop to overlay each pair of maps, as an artist might do instinctively, I wished to maintain the workflow I was used to of being able to export directly from Substance and have my maps be ready-to-use.  
  
The compositing operation is performed by ImageMagick, run via `os.system`. A more portable option may be to use PIL within python, but I was already familiar with the magick method from an earlier project using PowerShell, so within the small scope of the project it felt appropriate to reuse.  
  
The operation is triggered by the `ExportTexturesEnded` event within Substance, from which we can obtain a list of paths to textures exported from the `.textures.values()` member.  
[GitHub](https://github.com/btw-rd/SubstanceComposite)