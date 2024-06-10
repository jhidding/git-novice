function Pandoc(doc)
	local challenges = {
		pandoc.Header(1, doc.meta.title),
	}
	for i, el in pairs(doc.blocks) do
		if (el.t == "Div" and el.classes[1] == "challenge") or (el.t == "Header") then
			table.insert(challenges, el)
		end
	end
	return pandoc.Pandoc(challenges, doc.meta)
end
