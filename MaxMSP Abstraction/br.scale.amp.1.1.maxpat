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
        "openrect": [
            84.0,
            104.0,
            81.0,
            50.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 81.0,
        "boxes": [
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        120.0,
                        54.0,
                        44.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        15.0,
                        24.0,
                        49.0,
                        21.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
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
                    "outlettype": [
                        "signal"
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
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
                            600.0,
                            450.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        20.0,
                                        184.0,
                                        35.0
                                    ],
                                    "text": "in 1 @comment modulator"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.scale.amp 1.1 -- bipolar -1..1 or unipolar 0..1 modulator to gain 0..1 on an equal-loudness curve\n// Loudness doubles every +10 dB on the sone scale so gain = u^1.661 makes equal steps\n// of the modulator sound like equal steps of loudness. Midpoint 0.5 -> 0.316 = -10 dB which is half as loud.\nParam unipolar(0, min=0, max=1);\nHistory w_s(0);\nHistory primed(0);\nw_prev = w_s;\nwas_primed = primed;\nk = 1 - exp(-1 / mstosamps(20));\n// Input range: unipolar 0 = bipolar -1..1, 1 = unipolar 0..1.\n// Switching crossfades the two readings over 20 ms so it never clicks.\nw = was_primed ? w_prev + (unipolar - w_prev) * k : unipolar;\nu_bi = (clamp(in1, -1, 1) + 1) * 0.5;\nu_uni = clamp(in1, 0, 1);\nu = u_bi + (u_uni - u_bi) * w;\nout1 = pow(u, 1.661);\nw_s = w;\nprimed = 1;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "codebox",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        80.0,
                                        400.0,
                                        200.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        320.0,
                                        262.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment gain 0 to 1"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-2",
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
                                        "obj-3",
                                        0
                                    ],
                                    "source": [
                                        "obj-2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        15.0,
                        115.0,
                        44.0,
                        22.0
                    ],
                    "text": "gen~",
                    "varname": "br_scale_amp"
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
                    "patching_rect": [
                        15.0,
                        150.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Input Range (Int) 0 = Bipolar (-1 to 1), 1 = Unipolar (0 to 1). Default 0",
                    "id": "obj-4",
                    "index": 2,
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        120.0,
                        80.0,
                        128.0,
                        22.0
                    ],
                    "text": "prepend unipolar"
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
                    "patching_rect": [
                        250.0,
                        15.0,
                        142.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        79.0,
                        20.0
                    ],
                    "text": "scale to amp",
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
                    "id": "obj-8",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        400.0,
                        250.0,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        83.0,
                        50.0
                    ],
                    "proportion": 0.39,
                    "rounded": 0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-2",
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
                        "obj-3",
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
                        "obj-9",
                        0
                    ],
                    "source": [
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-2",
                        0
                    ],
                    "source": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            }
        ]
    }
}