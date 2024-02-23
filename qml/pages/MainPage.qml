import QtQuick 2.4
import Sailfish.Silica 1.0
import "../components"

Page {
    id: root

    property bool footerPosition: false // set here true of false to change tabs postions from top to bottom
    property bool noTitle
    property bool noIcon
    property int display: 2
    readonly property string labelText: qsTr("Empty tab")

//    backNavigation: false

    TabView {
        id: tabs

        property var _viewModel: [view_1, view_2]
        width: parent.width
        height: root.height

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

            }
        }

        Component {
            id: view_2

            ListPage {

            }
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
}

