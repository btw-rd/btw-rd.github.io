---
layout: post
title: "Generative #3: Creepy Crawly"
date: 2021-07-22
tags: [tech art, blender, generative, geometry nodes, creepy crawly, character art, 3d art, 3d, tools]
---
<style>img[src*="#preview"]{float:right; width:60%; padding-left: 20px}video{float:left; width:60%; padding-right: 20px}img[src*="#left"]{float:left; width:60%; padding-right: 20px}</style>

<video autoplay muted loop>
    <source src="{{site.url}}/code/generative/tent_demo.mp4" type="video/mp4">
</video>

I realized much of the work I did in the teeth demo would be simplified with curve nodes from the Blender 3.0 alpha. To practice with these tools, I created this toy which uses a combination of techniques in order to build a tentacle or vine that follows any bezier curve and is populated with random wiggly offshoots at regular intervals. This revision was inspired by the curve nodes tutorial by Erindale Woodford, found [here](https://youtu.be/9Y_lMMsFeXg).  

There are three main parts to the final product; a primary bezier curve is used to shape the path of our creepy-crawly, a second curve creates its profile, and a third object contains the nodes which populate the length of the curve with offshoots. (While curves are usable geometry in nodes, the geometry node modifier itself cannot be attached to a curve object; I need an extraneous mesh object to hold onto it for now). The offshoots are pulled from a collection of shapes made with their own nodes-based generator; instancing cannot randomize the seed for each offshoot, so a number have to be prepared in advance with a variety of seeds.

![preview-image]({{site.url}}/code/generative/tent_curve_nodes.png#preview)
Offshoots are instanced along the curve based on distance (although spacing an even number or using the original control points is also possible). Each point is aligned to the normal, scaled, transalted to the edge of the body, and randomly rotated around the normal axis in order to provide additional variance.

<div>
<video autoplay muted loop>
    <source src="{{site.url}}/code/generative/tent_offshoots.mp4" type="video/mp4">
</video>
<img src="{{site.url}}/code/generative/tent_offshoot_nodes_1.png#left" style="padding-top: 20px">
</div>
The offshoots are generated from a line where each point's position is randomized with increasing spread as its index increases, such that the origin point of the curve stays put. The amount of variance is controlled by an input and scaled by the length input of the graph as well. In order to create a shape from the line, each point is scaled to create a gently tapering effect, then the line of points is turned into a mesh via a volume conversion.  

The resulting shape is quite satisfying to move around and watch as it responds, but I don't foresee this being of much use given how dependent it is several disparate elements within the scene. It would be much more concise if I could instantiate offshoots with a random seed rather than depending on a pre-prepared collection.
