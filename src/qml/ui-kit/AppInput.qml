import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Maze

ColumnLayout{
    property alias labelText: label.text
    property alias text: input.text
    property alias value: input.text

    Label{
        id: label
        text: labelText
        Layout.fillWidth: true
    }
    TextField{
        id: input
        Layout.fillWidth: true
        implicitHeight: 36
    }
}

