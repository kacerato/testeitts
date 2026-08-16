package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.util.FastMath;

public class RectangularCholeskyDecomposition {
    private int rank;
    private final RealMatrix root;

    public RectangularCholeskyDecomposition(RealMatrix realMatrix) throws NonPositiveDefiniteMatrixException {
        this(realMatrix, 0.0d);
    }

    public int getRank() {
        return this.rank;
    }

    public RealMatrix getRootMatrix() {
        return this.root;
    }

    public RectangularCholeskyDecomposition(RealMatrix realMatrix, double d10) throws NonPositiveDefiniteMatrixException {
        int rowDimension = realMatrix.getRowDimension();
        double[][] data = realMatrix.getData();
        boolean z10 = false;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, rowDimension);
        int[] iArr = new int[rowDimension];
        for (int i10 = 0; i10 < rowDimension; i10++) {
            iArr[i10] = i10;
        }
        boolean z11 = true;
        int i11 = 0;
        while (z11) {
            int i12 = i11 + 1;
            int i13 = i11;
            for (int i14 = i12; i14 < rowDimension; i14++) {
                int i15 = iArr[i14];
                int i16 = iArr[i13];
                if (data[i15][i15] > data[i16][i16]) {
                    i13 = i14;
                }
            }
            if (i13 != i11) {
                int i17 = iArr[i11];
                iArr[i11] = iArr[i13];
                iArr[i13] = i17;
                double[] dArr2 = dArr[i11];
                dArr[i11] = dArr[i13];
                dArr[i13] = dArr2;
            }
            int i18 = iArr[i11];
            double d11 = data[i18][i18];
            if (d11 > d10) {
                double sqrt = FastMath.sqrt(d11);
                dArr[i11][i11] = sqrt;
                double d12 = 1.0d / sqrt;
                double d13 = 1.0d / data[i18][i18];
                for (int i19 = i12; i19 < rowDimension; i19++) {
                    int i20 = iArr[i19];
                    double[] dArr3 = data[i20];
                    double d14 = dArr3[i18] * d12;
                    dArr[i19][i11] = d14;
                    double d15 = dArr3[i20];
                    double d16 = dArr3[i18];
                    dArr3[i20] = d15 - ((d16 * d16) * d13);
                    for (int i21 = i12; i21 < i19; i21++) {
                        int i22 = iArr[i21];
                        double[] dArr4 = data[i20];
                        double d17 = dArr4[i22] - (dArr[i21][i11] * d14);
                        dArr4[i22] = d17;
                        data[i22][i20] = d17;
                    }
                }
                i11 = i12;
                z11 = i12 < rowDimension;
            } else {
                if (i11 == 0) {
                    throw new NonPositiveDefiniteMatrixException(data[i18][i18], i18, d10);
                }
                for (int i23 = i11; i23 < rowDimension; i23++) {
                    int i24 = iArr[i23];
                    if (data[i24][i24] < (-d10)) {
                        int i25 = iArr[i23];
                        throw new NonPositiveDefiniteMatrixException(data[i25][i25], i23, d10);
                    }
                }
                z11 = z10;
            }
            z10 = false;
        }
        this.rank = i11;
        this.root = MatrixUtils.createRealMatrix(rowDimension, i11);
        for (int i26 = 0; i26 < rowDimension; i26++) {
            for (int i27 = 0; i27 < i11; i27++) {
                this.root.setEntry(iArr[i26], i27, dArr[i26][i27]);
            }
        }
    }
}
