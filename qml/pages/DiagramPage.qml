import QtQuick 2.6
import Sailfish.Silica 1.0
import QtQml 2.0
import "../components"

TabItem {

    property real incomesAmount: 500
    property real outcomesAmount: 1500
    property color fontSecondary: "#666664"

    Rectangle {
        anchors.fill: parent

        Rectangle {
            width: parent.width
            height: childrenRect.height
            color: "green"
            anchors {
                top: parent.top
            }

            Text {
                id: availableAmountTitle
                text: qsTr("Доступные финансы")
                color: fontSecondary
                font {
                    pixelSize: Theme.fontSizeSmall
                    weight: Font.Medium
                }
                anchors {
                    top: parent.top
                    left: parent.left
                    topMargin: Theme.paddingLarge
                    leftMargin: Theme.paddingMedium
                }
            }
            Text {
                id: availableAmount
                text: incomesAmount - outcomesAmount
                font {
                    pixelSize: Theme.fontSizeHuge
                    weight: Font.bold
                }
                anchors {
                    top: availableAmountTitle.bottom
                    left: parent.left
                    leftMargin: Theme.paddingMedium
                    bottomMargin: Theme.paddingLarge
                }
            }
        }

        Diagram {
            incomeValue: incomesAmount
            outcomeValue: outcomesAmount
        }
    }
}
