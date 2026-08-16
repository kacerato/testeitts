package org.apache.commons.math3.analysis.differentiation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;

public class JacobianFunction implements MultivariateMatrixFunction {

    private final MultivariateDifferentiableVectorFunction f100112f;

    public JacobianFunction(MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
        this.f100112f = multivariateDifferentiableVectorFunction;
    }

    @Override
    public double[][] value(double[] dArr) {
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            derivativeStructureArr[i10] = new DerivativeStructure(dArr.length, 1, i10, dArr[i10]);
        }
        DerivativeStructure[] value = this.f100112f.value(derivativeStructureArr);
        double[][] dArr2 = (double[][]) Array.newInstance(Double.TYPE, value.length, dArr.length);
        int[] iArr = new int[dArr.length];
        for (int i11 = 0; i11 < value.length; i11++) {
            for (int i12 = 0; i12 < dArr.length; i12++) {
                iArr[i12] = 1;
                dArr2[i11][i12] = value[i11].getPartialDerivative(iArr);
                iArr[i12] = 0;
            }
        }
        return dArr2;
    }
}
