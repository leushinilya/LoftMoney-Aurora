import QtQuick 2.0
import Sailfish.Silica 1.0
import "../components"

TabItem {

    property color priceColor: "#7ED321"
    property color textColor: "#666664"

    Rectangle {
        color: "white"
        width: parent.width
        height: parent.height

        SilicaListView {
            width: parent.width
            height: parent.height

            model: ListModel {
                ListElement {
                    itemId: "1"
                    name: "Fist item"
                    price: "65.5"
                }
                ListElement {
                    itemId: "2"
                    name: "Second item"
                    price: "655"
                }
                ListElement {
                    itemId: "3"
                    name: "Third item"
                    price: "1655"
                }
            }

            delegate: Rectangle {
                width: parent.width
                height: childrenRect.height + Theme.dp(24) * 2

                Text {
                    id: nameText
                    text: name
                    color: textColor
                    anchors {
                        verticalCenter: parent.verticalCenter
                        left: parent.left
                        leftMargin: Theme.dp(24)
                    }
                }
                Text {
                    id: priceText
                    text: price
                    color: priceColor
                    anchors {
                        verticalCenter: parent.verticalCenter
                        right: parent.right
                        rightMargin: Theme.dp(24)
                    }
                }
            }
        }
    }
}
