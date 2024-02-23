import QtQuick 2.0
import Sailfish.Silica 1.0
import "../components"

TabItem {

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

        delegate: SilicaItem {
            width: parent.width
            height: childrenRect.height
            Text {
                id: nameText
                text: name
                anchors {
                    verticalCenter: parent.verticalCenter
                    left: parent.left
                }
            }
            Text {
                id: priceText
                text: price
                anchors {
                    verticalCenter: parent.verticalCenter
                    right: parent.right
                }
            }
        }
    }
}
