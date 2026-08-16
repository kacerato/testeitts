package org.apache.commons.math3.linear;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Sqrt;
import org.apache.commons.math3.util.MathArrays;

public class JacobiPreconditioner extends RealLinearOperator {
    private final ArrayRealVector diag;

    public JacobiPreconditioner(double[] dArr, boolean z10) {
        this.diag = new ArrayRealVector(dArr, z10);
    }

    public static JacobiPreconditioner create(RealLinearOperator realLinearOperator) throws NonSquareOperatorException {
        int columnDimension = realLinearOperator.getColumnDimension();
        if (realLinearOperator.getRowDimension() != columnDimension) {
            throw new NonSquareOperatorException(realLinearOperator.getRowDimension(), columnDimension);
        }
        double[] dArr = new double[columnDimension];
        if (realLinearOperator instanceof AbstractRealMatrix) {
            AbstractRealMatrix abstractRealMatrix = (AbstractRealMatrix) realLinearOperator;
            for (int i10 = 0; i10 < columnDimension; i10++) {
                dArr[i10] = abstractRealMatrix.getEntry(i10, i10);
            }
        } else {
            ArrayRealVector arrayRealVector = new ArrayRealVector(columnDimension);
            for (int i11 = 0; i11 < columnDimension; i11++) {
                arrayRealVector.set(0.0d);
                arrayRealVector.setEntry(i11, 1.0d);
                dArr[i11] = realLinearOperator.operate(arrayRealVector).getEntry(i11);
            }
        }
        return new JacobiPreconditioner(dArr, false);
    }

    @Override
    public int getColumnDimension() {
        return this.diag.getDimension();
    }

    @Override
    public int getRowDimension() {
        return this.diag.getDimension();
    }

    @Override
    public RealVector operate(RealVector realVector) {
        return new ArrayRealVector(MathArrays.ebeDivide(realVector.toArray(), this.diag.toArray()), false);
    }

    public RealLinearOperator sqrt() {
        final ArrayRealVector map = this.diag.map((UnivariateFunction) new Sqrt());
        return new RealLinearOperator() {
            @Override
            public int getColumnDimension() {
                return map.getDimension();
            }

            @Override
            public int getRowDimension() {
                return map.getDimension();
            }

            @Override
            public RealVector operate(RealVector realVector) {
                return new ArrayRealVector(MathArrays.ebeDivide(realVector.toArray(), map.toArray()), false);
            }
        };
    }
}
