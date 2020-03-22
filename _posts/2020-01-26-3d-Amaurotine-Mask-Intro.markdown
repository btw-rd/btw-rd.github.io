---
layout: post
title: "3d Amaurotine Mask - Intro"
date: 2020-01-26
tags: [3d modeling, 3ds Max, FFXIV, game assets, projects, 3d printing]
---
<style>img[src*="#preview"]{width:100%}</style>

![preview-image]({{site.url}}/files/3d-Amaurotine-Mask-Intro/preview.png#preview)  
My first exploration into 3d printing. Based on an asset from Final Fantasy XIV: Shadowbringers, I experimented on a few methods to increase the visual fidelity of the model for printing. Without the obvious visual advantage of vertex normals in 3d rendering, the whole thing would have to be much smoother on its own. Working in 3ds Max, at first I manually removed edges with the PolyDraw Optimize tool in order to get the model into mostly quads. From there I carefully inserted edge loops or manually cut new edges to bring up the poly count. With the number of polys I had to work with increased, I conformed the high poly model to the original low poly while relaxing to smooth out the original edges.  
<br/>
From this point, I decided to learn some new features with subdivision surfaces. I increased the subdivision across the whole mesh, using the Crease and OpenSubDiv modifiers to maintain the sharpness of the 'beak'. While I imagine I'll want to do a run with a cleaned up workflow before calling it a 'final' version, I also experimented with the process to close up the mesh and make it printable using the Shell modifier along with a spline to bevel the edge.  
<br/>
The original can be seen on the left, compared to my experimental version on the right.