# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.scale.1.2



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)  
  
Repository for br.scale.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.scale](https://github.com/guaguanco127/br.scale)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[What's new in 1.2](#New12)  
[About](#About)  
[State outlet](#State)  
[Max/MSP Abstractions](https://github.com/guaguanco127/br.scale/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP  
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.scale/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external or VST/AU plugin, or to reuse the code in your own RNBO patches (needs RNBO)  

You can use them as abstractions within Max/MSP. With RNBO you can also build your own Max external or plugin from the included RNBO patches. This is a Max/MSP-only release (no Max for Live device).

## <a name="New12"></a>What's new in 1.2

- **Two files each:** br.scale.amp.1.2 and br.scale.freq.1.2 are the plain objects, with no UI: their inlets go straight into gen~, so br.scale.freq's Freq 1 and Freq 2 take signals as well as numbers (patch an LFO into Freq 2 to move the top of the range). br.scale.amp.ui.1.2 and br.scale.freq.ui.1.2 are the versions with the dials and Input switch, for a [bpatcher].
- **State outlet** on the .ui versions (the last outlet): sends input (and freq1, freq2 on br.scale.freq) as named messages the moment they change.
- New RNBO patches, one for each, to build your own Max external or VST/AU plugin.
- **New example patch** you can listen to: a tone swelling up and down, and a sawtooth through a lowpass filter sweep, each with a compare menu that switches between br.scale and a plain linear scaling, so you can hear the difference. Plus tabs for the plain objects and the State outlet.
- Inlets, the outlet and the curves are unchanged. If you used 1.1 in a [bpatcher], choose the .ui.1.2 file; if you used it as an object box, type the plain name (for example br.scale.freq.1.2).

## <a name="About"></a>About

Two small Max/MSP abstractions that take a modulator, such as an LFO, an oscillator or a function generator, and scale it so that the result **sounds** even to the ear. The modulator can move between -1 and 1 (Bipolar) or between 0 and 1 (Unipolar), chosen with the Input switch.

A straight (linear) scaling sounds uneven, because our ears don't hear volume or pitch in straight lines. These abstractions bend the curve so that equal movements of the modulator sound like equal changes.

**br.scale.amp:** Scales the modulator to a gain between 0 and 1 for volume (tremolo, swells). Apart from the Input switch, there are no settings. It always uses the same curve, chosen so that the loudness sounds even from silence to full volume.

**br.scale.freq:** Scales the modulator to a frequency between "Freq 1" and "Freq 2" in Hz, for an oscillator's pitch (vibrato, sirens) or a filter's cutoff (filter sweeps). The sweep moves in octaves, so it sounds even from low to high on either one.

### Why the curves?

**Volume:** A sound has to get about 10 dB louder to sound twice as loud. With a straight scaling, the middle of the LFO's movement is a gain of 0.5, which is only 6 dB down and sounds almost full. The tremolo seems to stay loud most of the time and then suddenly dip. br.scale.amp puts the middle at 10 dB down, which sounds half as loud, so the movement sounds even all the way down to silence.

**Frequency:** Our ears hear pitch in octaves (every doubling of frequency is one octave). With a straight scaling from 100 to 1600 Hz, the middle is 850 Hz: about three octaves above the bottom but less than one octave below the top, so the sweep seems to rush through the low end. br.scale.freq puts the middle at 400 Hz, exactly two octaves from each end. Filters are heard the same way, so the same curve works for both.

The example patch lets you hear both: its compare menus switch between br.scale and a straight scaling while the sound plays.

## <a name="State"></a>State outlet

The last outlet of each .ui file (State) sends the current settings as named messages the moment they change, for example `freq1 200.`, `freq2 2000.`, `input 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route freq1 freq2 input] (just [route input] for br.scale.amp). Repeats are filtered out.

## <a name="Credits"></a>Credits

The amplitude curve follows Stevens' power law of loudness (sones).
