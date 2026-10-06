# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.scale.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.scale.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.scale](https://github.com/guaguanco127/br.scale)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[About](#About)   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.scale/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="About"></a>About

Two small Max/MSP abstractions that take a modulator, such as an LFO, an oscillator or a function generator, and scale it so that the result **sounds** even to the ear. The modulator can move between -1 and 1 (Bipolar) or between 0 and 1 (Unipolar), chosen with the Input switch.

A straight (linear) scaling sounds uneven, because our ears don't hear volume or pitch in straight lines. These abstractions bend the curve so that equal movements of the modulator sound like equal changes.

**br.scale.amp.1.1:** Scales the modulator to a gain between 0 and 1 for volume (tremolo, swells). Apart from the Input switch, there are no settings. It always uses the same curve, chosen so that the loudness sounds even from silence to full volume.

**br.scale.freq.1.1:** Scales the modulator to a frequency between "Freq 1" and "Freq 2" in Hz, for an oscillator's pitch (vibrato, sirens) or a filter's cutoff (filter sweeps). The sweep moves in octaves, so it sounds even from low to high on either one.

### Why the curves?

**Volume:** A sound has to get about 10 dB louder to sound twice as loud. With a straight scaling, the middle of the LFO's movement is a gain of 0.5, which is only 6 dB down and sounds almost full. The tremolo seems to stay loud most of the time and then suddenly dip. br.scale.amp.1.1 puts the middle at 10 dB down, which sounds half as loud, so the movement sounds even all the way down to silence.

**Frequency:** Our ears hear pitch in octaves (every doubling of frequency is one octave). With a straight scaling from 100 to 1600 Hz, the middle is 850 Hz: about three octaves above the bottom but less than one octave below the top, so the sweep seems to rush through the low end. br.scale.freq.1.1 puts the middle at 400 Hz, exactly two octaves from each end. Filters are heard the same way, so the same curve works for both.
