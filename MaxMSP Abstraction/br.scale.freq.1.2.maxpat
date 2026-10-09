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
		"description": "br.scale.freq.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the amplitude curve follows Stevens' power law of loudness (sones).",
		"boxes": [
			{
				"box": {
					"id": "obj-signature",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						950.0,
						15.0,
						520.0,
						60.0
					],
					"text": "br.scale.freq.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the amplitude curve follows Stevens' power law of loudness (sones).",
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
						540.0,
						15.0,
						140.0,
						20.0
					],
					"text": "scale to frequency",
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
					"comment": "Freq 1 (Signal/Float) 20 - 20000 Hz. One end of the range; order does not matter. Glides 20 ms. Default 200",
					"index": 2
				}
			},
			{
				"box": {
					"id": "obj-in3",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"patching_rect": [
						265.0,
						15.0,
						30.0,
						30.0
					],
					"outlettype": [
						""
					],
					"comment": "Freq 2 (Signal/Float) 20 - 20000 Hz. Other end of the range; order does not matter. Glides 20 ms. Default 2000",
					"index": 3
				}
			},
			{
				"box": {
					"id": "obj-in4",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"patching_rect": [
						390.0,
						15.0,
						30.0,
						30.0
					],
					"outlettype": [
						""
					],
					"comment": "Input Range (Int) 0 = Bipolar (-1 to 1), 1 = Unipolar (0 to 1). Switching crossfades over 20 ms. Default 0",
					"index": 4
				}
			},
			{
				"box": {
					"id": "obj-gen",
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 1,
					"patching_rect": [
						15.0,
						80.0,
						405.0,
						22.0
					],
					"outlettype": [
						"signal"
					],
					"text": "gen~ @title br.scale.freq.1.2",
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
										468.0,
										22.0
									],
									"outlettype": [
										""
									],
									"text": "in 2 @comment freq1 Hz @default 200 @min 0.01 @max 20000",
									"fontname": "Arial",
									"fontsize": 12.0
								}
							},
							{
								"box": {
									"id": "obj-3",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"patching_rect": [
										752.0,
										20.0,
										476.0,
										22.0
									],
									"outlettype": [
										""
									],
									"text": "in 3 @comment freq2 Hz @default 2000 @min 0.01 @max 20000",
									"fontname": "Arial",
									"fontsize": 12.0
								}
							},
							{
								"box": {
									"id": "obj-4",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"patching_rect": [
										1243.0,
										20.0,
										540.0,
										22.0
									],
									"outlettype": [
										""
									],
									"text": "in 4 @comment input 0=bipolar 1=unipolar @default 0 @min 0 @max 1",
									"fontname": "Arial",
									"fontsize": 12.0
								}
							},
							{
								"box": {
									"id": "obj-cb",
									"maxclass": "codebox",
									"numinlets": 4,
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
									"code": "// br.scale.freq 1.2 -- bipolar -1..1 or unipolar 0..1 modulator to frequency on an exponential octave-even curve\n// Works in octaves via log2 so equal steps of the modulator sound like equal pitch steps\n// on an oscillator or equal brightness steps on a filter.\n// Freq 1 / Freq 2 are a range pair: whichever is lower is always the bottom of the sweep.\n// in1 modulator, in2 freq 1, in3 freq 2, in4 input range (0 = bipolar, 1 = unipolar)\nHistory lo_s(0);\nHistory hi_s(0);\nHistory w_s(0);\nHistory primed(0);\nlo_prev = lo_s;\nhi_prev = hi_s;\nw_prev = w_s;\nwas_primed = primed;\nl1 = log2(clamp(in2, 0.01, 20000));\nl2 = log2(clamp(in3, 0.01, 20000));\nlo_t = min(l1, l2);\nhi_t = max(l1, l2);\n// 20 ms glide in octaves on range changes so they never click\nk = 1 - exp(-1 / mstosamps(20));\nlo = was_primed ? lo_prev + (lo_t - lo_prev) * k : lo_t;\nhi = was_primed ? hi_prev + (hi_t - hi_prev) * k : hi_t;\n// Input range: 0 = bipolar -1..1, 1 = unipolar 0..1.\n// Switching crossfades the two readings over 20 ms so it never clicks.\nuni = clamp(in4, 0, 1);\nw = was_primed ? w_prev + (uni - w_prev) * k : uni;\nu_bi = (clamp(in1, -1, 1) + 1) * 0.5;\nu_uni = clamp(in1, 0, 1);\nu = u_bi + (u_uni - u_bi) * w;\nf = exp2(lo + (hi - lo) * u);\nout1 = min(f, samplerate * 0.49);\nlo_s = lo;\nhi_s = hi;\nw_s = w;\nprimed = 1;\n",
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
									"text": "out 1 @comment frequency Hz",
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
										"obj-3",
										0
									],
									"destination": [
										"obj-cb",
										2
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
										"obj-cb",
										3
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
					"varname": "br_scale_freq"
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
					"comment": "Frequency (Signal) Hz on an exponential curve between Freq 1 and Freq 2. Feed an oscillator or filter frequency",
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
					"text": "one gen~, mono; Freq 1 / Freq 2 glide 20 ms; Input crossfades 20 ms",
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
						540.0,
						45.0,
						380.0,
						74.0
					],
					"text": "The plain object: no dials. Freq 1 and Freq 2 go straight into gen~, so they take numbers OR signals: an LFO patched into Freq 2 moves the top of the range. Range changes glide 20 ms in octaves, so jumps never click. [br.scale.freq.ui.1.2] wraps this file with dials and a State outlet.",
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
						"obj-in3",
						0
					],
					"destination": [
						"obj-gen",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-in4",
						0
					],
					"destination": [
						"obj-gen",
						3
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