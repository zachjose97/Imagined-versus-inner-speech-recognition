
function initialize(box)

	dofile(box:get_config("${Path_Data}") .. "/plugins/stimulation/lua-stimulator-stim-codes.lua")

	-- each stimulation sent that gets rendered by Display Cue Image box 
	-- should probably have a little period of time before the next one or the box wont be happy
	
	baseline_duration = 5
	cue_duration = 2
	break_duration = 0.5
	thinking_duration = 2
	speaking_duration = 5
	rest_duration = 3
	mouth_duration = 2
	post_trial_duration = 1
	
	sequence =
	{ 
		-- 1
     	OVTK_StimulationId_Label_0F,
		OVTK_StimulationId_Label_07,
		OVTK_StimulationId_Label_02,
		OVTK_StimulationId_Label_0E,
		OVTK_StimulationId_Label_10,
		OVTK_StimulationId_Label_11,
		OVTK_StimulationId_Label_03,
		OVTK_StimulationId_Label_06,
		OVTK_StimulationId_Label_13,
	    OVTK_StimulationId_Label_14,
		OVTK_StimulationId_Label_0A,
		OVTK_StimulationId_Label_09,
		OVTK_StimulationId_Label_12,
		OVTK_StimulationId_Label_0C,
		OVTK_StimulationId_Label_04,
		OVTK_StimulationId_Label_01,
		OVTK_StimulationId_Label_05,
		OVTK_StimulationId_Label_08,
		OVTK_StimulationId_Label_0D,
		OVTK_StimulationId_Label_0B,
		OVTK_StimulationId_Label_07,
		OVTK_StimulationId_Label_0D,
		OVTK_StimulationId_Label_13,
		OVTK_StimulationId_Label_12,
		OVTK_StimulationId_Label_09, 

		-- 2
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_02, 

		-- 3
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_0C,

		-- 4
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_13, 
 						
		--5
		-- OVTK_StimulationId_Label_04, 
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_08,

		-- 6
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_0C, 

		--7
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_0D,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_06, 

		--8
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_08,
		-- OVTK_StimulationId_Label_09,
		-- OVTK_StimulationId_Label_06,
		-- OVTK_StimulationId_Label_02,
		-- OVTK_StimulationId_Label_13,
		-- OVTK_StimulationId_Label_0A,
		-- OVTK_StimulationId_Label_0B,
		-- OVTK_StimulationId_Label_05,
		-- OVTK_StimulationId_Label_11,
		-- OVTK_StimulationId_Label_01,
		-- OVTK_StimulationId_Label_0E,
		-- OVTK_StimulationId_Label_12,
		-- OVTK_StimulationId_Label_0F,
		-- OVTK_StimulationId_Label_0C,
		-- OVTK_StimulationId_Label_10,
		-- OVTK_StimulationId_Label_07,
		-- OVTK_StimulationId_Label_03,
		-- OVTK_StimulationId_Label_14,
		-- OVTK_StimulationId_Label_04,
		-- OVTK_StimulationId_Label_0D,
	}
	

end

function process(box)

	local t = 0


	-- Delays before the trial sequence starts

	box:send_stimulation(1, OVTK_StimulationId_BaselineStart, t, 0)
	t = t + baseline_duration

	-- creates each trial
	for i = 1, #sequence do

		box:send_stimulation(1, OVTK_GDF_Start_Of_Trial, t, 0)
			
		--word
		box:send_stimulation(1, OVTK_StimulationId_Label_00, t, 0)
		box:send_stimulation(1, sequence[i], t, 0)
		t = t + cue_duration
		
		for j = 1, 5 do
			--break
			box:send_stimulation(1, OVTK_GDF_Beep, t, 0)
			t = t + break_duration
			
			--inner speech
			box:send_stimulation(1, OVTK_GDF_Feedback_Continuous, t, 0)
			t = t + thinking_duration
		end
		
		--mouth movement
		box:send_stimulation(1, OVTK_GDF_Tongue, t, 0)
		t = t + mouth_duration
		
		for j = 1, 5 do
			--break
			box:send_stimulation(1, OVTK_GDF_Beep, t, 0)
			t = t + break_duration
		
			--imagined speech
			box:send_stimulation(1, OVTK_GDF_Feedback_Discrete, t, 0)
			t = t + thinking_duration
		end
		
		--rest
		box:send_stimulation(1, OVTK_StimulationId_RestStart, t, 0)
		t = t + rest_duration
		
		-- end of thinking epoch and trial
		box:send_stimulation(1, OVTK_StimulationId_VisualStimulationStop, t, 0)
		box:send_stimulation(1, OVTK_StimulationId_RestStop, t, 0)
		t = t + post_trial_duration
		box:send_stimulation(1, OVTK_GDF_End_Of_Trial, t, 0)	
	end

	-- send end for completeness	
	box:send_stimulation(1, OVTK_GDF_End_Of_Session, t, 0)
	t = t + 5

	-- used to cause the acquisition scenario to stop and denote final end of file
	box:send_stimulation(1, OVTK_StimulationId_ExperimentStop, t, 0)
		
end
