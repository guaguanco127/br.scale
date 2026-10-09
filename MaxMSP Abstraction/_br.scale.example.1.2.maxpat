{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 393.0, 163.0, 1000.0, 640.0 ],
        "description": "_br.scale.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
        "showrootpatcherontab": 0,
        "showontab": 0,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 700.0, 15.0, 520.0, 47.0 ],
                    "text": "_br.scale.example.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the amplitude curve follows Stevens' power law of loudness (sones)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 79.0, 20.0 ],
                    "text": "br.scale"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 40.0, 660.0, 33.0 ],
                    "text": "Scale a modulator (LFO, oscillator, function generator) so the result SOUNDS even: br.scale.amp for volume, br.scale.freq for pitch or filter cutoff."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 80.0, 660.0, 47.0 ],
                    "text": "Two files each. br.scale.<amp|freq>.ui.1.2 has the dials / Input switch and a State outlet: load it in a [bpatcher]. br.scale.<amp|freq>.1.2 is the plain object: its inlets go straight into gen~, so they take numbers or signals (see the plain object tab)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-4",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 135.0, 520.0, 74.0 ],
                    "text": "Tabs:\n  amp: a tone swelling up and down: br.scale vs linear\n  freq: a saw through a lowpass svf~ sweep: br.scale vs linear\n  plain object: both plain objects, with an LFO on Freq 2\n  State outlet: reading both .ui State outlets"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 230.0, 600.0, 20.0 ],
                    "text": "Outputs start muted at -70 dB: turn on audio, then raise the slider slowly."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 255.0, 303.0, 20.0 ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-amp",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1000.0, 614.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 15.0, 160.0, 20.0 ],
                                    "text": "br.scale.amp.ui.1.2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 40.0, 760.0, 33.0 ],
                                    "text": "A slow sine LFO swells a tone up and down. Pick br.scale or linear in the compare menu and listen: linear sits loud and then dips suddenly; br.scale rises and falls evenly, its middle at 0.32 (-10 dB), half as loud."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-lc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 80.0, 55.0, 20.0 ],
                                    "text": "LFO Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-llm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 75.0, 80.0, 87.0, 22.0 ],
                                    "text": "loadmess 0.25"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "a-lf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 15.0, 105.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-lfo",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 135.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-tc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 463.0, 155.0, 55.0, 20.0 ],
                                    "text": "tone Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-tlm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 674.0, 255.0, 87.0, 22.0 ],
                                    "text": "loadmess 220."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "a-tf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 614.0, 280.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-tone",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 614.0, 310.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "a-bp",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "br.scale.amp.ui.1.2.maxpat",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "signal", "" ],
                                    "patching_rect": [ 15.0, 175.0, 83.0, 50.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-bpc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 144.0, 220.0, 20.0 ],
                                    "text": "the Input switch: a sine is Bipolar"
                                }
                            },
                            {
                                "box": {
                                    "comment": "State from br.scale.amp.ui.1.2",
                                    "id": "a-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 55.0, 240.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-outc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 50.0, 373.0, 200.0, 20.0 ],
                                    "text": "State: see the State outlet tab"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-vca",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 387.0, 328.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-scope",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 15.0, 417.0, 220.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-scc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 552.0, 220.0, 20.0 ],
                                    "text": "gain, 0 to 1 (the chosen curve)"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-gain",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 371.0, 373.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -70.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "Out amp",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Out",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "out_amp"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-g-c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 426.0, 373.0, 198.0, 20.0 ],
                                    "text": "starts muted: raise slowly"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-tog",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 268.0, 417.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-tog-c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 293.0, 417.0, 77.0, 20.0 ],
                                    "text": "audio on/off"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-dac",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 371.0, 523.0, 72.0, 22.0 ],
                                    "text": "dac~ 1 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-cc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 288.0, 234.0, 60.0, 20.0 ],
                                    "text": "compare"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-clm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 353.0, 234.0, 70.0, 22.0 ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "a-cmu",
                                    "items": [ "br.scale (even)", ",", "linear (uneven)" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 288.0, 259.0, 160.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-rt",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 227.0, 210.0, 80.0, 22.0 ],
                                    "text": "route input"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-lin",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 100.0, 100.0, 600.0, 320.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-in1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 15.0, 192.5, 22.0 ],
                                                    "text": "in 1 @comment modulator"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-in2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 222.5, 15.0, 245.0, 22.0 ],
                                                    "text": "in 2 @comment input @default 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "// LINEAR scaling, for comparison only: modulator -> gain in a straight line.\n// The middle of the sweep is 0.5 = only -6 dB, so it sounds loud most of the time and then dips fast.\nu = in2 > 0.5 ? clamp(in1, 0, 1) : (clamp(in1, -1, 1) + 1) * 0.5;\nout1 = u;\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "g-cb",
                                                    "maxclass": "codebox",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 55.0, 520.0, 160.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-out",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 235.0, 40.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "g-out", 0 ],
                                                    "source": [ "g-cb", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g-cb", 0 ],
                                                    "source": [ "g-in1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g-cb", 1 ],
                                                    "source": [ "g-in2", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 126.0, 260.0, 120.0, 22.0 ],
                                    "text": "gen~ @title linear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-linc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 452.0, 245.0, 230.0, 20.0 ],
                                    "text": "the same LFO scaled in a straight line"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "a-cmp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 100.0, 100.0, 660.0, 330.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "br.scale signal",
                                                    "id": "ac-i0",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 15.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "linear signal",
                                                    "id": "ac-i1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 140.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "0 = br.scale, 1 = linear",
                                                    "id": "ac-i2",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 265.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-t",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 265.0, 60.0, 45.0, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-e0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 265.0, 95.0, 40.0, 22.0 ],
                                                    "text": "== 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-e1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 345.0, 95.0, 40.0, 22.0 ],
                                                    "text": "== 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-m0",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 265.0, 125.0, 45.0, 22.0 ],
                                                    "text": "$1 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-m1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 345.0, 125.0, 45.0, 22.0 ],
                                                    "text": "$1 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-l0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 265.0, 155.0, 45.0, 22.0 ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-l1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 345.0, 155.0, 45.0, 22.0 ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-x0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 15.0, 195.0, 40.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-x1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 140.0, 195.0, 40.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-sum",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 15.0, 230.0, 40.0, 22.0 ],
                                                    "text": "+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "the chosen signal",
                                                    "id": "ac-o",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 265.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "ac-c",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 410.0, 125.0, 220.0, 33.0 ],
                                                    "text": "50 ms crossfade between the two, so switching never clicks"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-m0", 0 ],
                                                    "source": [ "ac-e0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-m1", 0 ],
                                                    "source": [ "ac-e1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-x0", 0 ],
                                                    "source": [ "ac-i0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-x1", 0 ],
                                                    "source": [ "ac-i1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-t", 0 ],
                                                    "source": [ "ac-i2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-x0", 1 ],
                                                    "source": [ "ac-l0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-x1", 1 ],
                                                    "source": [ "ac-l1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-l0", 0 ],
                                                    "source": [ "ac-m0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-l1", 0 ],
                                                    "source": [ "ac-m1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-o", 0 ],
                                                    "source": [ "ac-sum", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-e0", 0 ],
                                                    "source": [ "ac-t", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-e1", 0 ],
                                                    "source": [ "ac-t", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-sum", 0 ],
                                                    "source": [ "ac-x0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ac-sum", 1 ],
                                                    "source": [ "ac-x1", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 15.0, 300.0, 120.0, 22.0 ],
                                    "text": "p compare"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "a-cmp", 0 ],
                                    "source": [ "a-bp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-out", 0 ],
                                    "order": 1,
                                    "source": [ "a-bp", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-rt", 0 ],
                                    "order": 0,
                                    "source": [ "a-bp", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-cmu", 0 ],
                                    "source": [ "a-clm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-scope", 0 ],
                                    "order": 1,
                                    "source": [ "a-cmp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-vca", 1 ],
                                    "order": 0,
                                    "source": [ "a-cmp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-cmp", 2 ],
                                    "source": [ "a-cmu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-dac", 1 ],
                                    "source": [ "a-gain", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-dac", 0 ],
                                    "source": [ "a-gain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-lfo", 0 ],
                                    "source": [ "a-lf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-bp", 0 ],
                                    "order": 1,
                                    "source": [ "a-lfo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-lin", 0 ],
                                    "midpoints": [ 24.5, 165.4569091796875, 135.5, 165.4569091796875 ],
                                    "order": 0,
                                    "source": [ "a-lfo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-cmp", 1 ],
                                    "source": [ "a-lin", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-lf", 0 ],
                                    "source": [ "a-llm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-lin", 1 ],
                                    "source": [ "a-rt", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-tone", 0 ],
                                    "source": [ "a-tf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-tf", 0 ],
                                    "source": [ "a-tlm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-dac", 0 ],
                                    "source": [ "a-tog", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-vca", 0 ],
                                    "source": [ "a-tone", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-gain", 1 ],
                                    "order": 0,
                                    "source": [ "a-vca", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "a-gain", 0 ],
                                    "order": 1,
                                    "source": [ "a-vca", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 15.0, 290.0, 55.0, 22.0 ],
                    "text": "p amp"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-freq",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1000.0, 614.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.5, 16.0, 160.0, 20.0 ],
                                    "text": "br.scale.freq.ui.1.2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-2",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 25.5, 41.0, 850.0, 47.0 ],
                                    "text": "A slow sine LFO through br.scale.freq sweeps the cutoff of a lowpass [svf~] on a sawtooth. Pick br.scale or linear in the compare menu and listen: linear rushes through the low end and hangs in the highs; br.scale spends the same time in every octave. The range opens to 100 - 6000 Hz at load (turn the dials freely)."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-lc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 193.0, 101.0, 55.0, 20.0 ],
                                    "text": "LFO Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-llm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 253.0, 101.0, 87.0, 22.0 ],
                                    "text": "loadmess 0.25"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "f-lf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 193.0, 126.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-lfo",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 193.0, 156.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "enablehscroll": 0,
                                    "enablevscroll": 0,
                                    "id": "f-bp",
                                    "lockeddragscroll": 0,
                                    "lockedsize": 0,
                                    "maxclass": "bpatcher",
                                    "name": "br.scale.freq.ui.1.2.maxpat",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "signal", "" ],
                                    "patching_rect": [ 193.0, 196.0, 105.0, 100.0 ],
                                    "viewvisibility": 1
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-bpc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 308.0, 211.0, 280.0, 20.0 ],
                                    "text": "Freq 1 / Freq 2 in Hz, and the Input switch"
                                }
                            },
                            {
                                "box": {
                                    "comment": "State from br.scale.freq.ui.1.2",
                                    "id": "f-out",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 270.5, 333.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-outc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 317.0, 258.0, 200.0, 20.0 ],
                                    "text": "State: see the State outlet tab"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-lvl",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 261.0, 516.0, 50.0, 22.0 ],
                                    "text": "*~ 0.2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-snap",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 111.0, 391.0, 85.0, 22.0 ],
                                    "text": "snapshot~ 50"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "f-hz",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 111.0, 421.0, 70.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-hzc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 186.0, 421.0, 70.0, 20.0 ],
                                    "text": "cutoff Hz"
                                }
                            },
                            {
                                "box": {
                                    "id": "f-gain",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 679.0, 418.5, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -70.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "Out freq",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Out",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "out_freq"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-g-c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 734.0, 418.5, 198.0, 20.0 ],
                                    "text": "starts muted: raise slowly"
                                }
                            },
                            {
                                "box": {
                                    "id": "f-tog",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 579.0, 474.5, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-tog-c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 604.0, 474.5, 100.0, 20.0 ],
                                    "text": "audio on/off"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-dac",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 679.0, 568.5, 72.0, 22.0 ],
                                    "text": "dac~ 1 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 428.0, 101.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-dl",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 428.0, 126.0, 65.0, 22.0 ],
                                    "text": "deferlow"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-tb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 428.0, 151.0, 45.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 428.0, 176.0, 40.0, 22.0 ],
                                    "text": "100."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 478.0, 176.0, 45.0, 22.0 ],
                                    "text": "6000."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-initc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 528.0, 151.0, 200.0, 20.0 ],
                                    "text": "after load: range 100 - 6000 Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-cc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 368.0, 346.0, 60.0, 20.0 ],
                                    "text": "compare"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-clm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 433.0, 346.0, 70.0, 22.0 ],
                                    "text": "loadmess 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "f-cmu",
                                    "items": [ "br.scale (even)", ",", "linear (uneven)" ],
                                    "maxclass": "umenu",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 368.0, 371.0, 160.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-sc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 10.0, 337.0, 55.0, 20.0 ],
                                    "text": "saw Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-slm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 70.0, 337.0, 86.0, 22.0 ],
                                    "text": "loadmess 110."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "f-sf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 10.0, 362.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-saw",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 10.0, 392.0, 45.0, 22.0 ],
                                    "text": "saw~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-qc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 352.0, 418.0, 20.0, 20.0 ],
                                    "text": "Q"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-qlm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 377.0, 418.0, 80.0, 22.0 ],
                                    "text": "loadmess 0.5"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "f-qf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 352.0, 443.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-rt",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 337.0, 293.0, 160.0, 22.0 ],
                                    "text": "route freq1 freq2 input"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-lin",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "dsp.gen",
                                        "rect": [ 100.0, 100.0, 600.0, 320.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-in1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 15.0, 192.5, 22.0 ],
                                                    "text": "in 1 @comment modulator"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-in2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 222.5, 15.0, 260.0, 22.0 ],
                                                    "text": "in 2 @comment freq1 @default 200"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-in3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 497.5, 15.0, 267.5, 22.0 ],
                                                    "text": "in 3 @comment freq2 @default 2000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-in4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 780.0, 15.0, 245.0, 22.0 ],
                                                    "text": "in 4 @comment input @default 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "code": "// LINEAR scaling, for comparison only: modulator -> Hz in a straight line between Freq 1 and Freq 2.\n// From 100 to 6000 Hz the middle is 3050 Hz, about 5 octaves up and 1 octave down, so the sweep rushes through the lows.\nlo = min(in2, in3);\nhi = max(in2, in3);\nu = in4 > 0.5 ? clamp(in1, 0, 1) : (clamp(in1, -1, 1) + 1) * 0.5;\nout1 = lo + (hi - lo) * u;\n",
                                                    "fontface": 0,
                                                    "fontname": "<Monospaced>",
                                                    "fontsize": 12.0,
                                                    "id": "g-cb",
                                                    "maxclass": "codebox",
                                                    "numinlets": 4,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 15.0, 55.0, 520.0, 160.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "g-out",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 235.0, 40.0, 22.0 ],
                                                    "text": "out 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "g-out", 0 ],
                                                    "source": [ "g-cb", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g-cb", 0 ],
                                                    "source": [ "g-in1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g-cb", 1 ],
                                                    "source": [ "g-in2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g-cb", 2 ],
                                                    "source": [ "g-in3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "g-cb", 3 ],
                                                    "source": [ "g-in4", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 337.0, 328.0, 160.0, 22.0 ],
                                    "text": "gen~ @title linear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-linc",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 568.0, 405.5, 84.0, 47.0 ],
                                    "text": "the same LFO scaled in a straight line"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-cmp",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 100.0, 100.0, 660.0, 330.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "br.scale signal",
                                                    "id": "fc-i0",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 15.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "linear signal",
                                                    "id": "fc-i1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 140.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "0 = br.scale, 1 = linear",
                                                    "id": "fc-i2",
                                                    "index": 3,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 265.0, 15.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-t",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "int", "int" ],
                                                    "patching_rect": [ 265.0, 60.0, 45.0, 22.0 ],
                                                    "text": "t i i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-e0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 265.0, 95.0, 40.0, 22.0 ],
                                                    "text": "== 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-e1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 345.0, 95.0, 40.0, 22.0 ],
                                                    "text": "== 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-m0",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 265.0, 125.0, 45.0, 22.0 ],
                                                    "text": "$1 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-m1",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 345.0, 125.0, 45.0, 22.0 ],
                                                    "text": "$1 50"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-l0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 265.0, 155.0, 45.0, 22.0 ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-l1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "signal", "bang" ],
                                                    "patching_rect": [ 345.0, 155.0, 45.0, 22.0 ],
                                                    "text": "line~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-x0",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 15.0, 195.0, 40.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-x1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 140.0, 195.0, 40.0, 22.0 ],
                                                    "text": "*~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-sum",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "signal" ],
                                                    "patching_rect": [ 15.0, 230.0, 40.0, 22.0 ],
                                                    "text": "+~"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "the chosen signal",
                                                    "id": "fc-o",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 15.0, 265.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "id": "fc-c",
                                                    "linecount": 2,
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 410.0, 125.0, 220.0, 33.0 ],
                                                    "text": "50 ms crossfade between the two, so switching never clicks"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-m0", 0 ],
                                                    "source": [ "fc-e0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-m1", 0 ],
                                                    "source": [ "fc-e1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-x0", 0 ],
                                                    "source": [ "fc-i0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-x1", 0 ],
                                                    "source": [ "fc-i1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-t", 0 ],
                                                    "source": [ "fc-i2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-x0", 1 ],
                                                    "source": [ "fc-l0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-x1", 1 ],
                                                    "source": [ "fc-l1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-l0", 0 ],
                                                    "source": [ "fc-m0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-l1", 0 ],
                                                    "source": [ "fc-m1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-o", 0 ],
                                                    "source": [ "fc-sum", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-e0", 0 ],
                                                    "source": [ "fc-t", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-e1", 0 ],
                                                    "source": [ "fc-t", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-sum", 0 ],
                                                    "source": [ "fc-x0", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "fc-sum", 1 ],
                                                    "source": [ "fc-x1", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 253.0, 399.0, 120.0, 22.0 ],
                                    "text": "p compare"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-svf",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 4,
                                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                                    "patching_rect": [ 261.0, 474.0, 100.0, 22.0 ],
                                    "text": "svf~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "f-svfc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 248.0, 501.0, 75.0, 20.0 ],
                                    "text": "lowpass out"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "f-cmp", 0 ],
                                    "source": [ "f-bp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-out", 0 ],
                                    "order": 1,
                                    "source": [ "f-bp", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-rt", 0 ],
                                    "order": 0,
                                    "source": [ "f-bp", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-cmu", 0 ],
                                    "source": [ "f-clm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-snap", 0 ],
                                    "midpoints": [ 262.5, 431.0, 240.55035400390625, 431.0, 240.55035400390625, 381.0, 120.5, 381.0 ],
                                    "order": 1,
                                    "source": [ "f-cmp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-svf", 1 ],
                                    "order": 0,
                                    "source": [ "f-cmp", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-cmp", 2 ],
                                    "source": [ "f-cmu", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-tb", 0 ],
                                    "source": [ "f-dl", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-dac", 1 ],
                                    "source": [ "f-gain", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-dac", 0 ],
                                    "source": [ "f-gain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-dl", 0 ],
                                    "source": [ "f-lb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lfo", 0 ],
                                    "source": [ "f-lf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-bp", 0 ],
                                    "order": 1,
                                    "source": [ "f-lfo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lin", 0 ],
                                    "midpoints": [ 202.5, 184.2025146484375, 346.5, 184.2025146484375 ],
                                    "order": 0,
                                    "source": [ "f-lfo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-cmp", 1 ],
                                    "source": [ "f-lin", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lf", 0 ],
                                    "source": [ "f-llm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-gain", 1 ],
                                    "midpoints": [ 270.5, 570.6661987304688, 547.5787963867188, 570.6661987304688, 547.5787963867188, 296.0, 717.5, 296.0 ],
                                    "order": 0,
                                    "source": [ "f-lvl", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-gain", 0 ],
                                    "midpoints": [ 270.5, 573.9144897460938, 535.9542236328125, 573.9144897460938, 535.9542236328125, 296.0, 688.5, 296.0 ],
                                    "order": 1,
                                    "source": [ "f-lvl", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-bp", 1 ],
                                    "source": [ "f-m1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-bp", 2 ],
                                    "source": [ "f-m2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-svf", 2 ],
                                    "source": [ "f-qf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-qf", 0 ],
                                    "source": [ "f-qlm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lin", 3 ],
                                    "source": [ "f-rt", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lin", 2 ],
                                    "source": [ "f-rt", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lin", 1 ],
                                    "source": [ "f-rt", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-svf", 0 ],
                                    "midpoints": [ 19.5, 467.484130859375, 270.5, 467.484130859375 ],
                                    "source": [ "f-saw", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-saw", 0 ],
                                    "source": [ "f-sf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-sf", 0 ],
                                    "source": [ "f-slm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-hz", 0 ],
                                    "source": [ "f-snap", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-lvl", 0 ],
                                    "source": [ "f-svf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-m1", 0 ],
                                    "source": [ "f-tb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-m2", 0 ],
                                    "source": [ "f-tb", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "f-dac", 0 ],
                                    "source": [ "f-tog", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 80.0, 290.0, 55.0, 22.0 ],
                    "text": "p freq"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-plain",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 393.0, 189.0, 1000.0, 614.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 15.0, 400.0, 20.0 ],
                                    "text": "the plain objects: br.scale.freq.1.2 and br.scale.amp.1.2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 40.0, 901.0, 33.0 ],
                                    "text": "No dials or switch: the inlets go straight into gen~, so they take numbers OR signals. A vibrato LFO sweeps the pitch while a slow LFO (a signal) moves Freq 2 between 400 and 1000 Hz; a tremolo LFO through the amp core sets the volume."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-vc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 80.0, 100.0, 20.0 ],
                                    "text": "vibrato LFO Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-vlm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 105.0, 80.0, 22.0 ],
                                    "text": "loadmess 0.5"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "p-vf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 15.0, 135.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-vib",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 165.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-1c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 150.0, 80.0, 50.0, 20.0 ],
                                    "text": "Freq 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-1lm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 150.0, 105.0, 87.0, 22.0 ],
                                    "text": "loadmess 200."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "p-1f",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 150.0, 135.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 285.0, 80.0, 100.0, 20.0 ],
                                    "text": "Freq 2 LFO Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2lm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 285.0, 105.0, 87.0, 22.0 ],
                                    "text": "loadmess 0.05"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "p-2f",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 285.0, 135.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2lfo",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 285.0, 165.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2mul",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 285.0, 195.0, 55.0, 22.0 ],
                                    "text": "*~ 300."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2add",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 285.0, 225.0, 55.0, 22.0 ],
                                    "text": "+~ 700."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-2l",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 345.0, 225.0, 150.0, 20.0 ],
                                    "text": "Freq 2: 400 to 1000 Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-tc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 80.0, 100.0, 20.0 ],
                                    "text": "tremolo LFO Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-tlm",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 520.0, 105.0, 73.0, 22.0 ],
                                    "text": "loadmess 4."
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "p-tf",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.0, 135.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-trem",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 520.0, 165.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-in",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 650.0, 135.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-inc",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 680.0, 130.0, 260.0, 33.0 ],
                                    "text": "Input: off = Bipolar, on = Unipolar. On with this bipolar sine, the bottom half is cut to silence."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-fcore",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 265.0, 420.0, 22.0 ],
                                    "text": "br.scale.freq.1.2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-acore",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 520.0, 265.0, 150.0, 22.0 ],
                                    "text": "br.scale.amp.1.2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-osc",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 305.0, 50.0, 22.0 ],
                                    "text": "cycle~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-snap",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 130.0, 305.0, 85.0, 22.0 ],
                                    "text": "snapshot~ 50"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "p-hz",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 220.0, 305.0, 70.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-hzc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 295.0, 305.0, 30.0, 20.0 ],
                                    "text": "Hz"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-vca",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 217.0, 401.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-scope",
                                    "maxclass": "live.scope~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 650.0, 305.0, 220.0, 130.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-scc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 650.0, 440.0, 140.0, 20.0 ],
                                    "text": "tremolo gain, 0 to 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-gain",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 201.0, 444.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_initial": [ -70.0 ],
                                            "parameter_initial_enable": 1,
                                            "parameter_longname": "Out plain",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "Out",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "out_plain"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-g-c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 41.0, 450.0, 198.0, 20.0 ],
                                    "text": "starts muted: raise slowly"
                                }
                            },
                            {
                                "box": {
                                    "id": "p-tog",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 41.0, 480.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-tog-c",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 66.0, 480.0, 100.0, 20.0 ],
                                    "text": "audio on/off"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "p-dac",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 201.0, 594.0, 72.0, 22.0 ],
                                    "text": "dac~ 1 2"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "p-fcore", 1 ],
                                    "source": [ "p-1f", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-1f", 0 ],
                                    "source": [ "p-1lm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-fcore", 2 ],
                                    "source": [ "p-2add", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-2lfo", 0 ],
                                    "source": [ "p-2f", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-2mul", 0 ],
                                    "source": [ "p-2lfo", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-2f", 0 ],
                                    "source": [ "p-2lm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-2add", 0 ],
                                    "source": [ "p-2mul", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-scope", 0 ],
                                    "order": 0,
                                    "source": [ "p-acore", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-vca", 1 ],
                                    "order": 1,
                                    "source": [ "p-acore", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-osc", 0 ],
                                    "order": 1,
                                    "source": [ "p-fcore", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-snap", 0 ],
                                    "order": 0,
                                    "source": [ "p-fcore", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-dac", 1 ],
                                    "source": [ "p-gain", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-dac", 0 ],
                                    "source": [ "p-gain", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-acore", 1 ],
                                    "source": [ "p-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-vca", 0 ],
                                    "source": [ "p-osc", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-hz", 0 ],
                                    "source": [ "p-snap", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-trem", 0 ],
                                    "source": [ "p-tf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-tf", 0 ],
                                    "source": [ "p-tlm", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-dac", 0 ],
                                    "source": [ "p-tog", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-acore", 0 ],
                                    "source": [ "p-trem", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-gain", 1 ],
                                    "order": 0,
                                    "source": [ "p-vca", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-gain", 0 ],
                                    "order": 1,
                                    "source": [ "p-vca", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-vib", 0 ],
                                    "source": [ "p-vf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-fcore", 0 ],
                                    "source": [ "p-vib", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "p-vf", 0 ],
                                    "source": [ "p-vlm", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 145.0, 290.0, 110.0, 22.0 ],
                    "text": "p \"plain object\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-state",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 0.0, 26.0, 1000.0, 614.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-txt",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 510.0, 60.0 ],
                                    "text": "br.scale's .ui files send their state out of their LAST outlet as named messages, the moment a control changes (dial moves, numbers into the inlets, preset recalls). Read them by NAME with [route]. The plain objects have no State outlet: whoever drives them already knows the values."
                                }
                            },
                            {
                                "box": {
                                    "comment": "State from the amp tab",
                                    "id": "s-in0",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 95.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-c0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 65.0, 100.0, 120.0, 20.0 ],
                                    "text": "from the amp tab"
                                }
                            },
                            {
                                "box": {
                                    "comment": "State from the freq tab",
                                    "id": "s-in1",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 300.0, 95.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-c1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 335.0, 100.0, 120.0, 20.0 ],
                                    "text": "from the freq tab"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-ra",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 30.0, 160.0, 80.0, 22.0 ],
                                    "text": "route input"
                                }
                            },
                            {
                                "box": {
                                    "id": "s-a0",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 195.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-la0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 220.0, 50.0, 20.0 ],
                                    "text": "input"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-rf",
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "", "" ],
                                    "patching_rect": [ 300.0, 160.0, 170.0, 22.0 ],
                                    "text": "route freq1 freq2 input"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "s-f0",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 300.0, 195.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lf0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 220.0, 50.0, 20.0 ],
                                    "text": "freq1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "s-f1",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 370.0, 195.0, 60.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lf1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 370.0, 220.0, 50.0, 20.0 ],
                                    "text": "freq2"
                                }
                            },
                            {
                                "box": {
                                    "id": "s-f2",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 440.0, 195.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lf2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 440.0, 220.0, 50.0, 20.0 ],
                                    "text": "input"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-n",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 260.0, 240.0, 20.0 ],
                                    "text": "input: 0 = Bipolar, 1 = Unipolar"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s-ra", 0 ],
                                    "source": [ "s-in0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-rf", 0 ],
                                    "source": [ "s-in1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-a0", 0 ],
                                    "source": [ "s-ra", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f0", 0 ],
                                    "source": [ "s-rf", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f1", 0 ],
                                    "source": [ "s-rf", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f2", 0 ],
                                    "source": [ "s-rf", 2 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 15.0, 330.0, 128.0, 22.0 ],
                    "text": "p \"State outlet\""
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-state", 0 ],
                    "source": [ "obj-amp", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-state", 1 ],
                    "source": [ "obj-freq", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-amp::a-bp::obj-9": [ "Input", "Input", 0 ],
            "obj-amp::a-gain": [ "Out amp", "Out", 0 ],
            "obj-freq::f-bp::obj-16": [ "Input", "Input", 0 ],
            "obj-freq::f-bp::obj-4": [ "Freq 1", "Freq 1", 0 ],
            "obj-freq::f-bp::obj-5": [ "Freq 2", "Freq 2", 0 ],
            "obj-freq::f-gain": [ "Out freq", "Out", 0 ],
            "obj-plain::p-gain": [ "Out plain", "Out", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-amp::a-bp::obj-9": {
                    "parameter_longname": "Input"
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}