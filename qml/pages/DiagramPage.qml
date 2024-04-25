import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQml 2.0
import "../components"

TabItem {

    property real incomesAmount: 500
    property real outcomesAmount: 1500
    property color fontSecondary: "#666664"
    property color fontOrange: "#ff9e57"
    property color incomeColor: "#7ED321"
    property color outcomeColor: "#3574FA"

    Rectangle {
        anchors.fill: parent

        Rectangle {
            id: availableLayout
            width: parent.width
            height: childrenRect.height + Theme.paddingLarge * 2
            anchors {
                top: parent.top
            }
            border.color: "lightGray"

            Text {
                id: availableAmountTitle
                text: qsTr("Доступные финансы")
                color: fontSecondary
                font {
                    weight: Font.Light
                    pixelSize: Theme.fontSizeSmall
                }
                anchors {
                    top: parent.top
                    left: parent.left
                    topMargin: Theme.paddingLarge
                    leftMargin: Theme.paddingMedium
                }
            }
            Text {
                id: availableValue
                text: incomesAmount - outcomesAmount
                font {
                    pixelSize: Theme.fontSizeHuge
                    weight: Font.Bold
                }
                color: fontOrange
                anchors {
                    top: availableAmountTitle.bottom
                    left: parent.left
                    leftMargin: Theme.paddingMedium
                    bottomMargin: Theme.paddingLarge
                }
            }
        }

        Rectangle {
            id: outcomesLayout
            width: parent.width / 2
            height: childrenRect.height + Theme.paddingLarge * 2
            anchors {
                top: availableLayout.bottom
                left: parent.left
            }
            border.color: "lightGray"

            Text {
                id: outcomesTitle
                text: qsTr("Расход")
                color: fontSecondary
                font {
                    weight: Font.Light
                    pixelSize: Theme.fontSizeSmall
                }
                anchors {
                    top: parent.top
                    left: parent.left
                    topMargin: Theme.paddingLarge
                    leftMargin: Theme.paddingMedium
                }
            }
            Text {
                id: outcomesValue
                text: incomesAmount - outcomesAmount
                font {
                    pixelSize: Theme.fontSizeLarge
                    weight: Font.Medium
                }
                color: outcomeColor
                anchors {
                    top: outcomesTitle.bottom
                    left: parent.left
                    leftMargin: Theme.paddingMedium
                    bottomMargin: Theme.paddingLarge
                }
            }
        }

        Rectangle {
            id: incomesLayout
            width: parent.width / 2
            height: childrenRect.height + Theme.paddingLarge * 2
            anchors {
                top: availableLayout.bottom
                right: parent.right
            }
            border {
                color: "lightGray"
                width: 2
            }

            Text {
                id: incomesTitle
                text: qsTr("Доход")
                color: fontSecondary
                font {
                    weight: Font.Light
                    pixelSize: Theme.fontSizeSmall
                }
                anchors {
                    top: parent.top
                    left: parent.left
                    topMargin: Theme.paddingLarge
                    leftMargin: Theme.paddingMedium
                }
            }
            Text {
                id: incomesValue
                text: incomesAmount - outcomesAmount
                font {
                    pixelSize: Theme.fontSizeLarge
                    weight: Font.Medium
                }
                color: incomeColor
                anchors {
                    top: incomesTitle.bottom
                    left: parent.left
                    leftMargin: Theme.paddingMedium
                    bottomMargin: Theme.paddingLarge
                }
            }
        }

        Diagram {
            incomeValue: incomesAmount
            outcomeValue: outcomesAmount
            anchors {
                top: incomesLayout.bottom
                bottom: parent.bottom
                left: parent.left
                right: parent.right
            }
        }
    }
}
