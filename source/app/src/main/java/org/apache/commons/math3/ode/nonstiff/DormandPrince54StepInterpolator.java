package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.AbstractIntegrator;
import org.apache.commons.math3.ode.EquationsMapper;
import org.apache.commons.math3.ode.sampling.StepInterpolator;

class DormandPrince54StepInterpolator extends RungeKuttaStepInterpolator {
    private static final double A70 = 0.09114583333333333d;
    private static final double A72 = 0.44923629829290207d;
    private static final double A73 = 0.6510416666666666d;
    private static final double A74 = -0.322376179245283d;
    private static final double A75 = 0.13095238095238096d;

    private static final double f100253D0 = -1.1270175653862835d;

    private static final double f100254D2 = 2.675424484351598d;

    private static final double f100255D3 = -5.685526961588504d;

    private static final double f100256D4 = 3.5219323679207912d;

    private static final double f100257D5 = -1.7672812570757455d;

    private static final double f100258D6 = 2.382468931778144d;
    private static final long serialVersionUID = 20111120;

    private double[] f100259v1;

    private double[] f100260v2;

    private double[] f100261v3;

    private double[] f100262v4;
    private boolean vectorsInitialized;

    public DormandPrince54StepInterpolator() {
        this.f100259v1 = null;
        this.f100260v2 = null;
        this.f100261v3 = null;
        this.f100262v4 = null;
        this.vectorsInitialized = false;
    }

    @Override
    public void computeInterpolatedStateAndDerivatives(double d10, double d11) {
        int i10 = 0;
        if (!this.vectorsInitialized) {
            if (this.f100259v1 == null) {
                double[] dArr = this.interpolatedState;
                this.f100259v1 = new double[dArr.length];
                this.f100260v2 = new double[dArr.length];
                this.f100261v3 = new double[dArr.length];
                this.f100262v4 = new double[dArr.length];
            }
            for (int i11 = 0; i11 < this.interpolatedState.length; i11++) {
                double[][] dArr2 = this.yDotK;
                double d12 = dArr2[0][i11];
                double d13 = dArr2[2][i11];
                double d14 = dArr2[3][i11];
                double d15 = dArr2[4][i11];
                double d16 = dArr2[5][i11];
                double d17 = dArr2[6][i11];
                double[] dArr3 = this.f100259v1;
                double d18 = (A70 * d12) + (A72 * d13) + (A73 * d14) + (A74 * d15) + (A75 * d16);
                dArr3[i11] = d18;
                double d19 = d12 - d18;
                this.f100260v2[i11] = d19;
                this.f100261v3[i11] = (dArr3[i11] - d19) - d17;
                this.f100262v4[i11] = (d12 * f100253D0) + (d13 * f100254D2) + (d14 * f100255D3) + (d15 * f100256D4) + (d16 * f100257D5) + (d17 * f100258D6);
            }
            this.vectorsInitialized = true;
        }
        double d20 = 1.0d - d10;
        double d21 = d10 * 2.0d;
        double d22 = 1.0d - d21;
        double d23 = (2.0d - (d10 * 3.0d)) * d10;
        double d24 = d21 * (((d21 - 3.0d) * d10) + 1.0d);
        if (this.previousState == null || d10 > 0.5d) {
            while (true) {
                double[] dArr4 = this.interpolatedState;
                if (i10 >= dArr4.length) {
                    return;
                }
                double d25 = this.currentState[i10];
                double[] dArr5 = this.f100259v1;
                double d26 = dArr5[i10];
                double[] dArr6 = this.f100260v2;
                double d27 = dArr6[i10];
                double[] dArr7 = this.f100261v3;
                double d28 = dArr7[i10];
                double[] dArr8 = this.f100262v4;
                dArr4[i10] = d25 - ((d26 - ((d27 + ((d28 + (dArr8[i10] * d20)) * d10)) * d10)) * d11);
                this.interpolatedDerivatives[i10] = dArr5[i10] + (dArr6[i10] * d22) + (dArr7[i10] * d23) + (d24 * dArr8[i10]);
                i10++;
            }
        } else {
            while (true) {
                double[] dArr9 = this.interpolatedState;
                if (i10 >= dArr9.length) {
                    return;
                }
                double d29 = this.previousState[i10];
                double d30 = this.f100282h * d10;
                double[] dArr10 = this.f100259v1;
                double d31 = dArr10[i10];
                double d32 = d24;
                double[] dArr11 = this.f100260v2;
                double d33 = dArr11[i10];
                double[] dArr12 = this.f100261v3;
                double d34 = dArr12[i10];
                double d35 = d23;
                double[] dArr13 = this.f100262v4;
                dArr9[i10] = d29 + (d30 * (d31 + ((d33 + ((d34 + (dArr13[i10] * d20)) * d10)) * d20)));
                this.interpolatedDerivatives[i10] = dArr10[i10] + (dArr11[i10] * d22) + (dArr12[i10] * d35) + (d32 * dArr13[i10]);
                i10++;
                d24 = d32;
                d23 = d35;
            }
        }
    }

    @Override
    public StepInterpolator doCopy() {
        return new DormandPrince54StepInterpolator(this);
    }

    @Override
    public void reinitialize(AbstractIntegrator abstractIntegrator, double[] dArr, double[][] dArr2, boolean z10, EquationsMapper equationsMapper, EquationsMapper[] equationsMapperArr) {
        super.reinitialize(abstractIntegrator, dArr, dArr2, z10, equationsMapper, equationsMapperArr);
        this.f100259v1 = null;
        this.f100260v2 = null;
        this.f100261v3 = null;
        this.f100262v4 = null;
        this.vectorsInitialized = false;
    }

    @Override
    public void storeTime(double d10) {
        super.storeTime(d10);
        this.vectorsInitialized = false;
    }

    public DormandPrince54StepInterpolator(DormandPrince54StepInterpolator dormandPrince54StepInterpolator) {
        super(dormandPrince54StepInterpolator);
        double[] dArr = dormandPrince54StepInterpolator.f100259v1;
        if (dArr == null) {
            this.f100259v1 = null;
            this.f100260v2 = null;
            this.f100261v3 = null;
            this.f100262v4 = null;
            this.vectorsInitialized = false;
            return;
        }
        this.f100259v1 = (double[]) dArr.clone();
        this.f100260v2 = (double[]) dormandPrince54StepInterpolator.f100260v2.clone();
        this.f100261v3 = (double[]) dormandPrince54StepInterpolator.f100261v3.clone();
        this.f100262v4 = (double[]) dormandPrince54StepInterpolator.f100262v4.clone();
        this.vectorsInitialized = dormandPrince54StepInterpolator.vectorsInitialized;
    }
}
