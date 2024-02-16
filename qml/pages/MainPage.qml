import QtQuick 2.0
import Sailfish.Silica 1.0
import Sailfish.Silica.private 1.0

Page {
    id: root

    TabView {
        id: tabs
        width: parent.width
        height: parent.height
        footer: tabBar
        property var viewModel: [tabBar, incomesTab, outcomesTab, incomePage, outcomePage]
        model: viewModel.slice(0, 5)

        Component {
            id: tabBar
            TabBar {
                model: tabModel
            }
        }

        Component {
            id: incomesTab
            TabItem {
                Text {
                    width: parent.width
                    height: parent.height
                    text: "Incomes"
                }
            }
        }

        Component {
            id: outcomesTab
            TabItem {
                Text {
                    width: parent.width
                    height: parent.height
                    text: "Outcomes"
                }
            }
        }

        Component {
            id: incomePage
            ListPage {

            }
        }

        Component {
            id: outcomePage
            ListPage {

            }
        }
    }

}
