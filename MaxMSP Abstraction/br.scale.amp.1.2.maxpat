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
		"rect": [
			85.0,
			104.0,
			1000.0,
			400.0
		],
		"openinpresentation": 0,
		"description": "br.scale.amp.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
		"boxes": [
			{
				"box": {
					"id": "obj-signature",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						700.0,
						15.0,
						520.0,
						60.0
					],
					"text": "br.scale.amp.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the amplitude curve follows Stevens' power law of loudness (sones).",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 3
				}
			},
			{
				"box": {
					"id": "obj-1",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						290.0,
						15.0,
						140.0,
						20.0
					],
					"text": "scale to amp",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-in1",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"patching_rect": [
						15.0,
						15.0,
						30.0,
						30.0
					],
					"outlettype": [
						""
					],
					"comment": "Modulator In (Signal) -1 to 1 when Input is Bipolar, 0 to 1 when Input is Unipolar. LFO, oscillator or function generator. Clipped to the chosen range",
					"index": 1
				}
			},
			{
				"box": {
					"id": "obj-in2",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"patching_rect": [
						140.0,
						15.0,
						30.0,
						30.0
					],
					"outlettype": [
						""
					],
					"comment": "Input Range (Int) 0 = Bipolar (-1 to 1), 1 = Unipolar (0 to 1). Switching crossfades over 20 ms. Default 0",
					"index": 2
				}
			},
			{
				"box": {
					"id": "obj-gen",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						15.0,
						80.0,
						155.0,
						22.0
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~ @title br.scale.amp.1.2",
					"fontname": "Arial",
					"fontsize": 12.0,
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
						"rect": [
							100.0,
							100.0,
							760.0,
							600.0
						],
						"boxes": [
							{
								"box": {
									"id": "obj-1",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"patching_rect": [
										50.0,
										20.0,
										204.0,
										22.0
									],
									"outlettype": [
										""
									],
									"text": "in 1 @comment modulator",
									"fontname": "Arial",
									"fontsize": 12.0
								}
							},
							{
								"box": {
									"id": "obj-2",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"patching_rect": [
										269.0,
										20.0,
										540.0,
										22.0
									],
									"outlettype": [
										""
									],
									"text": "in 2 @comment input 0=bipolar 1=unipolar @default 0 @min 0 @max 1",
									"fontname": "Arial",
									"fontsize": 12.0
								}
							},
							{
								"box": {
									"id": "obj-cb",
									"maxclass": "codebox",
									"numinlets": 2,
									"numoutlets": 1,
									"patching_rect": [
										50.0,
										60.0,
										620.0,
										420.0
									],
									"outlettype": [
										""
									],
									"code": "// br.scale.amp 1.2 -- bipolar -1..1 or unipolar 0..1 modulator to gain 0..1 on an equal-loudness curve\n// Loudness doubles every +10 dB on the sone scale so gain = u^1.661 makes equal steps\n// of the modulator sound like equal steps of loudness. Midpoint 0.5 -> 0.316 = -10 dB which is half as loud.\n// in1 modulator, in2 input range (0 = bipolar, 1 = unipolar)\nHistory w_s(0);\nHistory primed(0);\nw_prev = w_s;\nwas_primed = primed;\nk = 1 - exp(-1 / mstosamps(20));\n// Input range: 0 = bipolar -1..1, 1 = unipolar 0..1.\n// Switching crossfades the two readings over 20 ms so it never clicks.\nuni = clamp(in2, 0, 1);\nw = was_primed ? w_prev + (uni - w_prev) * k : uni;\nu_bi = (clamp(in1, -1, 1) + 1) * 0.5;\nu_uni = clamp(in1, 0, 1);\nu = u_bi + (u_uni - u_bi) * w;\nout1 = pow(u, 1.661);\nw_s = w;\nprimed = 1;\n",
									"fontface": 0,
									"fontname": "<Monospaced>",
									"fontsize": 12.0
								}
							},
							{
								"box": {
									"id": "obj-out",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										50.0,
										500.0,
										220.0,
										22.0
									],
									"outlettype": [],
									"text": "out 1 @comment gain 0 to 1",
									"fontname": "Arial",
									"fontsize": 12.0
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"obj-1",
										0
									],
									"destination": [
										"obj-cb",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-2",
										0
									],
									"destination": [
										"obj-cb",
										1
									]
								}
							},
							{
								"patchline": {
									"source": [
										"obj-cb",
										0
									],
									"destination": [
										"obj-out",
										0
									]
								}
							}
						]
					},
					"varname": "br_scale_amp"
				}
			},
			{
				"box": {
					"id": "obj-out",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15.0,
						125.0,
						30.0,
						30.0
					],
					"comment": "Gain (Signal) 0 to 1 on an equal-loudness curve. Feed the right inlet of *~",
					"index": 1
				}
			},
			{
				"box": {
					"id": "obj-note",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15.0,
						170.0,
						420.0,
						20.0
					],
					"text": "one gen~, mono; the Input switch crossfades 20 ms inside",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-why",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						290.0,
						45.0,
						380.0,
						74.0
					],
					"text": "The plain object: no switch. Input goes straight into gen~ (0 = Bipolar, 1 = Unipolar) and crossfades 20 ms inside. [br.scale.amp.ui.1.2] wraps this file with the Input switch and a State outlet.",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 5
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"obj-in1",
						0
					],
					"destination": [
						"obj-gen",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-in2",
						0
					],
					"destination": [
						"obj-gen",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-gen",
						0
					],
					"destination": [
						"obj-out",
						0
					]
				}
			}
		]
	}
}