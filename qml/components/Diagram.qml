import QtQuick 2.6

Canvas {

    property color incomeColor: "#7ED321"
    property color outcomeColor: "#3574FA"

    anchors.fill: parent
    onPaint: {
        var ctx = getContext("2d")
        ctx.reset()

        var centreX = width / 2
        var centreY = height / 2

        ctx.beginPath()
        ctx.fillStyle = incomeColor
        ctx.moveTo(centreX, centreY)
        ctx.arc(centreX, centreY, width / 4, 0, Math.PI * 0.5, false)
        ctx.lineTo(centreX, centreY)
        ctx.fill()

        ctx.beginPath()
        ctx.fillStyle = outcomeColor
        ctx.moveTo(centreX, centreY)
        ctx.arc(centreX, centreY, width / 4, Math.PI * 0.5, Math.PI * 2, false)
        ctx.lineTo(centreX, centreY)
        ctx.fill()
    }
}
