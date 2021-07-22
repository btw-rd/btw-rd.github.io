---
layout: post
title: "Generative #2: Teeth"
date: 2021-07-22
tags: [tech art, blender, generative, geometry nodes, teeth, character art, 3d art, 3d, tools]
---
<style>img[src*="#preview"]{float:right; width:60%; padding-left: 20px}video{float:left; width:60%; padding-right: 20px}</style>

<video autoplay muted loop>
    <source src="{{site.url}}/code/generative/teeth_inputs.mp4" type="video/mp4">
</video>

My first project with Blender's geometry nodes. This generator creates teeth and gums from a variety of input parameters and a selectable base tooth object. Inputs affect the width, length, curvature, and density of the mouth. Automatic operations are applied based on the tooth object, such as rotating it to align with the curvature of the mouth and scaling its width based on its position in the mouth. Gums are created from a volume which recedes based on distance to points on tooth object.  

![preview-image]({{site.url}}/code/generative/teeth_nodes_input.png#preview)
![preview-image]({{site.url}}/code/generative/teeth_nodes_1.png#preview)
![preview-image]({{site.url}}/code/generative/teeth_nodes_2.png#preview)
The geometry begins its life as a line primitive determined by the group inputs, which is shaped into a parabola. The x position, as a form of index, also used to scale each individual point, both overall and with an additional scaling along the x axis for the molars. Finally, each tooth object is rotated to align with the normal of the curve at its x value.  

In order to create the gums, a second line is created just below the first. This line is subdivided, smoothed, and converted into a volume, keeping in mind the increased scale of the teeth as the x coordinate increases. In order to adapt the gums around each tooth, a mask is created by taking each distance to the surface of the nearest tooth from every point on the volume. The distance is clamped, inverted, and scaled to such that the highest values are those close to the outside of the tooth, falling off gently, and points inside are untouched. This mask value is then used to move the points along their normals, causing an effect of shrinking around the teeth.  

Fortunately, many of the long strings of math used in this project, such as aligning to the normal, have been bundled up into convenient nodes meant to work with curve objects in Blender 3.0. Nevertheless, this served as a fun refresher and exercise in fundamental processes with curves and distance.  

<video autoplay muted loop>
    <source src="{{site.url}}/code/generative/teeth_objects.mp4" type="video/mp4">
</video>