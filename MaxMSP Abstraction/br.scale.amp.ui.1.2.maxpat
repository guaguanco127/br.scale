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
        "openrect": [ 84.0, 104.0, 73.0, 50.0 ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 73.0,
        "description": "br.scale.amp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 422.0, 15.0, 520.0, 47.0 ],
                    "text": "br.scale.amp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the amplitude curve follows Stevens' power law of loudness (sones)."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 120.0, 54.0, 44.0, 15.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 13.0, 24.0, 49.0, 21.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "val1", "val2" ],
                            "parameter_longname": "Input",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Input",
                            "parameter_type": 2
                        }
                    },
                    "text": "Bipolar",
                    "texton": "Unipolar",
                    "varname": "Input"
                }
            },
            {
                "box": {
                    "comment": "Modulator In (Signal) -1 to 1 when Input is Bipolar, 0 to 1 when Input is Unipolar. LFO, oscillator or function generator. Clipped to the chosen range",
                    "id": "obj-1",
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 15.0, 255.0, 200.0, 22.0 ],
                    "text": "br.scale.amp.1.2"
                }
            },
            {
                "box": {
                    "comment": "Gain (Signal) 0 to 1 on an equal-loudness curve. Feed the right inlet of *~",
                    "id": "obj-3",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 295.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Input Range (Int) 0 = Bipolar (-1 to 1), 1 = Unipolar (0 to 1). Switching crossfades over 20 ms. Default 0",
                    "id": "obj-4",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 15.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 250.0, 15.0, 142.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 79.0, 20.0 ],
                    "text": "scale to amp",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.scale.amp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
                    "bgcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "bordercolor": [ 0.0, 0.0, 0.0, 1.0 ],
                    "hint": "br.scale.amp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
                    "id": "obj-8",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 400.0, 250.0, 128.0, 128.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 0.0, 83.0, 50.0 ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st-input-t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 120.0, 84.0, 45.0, 22.0 ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st-input-c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "int", "int" ],
                    "patching_rect": [ 200.0, 114.0, 75.0, 22.0 ],
                    "text": "change -1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st-input-p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 200.0, 144.0, 110.0, 22.0 ],
                    "text": "prepend input"
                }
            },
            {
                "box": {
                    "comment": "State (Message): input, sent the moment a control changes. Pick them out by name: [route input]",
                    "id": "obj-state",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 200.0, 295.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-why",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 345.0, 175.0, 300.0, 47.0 ],
                    "text": "[br.scale.amp.1.2] is the real object: the gen~ lives inside it. This file adds the Input switch and the State outlet."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-st-input-t", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-st-input-p", 0 ],
                    "source": [ "obj-st-input-c", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-state", 0 ],
                    "source": [ "obj-st-input-p", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "source": [ "obj-st-input-t", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-st-input-c", 0 ],
                    "source": [ "obj-st-input-t", 1 ]
                }
            }
        ]
    }
}