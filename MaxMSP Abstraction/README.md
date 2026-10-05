# Max/MSP Abstraction:   
## br.scale.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.scale.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.scale](https://github.com/guaguanco127/br.scale)  
Additional programs can be found here: [https://github.com/guaguanco127/plugins](https://github.com/guaguanco127/plugins)

These files were created with Max 9. 

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
 
 

## <a name="About"></a>About

Two small Max/MSP abstractions that take a modulator, such as an LFO or an oscillator, moving between -1 and 1, and scale it so that the result **sounds** even to the ear.

A straight (linear) scaling sounds uneven, because our ears don't hear volume or pitch in straight lines. These abstractions bend the curve so that equal movements of the modulator sound like equal changes.

### br.scale.amp.1.0

Scales the modulator to a gain between 0 and 1 for volume (tremolo, swells). There are no settings. It always uses the same curve, chosen so that the loudness sounds even from silence to full volume.

A sound has to get about 10 dB louder to sound twice as loud. With a straight scaling, the middle of the LFO's movement is a gain of 0.5, which is only 6 dB down and sounds almost full. The tremolo seems to stay loud most of the time and then suddenly dip. br.scale.amp.1.0 puts the middle at 10 dB down, which sounds half as loud, so the movement sounds even all the way down to silence.

| Modulator | -1 | -0.5 | 0 | 0.5 | 1 |
|---|---|---|---|---|---|
| Gain | 0 (silence) | 0.1 | 0.32 (-10 dB, half as loud) | 0.62 | 1 (full) |

If you want a curve you can adjust, use Max's [scale~] object instead. br.scale.amp.1.0 is meant to be plugged in and just work.

### br.scale.freq.1.0

Scales the modulator to a frequency between "Freq 1" and "Freq 2" in Hz, for an oscillator's pitch (vibrato, sirens) or a filter's cutoff (filter sweeps). 

Our ears hear pitch in octaves (every doubling of frequency is one octave). With a straight scaling from 100 to 1600 Hz, the middle is 850 Hz: about three octaves above the bottom but less than one octave below the top, so the sweep seems to rush through the low end. br.scale.freq.1.0 puts the middle at 400 Hz, exactly two octaves from each end. Filters are heard the same way, so the same curve works for both.

**Freq 1:** One end of the frequency range, in Hz, between 20 and 20000. The default is 200 Hz.

**Freq 2:** The other end of the frequency range, in Hz, between 20 and 20000. The default is 2000 Hz. 

Either one can be the larger. Whichever is lower is always where the modulator's -1 lands, so you can turn the dials past each other freely. Turning a dial glides to the new range over 20 ms, so it never clicks. The output never goes above half the sample rate, so it is safe to send to a filter.



## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste br.scale.amp.1.0.maxpat and/or br.scale.freq.1.0.maxpat inside of the same folder as the Max patch you are using. The two are independent: each one works without the other.

3. **br.scale.amp.1.0:** Create an object called br.scale.amp.1.0 (for example: [br.scale.amp.1.0], do not include brackets). It has no controls, so no bpatcher is needed.

4. **br.scale.freq.1.0:** To use the built-in dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the br.scale.freq.1.0.maxpat located within the same folder as your project. Size the bpatcher to 105 x 79 to show all of the controls.

5. Alternatively, create an object called br.scale.freq.1.0 (for example: [br.scale.freq.1.0], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

### br.scale.amp.1.0

| Inlet / Outlet | Name | Type | Range |
|---|---|---|---|
| Inlet 1 | Modulator In | Signal | -1 to 1 (anything outside is clipped) |
| Outlet 1 | Gain | Signal | 0 to 1 |

Connect the outlet to the right inlet of a [*~] object, and your audio to its left inlet.

### br.scale.freq.1.0

The first inlet is for the modulator signal. Every control has its own inlet, in the same order as the controls. Sending a value to an inlet moves its on-screen dial too, so the display always matches the sound. Hover over an inlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Modulator In | Signal | -1 to 1 (anything outside is clipped) | |
| 2 | Freq 1 | Float | 20 - 20000 Hz | 200 |
| 3 | Freq 2 | Float | 20 - 20000 Hz | 2000 |

The outlet is the frequency in Hz, as a signal. Connect it to the frequency inlet of an oscillator (for example [cycle~]) or to the cutoff inlet of a filter that accepts a signal.
