---
layout: post
title: "Paint-By-Numbers Add-on & Shader"
date: 2020-09-27
tags: [code, tools, Blender, DCC, add-on, plugin, script, tech art, digital content, addon, Python, gamedev, game]
---
<style>img[src*="#preview"]{float:left; width:60%; padding-right: 20px}img[src*="#preview-right"]{float:right; width:60%; padding-left: 20px}</style>

![preview-image]({{site.url}}/code/paint-by-numbers/pbn-addon.png#preview)
A Blender add-on designed to recreate the material system of equipment in Final Fantasy XIV. The texture is split up into up to 16 sections based on the alpha channel of the Normal Map. Each section is then mapped to values from a 'palette' file which contains inputs for the diffuse, specular, emissive, and gloss values. Additional inputs control tiling, transformable textures that can be mixed into a section, as well as a control for the in-game dye system to overwrite certain parts of the palette. 

The key to this system is that it allows preset palettes, or portions of palettes, to be easily interchanged to create palette swaps, material variants, and player customization of colors.  

The UI portion of the addon includes Import/Export, Maps, and inputs for each section ('rows'). Each row contains color picker inputs for diffuse, specular, and emissive, and an input box for gloss, which is converted into a color value. All 4 are tied to a single value on one of 4 ramps in the shader. Another box contains an ID value which selects from a list of tileable materials. A 4 value array below is essentially used as components in a dot product to transform the mapping of the tileable material. The final box selects from an enum of potential options, but the proper values for this box have since been further reverse-engineered so I will have to update it in the future.  

![preview-image]({{site.url}}/code/paint-by-numbers/pbn-shader.png#preview-right)
All of the necessary data for the shader is packed into two maps + the palette file. The Normal has typical Normal red and green channels, but the blue channel is used for transparency, and alpha acts as a mask for the palette row. The 'Multi' map has base AO, specularity, and gloss maps, which are multiplied with the palette value for their section. These maps can be either loaded from outside or selected from images already added to project, both from within the addon UI.  

The import and export buttons read/write the values to external files built to the specifications of the engine tools. In the files, values are stored as half-floats in an arrangement similar to a DDS file (though it has since drifted over time). The resulting image can thought of as a 16x4 DDS file, with each section making up a row of pixels. The first pixel is RGB diffuse; the next is RGB specular with Alpha gloss; the third is RGB emissive with Alpha tileable ID; and the fourth is the transformation values for the tileable material.