package com.ardor3d.math.functions;

public class GridPatternFunction3D implements Function3D {
    private final double[][] _grid;
    private final double _xScaleFactor;
    private final double _yScaleFactor;

    public GridPatternFunction3D(double[][] dArr) {
        this(dArr, 1.0d, 1.0d);
    }

    @Override
    public double eval(double d10, double d11, double d12) {
        double abs = Math.abs(d10);
        double abs2 = Math.abs(d11);
        double d13 = abs / this._xScaleFactor;
        double d14 = abs2 / this._yScaleFactor;
        double[][] dArr = this._grid;
        int length = dArr.length;
        int length2 = dArr[0].length;
        double d15 = length;
        double floor = d13 - (Math.floor(d13 / d15) * d15);
        double d16 = length2;
        double floor2 = d14 - (Math.floor(d14 / d16) * d16);
        return getCellValue((int) (Math.floor(floor) % d15), (int) (Math.floor(floor2) % d16), floor, floor2);
    }

    public double getCellValue(int i10, int i11, double d10, double d11) {
        return this._grid[i10][i11];
    }

    public GridPatternFunction3D(double[][] dArr, double d10, double d11) {
        this._grid = dArr;
        this._xScaleFactor = d10;
        this._yScaleFactor = d11;
    }
}
