module Rum::Xorg::KeySym
  alias KeySymT                  = UInt64

  XK_VoidSymbol                  = KeySymT.cast(0xffffff) # Void symbol
  # TTY function keys, cleverly chosen to map to ASCII, for convenience of
  # programming, but could have been arbitrary (at the cost of lookup
  # tables in client code).
  XK_BackSpace                   = KeySymT.cast(0xff08) # Back space, back char
  XK_Tab                         = KeySymT.cast(0xff09)
  XK_Linefeed                    = KeySymT.cast(0xff0a) # Linefeed, LF
  XK_Clear                       = KeySymT.cast(0xff0b)
  XK_Return                      = KeySymT.cast(0xff0d) # Return, enter
  XK_Pause                       = KeySymT.cast(0xff13) # Pause, hold
  XK_Scroll_Lock                 = KeySymT.cast(0xff14)
  XK_Sys_Req                     = KeySymT.cast(0xff15)
  XK_Escape                      = KeySymT.cast(0xff1b)
  XK_Delete                      = KeySymT.cast(0xffff) # Delete, rubout
  # International & multi-key character composition
  XK_Multi_key                   = KeySymT.cast(0xff20) # Multi-key character compose
  XK_Codeinput                   = KeySymT.cast(0xff37)
  XK_SingleCandidate             = KeySymT.cast(0xff3c)
  XK_MultipleCandidate           = KeySymT.cast(0xff3d)
  XK_PreviousCandidate           = KeySymT.cast(0xff3e)
  # Japanese keyboard support
  XK_Kanji                       = KeySymT.cast(0xff21) # Kanji, Kanji convert
  XK_Muhenkan                    = KeySymT.cast(0xff22) # Cancel Conversion
  XK_Henkan_Mode                 = KeySymT.cast(0xff23) # Start/Stop Conversion
  XK_Henkan                      = KeySymT.cast(0xff23) # Alias for Henkan_Mode
  XK_Romaji                      = KeySymT.cast(0xff24) # to Romaji
  XK_Hiragana                    = KeySymT.cast(0xff25) # to Hiragana
  XK_Katakana                    = KeySymT.cast(0xff26) # to Katakana
  XK_Hiragana_Katakana           = KeySymT.cast(0xff27) # Hiragana/Katakana toggle
  XK_Zenkaku                     = KeySymT.cast(0xff28) # to Zenkaku
  XK_Hankaku                     = KeySymT.cast(0xff29) # to Hankaku
  XK_Zenkaku_Hankaku             = KeySymT.cast(0xff2a) # Zenkaku/Hankaku toggle
  XK_Touroku                     = KeySymT.cast(0xff2b) # Add to Dictionary
  XK_Massyo                      = KeySymT.cast(0xff2c) # Delete from Dictionary
  XK_Kana_Lock                   = KeySymT.cast(0xff2d) # Kana Lock
  XK_Kana_Shift                  = KeySymT.cast(0xff2e) # Kana Shift
  XK_Eisu_Shift                  = KeySymT.cast(0xff2f) # Alphanumeric Shift
  XK_Eisu_toggle                 = KeySymT.cast(0xff30) # Alphanumeric toggle
  XK_Kanji_Bangou                = KeySymT.cast(0xff37) # Codeinput
  XK_Zen_Koho                    = KeySymT.cast(0xff3d) # Multiple/All Candidate(s)
  XK_Mae_Koho                    = KeySymT.cast(0xff3e) # Previous Candidate
  # 0xff31 thru 0xff3f are under XK_KOREAN
  # Cursor control & motion
  XK_Home                        = KeySymT.cast(0xff50)
  XK_Left                        = KeySymT.cast(0xff51) # Move left, left arrow
  XK_Up                          = KeySymT.cast(0xff52) # Move up, up arrow
  XK_Right                       = KeySymT.cast(0xff53) # Move right, right arrow
  XK_Down                        = KeySymT.cast(0xff54) # Move down, down arrow
  XK_Prior                       = KeySymT.cast(0xff55) # Prior, previous
  XK_Page_Up                     = KeySymT.cast(0xff55)
  XK_Next                        = KeySymT.cast(0xff56) # Next
  XK_Page_Down                   = KeySymT.cast(0xff56)
  XK_End                         = KeySymT.cast(0xff57) # EOL
  XK_Begin                       = KeySymT.cast(0xff58) # BOL
  # Misc functions
  XK_Select                      = KeySymT.cast(0xff60) # Select, mark
  XK_Print                       = KeySymT.cast(0xff61)
  XK_Execute                     = KeySymT.cast(0xff62) # Execute, run, do
  XK_Insert                      = KeySymT.cast(0xff63) # Insert, insert here
  XK_Undo                        = KeySymT.cast(0xff65)
  XK_Redo                        = KeySymT.cast(0xff66) # Redo, again
  XK_Menu                        = KeySymT.cast(0xff67)
  XK_Find                        = KeySymT.cast(0xff68) # Find, search
  XK_Cancel                      = KeySymT.cast(0xff69) # Cancel, stop, abort, exit
  XK_Help                        = KeySymT.cast(0xff6a) # Help
  XK_Break                       = KeySymT.cast(0xff6b)
  XK_Mode_switch                 = KeySymT.cast(0xff7e) # Character set switch
  XK_script_switch               = KeySymT.cast(0xff7e) # Alias for mode_switch
  XK_Num_Lock                    = KeySymT.cast(0xff7f)
  # Keypad functions, keypad numbers cleverly chosen to map to ASCII
  XK_KP_Space                    = KeySymT.cast(0xff80) # Space
  XK_KP_Tab                      = KeySymT.cast(0xff89)
  XK_KP_Enter                    = KeySymT.cast(0xff8d) # Enter
  XK_KP_F1                       = KeySymT.cast(0xff91) # PF1, KP_A, ...
  XK_KP_F2                       = KeySymT.cast(0xff92)
  XK_KP_F3                       = KeySymT.cast(0xff93)
  XK_KP_F4                       = KeySymT.cast(0xff94)
  XK_KP_Home                     = KeySymT.cast(0xff95)
  XK_KP_Left                     = KeySymT.cast(0xff96)
  XK_KP_Up                       = KeySymT.cast(0xff97)
  XK_KP_Right                    = KeySymT.cast(0xff98)
  XK_KP_Down                     = KeySymT.cast(0xff99)
  XK_KP_Prior                    = KeySymT.cast(0xff9a)
  XK_KP_Page_Up                  = KeySymT.cast(0xff9a)
  XK_KP_Next                     = KeySymT.cast(0xff9b)
  XK_KP_Page_Down                = KeySymT.cast(0xff9b)
  XK_KP_End                      = KeySymT.cast(0xff9c)
  XK_KP_Begin                    = KeySymT.cast(0xff9d)
  XK_KP_Insert                   = KeySymT.cast(0xff9e)
  XK_KP_Delete                   = KeySymT.cast(0xff9f)
  XK_KP_Equal                    = KeySymT.cast(0xffbd) # Equals
  XK_KP_Multiply                 = KeySymT.cast(0xffaa)
  XK_KP_Add                      = KeySymT.cast(0xffab)
  XK_KP_Separator                = KeySymT.cast(0xffac) # Separator, often comma
  XK_KP_Subtract                 = KeySymT.cast(0xffad)
  XK_KP_Decimal                  = KeySymT.cast(0xffae)
  XK_KP_Divide                   = KeySymT.cast(0xffaf)
  XK_KP_0                        = KeySymT.cast(0xffb0)
  XK_KP_1                        = KeySymT.cast(0xffb1)
  XK_KP_2                        = KeySymT.cast(0xffb2)
  XK_KP_3                        = KeySymT.cast(0xffb3)
  XK_KP_4                        = KeySymT.cast(0xffb4)
  XK_KP_5                        = KeySymT.cast(0xffb5)
  XK_KP_6                        = KeySymT.cast(0xffb6)
  XK_KP_7                        = KeySymT.cast(0xffb7)
  XK_KP_8                        = KeySymT.cast(0xffb8)
  XK_KP_9                        = KeySymT.cast(0xffb9)
  # Auxiliary functions; note the duplicate definitions for left and right
  # function keys; Sun keyboards and a few other manufacturers have such
  # function key groups on the left and/or right sides of the keyboard.
  # We've not found a keyboard with more than 35 function keys total.
  XK_F1                          = KeySymT.cast(0xffbe)
  XK_F2                          = KeySymT.cast(0xffbf)
  XK_F3                          = KeySymT.cast(0xffc0)
  XK_F4                          = KeySymT.cast(0xffc1)
  XK_F5                          = KeySymT.cast(0xffc2)
  XK_F6                          = KeySymT.cast(0xffc3)
  XK_F7                          = KeySymT.cast(0xffc4)
  XK_F8                          = KeySymT.cast(0xffc5)
  XK_F9                          = KeySymT.cast(0xffc6)
  XK_F10                         = KeySymT.cast(0xffc7)
  XK_F11                         = KeySymT.cast(0xffc8)
  XK_L1                          = KeySymT.cast(0xffc8)
  XK_F12                         = KeySymT.cast(0xffc9)
  XK_L2                          = KeySymT.cast(0xffc9)
  XK_F13                         = KeySymT.cast(0xffca)
  XK_L3                          = KeySymT.cast(0xffca)
  XK_F14                         = KeySymT.cast(0xffcb)
  XK_L4                          = KeySymT.cast(0xffcb)
  XK_F15                         = KeySymT.cast(0xffcc)
  XK_L5                          = KeySymT.cast(0xffcc)
  XK_F16                         = KeySymT.cast(0xffcd)
  XK_L6                          = KeySymT.cast(0xffcd)
  XK_F17                         = KeySymT.cast(0xffce)
  XK_L7                          = KeySymT.cast(0xffce)
  XK_F18                         = KeySymT.cast(0xffcf)
  XK_L8                          = KeySymT.cast(0xffcf)
  XK_F19                         = KeySymT.cast(0xffd0)
  XK_L9                          = KeySymT.cast(0xffd0)
  XK_F20                         = KeySymT.cast(0xffd1)
  XK_L10                         = KeySymT.cast(0xffd1)
  XK_F21                         = KeySymT.cast(0xffd2)
  XK_R1                          = KeySymT.cast(0xffd2)
  XK_F22                         = KeySymT.cast(0xffd3)
  XK_R2                          = KeySymT.cast(0xffd3)
  XK_F23                         = KeySymT.cast(0xffd4)
  XK_R3                          = KeySymT.cast(0xffd4)
  XK_F24                         = KeySymT.cast(0xffd5)
  XK_R4                          = KeySymT.cast(0xffd5)
  XK_F25                         = KeySymT.cast(0xffd6)
  XK_R5                          = KeySymT.cast(0xffd6)
  XK_F26                         = KeySymT.cast(0xffd7)
  XK_R6                          = KeySymT.cast(0xffd7)
  XK_F27                         = KeySymT.cast(0xffd8)
  XK_R7                          = KeySymT.cast(0xffd8)
  XK_F28                         = KeySymT.cast(0xffd9)
  XK_R8                          = KeySymT.cast(0xffd9)
  XK_F29                         = KeySymT.cast(0xffda)
  XK_R9                          = KeySymT.cast(0xffda)
  XK_F30                         = KeySymT.cast(0xffdb)
  XK_R10                         = KeySymT.cast(0xffdb)
  XK_F31                         = KeySymT.cast(0xffdc)
  XK_R11                         = KeySymT.cast(0xffdc)
  XK_F32                         = KeySymT.cast(0xffdd)
  XK_R12                         = KeySymT.cast(0xffdd)
  XK_F33                         = KeySymT.cast(0xffde)
  XK_R13                         = KeySymT.cast(0xffde)
  XK_F34                         = KeySymT.cast(0xffdf)
  XK_R14                         = KeySymT.cast(0xffdf)
  XK_F35                         = KeySymT.cast(0xffe0)
  XK_R15                         = KeySymT.cast(0xffe0)
  # Modifiers
  XK_Shift_L                     = KeySymT.cast(0xffe1) # Left shift
  XK_Shift_R                     = KeySymT.cast(0xffe2) # Right shift
  XK_Control_L                   = KeySymT.cast(0xffe3) # Left control
  XK_Control_R                   = KeySymT.cast(0xffe4) # Right control
  XK_Caps_Lock                   = KeySymT.cast(0xffe5) # Caps lock
  XK_Shift_Lock                  = KeySymT.cast(0xffe6) # Shift lock
  XK_Meta_L                      = KeySymT.cast(0xffe7) # Left meta
  XK_Meta_R                      = KeySymT.cast(0xffe8) # Right meta
  XK_Alt_L                       = KeySymT.cast(0xffe9) # Left alt
  XK_Alt_R                       = KeySymT.cast(0xffea) # Right alt
  XK_Super_L                     = KeySymT.cast(0xffeb) # Left super
  XK_Super_R                     = KeySymT.cast(0xffec) # Right super
  XK_Hyper_L                     = KeySymT.cast(0xffed) # Left hyper
  XK_Hyper_R                     = KeySymT.cast(0xffee) # Right hyper
  # Keyboard (XKB) Extension function and modifier keys
  # (from Appendix C of "The X Keyboard Extension: Protocol Specification")
  # Byte 3                       = KeySymT.cast(0xfe)
  XK_ISO_Lock                    = KeySymT.cast(0xfe01)
  XK_ISO_Level2_Latch            = KeySymT.cast(0xfe02)
  XK_ISO_Level3_Shift            = KeySymT.cast(0xfe03)
  XK_ISO_Level3_Latch            = KeySymT.cast(0xfe04)
  XK_ISO_Level3_Lock             = KeySymT.cast(0xfe05)
  XK_ISO_Level5_Shift            = KeySymT.cast(0xfe11)
  XK_ISO_Level5_Latch            = KeySymT.cast(0xfe12)
  XK_ISO_Level5_Lock             = KeySymT.cast(0xfe13)
  XK_ISO_Group_Shift             = KeySymT.cast(0xff7e) # Alias for mode_switch
  XK_ISO_Group_Latch             = KeySymT.cast(0xfe06)
  XK_ISO_Group_Lock              = KeySymT.cast(0xfe07)
  XK_ISO_Next_Group              = KeySymT.cast(0xfe08)
  XK_ISO_Next_Group_Lock         = KeySymT.cast(0xfe09)
  XK_ISO_Prev_Group              = KeySymT.cast(0xfe0a)
  XK_ISO_Prev_Group_Lock         = KeySymT.cast(0xfe0b)
  XK_ISO_First_Group             = KeySymT.cast(0xfe0c)
  XK_ISO_First_Group_Lock        = KeySymT.cast(0xfe0d)
  XK_ISO_Last_Group              = KeySymT.cast(0xfe0e)
  XK_ISO_Last_Group_Lock         = KeySymT.cast(0xfe0f)
  XK_ISO_Left_Tab                = KeySymT.cast(0xfe20)
  XK_ISO_Move_Line_Up            = KeySymT.cast(0xfe21)
  XK_ISO_Move_Line_Down          = KeySymT.cast(0xfe22)
  XK_ISO_Partial_Line_Up         = KeySymT.cast(0xfe23)
  XK_ISO_Partial_Line_Down       = KeySymT.cast(0xfe24)
  XK_ISO_Partial_Space_Left      = KeySymT.cast(0xfe25)
  XK_ISO_Partial_Space_Right     = KeySymT.cast(0xfe26)
  XK_ISO_Set_Margin_Left         = KeySymT.cast(0xfe27)
  XK_ISO_Set_Margin_Right        = KeySymT.cast(0xfe28)
  XK_ISO_Release_Margin_Left     = KeySymT.cast(0xfe29)
  XK_ISO_Release_Margin_Right    = KeySymT.cast(0xfe2a)
  XK_ISO_Release_Both_Margins    = KeySymT.cast(0xfe2b)
  XK_ISO_Fast_Cursor_Left        = KeySymT.cast(0xfe2c)
  XK_ISO_Fast_Cursor_Right       = KeySymT.cast(0xfe2d)
  XK_ISO_Fast_Cursor_Up          = KeySymT.cast(0xfe2e)
  XK_ISO_Fast_Cursor_Down        = KeySymT.cast(0xfe2f)
  XK_ISO_Continuous_Underline    = KeySymT.cast(0xfe30)
  XK_ISO_Discontinuous_Underline = KeySymT.cast(0xfe31)
  XK_ISO_Emphasize               = KeySymT.cast(0xfe32)
  XK_ISO_Center_Object           = KeySymT.cast(0xfe33)
  XK_ISO_Enter                   = KeySymT.cast(0xfe34)
  XK_dead_grave                  = KeySymT.cast(0xfe50)
  XK_dead_acute                  = KeySymT.cast(0xfe51)
  XK_dead_circumflex             = KeySymT.cast(0xfe52)
  XK_dead_tilde                  = KeySymT.cast(0xfe53)
  XK_dead_perispomeni            = KeySymT.cast(0xfe53) # alias for dead_tilde
  XK_dead_macron                 = KeySymT.cast(0xfe54)
  XK_dead_breve                  = KeySymT.cast(0xfe55)
  XK_dead_abovedot               = KeySymT.cast(0xfe56)
  XK_dead_diaeresis              = KeySymT.cast(0xfe57)
  XK_dead_abovering              = KeySymT.cast(0xfe58)
  XK_dead_doubleacute            = KeySymT.cast(0xfe59)
  XK_dead_caron                  = KeySymT.cast(0xfe5a)
  XK_dead_cedilla                = KeySymT.cast(0xfe5b)
  XK_dead_ogonek                 = KeySymT.cast(0xfe5c)
  XK_dead_iota                   = KeySymT.cast(0xfe5d)
  XK_dead_voiced_sound           = KeySymT.cast(0xfe5e)
  XK_dead_semivoiced_sound       = KeySymT.cast(0xfe5f)
  XK_dead_belowdot               = KeySymT.cast(0xfe60)
  XK_dead_hook                   = KeySymT.cast(0xfe61)
  XK_dead_horn                   = KeySymT.cast(0xfe62)
  XK_dead_stroke                 = KeySymT.cast(0xfe63)
  XK_dead_abovecomma             = KeySymT.cast(0xfe64)
  XK_dead_psili                  = KeySymT.cast(0xfe64) # alias for dead_abovecomma
  XK_dead_abovereversedcomma     = KeySymT.cast(0xfe65)
  XK_dead_dasia                  = KeySymT.cast(0xfe65) # alias for dead_abovereversedcomma
  XK_dead_doublegrave            = KeySymT.cast(0xfe66)
  XK_dead_belowring              = KeySymT.cast(0xfe67)
  XK_dead_belowmacron            = KeySymT.cast(0xfe68)
  XK_dead_belowcircumflex        = KeySymT.cast(0xfe69)
  XK_dead_belowtilde             = KeySymT.cast(0xfe6a)
  XK_dead_belowbreve             = KeySymT.cast(0xfe6b)
  XK_dead_belowdiaeresis         = KeySymT.cast(0xfe6c)
  XK_dead_invertedbreve          = KeySymT.cast(0xfe6d)
  XK_dead_belowcomma             = KeySymT.cast(0xfe6e)
  XK_dead_currency               = KeySymT.cast(0xfe6f)
  # extra dead elements for German T3 layout
  XK_dead_lowline                = KeySymT.cast(0xfe90)
  XK_dead_aboveverticalline      = KeySymT.cast(0xfe91)
  XK_dead_belowverticalline      = KeySymT.cast(0xfe92)
  XK_dead_longsolidusoverlay     = KeySymT.cast(0xfe93)
  # dead vowels for universal syllable entry
  XK_dead_a                      = KeySymT.cast(0xfe80)
  XK_dead_A                      = KeySymT.cast(0xfe81)
  XK_dead_e                      = KeySymT.cast(0xfe82)
  XK_dead_E                      = KeySymT.cast(0xfe83)
  XK_dead_i                      = KeySymT.cast(0xfe84)
  XK_dead_I                      = KeySymT.cast(0xfe85)
  XK_dead_o                      = KeySymT.cast(0xfe86)
  XK_dead_O                      = KeySymT.cast(0xfe87)
  XK_dead_u                      = KeySymT.cast(0xfe88)
  XK_dead_U                      = KeySymT.cast(0xfe89)
  XK_dead_small_schwa            = KeySymT.cast(0xfe8a)
  XK_dead_capital_schwa          = KeySymT.cast(0xfe8b)
  XK_dead_greek                  = KeySymT.cast(0xfe8c)
  XK_First_Virtual_Screen        = KeySymT.cast(0xfed0)
  XK_Prev_Virtual_Screen         = KeySymT.cast(0xfed1)
  XK_Next_Virtual_Screen         = KeySymT.cast(0xfed2)
  XK_Last_Virtual_Screen         = KeySymT.cast(0xfed4)
  XK_Terminate_Server            = KeySymT.cast(0xfed5)
  XK_AccessX_Enable              = KeySymT.cast(0xfe70)
  XK_AccessX_Feedback_Enable     = KeySymT.cast(0xfe71)
  XK_RepeatKeys_Enable           = KeySymT.cast(0xfe72)
  XK_SlowKeys_Enable             = KeySymT.cast(0xfe73)
  XK_BounceKeys_Enable           = KeySymT.cast(0xfe74)
  XK_StickyKeys_Enable           = KeySymT.cast(0xfe75)
  XK_MouseKeys_Enable            = KeySymT.cast(0xfe76)
  XK_MouseKeys_Accel_Enable      = KeySymT.cast(0xfe77)
  XK_Overlay1_Enable             = KeySymT.cast(0xfe78)
  XK_Overlay2_Enable             = KeySymT.cast(0xfe79)
  XK_AudibleBell_Enable          = KeySymT.cast(0xfe7a)
  XK_Pointer_Left                = KeySymT.cast(0xfee0)
  XK_Pointer_Right               = KeySymT.cast(0xfee1)
  XK_Pointer_Up                  = KeySymT.cast(0xfee2)
  XK_Pointer_Down                = KeySymT.cast(0xfee3)
  XK_Pointer_UpLeft              = KeySymT.cast(0xfee4)
  XK_Pointer_UpRight             = KeySymT.cast(0xfee5)
  XK_Pointer_DownLeft            = KeySymT.cast(0xfee6)
  XK_Pointer_DownRight           = KeySymT.cast(0xfee7)
  XK_Pointer_Button_Dflt         = KeySymT.cast(0xfee8)
  XK_Pointer_Button1             = KeySymT.cast(0xfee9)
  XK_Pointer_Button2             = KeySymT.cast(0xfeea)
  XK_Pointer_Button3             = KeySymT.cast(0xfeeb)
  XK_Pointer_Button4             = KeySymT.cast(0xfeec)
  XK_Pointer_Button5             = KeySymT.cast(0xfeed)
  XK_Pointer_DblClick_Dflt       = KeySymT.cast(0xfeee)
  XK_Pointer_DblClick1           = KeySymT.cast(0xfeef)
  XK_Pointer_DblClick2           = KeySymT.cast(0xfef0)
  XK_Pointer_DblClick3           = KeySymT.cast(0xfef1)
  XK_Pointer_DblClick4           = KeySymT.cast(0xfef2)
  XK_Pointer_DblClick5           = KeySymT.cast(0xfef3)
  XK_Pointer_Drag_Dflt           = KeySymT.cast(0xfef4)
  XK_Pointer_Drag1               = KeySymT.cast(0xfef5)
  XK_Pointer_Drag2               = KeySymT.cast(0xfef6)
  XK_Pointer_Drag3               = KeySymT.cast(0xfef7)
  XK_Pointer_Drag4               = KeySymT.cast(0xfef8)
  XK_Pointer_Drag5               = KeySymT.cast(0xfefd)
  XK_Pointer_EnableKeys          = KeySymT.cast(0xfef9)
  XK_Pointer_Accelerate          = KeySymT.cast(0xfefa)
  XK_Pointer_DfltBtnNext         = KeySymT.cast(0xfefb)
  XK_Pointer_DfltBtnPrev         = KeySymT.cast(0xfefc)
  # Single-Stroke Multiple-Character N-Graph Keysyms For The X Input Method
  XK_ch                          = KeySymT.cast(0xfea0)
  XK_Ch                          = KeySymT.cast(0xfea1)
  XK_CH                          = KeySymT.cast(0xfea2)
  XK_c_h                         = KeySymT.cast(0xfea3)
  XK_C_h                         = KeySymT.cast(0xfea4)
  XK_C_H                         = KeySymT.cast(0xfea5)
  # 3270 Terminal Keys
  # Byte 3                       = KeySymT.cast(0xfd)
  XK_3270_Duplicate              = KeySymT.cast(0xfd01)
  XK_3270_FieldMark              = KeySymT.cast(0xfd02)
  XK_3270_Right2                 = KeySymT.cast(0xfd03)
  XK_3270_Left2                  = KeySymT.cast(0xfd04)
  XK_3270_BackTab                = KeySymT.cast(0xfd05)
  XK_3270_EraseEOF               = KeySymT.cast(0xfd06)
  XK_3270_EraseInput             = KeySymT.cast(0xfd07)
  XK_3270_Reset                  = KeySymT.cast(0xfd08)
  XK_3270_Quit                   = KeySymT.cast(0xfd09)
  XK_3270_PA1                    = KeySymT.cast(0xfd0a)
  XK_3270_PA2                    = KeySymT.cast(0xfd0b)
  XK_3270_PA3                    = KeySymT.cast(0xfd0c)
  XK_3270_Test                   = KeySymT.cast(0xfd0d)
  XK_3270_Attn                   = KeySymT.cast(0xfd0e)
  XK_3270_CursorBlink            = KeySymT.cast(0xfd0f)
  XK_3270_AltCursor              = KeySymT.cast(0xfd10)
  XK_3270_KeyClick               = KeySymT.cast(0xfd11)
  XK_3270_Jump                   = KeySymT.cast(0xfd12)
  XK_3270_Ident                  = KeySymT.cast(0xfd13)
  XK_3270_Rule                   = KeySymT.cast(0xfd14)
  XK_3270_Copy                   = KeySymT.cast(0xfd15)
  XK_3270_Play                   = KeySymT.cast(0xfd16)
  XK_3270_Setup                  = KeySymT.cast(0xfd17)
  XK_3270_Record                 = KeySymT.cast(0xfd18)
  XK_3270_ChangeScreen           = KeySymT.cast(0xfd19)
  XK_3270_DeleteWord             = KeySymT.cast(0xfd1a)
  XK_3270_ExSelect               = KeySymT.cast(0xfd1b)
  XK_3270_CursorSelect           = KeySymT.cast(0xfd1c)
  XK_3270_PrintScreen            = KeySymT.cast(0xfd1d)
  XK_3270_Enter                  = KeySymT.cast(0xfd1e)
  # Latin 1
  # (ISO/IEC 8859-1              = KeySymT.cast(Unicode) U+0020..U+00FF)
  # Byte 3                       = KeySymT.cast(0)
  XK_space                       = KeySymT.cast(0x0020) # U+0020 SPACE
  XK_exclam                      = KeySymT.cast(0x0021) # U+0021 EXCLAMATION MARK
  XK_quotedbl                    = KeySymT.cast(0x0022) # U+0022 QUOTATION MARK
  XK_numbersign                  = KeySymT.cast(0x0023) # U+0023 NUMBER SIGN
  XK_dollar                      = KeySymT.cast(0x0024) # U+0024 DOLLAR SIGN
  XK_percent                     = KeySymT.cast(0x0025) # U+0025 PERCENT SIGN
  XK_ampersand                   = KeySymT.cast(0x0026) # U+0026 AMPERSAND
  XK_apostrophe                  = KeySymT.cast(0x0027) # U+0027 APOSTROPHE
  XK_quoteright                  = KeySymT.cast(0x0027) # deprecated
  XK_parenleft                   = KeySymT.cast(0x0028) # U+0028 LEFT PARENTHESIS
  XK_parenright                  = KeySymT.cast(0x0029) # U+0029 RIGHT PARENTHESIS
  XK_asterisk                    = KeySymT.cast(0x002a) # U+002A ASTERISK
  XK_plus                        = KeySymT.cast(0x002b) # U+002B PLUS SIGN
  XK_comma                       = KeySymT.cast(0x002c) # U+002C COMMA
  XK_minus                       = KeySymT.cast(0x002d) # U+002D HYPHEN-MINUS
  XK_period                      = KeySymT.cast(0x002e) # U+002E FULL STOP
  XK_slash                       = KeySymT.cast(0x002f) # U+002F SOLIDUS
  XK_0                           = KeySymT.cast(0x0030) # U+0030 DIGIT ZERO
  XK_1                           = KeySymT.cast(0x0031) # U+0031 DIGIT ONE
  XK_2                           = KeySymT.cast(0x0032) # U+0032 DIGIT TWO
  XK_3                           = KeySymT.cast(0x0033) # U+0033 DIGIT THREE
  XK_4                           = KeySymT.cast(0x0034) # U+0034 DIGIT FOUR
  XK_5                           = KeySymT.cast(0x0035) # U+0035 DIGIT FIVE
  XK_6                           = KeySymT.cast(0x0036) # U+0036 DIGIT SIX
  XK_7                           = KeySymT.cast(0x0037) # U+0037 DIGIT SEVEN
  XK_8                           = KeySymT.cast(0x0038) # U+0038 DIGIT EIGHT
  XK_9                           = KeySymT.cast(0x0039) # U+0039 DIGIT NINE
  XK_colon                       = KeySymT.cast(0x003a) # U+003A COLON
  XK_semicolon                   = KeySymT.cast(0x003b) # U+003B SEMICOLON
  XK_less                        = KeySymT.cast(0x003c) # U+003C LESS-THAN SIGN
  XK_equal                       = KeySymT.cast(0x003d) # U+003D EQUALS SIGN
  XK_greater                     = KeySymT.cast(0x003e) # U+003E GREATER-THAN SIGN
  XK_question                    = KeySymT.cast(0x003f) # U+003F QUESTION MARK
  XK_at                          = KeySymT.cast(0x0040) # U+0040 COMMERCIAL AT
  XK_A                           = KeySymT.cast(0x0041) # U+0041 LATIN CAPITAL LETTER A
  XK_B                           = KeySymT.cast(0x0042) # U+0042 LATIN CAPITAL LETTER B
  XK_C                           = KeySymT.cast(0x0043) # U+0043 LATIN CAPITAL LETTER C
  XK_D                           = KeySymT.cast(0x0044) # U+0044 LATIN CAPITAL LETTER D
  XK_E                           = KeySymT.cast(0x0045) # U+0045 LATIN CAPITAL LETTER E
  XK_F                           = KeySymT.cast(0x0046) # U+0046 LATIN CAPITAL LETTER F
  XK_G                           = KeySymT.cast(0x0047) # U+0047 LATIN CAPITAL LETTER G
  XK_H                           = KeySymT.cast(0x0048) # U+0048 LATIN CAPITAL LETTER H
  XK_I                           = KeySymT.cast(0x0049) # U+0049 LATIN CAPITAL LETTER I
  XK_J                           = KeySymT.cast(0x004a) # U+004A LATIN CAPITAL LETTER J
  XK_K                           = KeySymT.cast(0x004b) # U+004B LATIN CAPITAL LETTER K
  XK_L                           = KeySymT.cast(0x004c) # U+004C LATIN CAPITAL LETTER L
  XK_M                           = KeySymT.cast(0x004d) # U+004D LATIN CAPITAL LETTER M
  XK_N                           = KeySymT.cast(0x004e) # U+004E LATIN CAPITAL LETTER N
  XK_O                           = KeySymT.cast(0x004f) # U+004F LATIN CAPITAL LETTER O
  XK_P                           = KeySymT.cast(0x0050) # U+0050 LATIN CAPITAL LETTER P
  XK_Q                           = KeySymT.cast(0x0051) # U+0051 LATIN CAPITAL LETTER Q
  XK_R                           = KeySymT.cast(0x0052) # U+0052 LATIN CAPITAL LETTER R
  XK_S                           = KeySymT.cast(0x0053) # U+0053 LATIN CAPITAL LETTER S
  XK_T                           = KeySymT.cast(0x0054) # U+0054 LATIN CAPITAL LETTER T
  XK_U                           = KeySymT.cast(0x0055) # U+0055 LATIN CAPITAL LETTER U
  XK_V                           = KeySymT.cast(0x0056) # U+0056 LATIN CAPITAL LETTER V
  XK_W                           = KeySymT.cast(0x0057) # U+0057 LATIN CAPITAL LETTER W
  XK_X                           = KeySymT.cast(0x0058) # U+0058 LATIN CAPITAL LETTER X
  XK_Y                           = KeySymT.cast(0x0059) # U+0059 LATIN CAPITAL LETTER Y
  XK_Z                           = KeySymT.cast(0x005a) # U+005A LATIN CAPITAL LETTER Z
  XK_bracketleft                 = KeySymT.cast(0x005b) # U+005B LEFT SQUARE BRACKET
  XK_backslash                   = KeySymT.cast(0x005c) # U+005C REVERSE SOLIDUS
  XK_bracketright                = KeySymT.cast(0x005d) # U+005D RIGHT SQUARE BRACKET
  XK_asciicircum                 = KeySymT.cast(0x005e) # U+005E CIRCUMFLEX ACCENT
  XK_underscore                  = KeySymT.cast(0x005f) # U+005F LOW LINE
  XK_grave                       = KeySymT.cast(0x0060) # U+0060 GRAVE ACCENT
  XK_quoteleft                   = KeySymT.cast(0x0060) # deprecated
  XK_a                           = KeySymT.cast(0x0061) # U+0061 LATIN SMALL LETTER A
  XK_b                           = KeySymT.cast(0x0062) # U+0062 LATIN SMALL LETTER B
  XK_c                           = KeySymT.cast(0x0063) # U+0063 LATIN SMALL LETTER C
  XK_d                           = KeySymT.cast(0x0064) # U+0064 LATIN SMALL LETTER D
  XK_e                           = KeySymT.cast(0x0065) # U+0065 LATIN SMALL LETTER E
  XK_f                           = KeySymT.cast(0x0066) # U+0066 LATIN SMALL LETTER F
  XK_g                           = KeySymT.cast(0x0067) # U+0067 LATIN SMALL LETTER G
  XK_h                           = KeySymT.cast(0x0068) # U+0068 LATIN SMALL LETTER H
  XK_i                           = KeySymT.cast(0x0069) # U+0069 LATIN SMALL LETTER I
  XK_j                           = KeySymT.cast(0x006a) # U+006A LATIN SMALL LETTER J
  XK_k                           = KeySymT.cast(0x006b) # U+006B LATIN SMALL LETTER K
  XK_l                           = KeySymT.cast(0x006c) # U+006C LATIN SMALL LETTER L
  XK_m                           = KeySymT.cast(0x006d) # U+006D LATIN SMALL LETTER M
  XK_n                           = KeySymT.cast(0x006e) # U+006E LATIN SMALL LETTER N
  XK_o                           = KeySymT.cast(0x006f) # U+006F LATIN SMALL LETTER O
  XK_p                           = KeySymT.cast(0x0070) # U+0070 LATIN SMALL LETTER P
  XK_q                           = KeySymT.cast(0x0071) # U+0071 LATIN SMALL LETTER Q
  XK_r                           = KeySymT.cast(0x0072) # U+0072 LATIN SMALL LETTER R
  XK_s                           = KeySymT.cast(0x0073) # U+0073 LATIN SMALL LETTER S
  XK_t                           = KeySymT.cast(0x0074) # U+0074 LATIN SMALL LETTER T
  XK_u                           = KeySymT.cast(0x0075) # U+0075 LATIN SMALL LETTER U
  XK_v                           = KeySymT.cast(0x0076) # U+0076 LATIN SMALL LETTER V
  XK_w                           = KeySymT.cast(0x0077) # U+0077 LATIN SMALL LETTER W
  XK_x                           = KeySymT.cast(0x0078) # U+0078 LATIN SMALL LETTER X
  XK_y                           = KeySymT.cast(0x0079) # U+0079 LATIN SMALL LETTER Y
  XK_z                           = KeySymT.cast(0x007a) # U+007A LATIN SMALL LETTER Z
  XK_braceleft                   = KeySymT.cast(0x007b) # U+007B LEFT CURLY BRACKET
  XK_bar                         = KeySymT.cast(0x007c) # U+007C VERTICAL LINE
  XK_braceright                  = KeySymT.cast(0x007d) # U+007D RIGHT CURLY BRACKET
  XK_asciitilde                  = KeySymT.cast(0x007e) # U+007E TILDE
  XK_nobreakspace                = KeySymT.cast(0x00a0) # U+00A0 NO-BREAK SPACE
  XK_exclamdown                  = KeySymT.cast(0x00a1) # U+00A1 INVERTED EXCLAMATION MARK
  XK_cent                        = KeySymT.cast(0x00a2) # U+00A2 CENT SIGN
  XK_sterling                    = KeySymT.cast(0x00a3) # U+00A3 POUND SIGN
  XK_currency                    = KeySymT.cast(0x00a4) # U+00A4 CURRENCY SIGN
  XK_yen                         = KeySymT.cast(0x00a5) # U+00A5 YEN SIGN
  XK_brokenbar                   = KeySymT.cast(0x00a6) # U+00A6 BROKEN BAR
  XK_section                     = KeySymT.cast(0x00a7) # U+00A7 SECTION SIGN
  XK_diaeresis                   = KeySymT.cast(0x00a8) # U+00A8 DIAERESIS
  XK_copyright                   = KeySymT.cast(0x00a9) # U+00A9 COPYRIGHT SIGN
  XK_ordfeminine                 = KeySymT.cast(0x00aa) # U+00AA FEMININE ORDINAL INDICATOR
  XK_guillemotleft               = KeySymT.cast(0x00ab) # U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
  XK_notsign                     = KeySymT.cast(0x00ac) # U+00AC NOT SIGN
  XK_hyphen                      = KeySymT.cast(0x00ad) # U+00AD SOFT HYPHEN
  XK_registered                  = KeySymT.cast(0x00ae) # U+00AE REGISTERED SIGN
  XK_macron                      = KeySymT.cast(0x00af) # U+00AF MACRON
  XK_degree                      = KeySymT.cast(0x00b0) # U+00B0 DEGREE SIGN
  XK_plusminus                   = KeySymT.cast(0x00b1) # U+00B1 PLUS-MINUS SIGN
  XK_twosuperior                 = KeySymT.cast(0x00b2) # U+00B2 SUPERSCRIPT TWO
  XK_threesuperior               = KeySymT.cast(0x00b3) # U+00B3 SUPERSCRIPT THREE
  XK_acute                       = KeySymT.cast(0x00b4) # U+00B4 ACUTE ACCENT
  XK_mu                          = KeySymT.cast(0x00b5) # U+00B5 MICRO SIGN
  XK_paragraph                   = KeySymT.cast(0x00b6) # U+00B6 PILCROW SIGN
  XK_periodcentered              = KeySymT.cast(0x00b7) # U+00B7 MIDDLE DOT
  XK_cedilla                     = KeySymT.cast(0x00b8) # U+00B8 CEDILLA
  XK_onesuperior                 = KeySymT.cast(0x00b9) # U+00B9 SUPERSCRIPT ONE
  XK_masculine                   = KeySymT.cast(0x00ba) # U+00BA MASCULINE ORDINAL INDICATOR
  XK_guillemotright              = KeySymT.cast(0x00bb) # U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
  XK_onequarter                  = KeySymT.cast(0x00bc) # U+00BC VULGAR FRACTION ONE QUARTER
  XK_onehalf                     = KeySymT.cast(0x00bd) # U+00BD VULGAR FRACTION ONE HALF
  XK_threequarters               = KeySymT.cast(0x00be) # U+00BE VULGAR FRACTION THREE QUARTERS
  XK_questiondown                = KeySymT.cast(0x00bf) # U+00BF INVERTED QUESTION MARK
  XK_Agrave                      = KeySymT.cast(0x00c0) # U+00C0 LATIN CAPITAL LETTER A WITH GRAVE
  XK_Aacute                      = KeySymT.cast(0x00c1) # U+00C1 LATIN CAPITAL LETTER A WITH ACUTE
  XK_Acircumflex                 = KeySymT.cast(0x00c2) # U+00C2 LATIN CAPITAL LETTER A WITH CIRCUMFLEX
  XK_Atilde                      = KeySymT.cast(0x00c3) # U+00C3 LATIN CAPITAL LETTER A WITH TILDE
  XK_Adiaeresis                  = KeySymT.cast(0x00c4) # U+00C4 LATIN CAPITAL LETTER A WITH DIAERESIS
  XK_Aring                       = KeySymT.cast(0x00c5) # U+00C5 LATIN CAPITAL LETTER A WITH RING ABOVE
  XK_AE                          = KeySymT.cast(0x00c6) # U+00C6 LATIN CAPITAL LETTER AE
  XK_Ccedilla                    = KeySymT.cast(0x00c7) # U+00C7 LATIN CAPITAL LETTER C WITH CEDILLA
  XK_Egrave                      = KeySymT.cast(0x00c8) # U+00C8 LATIN CAPITAL LETTER E WITH GRAVE
  XK_Eacute                      = KeySymT.cast(0x00c9) # U+00C9 LATIN CAPITAL LETTER E WITH ACUTE
  XK_Ecircumflex                 = KeySymT.cast(0x00ca) # U+00CA LATIN CAPITAL LETTER E WITH CIRCUMFLEX
  XK_Ediaeresis                  = KeySymT.cast(0x00cb) # U+00CB LATIN CAPITAL LETTER E WITH DIAERESIS
  XK_Igrave                      = KeySymT.cast(0x00cc) # U+00CC LATIN CAPITAL LETTER I WITH GRAVE
  XK_Iacute                      = KeySymT.cast(0x00cd) # U+00CD LATIN CAPITAL LETTER I WITH ACUTE
  XK_Icircumflex                 = KeySymT.cast(0x00ce) # U+00CE LATIN CAPITAL LETTER I WITH CIRCUMFLEX
  XK_Idiaeresis                  = KeySymT.cast(0x00cf) # U+00CF LATIN CAPITAL LETTER I WITH DIAERESIS
  XK_ETH                         = KeySymT.cast(0x00d0) # U+00D0 LATIN CAPITAL LETTER ETH
  XK_Eth                         = KeySymT.cast(0x00d0) # deprecated
  XK_Ntilde                      = KeySymT.cast(0x00d1) # U+00D1 LATIN CAPITAL LETTER N WITH TILDE
  XK_Ograve                      = KeySymT.cast(0x00d2) # U+00D2 LATIN CAPITAL LETTER O WITH GRAVE
  XK_Oacute                      = KeySymT.cast(0x00d3) # U+00D3 LATIN CAPITAL LETTER O WITH ACUTE
  XK_Ocircumflex                 = KeySymT.cast(0x00d4) # U+00D4 LATIN CAPITAL LETTER O WITH CIRCUMFLEX
  XK_Otilde                      = KeySymT.cast(0x00d5) # U+00D5 LATIN CAPITAL LETTER O WITH TILDE
  XK_Odiaeresis                  = KeySymT.cast(0x00d6) # U+00D6 LATIN CAPITAL LETTER O WITH DIAERESIS
  XK_multiply                    = KeySymT.cast(0x00d7) # U+00D7 MULTIPLICATION SIGN
  XK_Oslash                      = KeySymT.cast(0x00d8) # U+00D8 LATIN CAPITAL LETTER O WITH STROKE
  XK_Ooblique                    = KeySymT.cast(0x00d8) # U+00D8 LATIN CAPITAL LETTER O WITH STROKE
  XK_Ugrave                      = KeySymT.cast(0x00d9) # U+00D9 LATIN CAPITAL LETTER U WITH GRAVE
  XK_Uacute                      = KeySymT.cast(0x00da) # U+00DA LATIN CAPITAL LETTER U WITH ACUTE
  XK_Ucircumflex                 = KeySymT.cast(0x00db) # U+00DB LATIN CAPITAL LETTER U WITH CIRCUMFLEX
  XK_Udiaeresis                  = KeySymT.cast(0x00dc) # U+00DC LATIN CAPITAL LETTER U WITH DIAERESIS
  XK_Yacute                      = KeySymT.cast(0x00dd) # U+00DD LATIN CAPITAL LETTER Y WITH ACUTE
  XK_THORN                       = KeySymT.cast(0x00de) # U+00DE LATIN CAPITAL LETTER THORN
  XK_Thorn                       = KeySymT.cast(0x00de) # deprecated
  XK_ssharp                      = KeySymT.cast(0x00df) # U+00DF LATIN SMALL LETTER SHARP S
  XK_agrave                      = KeySymT.cast(0x00e0) # U+00E0 LATIN SMALL LETTER A WITH GRAVE
  XK_aacute                      = KeySymT.cast(0x00e1) # U+00E1 LATIN SMALL LETTER A WITH ACUTE
  XK_acircumflex                 = KeySymT.cast(0x00e2) # U+00E2 LATIN SMALL LETTER A WITH CIRCUMFLEX
  XK_atilde                      = KeySymT.cast(0x00e3) # U+00E3 LATIN SMALL LETTER A WITH TILDE
  XK_adiaeresis                  = KeySymT.cast(0x00e4) # U+00E4 LATIN SMALL LETTER A WITH DIAERESIS
  XK_aring                       = KeySymT.cast(0x00e5) # U+00E5 LATIN SMALL LETTER A WITH RING ABOVE
  XK_ae                          = KeySymT.cast(0x00e6) # U+00E6 LATIN SMALL LETTER AE
  XK_ccedilla                    = KeySymT.cast(0x00e7) # U+00E7 LATIN SMALL LETTER C WITH CEDILLA
  XK_egrave                      = KeySymT.cast(0x00e8) # U+00E8 LATIN SMALL LETTER E WITH GRAVE
  XK_eacute                      = KeySymT.cast(0x00e9) # U+00E9 LATIN SMALL LETTER E WITH ACUTE
  XK_ecircumflex                 = KeySymT.cast(0x00ea) # U+00EA LATIN SMALL LETTER E WITH CIRCUMFLEX
  XK_ediaeresis                  = KeySymT.cast(0x00eb) # U+00EB LATIN SMALL LETTER E WITH DIAERESIS
  XK_igrave                      = KeySymT.cast(0x00ec) # U+00EC LATIN SMALL LETTER I WITH GRAVE
  XK_iacute                      = KeySymT.cast(0x00ed) # U+00ED LATIN SMALL LETTER I WITH ACUTE
  XK_icircumflex                 = KeySymT.cast(0x00ee) # U+00EE LATIN SMALL LETTER I WITH CIRCUMFLEX
  XK_idiaeresis                  = KeySymT.cast(0x00ef) # U+00EF LATIN SMALL LETTER I WITH DIAERESIS
  XK_eth                         = KeySymT.cast(0x00f0) # U+00F0 LATIN SMALL LETTER ETH
  XK_ntilde                      = KeySymT.cast(0x00f1) # U+00F1 LATIN SMALL LETTER N WITH TILDE
  XK_ograve                      = KeySymT.cast(0x00f2) # U+00F2 LATIN SMALL LETTER O WITH GRAVE
  XK_oacute                      = KeySymT.cast(0x00f3) # U+00F3 LATIN SMALL LETTER O WITH ACUTE
  XK_ocircumflex                 = KeySymT.cast(0x00f4) # U+00F4 LATIN SMALL LETTER O WITH CIRCUMFLEX
  XK_otilde                      = KeySymT.cast(0x00f5) # U+00F5 LATIN SMALL LETTER O WITH TILDE
  XK_odiaeresis                  = KeySymT.cast(0x00f6) # U+00F6 LATIN SMALL LETTER O WITH DIAERESIS
  XK_division                    = KeySymT.cast(0x00f7) # U+00F7 DIVISION SIGN
  XK_oslash                      = KeySymT.cast(0x00f8) # U+00F8 LATIN SMALL LETTER O WITH STROKE
  XK_ooblique                    = KeySymT.cast(0x00f8) # U+00F8 LATIN SMALL LETTER O WITH STROKE
  XK_ugrave                      = KeySymT.cast(0x00f9) # U+00F9 LATIN SMALL LETTER U WITH GRAVE
  XK_uacute                      = KeySymT.cast(0x00fa) # U+00FA LATIN SMALL LETTER U WITH ACUTE
  XK_ucircumflex                 = KeySymT.cast(0x00fb) # U+00FB LATIN SMALL LETTER U WITH CIRCUMFLEX
  XK_udiaeresis                  = KeySymT.cast(0x00fc) # U+00FC LATIN SMALL LETTER U WITH DIAERESIS
  XK_yacute                      = KeySymT.cast(0x00fd) # U+00FD LATIN SMALL LETTER Y WITH ACUTE
  XK_thorn                       = KeySymT.cast(0x00fe) # U+00FE LATIN SMALL LETTER THORN
  XK_ydiaeresis                  = KeySymT.cast(0x00ff) # U+00FF LATIN SMALL LETTER Y WITH DIAERESIS
end