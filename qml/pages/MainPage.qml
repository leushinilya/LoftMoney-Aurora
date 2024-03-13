import QtQuick 2.6
import Sailfish.Silica 1.0
import Aurora.Controls 1.0
import "../components"
import "../theme"

Page {
    id: root
    backgroundColor: "#3574fa"

    property bool footerPosition: false // set here true of false to change tabs postions from top to bottom
    property bool noTitle
    property bool noIcon
    property int display: 3
    readonly property string labelText: qsTr("Empty tab")

    //    backNavigation: false
    AppBar {
        id: appBar

        //        divider: false
        headerText: "Учёт бюджета"

        AppBarSpacer {}

        AppBarButton {
            context: "Print document"
            icon {
                source: Qt.resolvedUrl("../icons/Trash.svg")
                color: "white"
                colorWeight: 1
            }
        }
    }

    TabView {
        id: tabs
        property var _viewModel: [view_1, view_2, view_3]
        width: parent.width
        height: root.height

        anchors.top: appBar.bottom

        header: root.footerPosition ? null : tabBar
        footer: root.footerPosition ? tabBar : null

        model: _viewModel.slice(0, root.display)

        Component {
            id: tabBar

            TabBar {
                model: tabModel
            }
        }

        Component {
            id: view_1

            ListPage {
                priceColor: "#7ED321"
            }
        }

        Component {
            id: view_2

            ListPage {
                priceColor: "#3574FA"
            }
        }

        Component {
            id: view_3

            DiagramPage {}
        }
    }

    Component.onCompleted: {
        prepareModel()
    }

    function prepareModel() {
        if (root.display < tabModel.count) {
            tabModel.remove(root.display, tabModel.count - root.display)
        }
        for (var i = 0; i < tabModel.count; i++) {
            if (root.noTitle) {
                tabModel.setProperty(i, "title", "")
            }
            if (root.noIcon) {
                tabModel.setProperty(i, "icon", "")
            }
        }
    }

    ListModel {
        id: tabModel

        ListElement {
            title: qsTr("Incomes")
        }
        ListElement {
            title: qsTr("Outcomes")
        }
        ListElement {
            title: qsTr("Balance")
        }
    }

    Button {
        width: Theme.buttonWidthTiny
        height: Theme.buttonWidthTiny
        _showPress: false
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: Theme.paddingMedium
        }

        Rectangle {
            anchors.fill: parent
            radius: 500
            color: "#ffc107"
            Icon {
                id: buttonIcon
                source: Qt.resolvedUrl("../icons/Plus.svg")
                sourceSize {
                    width: Theme.dp(32)
                    height: Theme.dp(32)
                }
                color: "white"
                colorWeight: 1
                anchors.centerIn: parent
            }
        }

        onClicked: {
            pageStack.push(Qt.resolvedUrl("AddItemPage.qml"))
        }
    }
}
