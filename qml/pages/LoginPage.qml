import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    backgroundColor: "#3574FA"

    Image {
        id: logo
        source: "../icons/LoftLogo.svg"
        anchors.centerIn: parent
        width: Theme.dp(93)
        height: Theme.dp(93)
    }

    Text {
        id: title
        text: qsTr("LoftMoney")
        anchors {
            top: logo.bottom
            topMargin: Theme.paddingMedium
            horizontalCenter: parent.horizontalCenter
        }
    }

    Button {
        text: qsTr("Login")
        backgroundColor: "white"
        icon {
            source: Qt.resolvedUrl("../qml/icons/GoogleLogo.svg")
            sourceSize {
                width: icon.width
                height: icon.height
            }
        }
        anchors {
            top: title.bottom
            topMargin: Theme.paddingLarge
            horizontalCenter: parent.horizontalCenter
        }
    }
}
