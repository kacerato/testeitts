package com.ardor3d.math.functions;

import com.ardor3d.math.MathUtils;
import java.lang.reflect.Array;

public class BrickGridFunction3D extends GridPatternFunction3D {
    private static final int DEFAULT_BRICK_HEIGHT = 6;
    private static final int DEFAULT_BRICK_LENGTH = 12;
    private static final double DEFAULT_BRICK_VALUE = 0.0d;
    private static final double DEFAULT_BRICK_VARIATION = 0.1d;
    private static final int DEFAULT_MORTAR_THICKNESS = 1;
    private static final double DEFAULT_MORTAR_VALUE = 0.9d;
    private static final double DEFAULT_MORTAR_VARIATION = 0.05d;

    public BrickGridFunction3D() {
        this(12, 6, 1, 0.0d, DEFAULT_MORTAR_VALUE, DEFAULT_BRICK_VARIATION, DEFAULT_MORTAR_VARIATION);
    }

    private static double[][] createBrickGrid(int i10, int i11, int i12, double d10, double d11, double d12, double d13) {
        int i13 = i10 + i12;
        int i14 = (i11 * 2) + (i12 * 2);
        int i15 = 0;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i13, i14);
        int i16 = 0;
        while (i16 < i13) {
            for (int i17 = i15; i17 < i14; i17++) {
                dArr[i16][i17] = createGridValue(d10, d12);
            }
            i16++;
            i15 = 0;
        }
        for (int i18 = 0; i18 < i13; i18++) {
            for (int i19 = i11; i19 < i11 + i12; i19++) {
                dArr[i18][i19] = createGridValue(d11, d13);
                dArr[i18][i19 + i11 + 1] = createGridValue(d11, d13);
            }
        }
        for (int i20 = 0; i20 < i11; i20++) {
            dArr[i13 / 2][i20 + i11 + 1] = createGridValue(d11, d13);
            dArr[i13 - 1][i20] = createGridValue(d11, d13);
        }
        return dArr;
    }

    private static double createGridValue(double d10, double d11) {
        return d11 > 0.0d ? d10 + ((MathUtils.nextRandomDouble() * (2.0d * d11)) - d11) : d10;
    }

    public BrickGridFunction3D(int i10, int i11, int i12, double d10, double d11, double d12, double d13) {
        super(createBrickGrid(i10, i11, i12, d10, d11, d12, d13));
    }
}
