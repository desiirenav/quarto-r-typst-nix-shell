-- Inline Math
Math = function(m)
  if not quarto.doc.is_format('typst') then
    return nil
  end
  if m.mathtype == "InlineMath" then
    return pandoc.RawInline('typst', '$'.. m.text .. '$')
  end
end

-- DisplayMath
-- We want to replace all Para by a RawBlock
Para = function(p)
  if not quarto.doc.is_format('typst') then
    return nil
  end
  if p.content[1].t == "Math" and p.content[1].mathtype == "DisplayMath" then
    return pandoc.RawBlock('typst', '$' .. p.content[1].text .. '$')
  end
end

