import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import Maze


ApplicationWindow {
    id: window
    width: 1600
    height: 800
    minimumWidth: 200
    minimumHeight: 250
    visible: true
    title: qsTr("Hello World")
    property bool lightMode: Application.styleHints.colorScheme === Qt.Light
    property bool paramsVisible: false


    GridLayout {
        id: grid
        columns: width < 400 ? 1 : 3
        rows: 1
        rowSpacing: 0
        columnSpacing: 0
        anchors.fill: parent

        Wrapper {
            id: rectangle1
            lightMode:window.lightMode
            // Фиксированная ширина панели
            Layout.preferredWidth: 220
            Layout.minimumWidth: 220
            Layout.maximumWidth: 220

            // Вся доступная высота GridLayout
            Layout.fillHeight: true
            contentPadding: 16
            contentSpacing: 8

            AppButton{
                text:"Лабиринт"
                lightMode: window.lightMode
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom

                onClicked: {
                    window.paramsVisible = !window.paramsVisible
                }

                //icon.source: "qrc:/qt/qml/Maze/images/x.png"
            }

            AppButton{
                text:"Пещеры"
                lightMode: window.lightMode
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                //icon.source: "qrc:/qt/qml/Maze/images/x.png"
            }

            Item {
                Layout.fillHeight: true
            }

            AppButton{
                text: window.lightMode ? qsTr("\u263D  Dark mode")
                                       : qsTr("\u263C  Light mode")
                Layout.bottomMargin: 16
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                lightMode: window.lightMode
                //icon.source: "qrc:/qt/qml/Maze/images/x.png"
                onClicked: window.lightMode = !window.lightMode
            }
        }

        Rectangle {
            id: rectangle2
            color: window.lightMode ? Color.light : Color.dark
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Wrapper{
            id: parameters
            lightMode:window.lightMode
            visible: window.paramsVisible
            //Layout.preferredWidth: 220
            Layout.minimumWidth: 320
            Layout.maximumWidth: 320

            Layout.fillHeight: true

            Label{
                text: "Параметры генерации"
                font.bold: true

                Layout.fillWidth: true
                Layout.maximumHeight: implicitHeight
            }
            RowLayout{
                spacing: 4
                AppInput{
                    labelText: "Высота"

                    Layout.fillWidth: true
                    Layout.fillHeight: false
                    Layout.maximumHeight: implicitHeight
                }
                AppInput{
                    labelText:"Ширина"

                    Layout.fillWidth: true
                    Layout.fillHeight: false
                    Layout.maximumHeight: implicitHeight
                }
            }
            AppButton{
                lightMode: window.lightMode
                text:"Генерация"
            }


            Item {
                Layout.fillHeight: true
            }
        }
    }

}
