{
	"patcher": {
		"description": "br.scale.freq.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 1,
			"revision": 4,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [
			85.0,
			104.0,
			640.0,
			480.0
		],
		"openinpresentation": 1,
		"boxes": [
			{
				"box": {
					"id": "obj-signature",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						320.0,
						-43.0,
						520.0,
						60.0
					],
					"text": "br.scale.freq.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the amplitude curve follows Stevens' power law of loudness (sones).",
					"linecount": 3
				}
			},
			{
				"box": {
					"id": "obj-11",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						55.0,
						-43.0,
						150.0,
						20.0
					],
					"presentation": 1,
					"presentation_rect": [
						0.0,
						0.0,
						99.0,
						20.0
					],
					"text": "scale to frequency",
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					]
				}
			},
			{
				"box": {
					"comment": "Modulator In (Signal) -1 to 1 when Input is Bipolar, 0 to 1 when Input is Unipolar. LFO, oscillator or function generator. Clipped to the chosen range",
					"id": "obj-1",
					"index": 0,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						15.0,
						15.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Freq 1 (Float) 20 - 20000 Hz. One end of the range; order does not matter. Default 200",
					"id": "obj-2",
					"index": 0,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						120.0,
						15.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"comment": "Freq 2 (Float) 20 - 20000 Hz. Other end of the range; order does not matter. Default 2000",
					"id": "obj-3",
					"index": 0,
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						190.0,
						15.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"id": "obj-4",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						120.0,
						50.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						5.0,
						25.0,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								200.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Freq 1",
							"parameter_mmax": 20000.0,
							"parameter_mmin": 20.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Freq 1",
							"parameter_type": 0,
							"parameter_unitstyle": 3
						}
					},
					"varname": "Freq 1",
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "obj-5",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						190.0,
						50.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						55.0,
						25.0,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								2000.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Freq 2",
							"parameter_mmax": 20000.0,
							"parameter_mmin": 20.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Freq 2",
							"parameter_type": 0,
							"parameter_unitstyle": 3
						}
					},
					"varname": "Freq 2",
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					]
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 12.0,
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						15.0,
						295.0,
						340.0,
						22.0
					],
					"text": "br.scale.freq.1.2"
				}
			},
			{
				"box": {
					"comment": "Frequency (Signal) Hz on an exponential curve between Freq 1 and Freq 2. Feed an oscillator or filter frequency",
					"id": "obj-9",
					"index": 0,
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15.0,
						335.0,
						30.0,
						30.0
					]
				}
			},
			{
				"box": {
					"maxclass": "inlet",
					"id": "obj-13",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						260,
						15,
						30.0,
						30.0
					],
					"comment": "Input Range (Int) 0 = Bipolar (-1 to 1), 1 = Unipolar (0 to 1). Switching crossfades over 20 ms. Default 0"
				}
			},
			{
				"box": {
					"maxclass": "live.text",
					"id": "obj-16",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						260.0,
						54.0,
						44.0,
						15.0
					],
					"parameter_enable": 1,
					"presentation": 1,
					"presentation_rect": [
						28.0,
						76.0,
						49.0,
						21.0
					],
					"texton": "Unipolar",
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_enum": [
								"Bipolar",
								"Unipolar"
							],
							"parameter_longname": "Input",
							"parameter_mmax": 1,
							"parameter_modmode": 0,
							"parameter_shortname": "Input",
							"parameter_type": 2
						}
					},
					"varname": "Input",
					"text": "Bipolar"
				}
			},
			{
				"box": {
					"maxclass": "panel",
					"id": "obj-12",
					"hint": "br.scale.freq.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
					"annotation": "br.scale.freq.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
					"numinlets": 1,
					"numoutlets": 0,
					"outlettype": [],
					"patching_rect": [
						400,
						250,
						128,
						128
					],
					"parameter_enable": 0,
					"presentation": 1,
					"presentation_rect": [
						0.0,
						0.0,
						105.0,
						100.0
					],
					"angle": 270.0,
					"bgcolor": [
						0.0,
						0.0,
						0.0,
						1.0
					],
					"bordercolor": [
						0.0,
						0.0,
						0.0,
						1.0
					],
					"mode": 0,
					"proportion": 0.39,
					"rounded": 0
				}
			},
			{
				"box": {
					"id": "obj-st-freq1-t",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						120.0,
						113.0,
						45.0,
						22.0
					],
					"outlettype": [
						"float",
						"float"
					],
					"text": "t f f",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-freq1-c",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						340.0,
						143.0,
						75.0,
						22.0
					],
					"outlettype": [
						"",
						"int",
						"int"
					],
					"text": "change 0.",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-freq1-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						340.0,
						173.0,
						110.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend freq1",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-freq2-t",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						190.0,
						113.0,
						45.0,
						22.0
					],
					"outlettype": [
						"float",
						"float"
					],
					"text": "t f f",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-freq2-c",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						465.0,
						143.0,
						75.0,
						22.0
					],
					"outlettype": [
						"",
						"int",
						"int"
					],
					"text": "change 0.",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-freq2-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						465.0,
						173.0,
						110.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend freq2",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-input-t",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						260.0,
						84.0,
						45.0,
						22.0
					],
					"outlettype": [
						"int",
						"int"
					],
					"text": "t i i",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-input-c",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"patching_rect": [
						590.0,
						114.0,
						75.0,
						22.0
					],
					"outlettype": [
						"",
						"int",
						"int"
					],
					"text": "change -1",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-st-input-p",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						590.0,
						144.0,
						110.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "prepend input",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-state",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						340.0,
						335.0,
						30.0,
						30.0
					],
					"comment": "State (Message): freq1 freq2 input, sent the moment a control changes. Pick them out by name: [route freq1 freq2 input]",
					"index": 2
				}
			},
			{
				"box": {
					"id": "obj-why",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						735.0,
						215.0,
						300.0,
						47.0
					],
					"text": "[br.scale.freq.1.2] is the real object: the gen~ lives inside it. This file adds the dials, the Input switch and the State outlet.",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 3
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"obj-8",
						0
					],
					"source": [
						"obj-1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-4",
						0
					],
					"source": [
						"obj-2",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-5",
						0
					],
					"source": [
						"obj-3",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-9",
						0
					],
					"source": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-13",
						0
					],
					"destination": [
						"obj-16",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-4",
						0
					],
					"destination": [
						"obj-st-freq1-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq1-t",
						0
					],
					"destination": [
						"obj-8",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq1-t",
						1
					],
					"destination": [
						"obj-st-freq1-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq1-c",
						0
					],
					"destination": [
						"obj-st-freq1-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq1-p",
						0
					],
					"destination": [
						"obj-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-5",
						0
					],
					"destination": [
						"obj-st-freq2-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq2-t",
						0
					],
					"destination": [
						"obj-8",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq2-t",
						1
					],
					"destination": [
						"obj-st-freq2-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq2-c",
						0
					],
					"destination": [
						"obj-st-freq2-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-freq2-p",
						0
					],
					"destination": [
						"obj-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-16",
						0
					],
					"destination": [
						"obj-st-input-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-input-t",
						0
					],
					"destination": [
						"obj-8",
						3
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-input-t",
						1
					],
					"destination": [
						"obj-st-input-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-input-c",
						0
					],
					"destination": [
						"obj-st-input-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-st-input-p",
						0
					],
					"destination": [
						"obj-state",
						0
					]
				}
			}
		],
		"parameters": {
			"obj-4": [
				"Freq 1",
				"Freq 1",
				0
			],
			"obj-5": [
				"Freq 2",
				"Freq 2",
				0
			],
			"parameterbanks": {
				"0": {
					"index": 0,
					"name": "",
					"parameters": [
						"-",
						"-",
						"-",
						"-",
						"-",
						"-",
						"-",
						"-"
					],
					"buttons": [
						"-",
						"-",
						"-",
						"-",
						"-",
						"-",
						"-",
						"-"
					]
				}
			},
			"inherited_shortname": 1
		},
		"autosave": 0
	}
}