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
			134.0,
			159.0,
			780.0,
			680.0
		],
		"description": "br.scale.freq.rnbo.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
		"autosave": 0,
		"boxes": [
			{
				"box": {
					"id": "obj-signature",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						400.0,
						15.0,
						520.0,
						33.0
					],
					"text": "br.scale.freq.rnbo.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 2
				}
			},
			{
				"box": {
					"id": "obj-lfo-lm",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						38.0,
						40.0,
						80.0,
						22.0
					],
					"outlettype": [
						""
					],
					"text": "loadmess 1.",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-lfo-f",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						38.0,
						70.0,
						60.0,
						22.0
					],
					"outlettype": [
						"",
						"bang"
					],
					"format": 6,
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-lfo",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						38.0,
						100.0,
						58.0,
						22.0
					],
					"outlettype": [
						"signal"
					],
					"text": "cycle~",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-lfo-c",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						105.0,
						70.0,
						200.0,
						33.0
					],
					"text": "LFO Hz: a bipolar sine (-1 to 1). Set Input to Bipolar for it.",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 2
				}
			},
			{
				"box": {
					"id": "obj-attr0",
					"maxclass": "attrui",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						232.0,
						140.0,
						180.0,
						22.0
					],
					"outlettype": [
						""
					],
					"attr": "Freq1",
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-attr1",
					"maxclass": "attrui",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						232.0,
						164.0,
						180.0,
						22.0
					],
					"outlettype": [
						""
					],
					"attr": "Freq2",
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-attr2",
					"maxclass": "attrui",
					"numinlets": 1,
					"numoutlets": 1,
					"patching_rect": [
						232.0,
						188.0,
						180.0,
						22.0
					],
					"outlettype": [
						""
					],
					"attr": "Input",
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"autosave": 1,
					"id": "obj-7",
					"inletInfo": {
						"IOInfo": [
							{
								"type": "signal",
								"index": 1,
								"tag": "in1",
								"comment": "Modulator In (Signal) -1 to 1 when Input is Bipolar; 0 to 1 when Input is Unipolar. LFO; oscillator or function generator. Clipped to the chosen range"
							},
							{
								"type": "event",
								"index": 2,
								"tag": "in2",
								"comment": "Freq 1 (Signal/Float) 20 - 20000 Hz. One end of the range; order does not matter. Glides 20 ms. Default 200"
							},
							{
								"type": "event",
								"index": 3,
								"tag": "in3",
								"comment": "Freq 2 (Signal/Float) 20 - 20000 Hz. Other end of the range; order does not matter. Glides 20 ms. Default 2000"
							},
							{
								"type": "event",
								"index": 4,
								"tag": "in4",
								"comment": "Input Range (Int) 0 = Bipolar (-1 to 1); 1 = Unipolar (0 to 1). Switching crossfades over 20 ms. Default 0"
							}
						]
					},
					"maxclass": "newobj",
					"numinlets": 4,
					"numoutlets": 2,
					"outletInfo": {
						"IOInfo": [
							{
								"type": "signal",
								"index": 1,
								"tag": "out1",
								"comment": "Frequency (Signal) Hz on an exponential curve between Freq 1 and Freq 2. Feed an oscillator or filter frequency"
							}
						]
					},
					"outlettype": [
						"signal",
						"list"
					],
					"patching_rect": [
						54.0,
						260.0,
						340.0,
						22.0
					],
					"rnboversion": "1.4.3",
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_invisible": 1,
							"parameter_longname": "rnbo~",
							"parameter_modmode": 0,
							"parameter_shortname": "rnbo~",
							"parameter_type": 3
						}
					},
					"saved_object_attributes": {
						"optimization": "O1",
						"parameter_enable": 1,
						"uuid": "6f69fb15-3f36-4440-a2f7-27e1464e4104"
					},
					"text": "rnbo~",
					"varname": "rnbo~",
					"patcher": {
						"fileversion": 1,
						"appversion": {
							"major": 9,
							"minor": 1,
							"revision": 4,
							"architecture": "x64",
							"modernui": 1
						},
						"classnamespace": "rnbo",
						"rect": [
							100.0,
							100.0,
							1300.0,
							480.0
						],
						"default_fontname": "Lato",
						"title": "untitled",
						"boxes": [
							{
								"box": {
									"id": "obj-sin1",
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										30.0,
										20.0,
										190.0,
										52.0
									],
									"rnbo_classname": "in~",
									"rnbo_extra_attributes": {
										"meta": ""
									},
									"rnbo_serial": 1,
									"rnbo_uniqueid": "in~_obj-sin1",
									"text": "in~ 1 @comment \"Modulator In (Signal) -1 to 1 when Input is Bipolar; 0 to 1 when Input is Unipolar. LFO; oscillator or function generator. Clipped to the chosen range\"",
									"linecount": 3
								}
							},
							{
								"box": {
									"id": "obj-ein2",
									"linecount": 4,
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										230.0,
										70.0,
										190.0,
										52.0
									],
									"rnbo_classname": "in",
									"rnbo_extra_attributes": {
										"meta": ""
									},
									"rnbo_serial": 1,
									"rnbo_uniqueid": "in_obj-ein2",
									"text": "in 2 @comment \"Freq 1 (Signal/Float) 20 - 20000 Hz. One end of the range; order does not matter. Glides 20 ms. Default 200\""
								}
							},
							{
								"box": {
									"id": "pFreq1",
									"linecount": 3,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										230.0,
										140.0,
										180.0,
										52.0
									],
									"rnbo_classname": "param",
									"rnbo_extra_attributes": {
										"enum": "",
										"fromnormalized": "",
										"exponent": 4.0,
										"displayname": "",
										"ctlin": -1.0,
										"tonormalized": "",
										"steps": 0.0,
										"unit": "Hz",
										"sendinit": 1,
										"meta": "",
										"displayorder": "-",
										"preset": 1
									},
									"rnbo_serial": 1,
									"rnbo_uniqueid": "Freq1",
									"text": "param Freq1 200 @min 20. @max 20000. @exponent 4. @order 1",
									"varname": "Freq1"
								}
							},
							{
								"box": {
									"id": "obj-ein3",
									"linecount": 4,
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										430.0,
										70.0,
										190.0,
										52.0
									],
									"rnbo_classname": "in",
									"rnbo_extra_attributes": {
										"meta": ""
									},
									"rnbo_serial": 2,
									"rnbo_uniqueid": "in_obj-ein3",
									"text": "in 3 @comment \"Freq 2 (Signal/Float) 20 - 20000 Hz. Other end of the range; order does not matter. Glides 20 ms. Default 2000\""
								}
							},
							{
								"box": {
									"id": "pFreq2",
									"linecount": 3,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										430.0,
										140.0,
										180.0,
										52.0
									],
									"rnbo_classname": "param",
									"rnbo_extra_attributes": {
										"enum": "",
										"fromnormalized": "",
										"exponent": 4.0,
										"displayname": "",
										"ctlin": -1.0,
										"tonormalized": "",
										"steps": 0.0,
										"unit": "Hz",
										"sendinit": 1,
										"meta": "",
										"displayorder": "-",
										"preset": 1
									},
									"rnbo_serial": 2,
									"rnbo_uniqueid": "Freq2",
									"text": "param Freq2 2000 @min 20. @max 20000. @exponent 4. @order 2",
									"varname": "Freq2"
								}
							},
							{
								"box": {
									"id": "obj-ein4",
									"linecount": 4,
									"maxclass": "newobj",
									"numinlets": 0,
									"numoutlets": 1,
									"outlettype": [
										""
									],
									"patching_rect": [
										630.0,
										70.0,
										190.0,
										52.0
									],
									"rnbo_classname": "in",
									"rnbo_extra_attributes": {
										"meta": ""
									},
									"rnbo_serial": 3,
									"rnbo_uniqueid": "in_obj-ein4",
									"text": "in 4 @comment \"Input Range (Int) 0 = Bipolar (-1 to 1); 1 = Unipolar (0 to 1). Switching crossfades over 20 ms. Default 0\""
								}
							},
							{
								"box": {
									"id": "pInput",
									"linecount": 3,
									"maxclass": "newobj",
									"numinlets": 2,
									"numoutlets": 2,
									"outlettype": [
										"",
										""
									],
									"patching_rect": [
										630.0,
										140.0,
										180.0,
										52.0
									],
									"rnbo_classname": "param",
									"rnbo_extra_attributes": {
										"enum": "Bipolar Unipolar",
										"fromnormalized": "",
										"exponent": 1.0,
										"displayname": "",
										"ctlin": -1.0,
										"tonormalized": "",
										"steps": 0.0,
										"unit": "",
										"sendinit": 1,
										"meta": "",
										"displayorder": "-",
										"preset": 1
									},
									"rnbo_serial": 3,
									"rnbo_uniqueid": "Input",
									"text": "param Input 0 @enum Bipolar Unipolar @order 3",
									"varname": "Input"
								}
							},
							{
								"box": {
									"id": "obj-gen",
									"maxclass": "newobj",
									"text": "gen~ @title br.scale.freq.1.2",
									"numinlets": 4,
									"numoutlets": 1,
									"outlettype": [
										"signal"
									],
									"patching_rect": [
										30.0,
										260.0,
										830.0,
										23.0
									],
									"rnbo_classname": "gen~",
									"rnbo_extra_attributes": {
										"exposeparams": 0
									},
									"rnbo_serial": 1,
									"rnbo_uniqueid": "br.scale.freq.1.2",
									"varname": "br.scale.freq.1.2",
									"genpatcher": {
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
										}
									}
								}
							},
							{
								"box": {
									"id": "obj-sout1",
									"maxclass": "newobj",
									"numinlets": 1,
									"numoutlets": 0,
									"patching_rect": [
										30.0,
										320.0,
										200.0,
										23.0
									],
									"rnbo_classname": "out~",
									"rnbo_extra_attributes": {
										"meta": "",
										"comment": ""
									},
									"rnbo_serial": 1,
									"rnbo_uniqueid": "out~_obj-sout1",
									"text": "out~ 1 @comment \"Frequency (Signal) Hz on an exponential curve between Freq 1 and Freq 2. Feed an oscillator or filter frequency\"",
									"linecount": 2
								}
							},
							{
								"box": {
									"fontname": "Lato",
									"fontsize": 12.0,
									"id": "obj-note",
									"maxclass": "comment",
									"numinlets": 1,
									"numoutlets": 0,
									"linecount": 3,
									"patching_rect": [
										30.0,
										380.0,
										700.0,
										50.0
									],
									"text": "gen~ code MUST MATCH br.scale.freq.1.2 (open both: same gen~ patcher and codebox). Freq1, Freq2, Input are the plugin parameters (VST/AU, web, external); each inlet sets its param, attrui in the parent shows them."
								}
							}
						],
						"lines": [
							{
								"patchline": {
									"source": [
										"obj-ein2",
										0
									],
									"destination": [
										"pFreq1",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"pFreq1",
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
										"obj-ein3",
										0
									],
									"destination": [
										"pFreq2",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"pFreq2",
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
										"obj-ein4",
										0
									],
									"destination": [
										"pInput",
										0
									]
								}
							},
							{
								"patchline": {
									"source": [
										"pInput",
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
										"obj-sin1",
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
										"obj-gen",
										0
									],
									"destination": [
										"obj-sout1",
										0
									]
								}
							}
						]
					}
				}
			},
			{
				"box": {
					"id": "obj-export",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						420.0,
						260.0,
						340.0,
						47.0
					],
					"text": "EXPORT NAME: br.scale.freq.1.2~\nMax External Export asks for a name: keep the ~ at the end.",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 3
				}
			},
			{
				"box": {
					"id": "obj-5",
					"lastchannelcount": 0,
					"maxclass": "live.gain~",
					"numinlets": 2,
					"numoutlets": 5,
					"outlettype": [
						"signal",
						"signal",
						"",
						"float",
						"list"
					],
					"parameter_enable": 1,
					"patching_rect": [
						61.0,
						420.0,
						48.0,
						136.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_initial": [
								-70.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Out",
							"parameter_mmax": 6.0,
							"parameter_mmin": -70.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Out",
							"parameter_type": 0,
							"parameter_unitstyle": 4
						}
					},
					"varname": "live.gain~"
				}
			},
			{
				"box": {
					"id": "obj-6",
					"maxclass": "ezdac~",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						61.0,
						570.0,
						45.0,
						45.0
					]
				}
			},
			{
				"box": {
					"id": "obj-osc",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						61.0,
						320.0,
						50.0,
						22.0
					],
					"outlettype": [
						"signal"
					],
					"text": "cycle~",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-lvl",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						61.0,
						380.0,
						50.0,
						22.0
					],
					"outlettype": [
						"signal"
					],
					"text": "*~ 0.2",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-osc-c",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						120.0,
						320.0,
						200.0,
						33.0
					],
					"text": "the output sets a sine's pitch = a siren / vibrato",
					"fontname": "Arial",
					"fontsize": 12.0,
					"linecount": 2
				}
			},
			{
				"box": {
					"id": "obj-snap",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 1,
					"patching_rect": [
						180.0,
						420.0,
						85.0,
						22.0
					],
					"outlettype": [
						"float"
					],
					"text": "snapshot~ 50",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"id": "obj-hz",
					"maxclass": "flonum",
					"numinlets": 1,
					"numoutlets": 2,
					"patching_rect": [
						180.0,
						450.0,
						70.0,
						22.0
					],
					"outlettype": [
						"",
						"bang"
					],
					"format": 6,
					"parameter_enable": 0
				}
			},
			{
				"box": {
					"id": "obj-hz-c",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						255.0,
						450.0,
						60.0,
						20.0
					],
					"text": "Hz out",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"obj-attr0",
						0
					],
					"destination": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-attr1",
						0
					],
					"destination": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-attr2",
						0
					],
					"destination": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-lfo-lm",
						0
					],
					"destination": [
						"obj-lfo-f",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-lfo-f",
						0
					],
					"destination": [
						"obj-lfo",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-lfo",
						0
					],
					"destination": [
						"obj-7",
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
						"obj-6",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-5",
						1
					],
					"destination": [
						"obj-6",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-7",
						0
					],
					"destination": [
						"obj-osc",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-osc",
						0
					],
					"destination": [
						"obj-lvl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-lvl",
						0
					],
					"destination": [
						"obj-5",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-lvl",
						0
					],
					"destination": [
						"obj-5",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-7",
						0
					],
					"destination": [
						"obj-snap",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-snap",
						0
					],
					"destination": [
						"obj-hz",
						0
					]
				}
			}
		]
	}
}