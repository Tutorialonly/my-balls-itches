function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Instakill Note' then
			if difficulty == 1 then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'EX Note');
			end
			if difficulty == 0 then
				if downscroll then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_fire alt');
				else
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_fire');
				end
			end
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'InstaKill Note' and difficulty == 1 then
			setProperty('health', -2);
	end
	if noteType == 'InstaKill Note' and difficulty == 0 then
			setProperty('health', -0.02);
	end
end