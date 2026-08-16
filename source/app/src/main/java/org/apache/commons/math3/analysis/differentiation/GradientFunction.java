package org.apache.commons.math3.analysis.differentiation;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;

public class GradientFunction implements MultivariateVectorFunction {

    private final MultivariateDifferentiableFunction f100111f;

    public GradientFunction(MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
        this.f100111f = multivariateDifferentiableFunction;
    }

    @Override
    public double[] value(double[] dArr) {
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        for (int i10 = 0; i10 < dArr.length; i10++) {
            derivativeStructureArr[i10] = new DerivativeStructure(dArr.length, 1, i10, dArr[i10]);
        }
        DerivativeStructure value = this.f100111f.value(derivativeStructureArr);
        double[] dArr2 = new double[dArr.length];
        int[] iArr = new int[dArr.length];
        for (int i11 = 0; i11 < dArr.length; i11++) {
            iArr[i11] = 1;
            dArr2[i11] = value.getPartialDerivative(iArr);
            iArr[i11] = 0;
        }
        return dArr2;
    }
}
