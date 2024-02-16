import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    backgroundColor: "#3574FA"

    property color buttonIconColor: "#F76C41"
    property color buttonColor: "white"

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
        onReleased: pageStack.push(Qt.resolvedUrl("MainPage.qml"))
        anchors {
            top: title.bottom
            topMargin: Theme.paddingLarge * 2
            horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            radius: 500
            anchors.fill: parent

            Rectangle {
                width: childrenRect.width
                height: childrenRect.height
                anchors {
                    verticalCenter: parent.verticalCenter
                    horizontalCenter: parent.horizontalCenter
                }

                Icon {
                    id: buttonIcon
                    source: Qt.resolvedUrl("../icons/GoogleLogo.svg")
                    sourceSize {
                        width: Theme.dp(46)
                        height: Theme.dp(30)
                    }
                    color: buttonIconColor
                    anchors {
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                    }
                }

                Text {
                    id: buttonText
                    text: qsTr("Login")
                    color: page.backgroundColor
                    font {
                        pixelSize: Theme.fontSizeMedium
                        weight: Font.Medium
                    }
                    anchors {
                        verticalCenter: parent.verticalCenter
                        left: buttonIcon.right
                        leftMargin: Theme.dp(8)
                    }
                }
            }
        }
    }
}
