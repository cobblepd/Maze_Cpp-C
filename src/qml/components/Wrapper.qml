import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Maze


Rectangle{
    id: root

    required  property bool lightMode

    property real contentPadding: 12
    property alias contentSpacing: contentLayout.spacing

    default property alias content: contentLayout.data
    
    color: root.lightMode ? Color.reallyLight : Color.reallyDark
    implicitWidth: 220
    implicitHeight: 600

    ColumnLayout{
        id: contentLayout
        anchors.fill: parent
        anchors.margins: root.contentPadding
        spacing: 8
    }
}
