package org.apache.commons.math3.linear;

import org.apache.commons.math3.util.FastMath;

public class RRQRDecomposition extends QRDecomposition {
    private RealMatrix cachedP;

    private int[] f100202p;

    public static class Solver implements DecompositionSolver {

        private RealMatrix f100203p;
        private final DecompositionSolver upper;

        @Override
        public RealMatrix getInverse() {
            return solve(MatrixUtils.createRealIdentityMatrix(this.f100203p.getRowDimension()));
        }

        @Override
        public boolean isNonSingular() {
            return this.upper.isNonSingular();
        }

        @Override
        public RealVector solve(RealVector realVector) {
            return this.f100203p.operate(this.upper.solve(realVector));
        }

        private Solver(DecompositionSolver decompositionSolver, RealMatrix realMatrix) {
            this.upper = decompositionSolver;
            this.f100203p = realMatrix;
        }

        @Override
        public RealMatrix solve(RealMatrix realMatrix) {
            return this.f100203p.multiply(this.upper.solve(realMatrix));
        }
    }

    public RRQRDecomposition(RealMatrix realMatrix) {
        this(realMatrix, 0.0d);
    }

    @Override
    public void decompose(double[][] dArr) {
        this.f100202p = new int[dArr.length];
        int i10 = 0;
        while (true) {
            int[] iArr = this.f100202p;
            if (i10 >= iArr.length) {
                super.decompose(dArr);
                return;
            } else {
                iArr[i10] = i10;
                i10++;
            }
        }
    }

    public RealMatrix getP() {
        if (this.cachedP == null) {
            int length = this.f100202p.length;
            this.cachedP = MatrixUtils.createRealMatrix(length, length);
            for (int i10 = 0; i10 < length; i10++) {
                this.cachedP.setEntry(this.f100202p[i10], i10, 1.0d);
            }
        }
        return this.cachedP;
    }

    public int getRank(double d10) {
        RealMatrix r10 = getR();
        int rowDimension = r10.getRowDimension();
        int columnDimension = r10.getColumnDimension();
        double frobeniusNorm = r10.getFrobeniusNorm();
        int i10 = 1;
        double d11 = frobeniusNorm;
        while (i10 < FastMath.min(rowDimension, columnDimension)) {
            double frobeniusNorm2 = r10.getSubMatrix(i10, rowDimension - 1, i10, columnDimension - 1).getFrobeniusNorm();
            if (frobeniusNorm2 == 0.0d || (frobeniusNorm2 / d11) * frobeniusNorm < d10) {
                break;
            }
            i10++;
            d11 = frobeniusNorm2;
        }
        return i10;
    }

    @Override
    public DecompositionSolver getSolver() {
        return new Solver(super.getSolver(), getP());
    }

    @Override
    public void performHouseholderReflection(int i10, double[][] dArr) {
        int i11 = i10;
        int i12 = i11;
        double d10 = 0.0d;
        while (i11 < dArr.length) {
            int i13 = 0;
            double d11 = 0.0d;
            while (true) {
                double[] dArr2 = dArr[i11];
                if (i13 >= dArr2.length) {
                    break;
                }
                double d12 = dArr2[i13];
                d11 += d12 * d12;
                i13++;
            }
            if (d11 > d10) {
                i12 = i11;
                d10 = d11;
            }
            i11++;
        }
        if (i12 != i10) {
            double[] dArr3 = dArr[i10];
            dArr[i10] = dArr[i12];
            dArr[i12] = dArr3;
            int[] iArr = this.f100202p;
            int i14 = iArr[i10];
            iArr[i10] = iArr[i12];
            iArr[i12] = i14;
        }
        super.performHouseholderReflection(i10, dArr);
    }

    public RRQRDecomposition(RealMatrix realMatrix, double d10) {
        super(realMatrix, d10);
    }
}
