---
layout: post
title: "Synestaether Demo"
date: 2020-05-25
tags: [code, unity, gamedev, indie game, 3d, puzzle, physics, feedback]
---
<style>img[src*="#preview"]{width:100%}</style>

![preview-image]({{site.url}}/code/synestaether/preview.png#preview)  
A six week game design project by my 3-person student team, Sans Serif Studios, as part of CS_377 Game Design Studio at Northwestern University. Synestaether is a physics-based puzzle game where the player configures a 3d cube-based world in order to construct routes for marbles to reach their designated buckets.  
A significant part of the design process was focused on creating intuitive controls and building an extensible framework for adding and storing level data. My favorite case study we were able to iterate on is the development of the rotation control.  
We set out with the goal of narrowing down the navigation of a 3d space into a package that the player can easily grok. Anybody who has ever opened up Maya or Unity and struggled to look around can relate to this challenge. Our main conceit is that the game is entirely centered on this central platform, so the most important movement of the camera is simply rotating around the origin.  
The solution we came to quickly was a simple ring around the play field, which the player could click and drag to rotate the view. Early testing immediately showed that users did not pick up on the use of the ring and wrote it off as part of the environment. We immediately moved to mitigate this by adding a sphere-shaped 'handle' to act as a focal point. We further improved its noticeability by adding feedback, increasing in opacity when hovered.  
By that point, users tended to find the handle, but it was a cumbersome solution for long moves. As a result we added 'stops' around the ring in the cardinal directions which could be selected to snap the view in 90 degree increments. Once again, we copied over the feedback from the handle, increasing opacity on hover. On top of that, to associate the snaps with rotation, they are placed on the path of the ring such that the handle passes through them while rotating.  
View the readme in the zip for instructions and deeper explanations than what is portrayed in the game. I plan to return to this for more polish and more levels in a couple months.  
[Demo]({{site.url}}/code/synestaether/synestaether.zip)