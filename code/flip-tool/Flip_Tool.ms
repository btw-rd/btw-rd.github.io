(
	struct vertData (totalInd, indices, boneIDs, listIDs, names, weights)

	rollout FlipTool "Flip Tool" (
		button btnMirrorClone "Mirror Clone" aling:#center width:120
		button btnFlipSkin "Flip Skin" align:#center width:120
		button btnCombo "Do Both" align:#center width:120

		-- dir: 1 l-> r, -1 r-> l
		fn addPair dir thisBoneID thisVert tempNames =
		(
			local pairListID = skinOps.GetListIDByBoneID newSkin thisBoneID + dir
			local pairBoneID = skinOps.GetBoneIDByListID newSkin pairListID
			local pairBoneName = skinOps.GetBoneName newSkin pairBoneID 1
			local pairInd = thisVert.totalInd + 1
			
			skinOps.selectBone newSkin pairBoneID
			skinOps.SetWeight newSkin 0.001
			skinOps.SetWeight newSkin 0.0000
			
			append tempNames pairBoneName
			thisVert.totalInd = pairInd
			append thisVert.indices pairInd
			append thisVert.boneIDs pairBoneID
			append thisVert.listIDs pairListID
			append thisVert.names pairBoneName
			append thisVert.weights 0.0000
		)

		fn prepVert vert thisVert =
		(
			--figure out which bones we're starting with
			local tempNames = #()
			for boneInd in 1 to (skinOps.GetVertexWeightCount newSkin vert) do
			(
				append tempNames (skinOps.GetBoneName newSkin (skinOps.GetVertexWeightBoneID newskin vert boneInd) 1)
			)
		-- 	print "bone names: "
		-- 	print tempNames
			
			for boneInd in 1 to (skinOps.GetVertexWeightCount newSkin vert) do
			(
				append thisVert.indices boneInd
				local thisBoneID = (skinOps.GetVertexWeightBoneID newSkin vert boneInd)
				
				append thisVert.boneIDs thisBoneID
				append thisVert.listIDs (skinOps.GetListIDByBoneID newSkin thisBoneID)
				
				local thisBoneName = skinOps.GetBoneName newSkin thisBoneID 1
				append thisVert.names thisBoneName
				
				append thisVert.weights (skinOps.GetVertexWeight newSkin vert boneInd)
				
				local thisBoneTag = substring thisBoneName (thisBoneName.count - 1) 2
				local thisBoneTagless = substring thisBoneName 1 (thisBoneName.count - 2)
				if (thisBoneTag == "_l") then
				(
					if (findItem tempNames (thisBoneTagless + "_r") == 0) do
					(
						addPair 1 thisBoneID thisVert tempNames
					)
				) else if (thisBoneTag == "_r") do
				(
					if (findItem tempNames (thisBoneTagless + "_l") == 0) do
					(
						addPair -1 thisBoneID thisVert tempNames
					)
				)
			)
		-- 	print thisVert
		-- 	print tempNames
		)

		fn flipVert vert = 
		(
			skinOps.SelectVertices newSkin vert
			local thisVert = vertData totalInd:(skinOps.GetVertexWeightCount newSkin vert) indices:#()  boneIDs:#() listIDs:#() names:#() weights:#()
			prepVert vert thisVert
			for boneInd in 1 to (skinOps.GetVertexWeightCount newSkin vert) do
			(
				local structInd = findItem thisVert.indices boneInd
				local boneName = thisVert.names[structInd]
				if (substring boneName (boneName.count - 1) 2 == "_l") do
				(
					local pairStructInd = findItem thisVert.listIDs (thisVert.listIDs[structInd] + 1)
					IDs = #(thisVert.boneIDs[structInd], thisVert.boneIDs[pairStructInd])
					weights = #(thisVert.weights[pairStructInd], thisVert.weights[structInd])
					
		-- 			print IDs
		-- 			print weights
					
					skinOps.SetVertexWeights newSkin vert IDs weights
				)
			)
		)

		fn flipSkin = 
		(
			global newSkin = $.modifiers[#Skin]
			modPanel.setCurrentObject newSkin
			skinOps.RemoveZeroWeights newSkin
			oldLimit = newSkin.boneLimit
			newSkin.boneLimit = 20
			for vert in 1 to (skinOps.GetNumberVertices newSkin) do (flipVert vert)
			newSkin.boneLimit = oldLimit
		)
		
		fn mirrorClone = 
		(
			global newCopy = copy $
			select newCopy
			scale newCopy [-1,1,1]
			newCopy.modifiers[#Skin].always_deform = false
			newCopy.modifiers[#Skin].always_deform = true
		)
		
		fn combo =
		(
			mirrorClone()
			flipSkin()
		)
		
		on btnMirrorClone pressed do mirrorClone()
		on btnFlipSkin pressed do flipSkin()
		on btnCombo pressed do combo()
	)
	createDialog FlipTool
)