import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    id: page
    backgroundColor: "white"

    property color inColor: "#7ED321"
    property color outColor: "#3574FA"
    property color hintColor: "#DBDBDB"

    TextField {
        id: sum
        placeholderText: "Sum"
        color: inColor
        placeholderColor: hintColor
        inputMethodHints: Qt.ImhDigitsOnly
        anchors.bottom: label.top
    }

    TextField {
        id: label
        placeholderText: "Label"
        anchors {
            bottom: parent.bottom
            top: sum.bottom
        }
        color: inColor
        placeholderColor: hintColor

    }
}
