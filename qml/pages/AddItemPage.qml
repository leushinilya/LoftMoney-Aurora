import QtQuick 2.0
import Sailfish.Silica 1.0

Page {

    id: page
    backgroundColor: "white"

    property color inColor: "#7ED321"
    property color outColor: "#3574FA"
    property color hintColor: "#DBDBDB"

    Rectangle {
        height: childrenRect.height
        width: Theme.buttonWidthMedium
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
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
                top: sum.bottom
            }
            color: inColor
            placeholderColor: hintColor
        }

        Button {
            anchors.top: label.bottom
            icon {
                id: buttonIcon
                source: Qt.resolvedUrl("../icons/Check.svg")
                sourceSize {
                    width: Theme.iconSizeSmall
                    //                height: Theme.dp(30)
                }
                color: inColor
            }
            text: "ADD"
            color: inColor
            backgroundColor: "white"

            width: Theme.buttonWidthMedium
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
