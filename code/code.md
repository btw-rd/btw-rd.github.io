---
layout: page
title: Portfolio
permalink: /code/
icon: fa-code
order: 2
---

<style>img[src*="#preview"]{width:100%;display:block}div.entry{display:inline-block;padding-top:40px}</style>
<style>video{width:100%;display:block}div.entry{display:inline-block;padding-top:40px}</style>
{::options parse_block_html="true" /}

Tech art, tools, and game programming projects.  

---
<div class="entry">
## JSON Pose Add-on
<div class="row">
<div class="6u 12u$(mobile)">
<video autoplay muted loop>
    <source src="{{site.url}}/code/json-pose/video.mp4" type="video/mp4">
</video> 
</div>
<div class="6u 12u$(mobile)">
A Blender Add-on for easy, approachable loading of JSON-based pose files onto an armature. This project is designed to interface with files produced by a fan-made tool for a popular MMO. Poses are saved in a JSON file format defined by the compatible tool, with rotation, scale, and position offset values for each bone. Rotation is stored as-read from the game's memory, quaternions in the character's local space. Blender pose rotations are relative to the bones rest position, so the add-on must convert these rotations.  
[Read More]({{site.url}}/2021/11/04/json-pose-1.html)
</div>
</div>
</div>

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
## Generative \#3: Creepy Crawly
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/generative/tent_preview.png#preview) 
</div>
<div class="6u 12u$(mobile)">
I realized much of the work I did in the teeth demo would be simplified with curve nodes from the Blender 3.0 alpha. To practice with these tools, I created this toy which uses a combination of techniques in order to build a tentacle or vine that follows any bezier curve and is populated with random wiggly offshoots at regular intervals.  
[Read More]({{site.url}}/2021/07/22/generative-crawly.html)
</div>
</div>
</div>

<div class="entry">
## Generative \#2: Teeth
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/generative/teeth_preview.png#preview) 
</div>
<div class="6u 12u$(mobile)">
My first project with Blender's geometry nodes. This generator creates teeth and gums from a variety of input parameters and a selectable base tooth object. Inputs affect the width, length, curvature, and density of the mouth. Automatic operations are applied based on the tooth object, such as rotating it to align with the curvature of the mouth and scaling its width based on its position in the mouth. Gums are created from a volume which recedes based on distance to points on tooth object.  
[Read More]({{site.url}}/2021/07/22/generative-teeth.html)
</div>
</div>
</div>

<div class="entry">
## Generative \#1: Substance Cow Print
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/generative/cow_print.png#preview) 
</div>
<div class="6u 12u$(mobile)">
My first project in Substance Designer, a scalable cow print pattern mask. Made by composing perlin noise with a series of slope blur operations before clamping it to values of 0 or 1, giving the pattern sharp boundaries.  
</div>
</div>
</div>

<div class="entry">
## Web News Search
<div class="row">
<div class="6u 12u$(mobile)">
<video autoplay muted loop>
    <source src="{{site.url}}/code/news-search/news-search.mp4" type="video/mp4">
</video>
</div>
<div class="6u 12u$(mobile)">
A pipeline for web news archival and search. Consists of three parts: an ETL tool which transfers articles from Common Crawl archives to an Amazon Elasticsearch index, a Java application which implements a REST API for search queries, and a React frontend which allows users to easily set up searches and preview results.  
[Read More]({{site.url}}/2021/02/13/news-search.html)
</div>
</div>
</div>

<div class="entry">
## Introstructure - Maya MEL Scene Generation
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/code/introstructure/code_snip.png#preview)  
</div>
<div class="6u 12u$(mobile)">
A MEL script and base scene for Maya which generates a scenic river valley of variable length and animates a boat with camera to float gently down the river. My first experience using MEL. The main hurdle at the start was establishing a comfortable working setup with PyMEL and using VS Code as a useful editor. I will be expanding on this project in the coming months, focusing on performance improvements, automated rendering control, additional variants for scenery, and new points of interest.  
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

<!-- <div class="entry">
## title
<div class="row">
<div class="6u 12u$(mobile)">
![preview]({{site.url}}/path-to-image#preview)  
</div>
<div class="6u 12u$(mobile)">
Description  
[Read More]({{site.url}}/path-to-blog)
</div>
</div>
</div> -->