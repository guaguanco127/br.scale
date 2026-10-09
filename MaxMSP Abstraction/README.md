# Max/MSP Abstraction:  
## br.scale.1.2



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)  
  
Repository for br.scale.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.scale](https://github.com/guaguanco127/br.scale)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[What's new in 1.2](#New12)  
[About](#About)  
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)  



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

### Input: Bipolar / Unipolar

Both abstractions have an **Input** switch that tells them what range your modulator moves in:

- **Bipolar** (the default): -1 to 1, like [cycle~] or most LFOs.
- **Unipolar:** 0 to 1, like a function generator, an envelope or [phasor~].

The curves are the same either way: the bottom of the range is the bottom of the curve, and the top is the top. If the switch doesn't match your modulator, only half of the curve gets used (for example, a 0 to 1 envelope on Bipolar never goes below the middle). Flipping the switch while sound is playing crossfades over 20 ms, so it never clicks.

### br.scale.amp

A sound has to get about 10 dB louder to sound twice as loud. With a straight scaling, the middle of the LFO's movement is a gain of 0.5, which is only 6 dB down and sounds almost full. The tremolo seems to stay loud most of the time and then suddenly dip. br.scale.amp puts the middle at 10 dB down, which sounds half as loud, so the movement sounds even all the way down to silence.

| Modulator (Bipolar) | -1 | -0.5 | 0 | 0.5 | 1 |
|---|---|---|---|---|---|
| Modulator (Unipolar) | 0 | 0.25 | 0.5 | 0.75 | 1 |
| Gain | 0 (silence) | 0.1 | 0.32 (-10 dB, half as loud) | 0.62 | 1 (full) |

If you want a curve you can adjust, use Max's [scale~] object instead. br.scale.amp is meant to be plugged in and just work.

### br.scale.freq

Our ears hear pitch in octaves (every doubling of frequency is one octave). With a straight scaling from 100 to 1600 Hz, the middle is 850 Hz: about three octaves above the bottom but less than one octave below the top, so the sweep seems to rush through the low end. br.scale.freq puts the middle at 400 Hz, exactly two octaves from each end. Filters are heard the same way, so the same curve works for both.

**Freq 1:** One end of the frequency range, in Hz, between 20 and 20000. The default is 200 Hz.

**Freq 2:** The other end of the frequency range, in Hz, between 20 and 20000. The default is 2000 Hz.

Either one can be the larger. Whichever is lower is always where the bottom of the modulator lands (-1 on Bipolar, 0 on Unipolar), so you can turn the dials past each other freely. Changing the range glides over 20 ms (in octaves), so it never clicks. The output never goes above half the sample rate, so it is safe to send to a filter.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.scale.amp.1.2 | Plain object, no UI. Inlets: Modulator, Input. Outlet: Gain |
| br.scale.amp.ui.1.2 | The same with the Input switch and a State outlet, ready for a [bpatcher] (83 x 50) |
| br.scale.freq.1.2 | Plain object, no UI. Freq 1 and Freq 2 take numbers or signals. Inlets: Modulator, Freq 1, Freq 2, Input. Outlet: Frequency |
| br.scale.freq.ui.1.2 | The same with dials, the Input switch and a State outlet, ready for a [bpatcher] (105 x 100) |
| _br.scale.example.1.2 | Example patch: open this first |

Each .ui file contains its plain object, so keep them together. Each plain object and its .ui have the same inlets and outlets in the same order (the .ui adds State last), so they swap without rewiring. br.scale.amp and br.scale.freq are independent: each works without the other.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy the files you want into the same folder as the Max patch you are using, for example br.scale.freq.1.2.maxpat + br.scale.freq.ui.1.2.maxpat (each .ui uses its plain object).

3. For the version with the dials and switch, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the .ui file (for example br.scale.freq.ui.1.2.maxpat). Size the bpatcher to 83 x 50 for br.scale.amp.ui.1.2, or 105 x 100 for br.scale.freq.ui.1.2.

4. For the plain object, create an object with its name (for example: br.scale.freq.1.2, do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first inlet is for the modulator signal. Every control has its own inlet after that, in the same order as the controls. On the .ui files, sending a value to an inlet moves its on-screen control too, so the display always matches the sound. On the plain br.scale.freq, Freq 1 and Freq 2 also take signals. Hover over an inlet in Max to see its range and default.

**br.scale.amp**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Modulator In | Signal | -1 to 1 (Bipolar) or 0 to 1 (Unipolar); anything outside is clipped | |
| 2 | Input | Int | 0 = Bipolar, 1 = Unipolar | 0 |

The first outlet is the gain, as a signal from 0 to 1. Connect it to the right inlet of a [*~] object, and your audio to its left inlet.

**br.scale.freq**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Modulator In | Signal | -1 to 1 (Bipolar) or 0 to 1 (Unipolar); anything outside is clipped | |
| 2 | Freq 1 | Float (Signal too on the plain object) | 20 - 20000 Hz | 200 |
| 3 | Freq 2 | Float (Signal too on the plain object) | 20 - 20000 Hz | 2000 |
| 4 | Input | Int | 0 = Bipolar, 1 = Unipolar | 0 |

The first outlet is the frequency in Hz, as a signal. Connect it to the frequency inlet of an oscillator (for example [cycle~]) or to the cutoff inlet of a filter that accepts a signal (for example [svf~]).

**Outlets**

| Outlet | Name | Type |
|---|---|---|
| 1 | Gain (amp) / Frequency (freq) | Signal |
| 2 | State (.ui only): the settings as named messages, see [State outlet](#State) | Message |

For stereo, use one abstraction per channel (or feed both channels from one).

## <a name="State"></a>State outlet

The last outlet of each .ui file (State) sends the current settings as named messages the moment they change, for example `freq1 200.`, `freq2 2000.`, `input 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route freq1 freq2 input] (just [route input] for br.scale.amp), not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| input | Int | 0 Bipolar, 1 Unipolar |
| freq1 (freq only) | Float | 20 to 20000 Hz |
| freq2 (freq only) | Float | 20 to 20000 Hz |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain objects have no State outlet: whatever drives them already knows the values.

## <a name="Example"></a>Example Patch

Open _br.scale.example.1.2.maxpat (keep it in the same folder as all the br.scale files). The first page introduces the pair; the tabs at the top hold the examples. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **amp:** A slow sine LFO swells a tone up and down through br.scale.amp.ui.1.2. The compare menu switches between br.scale and a straight (linear) scaling of the same LFO, with a short crossfade: linear sits loud and then dips suddenly, br.scale rises and falls evenly. The scope shows the gain curve.
- **freq:** A slow sine LFO through br.scale.freq.ui.1.2 sweeps the cutoff of a lowpass [svf~] on a sawtooth, over 100 - 6000 Hz. The compare menu switches to a straight scaling: linear rushes through the low end and hangs in the highs, br.scale spends the same time in every octave. A number box shows the cutoff in Hz.
- **plain object:** Both plain objects with no UI: a vibrato LFO through br.scale.freq.1.2, with a slow LFO (a signal) moving Freq 2 between 400 and 1000 Hz, and a tremolo LFO through br.scale.amp.1.2.
- **State outlet:** the amp and freq tabs' settings, read by name with [route] into number boxes.

## <a name="Credits"></a>Credits

The amplitude curve follows Stevens' power law of loudness (sones).
