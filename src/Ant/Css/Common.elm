module Ant.Css.Common exposing
    ( alertClass
    , alertErrorClass
    , alertInfoClass
    , alertStateAttributeName
    , alertSuccessClass
    , alertWarningClass
    , btnClass
    , btnDashedClass
    , btnDefaultClass
    , btnLinkClass
    , btnPrimaryClass
    , btnTextClass
    , checkboxClass
    , checkboxCustomCheckmarkClass
    , checkboxLabelClass
    , inputClass
    , inputRootActiveClass
    , inputRootClass
    , makeSelector
    , passwordInputVisibilityToggleIconClass
    )

import Css exposing (Style)
import Css.Global as CG exposing (Snippet)


makeSelector : String -> List Style -> Snippet
makeSelector =
    CG.selector << String.append "."


elmAntdPrefix : String
elmAntdPrefix =
    "elm-antd"



-------------------------
-------------------------
-- Alert Class Names


alertClass : String
alertClass =
    elmAntdPrefix ++ "__alert"



-- property name for tracking the state of a closeable alert


alertStateAttributeName : String
alertStateAttributeName =
    "is_closing"


alertSuccessClass : String
alertSuccessClass =
    alertClass ++ "-success"


alertInfoClass : String
alertInfoClass =
    alertClass ++ "-info"


alertWarningClass : String
alertWarningClass =
    alertClass ++ "-warning"


alertErrorClass : String
alertErrorClass =
    alertClass ++ "-error"



-------------------------
-------------------------
-- Button Class Names


btnClass : String
btnClass =
    elmAntdPrefix ++ "__btn"


btnDefaultClass : String
btnDefaultClass =
    btnClass ++ "-default"


btnPrimaryClass : String
btnPrimaryClass =
    btnClass ++ "-primary"


btnDashedClass : String
btnDashedClass =
    btnClass ++ "-dashed"


btnTextClass : String
btnTextClass =
    btnClass ++ "-text"


btnLinkClass : String
btnLinkClass =
    btnClass ++ "-link"



-------------------------
-------------------------
-- Checkbox Class Names


checkboxClass : String
checkboxClass =
    elmAntdPrefix ++ "__checkbox"


checkboxLabelClass : String
checkboxLabelClass =
    checkboxClass ++ "-label"


checkboxCustomCheckmarkClass : String
checkboxCustomCheckmarkClass =
    checkboxClass ++ "-checkmark"



-------------------------
-------------------------
-- Input Class Names


inputClass : String
inputClass =
    elmAntdPrefix ++ "__input"


inputRootClass : String
inputRootClass =
    inputClass ++ "-root"



-- Being toggled on and off by elm-antd-extras
-- Once the `:has` pseudo selector is widely supported, we won't need to implement
-- this logic in JS
-- Context: https://stackoverflow.com/questions/1014861/is-there-a-css-parent-selector


inputRootActiveClass : String
inputRootActiveClass =
    inputClass ++ "-active"


passwordInputVisibilityToggleIconClass : String
passwordInputVisibilityToggleIconClass =
    inputClass ++ "-password-visibility-toggle-icon"
