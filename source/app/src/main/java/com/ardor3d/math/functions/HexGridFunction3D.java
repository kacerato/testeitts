package com.ardor3d.math.functions;

import java.lang.reflect.Array;

public class HexGridFunction3D extends GridPatternFunction3D {
    private static final double[] ALTERNATE_VALUES;
    private static final double EQUILATERAL_TRIANGLE_HEIGHT = Math.sqrt(3.0d) / 2.0d;
    private static final double[][] FIXED_VALUES;

    static {
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 6, 6);
        FIXED_VALUES = dArr;
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[5];
        dArr3[0] = -1.0d;
        dArr2[0] = -1.0d;
        dArr3[1] = 0.0d;
        dArr2[1] = 0.0d;
        dArr3[2] = 0.0d;
        dArr2[2] = 0.0d;
        dArr3[3] = 1.0d;
        dArr2[3] = 1.0d;
        dArr3[4] = 1.0d;
        dArr2[4] = 1.0d;
        dArr3[5] = -1.0d;
        dArr2[5] = -1.0d;
        double[] dArr4 = dArr[2];
        double[] dArr5 = dArr[3];
        dArr5[0] = 1.0d;
        dArr4[0] = 1.0d;
        dArr5[1] = 1.0d;
        dArr4[1] = 1.0d;
        dArr5[2] = -1.0d;
        dArr4[2] = -1.0d;
        dArr5[3] = -1.0d;
        dArr4[3] = -1.0d;
        dArr5[4] = 0.0d;
        dArr4[4] = 0.0d;
        dArr5[5] = 0.0d;
        dArr4[5] = 0.0d;
        double[] dArr6 = dArr[1];
        double[] dArr7 = dArr[4];
        dArr7[0] = -1.0d;
        dArr6[0] = -1.0d;
        dArr7[1] = 1.0d;
        dArr6[1] = 1.0d;
        dArr7[2] = 0.0d;
        dArr6[2] = 0.0d;
        dArr7[3] = -1.0d;
        dArr6[3] = -1.0d;
        dArr7[4] = 1.0d;
        dArr6[4] = 1.0d;
        dArr7[5] = 0.0d;
        dArr6[5] = 0.0d;
        ALTERNATE_VALUES = new double[]{1.0d, 0.0d, -1.0d, 1.0d, 0.0d, -1.0d};
    }

    public HexGridFunction3D() {
        super(FIXED_VALUES, 0.5d, EQUILATERAL_TRIANGLE_HEIGHT);
    }

    @Override
    public double getCellValue(int i10, int i11, double d10, double d11) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return 0.0d;
                        }
                    }
                }
            }
            double d12 = d10 - i10;
            double d13 = d11 - i11;
            if ((i10 + i11) % 2 == 1) {
                d12 = 1.0d - d12;
            }
            if (d12 == 0.0d) {
                d12 = 1.0E-4d;
            }
            return d13 / d12 < 1.0d ? super.getCellValue(i10, i11, d10, d11) : ALTERNATE_VALUES[i11];
        }
        return super.getCellValue(i10, i11, d10, d11);
    }
}
