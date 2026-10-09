# Max/MSP RNBO Patches for External Creation: br.scale.amp.rnbo.1.2 and br.scale.freq.rnbo.1.2  
  
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)  
  
Repository for br.scale.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.scale](https://github.com/guaguanco127/br.scale)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents

[About](#About)  
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  
[Credits](#Credits)  

## <a name="About"></a>About

A modulator (-1 to 1, or 0 to 1 with Input set to Unipolar) scaled so the result sounds even: br.scale.amp to a gain from 0 to 1 on an equal-loudness curve, br.scale.freq to a frequency between Freq 1 and Freq 2 that moves in octaves. There is one patch for each:

| Patch | Inlets / Outlets | Same as |
|---|---|---|
| br.scale.amp.rnbo.1.2 | Modulator, Input / Gain | br.scale.amp.1.2 |
| br.scale.freq.rnbo.1.2 | Modulator, Freq 1, Freq 2, Input / Frequency | br.scale.freq.1.2 |

Inside each [rnbo~], Input (Bipolar, Unipolar; default Bipolar) is a param, plus Freq1 (20 - 20000 Hz, default 200) and Freq2 (20 - 20000 Hz, default 2000) in br.scale.freq. The inlets set the same params, so each external has the same inlets and outlets as its plain abstraction. The gen~ code inside is the same as the abstraction's, so you can also copy it into your own RNBO patches.

To try one, open the patch: a sine LFO (1 Hz to start; change it in the number box) goes through the [rnbo~], and the attrui controls change the params. In br.scale.amp.rnbo.1.2 the gain makes a tremolo on a 220 Hz tone and shows on a scope; in br.scale.freq.rnbo.1.2 the frequency sets the pitch of a sine (a siren), with a number box showing the Hz. Raise the muted gain slider to hear it.

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way.

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open the patch you want, for example br.scale.freq.rnbo.1.2.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object after its abstraction with a ~ at the end, for example br.scale.freq.1.2~ (or br.scale.amp.1.2~), and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object with that name in any patch. It has the same inlets and outlets as the plain abstraction, except that Freq 1 and Freq 2 take numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can also export these patches as VST3 or AU plugins (Export Sidebar > Audio Plugin Export). Input, Freq1 and Freq2 become the plugin's parameters. The patches are mono (one channel in, one out). Their output is a control signal (a gain or a frequency), not audio, so they are most useful inside a plugin or patch that uses that signal.

## <a name="Credits"></a>Credits

The amplitude curve follows Stevens' power law of loudness (sones).
