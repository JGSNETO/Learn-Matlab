function charnum = char_counter(frame,character)
fid = fopen(frame,'r');
if fid < 0
    charnum = -1;
    return
end
if ischar(character) == 0
    charnum = -1;
    return
end
inhalt = fscanf (fid, '%c');
charnum = count(inhalt,character);
end