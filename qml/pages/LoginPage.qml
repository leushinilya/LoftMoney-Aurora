import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    backgroundColor: "#3574FA"

    Image {
        id: logo
        source: "../icons/LoftLogo.svg"
        width: Theme.dp(150)
        height: Theme.dp(150)
        anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.verticalCenter
        }
    }

    Text {
        id: title
        text: qsTr("LoftMoney")
        color: "white"
        font {
            pixelSize: Theme.fontSizeExtraLarge
            weight: Font.Bold
        }

        anchors {
            top: logo.bottom
            topMargin: Theme.paddingLarge
            horizontalCenter: parent.horizontalCenter
        }
    }

    Button {
        id: button
        backgroundColor: "transparent"
        highlightBackgroundColor: page.backgroundColor

        anchors {
            top: title.bottom
            topMargin: Theme.paddingLarge * 2
            horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            radius: 500
            anchors {
                centerIn: parent
                fill: parent
            }

            Icon {
                id: buttonIcon
                source: Qt.resolvedUrl("../icons/GoogleLogo.svg")
                sourceSize {
                    width: Theme.dp(46)
                    height: Theme.dp(30)
                }
                color: "#F76C41"
                anchors {
                    verticalCenter: parent.verticalCenter
                    right: buttonText.left
                    rightMargin: Theme.dp(8)
                }
            }

            Text {
                id: buttonText
                text: qsTr("Login")
                color: page.backgroundColor
                anchors.centerIn: parent
                font {
                    pixelSize: Theme.fontSizeMedium
                    weight: Font.Medium
                }
            }
        }
    }
}
