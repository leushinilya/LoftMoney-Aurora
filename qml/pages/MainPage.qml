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
    property int display: 2
    readonly property string labelText: qsTr("Empty tab")

    //    backNavigation: false
    AppBar {
        id: appBar

        //        divider: false
        headerText: "Учёт бюджета"

        AppBarSpacer {}

        AppBarButton {
            context: "Print document"
            icon.source: "image://theme/icon-m-delete"
        }
    }

    TabView {
        id: tabs

        property var _viewModel: [view_1, view_2]
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

            ListPage {}
        }

        Component {
            id: view_2

            ListPage {}
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
    }

    Button {
        width: Theme.dp(56)
        height: Theme.dp(56)
        backgroundColor: "transparent"
        highlightBackgroundColor: "transparent"
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: Theme.dp(16)
        }

        Rectangle {
            anchors.fill: parent
            radius: 500
            color: "#ffc107"
        }
    }
}
