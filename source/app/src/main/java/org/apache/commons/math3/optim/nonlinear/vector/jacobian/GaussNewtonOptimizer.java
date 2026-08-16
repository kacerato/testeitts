package org.apache.commons.math3.optim.nonlinear.vector.jacobian;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointVectorValuePair;

@Deprecated
public class GaussNewtonOptimizer extends AbstractLeastSquaresOptimizer {
    private final boolean useLU;

    public GaussNewtonOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(true, convergenceChecker);
    }

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    public GaussNewtonOptimizer(boolean z10, ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.useLU = z10;
    }

    @Override
    public PointVectorValuePair doOptimize() {
        checkParameters();
        ConvergenceChecker<PointVectorValuePair> convergenceChecker = getConvergenceChecker();
        if (convergenceChecker != null) {
            int length = getTarget().length;
            RealMatrix weight = getWeight();
            double[] dArr = new double[length];
            int i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                dArr[i11] = weight.getEntry(i11, i11);
            }
            double[] startPoint = getStartPoint();
            int length2 = startPoint.length;
            PointVectorValuePair pointVectorValuePair = null;
            boolean z10 = false;
            while (!z10) {
                incrementIterationCount();
                double[] computeObjectiveValue = computeObjectiveValue(startPoint);
                double[] computeResiduals = computeResiduals(computeObjectiveValue);
                RealMatrix computeWeightedJacobian = computeWeightedJacobian(startPoint);
                PointVectorValuePair pointVectorValuePair2 = new PointVectorValuePair(startPoint, computeObjectiveValue);
                double[] dArr2 = new double[length2];
                int[] iArr = new int[2];
                iArr[1] = length2;
                iArr[i10] = length2;
                double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, iArr);
                int i12 = i10;
                while (i12 < length) {
                    double[] row = computeWeightedJacobian.getRow(i12);
                    double d10 = dArr[i12];
                    double d11 = computeResiduals[i12] * d10;
                    while (i10 < length2) {
                        dArr2[i10] = dArr2[i10] + (row[i10] * d11);
                        i10++;
                    }
                    int i13 = 0;
                    while (i13 < length2) {
                        double[] dArr4 = dArr3[i13];
                        double d12 = row[i13] * d10;
                        int i14 = length;
                        for (int i15 = 0; i15 < length2; i15++) {
                            dArr4[i15] = dArr4[i15] + (row[i15] * d12);
                        }
                        i13++;
                        length = i14;
                    }
                    i12++;
                    i10 = 0;
                }
                int i16 = length;
                if (pointVectorValuePair != null && (z10 = convergenceChecker.converged(getIterations(), pointVectorValuePair, pointVectorValuePair2))) {
                    setCost(computeCost(computeResiduals));
                    return pointVectorValuePair2;
                }
                try {
                    BlockRealMatrix blockRealMatrix = new BlockRealMatrix(dArr3);
                    double[] array = (this.useLU ? new LUDecomposition(blockRealMatrix).getSolver() : new QRDecomposition(blockRealMatrix).getSolver()).solve(new ArrayRealVector(dArr2, false)).toArray();
                    for (int i17 = 0; i17 < length2; i17++) {
                        startPoint[i17] = startPoint[i17] + array[i17];
                    }
                    pointVectorValuePair = pointVectorValuePair2;
                    length = i16;
                    i10 = 0;
                } catch (SingularMatrixException unused) {
                    throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, new Object[0]);
                }
            }
            throw new MathInternalError();
        }
        throw new NullArgumentException();
    }
}
