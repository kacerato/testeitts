package org.apache.commons.math3.optimization.general;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.LUDecomposition;
import org.apache.commons.math3.linear.QRDecomposition;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.linear.SingularMatrixException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.PointVectorValuePair;
import org.apache.commons.math3.optimization.SimpleVectorValueChecker;

@Deprecated
public class GaussNewtonOptimizer extends AbstractLeastSquaresOptimizer {
    private final boolean useLU;

    @Deprecated
    public GaussNewtonOptimizer() {
        this(true);
    }

    @Override
    public PointVectorValuePair doOptimize() {
        ConvergenceChecker<PointVectorValuePair> convergenceChecker = getConvergenceChecker();
        if (convergenceChecker == null) {
            throw new NullArgumentException();
        }
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
        int i12 = 0;
        while (!z10) {
            i12++;
            double[] computeObjectiveValue = computeObjectiveValue(startPoint);
            double[] computeResiduals = computeResiduals(computeObjectiveValue);
            RealMatrix computeWeightedJacobian = computeWeightedJacobian(startPoint);
            PointVectorValuePair pointVectorValuePair2 = new PointVectorValuePair(startPoint, computeObjectiveValue);
            double[] dArr2 = new double[length2];
            int[] iArr = new int[2];
            iArr[1] = length2;
            iArr[i10] = length2;
            double[][] dArr3 = (double[][]) Array.newInstance(Double.TYPE, iArr);
            int i13 = i10;
            while (i13 < length) {
                double[] row = computeWeightedJacobian.getRow(i13);
                double d10 = dArr[i13];
                double d11 = computeResiduals[i13] * d10;
                while (i10 < length2) {
                    dArr2[i10] = dArr2[i10] + (row[i10] * d11);
                    i10++;
                }
                int i14 = 0;
                while (i14 < length2) {
                    double[] dArr4 = dArr3[i14];
                    double d12 = row[i14] * d10;
                    int i15 = length;
                    for (int i16 = 0; i16 < length2; i16++) {
                        dArr4[i16] = dArr4[i16] + (row[i16] * d12);
                    }
                    i14++;
                    length = i15;
                }
                i13++;
                i10 = 0;
            }
            int i17 = length;
            try {
                BlockRealMatrix blockRealMatrix = new BlockRealMatrix(dArr3);
                double[] array = (this.useLU ? new LUDecomposition(blockRealMatrix).getSolver() : new QRDecomposition(blockRealMatrix).getSolver()).solve(new ArrayRealVector(dArr2, false)).toArray();
                for (int i18 = 0; i18 < length2; i18++) {
                    startPoint[i18] = startPoint[i18] + array[i18];
                }
                if (pointVectorValuePair != null && (z10 = convergenceChecker.converged(i12, pointVectorValuePair, pointVectorValuePair2))) {
                    this.cost = computeCost(computeResiduals);
                    this.point = pointVectorValuePair2.getPoint();
                    return pointVectorValuePair2;
                }
                pointVectorValuePair = pointVectorValuePair2;
                length = i17;
                i10 = 0;
            } catch (SingularMatrixException unused) {
                throw new ConvergenceException(LocalizedFormats.UNABLE_TO_SOLVE_SINGULAR_PROBLEM, new Object[0]);
            }
        }
        throw new MathInternalError();
    }

    public GaussNewtonOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        this(true, convergenceChecker);
    }

    @Deprecated
    public GaussNewtonOptimizer(boolean z10) {
        this(z10, new SimpleVectorValueChecker());
    }

    public GaussNewtonOptimizer(boolean z10, ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
        this.useLU = z10;
    }
}
