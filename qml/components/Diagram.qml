import QtQuick 2.6
import Sailfish.Silica 1.0

Canvas {

    property int incomeValue: 0
    property int outcomeValue: 0

    property color incomeColor: "#7ED321"
    property color outcomeColor: "#3574FA"
    property real sectorSpacing: Theme.dp(8)

    onPaint: {
        var ctx = getContext("2d")
        ctx.reset()

        var centrerX = width / 2
        var centrerY = height / 2

        var incomePercent = incomeValue / (incomeValue + outcomeValue)
        var incomeStartAngle = Math.PI - Math.PI * incomePercent
        var inconeEndAngle = Math.PI + Math.PI * incomePercent

        ctx.beginPath()
        ctx.fillStyle = incomeColor
        ctx.moveTo(centrerX - sectorSpacing, centrerY)
        ctx.arc(centrerX - sectorSpacing, centrerY, width / 2 - sectorSpacing,
                incomeStartAngle, inconeEndAngle, false)
        ctx.fill()

        ctx.beginPath()
        ctx.fillStyle = outcomeColor
        ctx.moveTo(centrerX + sectorSpacing, centrerY)
        ctx.arc(centrerX + sectorSpacing, centrerY, width / 2 - sectorSpacing,
                inconeEndAngle, incomeStartAngle, false)
        ctx.fill()
    }
}
