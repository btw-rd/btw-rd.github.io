---
layout: page
title: Portfolio
permalink: /code/
icon: fa-code
order: 2
---

<style>img[src*="#preview"]{width:100%;display:block}div.entry{display:inline-block;padding-top:40px}</style>
{::options parse_block_html="true" /}

Tech art, tools, and game programming projects.  

---

<div class="entry">
## Paint-By-Numbers Add-on & Shader
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/paint-by-numbers/pbn-addon.png#preview)  
![preview-2]({{site.url}}/code/paint-by-numbers/pbn-shader.png#preview)
</div>
<div class="6u 12u$(mobile)">
A Blender add-on designed to recreate the material system of equipment in Final Fantasy XIV. The texture is split up into up to 16 sections based on the alpha channel of the Normal Map. Each section is then mapped to values from a 'palette' file which contains inputs for the diffuse, specular, emissive, and gloss values. Additional inputs control tiling, transformable textures that can be mixed into a section, as well as a control for the in-game dye system to overwrite certain parts of the palette. 

The key to this system is that it allows preset palettes, or portions of palettes, to be easily interchanged to create palette swaps, material variants, and player customization of colors.  
[Read More]({{site.url}}/2020/09/27/paint-by-numbers.html)
</div>
</div>
</div>

<div class="entry">
## Introstructure - Maya MEL Scene Generation
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/introstructure/random_short.png#preview)  
</div>
<div class="6u 12u$(mobile)">
An MEL script and base scene for Maya which generates a scenic river valley of variable length and animates a boat with camera to float gently down the river. My first experience using MEL. The main hurdle at the start was establishing a comfortable working setup with PyMEL and using VS Code as a useful editor. I will be expanding on this project in the coming months, focusing on performance improvements, automated rendering control, additional variants for scenery, and new points of interest.  
[Read More]({{site.url}}/2021/01/11/introstructure.html)
</div>
</div>
</div>

<div class="entry">
## 3ds Flip Tool  
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/flip-tool/preview.png#preview)
</div>
<div class="6u 12u$(mobile)">
A tool for 3ds Max made in maxscript. The script is designed to overcome limitations in a workflow based on importing bones as dummies. The goal is to be able to mirror a selected mesh and replace all bones ending in either '_l' or '_r' on the copy with their opposite side counterpart while keeping the correct weight.  
[Read More]({{site.url}}/2020/09/23/3ds-flip-tool.html)
</div>
</div>
</div>

<div class="entry">
## Synestaether - Unity Game  
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/synestaether/preview.png#preview)
</div>
<div class="6u 12u$(mobile)">
A six week game design project by my 3-person student team, Sans Serif Studios, as part of CS_377 Game Design Studio at Northwestern University. Synestaether is a physics-based puzzle game where the player configures a 3d cube-based world in order to construct routes for marbles to reach their designated buckets.  
[Read More]({{site.url}}/2020/05/25/synestaether-demo.html) | [Explore]({{site.url}}/code/synestaether/synestaether.zip)
</div>
</div>
</div>

<!--<br/>
## Sample Demo
Sample Demo Text-->