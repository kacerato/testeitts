package org.apache.commons.math3.ode;

public class FirstOrderConverter implements FirstOrderDifferentialEquations {
    private final int dimension;
    private final SecondOrderDifferentialEquations equations;

    private final double[] f100224z;
    private final double[] zDDot;
    private final double[] zDot;

    public FirstOrderConverter(SecondOrderDifferentialEquations secondOrderDifferentialEquations) {
        this.equations = secondOrderDifferentialEquations;
        int dimension = secondOrderDifferentialEquations.getDimension();
        this.dimension = dimension;
        this.f100224z = new double[dimension];
        this.zDot = new double[dimension];
        this.zDDot = new double[dimension];
    }

    @Override
    public void computeDerivatives(double d10, double[] dArr, double[] dArr2) {
        System.arraycopy(dArr, 0, this.f100224z, 0, this.dimension);
        int i10 = this.dimension;
        System.arraycopy(dArr, i10, this.zDot, 0, i10);
        this.equations.computeSecondDerivatives(d10, this.f100224z, this.zDot, this.zDDot);
        System.arraycopy(this.zDot, 0, dArr2, 0, this.dimension);
        double[] dArr3 = this.zDDot;
        int i11 = this.dimension;
        System.arraycopy(dArr3, 0, dArr2, i11, i11);
    }

    @Override
    public int getDimension() {
        return this.dimension * 2;
    }
}
