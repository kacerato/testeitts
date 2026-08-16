package org.apache.commons.math3.ode.nonstiff;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.solvers.UnivariateSolver;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.ode.ExpandableStatefulODE;
import org.apache.commons.math3.ode.events.EventHandler;
import org.apache.commons.math3.ode.sampling.StepHandler;
import org.apache.commons.math3.util.FastMath;

public class GraggBulirschStoerIntegrator extends AdaptiveStepsizeIntegrator {
    private static final String METHOD_NAME = "Gragg-Bulirsch-Stoer";
    private double[][] coeff;
    private int[] costPerStep;
    private double[] costPerTimeUnit;
    private int maxChecks;
    private int maxIter;
    private int maxOrder;
    private int mudif;
    private double[] optimalStep;
    private double orderControl1;
    private double orderControl2;
    private boolean performTest;
    private int[] sequence;
    private double stabilityReduction;
    private double stepControl1;
    private double stepControl2;
    private double stepControl3;
    private double stepControl4;
    private boolean useInterpolationError;

    public GraggBulirschStoerIntegrator(double d10, double d11, double d12, double d13) {
        super(METHOD_NAME, d10, d11, d12, d13);
        setStabilityCheck(true, -1, -1, -1.0d);
        setControlFactors(-1.0d, -1.0d, -1.0d, -1.0d);
        setOrderControl(-1, -1.0d, -1.0d);
        setInterpolationControl(true, -1);
    }

    private void extrapolate(int i10, int i11, double[][] dArr, double[] dArr2) {
        int i12 = 1;
        while (true) {
            if (i12 >= i11) {
                break;
            }
            for (int i13 = 0; i13 < dArr2.length; i13++) {
                int i14 = i11 - i12;
                double[] dArr3 = dArr[i14 - 1];
                double d10 = dArr[i14][i13];
                dArr3[i13] = d10 + (this.coeff[i11 + i10][i12 - 1] * (d10 - dArr3[i13]));
            }
            i12++;
        }
        for (int i15 = 0; i15 < dArr2.length; i15++) {
            double d11 = dArr[0][i15];
            dArr2[i15] = d11 + (this.coeff[i11 + i10][i11 - 1] * (d11 - dArr2[i15]));
        }
    }

    private void initializeArrays() {
        int i10 = this.maxOrder / 2;
        int[] iArr = this.sequence;
        if (iArr == null || iArr.length != i10) {
            this.sequence = new int[i10];
            this.costPerStep = new int[i10];
            this.coeff = new double[i10];
            this.costPerTimeUnit = new double[i10];
            this.optimalStep = new double[i10];
        }
        for (int i11 = 0; i11 < i10; i11++) {
            this.sequence[i11] = (i11 * 4) + 2;
        }
        this.costPerStep[0] = this.sequence[0] + 1;
        for (int i12 = 1; i12 < i10; i12++) {
            int[] iArr2 = this.costPerStep;
            iArr2[i12] = iArr2[i12 - 1] + this.sequence[i12];
        }
        int i13 = 0;
        while (i13 < i10) {
            this.coeff[i13] = i13 > 0 ? new double[i13] : null;
            for (int i14 = 0; i14 < i13; i14++) {
                int[] iArr3 = this.sequence;
                double d10 = iArr3[i13] / iArr3[(i13 - i14) - 1];
                this.coeff[i13][i14] = 1.0d / ((d10 * d10) - 1.0d);
            }
            i13++;
        }
    }

    private void rescale(double[] dArr, double[] dArr2, double[] dArr3) {
        int i10 = 0;
        if (this.vecAbsoluteTolerance == null) {
            while (i10 < dArr3.length) {
                dArr3[i10] = this.scalAbsoluteTolerance + (this.scalRelativeTolerance * FastMath.max(FastMath.abs(dArr[i10]), FastMath.abs(dArr2[i10])));
                i10++;
            }
            return;
        }
        while (i10 < dArr3.length) {
            dArr3[i10] = this.vecAbsoluteTolerance[i10] + (this.vecRelativeTolerance[i10] * FastMath.max(FastMath.abs(dArr[i10]), FastMath.abs(dArr2[i10])));
            i10++;
        }
    }

    private boolean tryStep(double d10, double[] dArr, double d11, int i10, double[] dArr2, double[][] dArr3, double[] dArr4, double[] dArr5, double[] dArr6) throws MaxCountExceededException, DimensionMismatchException {
        double d12;
        GraggBulirschStoerIntegrator graggBulirschStoerIntegrator = this;
        int i11 = i10;
        double[] dArr7 = dArr2;
        int i12 = graggBulirschStoerIntegrator.sequence[i11];
        double d13 = d11 / i12;
        double d14 = 2.0d * d13;
        double d15 = d10 + d13;
        int i13 = 0;
        for (int i14 = 0; i14 < dArr.length; i14++) {
            dArr6[i14] = dArr[i14];
            dArr5[i14] = dArr[i14] + (dArr3[0][i14] * d13);
        }
        graggBulirschStoerIntegrator.computeDerivatives(d15, dArr5, dArr3[1]);
        int i15 = 1;
        while (i15 < i12) {
            if (i15 * 2 == i12) {
                System.arraycopy(dArr5, i13, dArr4, i13, dArr.length);
            }
            d15 += d13;
            for (int i16 = i13; i16 < dArr.length; i16++) {
                double d16 = dArr5[i16];
                dArr5[i16] = dArr6[i16] + (dArr3[i15][i16] * d14);
                dArr6[i16] = d16;
            }
            int i17 = i15 + 1;
            graggBulirschStoerIntegrator.computeDerivatives(d15, dArr5, dArr3[i17]);
            if (!graggBulirschStoerIntegrator.performTest || i15 > graggBulirschStoerIntegrator.maxChecks || i11 >= graggBulirschStoerIntegrator.maxIter) {
                d12 = d14;
            } else {
                d12 = d14;
                double d17 = 0.0d;
                for (int i18 = 0; i18 < dArr7.length; i18++) {
                    double d18 = dArr3[0][i18] / dArr7[i18];
                    d17 += d18 * d18;
                }
                double d19 = 0.0d;
                for (int i19 = 0; i19 < dArr7.length; i19++) {
                    double d20 = (dArr3[i17][i19] - dArr3[0][i19]) / dArr7[i19];
                    d19 += d20 * d20;
                }
                if (d19 > FastMath.max(1.0E-15d, d17) * 4.0d) {
                    return false;
                }
            }
            i11 = i10;
            dArr7 = dArr2;
            i15 = i17;
            d14 = d12;
            i13 = 0;
            graggBulirschStoerIntegrator = this;
        }
        while (i13 < dArr.length) {
            dArr5[i13] = (dArr6[i13] + dArr5[i13] + (dArr3[i12][i13] * d13)) * 0.5d;
            i13++;
        }
        return true;
    }

    @Override
    public void addEventHandler(EventHandler eventHandler, double d10, double d11, int i10, UnivariateSolver univariateSolver) {
        super.addEventHandler(eventHandler, d10, d11, i10, univariateSolver);
        initializeArrays();
    }

    @Override
    public void addStepHandler(StepHandler stepHandler) {
        super.addStepHandler(stepHandler);
        initializeArrays();
    }

    /* JADX WARN: Removed duplicated region for block: B:195:0x052d  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x066b  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x066e  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0689 A[LOOP:3: B:25:0x0132->B:210:0x0689, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0679 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0656  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void integrate(ExpandableStatefulODE expandableStatefulODE, double d10) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException {
        int[] iArr;
        double[] dArr;
        boolean z10;
        double[] dArr2;
        double[] dArr3;
        double d11;
        int i10;
        double[][] dArr4;
        double[] dArr5;
        GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator;
        boolean z11;
        double d12;
        boolean z12;
        double[] dArr6;
        boolean z13;
        double d13;
        double filterStep;
        double d14;
        int i11;
        GraggBulirschStoerIntegrator graggBulirschStoerIntegrator;
        double[][] dArr7;
        double[][] dArr8;
        int i12;
        GraggBulirschStoerIntegrator graggBulirschStoerIntegrator2 = this;
        sanityChecks(expandableStatefulODE, d10);
        setEquations(expandableStatefulODE);
        int i13 = 1;
        boolean z14 = d10 > expandableStatefulODE.getTime();
        double[] completeState = expandableStatefulODE.getCompleteState();
        double[] dArr9 = (double[]) completeState.clone();
        double[] dArr10 = new double[dArr9.length];
        double[] dArr11 = new double[dArr9.length];
        double[] dArr12 = new double[dArr9.length];
        double[] dArr13 = new double[dArr9.length];
        int[] iArr2 = graggBulirschStoerIntegrator2.sequence;
        double[][] dArr14 = new double[iArr2.length - 1];
        double[][] dArr15 = new double[iArr2.length - 1];
        int i14 = 0;
        while (true) {
            iArr = graggBulirschStoerIntegrator2.sequence;
            if (i14 >= iArr.length - 1) {
                break;
            }
            dArr14[i14] = new double[dArr9.length];
            dArr15[i14] = new double[dArr9.length];
            i14++;
        }
        double[][][] dArr16 = new double[iArr.length][];
        int i15 = 0;
        while (true) {
            int[] iArr3 = graggBulirschStoerIntegrator2.sequence;
            if (i15 >= iArr3.length) {
                break;
            }
            double[][] dArr17 = new double[iArr3[i15] + i13];
            dArr16[i15] = dArr17;
            dArr17[0] = dArr10;
            int i16 = 0;
            while (i16 < graggBulirschStoerIntegrator2.sequence[i15]) {
                i16++;
                dArr16[i15][i16] = new double[completeState.length];
            }
            i15++;
            i13 = 1;
        }
        if (dArr9 != completeState) {
            System.arraycopy(completeState, 0, dArr9, 0, completeState.length);
        }
        double[] dArr18 = new double[completeState.length];
        double[][] dArr19 = dArr15;
        double[][] dArr20 = (double[][]) Array.newInstance(Double.TYPE, (graggBulirschStoerIntegrator2.sequence.length * 2) + 1, completeState.length);
        double[] dArr21 = new double[graggBulirschStoerIntegrator2.mainSetDimension];
        graggBulirschStoerIntegrator2.rescale(dArr9, dArr9, dArr21);
        double[] dArr22 = graggBulirschStoerIntegrator2.vecRelativeTolerance;
        double[] dArr23 = dArr21;
        int max = FastMath.max(1, FastMath.min(graggBulirschStoerIntegrator2.sequence.length - 2, (int) FastMath.floor(0.5d - (FastMath.log10(FastMath.max(1.0E-10d, dArr22 == null ? graggBulirschStoerIntegrator2.scalRelativeTolerance : dArr22[0])) * 0.6d))));
        GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator2 = r4;
        double[][] dArr24 = dArr14;
        double[] dArr25 = dArr18;
        double[] dArr26 = dArr11;
        double[] dArr27 = dArr10;
        GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator3 = new GraggBulirschStoerStepInterpolator(dArr9, dArr10, dArr11, dArr18, dArr20, z14, expandableStatefulODE.getPrimaryMapper(), expandableStatefulODE.getSecondaryMappers());
        graggBulirschStoerStepInterpolator2.storeTime(expandableStatefulODE.getTime());
        graggBulirschStoerIntegrator2.stepStart = expandableStatefulODE.getTime();
        double[] dArr28 = dArr9;
        initIntegration(expandableStatefulODE.getTime(), completeState, d10);
        graggBulirschStoerIntegrator2.costPerTimeUnit[0] = 0.0d;
        graggBulirschStoerIntegrator2.isLastStep = false;
        double d15 = Double.MAX_VALUE;
        int i17 = max;
        double d16 = 0.0d;
        boolean z15 = true;
        boolean z16 = false;
        boolean z17 = true;
        boolean z18 = false;
        while (true) {
            if (z15) {
                graggBulirschStoerStepInterpolator2.shift();
                if (!z16) {
                    graggBulirschStoerIntegrator2.computeDerivatives(graggBulirschStoerIntegrator2.stepStart, dArr28, dArr27);
                }
                if (z17) {
                    dArr = dArr28;
                    d16 = initializeStep(z14, (i17 * 2) + 1, dArr23, graggBulirschStoerIntegrator2.stepStart, dArr28, dArr27, dArr12, dArr13);
                } else {
                    dArr = dArr28;
                }
                z10 = false;
            } else {
                dArr = dArr28;
                z10 = z15;
            }
            graggBulirschStoerIntegrator2.stepSize = d16;
            if ((z14 && graggBulirschStoerIntegrator2.stepStart + d16 > d10) || (!z14 && graggBulirschStoerIntegrator2.stepStart + d16 < d10)) {
                graggBulirschStoerIntegrator2.stepSize = d10 - graggBulirschStoerIntegrator2.stepStart;
            }
            double d17 = graggBulirschStoerIntegrator2.stepStart + graggBulirschStoerIntegrator2.stepSize;
            graggBulirschStoerIntegrator2.isLastStep = !z14 ? d17 > d10 : d17 < d10;
            int i18 = -1;
            double d18 = d15;
            int i19 = i17;
            boolean z19 = true;
            boolean z20 = false;
            double d19 = d16;
            while (z19) {
                int i20 = i18 + 1;
                GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator4 = graggBulirschStoerStepInterpolator2;
                double[] dArr29 = dArr27;
                int i21 = i19;
                int i22 = i18;
                double[] dArr30 = completeState;
                boolean z21 = z14;
                if (tryStep(graggBulirschStoerIntegrator2.stepStart, dArr, graggBulirschStoerIntegrator2.stepSize, i20, dArr23, dArr16[i20], i20 == 0 ? dArr20[0] : dArr24[i18], i20 == 0 ? dArr26 : dArr19[i18], dArr12)) {
                    i18 = i20;
                    char c10 = 0;
                    if (i18 > 0) {
                        double[][] dArr31 = dArr19;
                        double[] dArr32 = dArr26;
                        graggBulirschStoerIntegrator2.extrapolate(0, i18, dArr31, dArr32);
                        double[] dArr33 = dArr23;
                        double[] dArr34 = dArr;
                        graggBulirschStoerIntegrator2.rescale(dArr34, dArr32, dArr33);
                        int i23 = 0;
                        double d20 = 0.0d;
                        while (true) {
                            i11 = graggBulirschStoerIntegrator2.mainSetDimension;
                            if (i23 >= i11) {
                                break;
                            }
                            double abs = FastMath.abs(dArr32[i23] - dArr31[c10][i23]) / dArr33[i23];
                            d20 += abs * abs;
                            i23++;
                            c10 = 0;
                        }
                        double sqrt = FastMath.sqrt(d20 / i11);
                        if (sqrt > 1.0E15d || (i18 > 1 && sqrt > d18)) {
                            dArr26 = dArr32;
                            dArr = dArr34;
                            dArr23 = dArr33;
                            GraggBulirschStoerIntegrator graggBulirschStoerIntegrator3 = graggBulirschStoerIntegrator2;
                            double[][] dArr35 = dArr24;
                            d19 = FastMath.abs(graggBulirschStoerIntegrator3.filterStep(graggBulirschStoerIntegrator3.stepSize * graggBulirschStoerIntegrator3.stabilityReduction, z21, false));
                            i19 = i21;
                            graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator3;
                            z14 = z21;
                            dArr24 = dArr35;
                            dArr19 = dArr31;
                            graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator4;
                            dArr27 = dArr29;
                            completeState = dArr30;
                            z19 = false;
                        } else {
                            dArr = dArr34;
                            dArr23 = dArr33;
                            d18 = FastMath.max(4.0d * sqrt, 1.0d);
                            double d21 = 1.0d / ((i18 * 2) + 1);
                            double pow = graggBulirschStoerIntegrator2.stepControl2 / FastMath.pow(sqrt / graggBulirschStoerIntegrator2.stepControl1, d21);
                            double pow2 = FastMath.pow(graggBulirschStoerIntegrator2.stepControl3, d21);
                            graggBulirschStoerIntegrator2.optimalStep[i18] = FastMath.abs(graggBulirschStoerIntegrator2.filterStep(graggBulirschStoerIntegrator2.stepSize * FastMath.max(pow2 / graggBulirschStoerIntegrator2.stepControl4, FastMath.min(1.0d / pow2, pow)), z21, true));
                            double[] dArr36 = graggBulirschStoerIntegrator2.costPerTimeUnit;
                            double d22 = graggBulirschStoerIntegrator2.costPerStep[i18];
                            double[] dArr37 = graggBulirschStoerIntegrator2.optimalStep;
                            double d23 = d22 / dArr37[i18];
                            dArr36[i18] = d23;
                            int i24 = i18 - i21;
                            if (i24 == -1) {
                                graggBulirschStoerIntegrator = graggBulirschStoerIntegrator2;
                                int i25 = i22;
                                if (i21 <= 1 || z18) {
                                    dArr26 = dArr32;
                                    dArr7 = dArr31;
                                    dArr8 = dArr24;
                                    i19 = i21;
                                    graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                    z14 = z21;
                                    dArr24 = dArr8;
                                    dArr19 = dArr7;
                                } else if (sqrt <= 1.0d) {
                                    dArr26 = dArr32;
                                    dArr7 = dArr31;
                                    i19 = i21;
                                    dArr8 = dArr24;
                                    z19 = false;
                                    graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                    z14 = z21;
                                    dArr24 = dArr8;
                                    dArr19 = dArr7;
                                } else {
                                    dArr8 = dArr24;
                                    dArr7 = dArr31;
                                    dArr26 = dArr32;
                                    int i26 = graggBulirschStoerIntegrator.sequence[0];
                                    double d24 = (r12[i21] * r12[i21 + 1]) / (i26 * i26);
                                    if (sqrt > d24 * d24) {
                                        if (i18 <= 1 || dArr36[i25] >= graggBulirschStoerIntegrator.orderControl1 * d23) {
                                            i25 = i18;
                                        }
                                        d19 = dArr37[i25];
                                        i19 = i25;
                                        z19 = false;
                                        z20 = true;
                                        graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                        z14 = z21;
                                        dArr24 = dArr8;
                                        dArr19 = dArr7;
                                    }
                                    i19 = i21;
                                    graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                    z14 = z21;
                                    dArr24 = dArr8;
                                    dArr19 = dArr7;
                                }
                            } else if (i24 == 0) {
                                if (sqrt > 1.0d) {
                                    int[] iArr4 = graggBulirschStoerIntegrator2.sequence;
                                    double d25 = iArr4[i22 + 2] / iArr4[0];
                                    if (sqrt > d25 * d25) {
                                        if (i21 > 1) {
                                            graggBulirschStoerIntegrator = this;
                                            if (dArr36[i21 - 1] < graggBulirschStoerIntegrator.orderControl1 * dArr36[i21]) {
                                                i12 = i21 - 1;
                                                d19 = dArr37[i12];
                                                z19 = false;
                                                z20 = true;
                                            }
                                        } else {
                                            graggBulirschStoerIntegrator = this;
                                        }
                                        i12 = i21;
                                        d19 = dArr37[i12];
                                        z19 = false;
                                        z20 = true;
                                    } else {
                                        graggBulirschStoerIntegrator = this;
                                        i12 = i21;
                                    }
                                    dArr26 = dArr32;
                                    dArr7 = dArr31;
                                    dArr8 = dArr24;
                                    i19 = i12;
                                    graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                    z14 = z21;
                                    dArr24 = dArr8;
                                    dArr19 = dArr7;
                                }
                                dArr26 = dArr32;
                                dArr7 = dArr31;
                                i19 = i21;
                                graggBulirschStoerIntegrator = graggBulirschStoerIntegrator2;
                                dArr8 = dArr24;
                                z19 = false;
                                graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                z14 = z21;
                                dArr24 = dArr8;
                                dArr19 = dArr7;
                            } else if (i24 != 1) {
                                if ((!z17 && !graggBulirschStoerIntegrator2.isLastStep) || sqrt > 1.0d) {
                                    dArr26 = dArr32;
                                    dArr7 = dArr31;
                                    graggBulirschStoerIntegrator = graggBulirschStoerIntegrator2;
                                    dArr8 = dArr24;
                                    i19 = i21;
                                    graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                    z14 = z21;
                                    dArr24 = dArr8;
                                    dArr19 = dArr7;
                                }
                                dArr26 = dArr32;
                                dArr7 = dArr31;
                                i19 = i21;
                                graggBulirschStoerIntegrator = graggBulirschStoerIntegrator2;
                                dArr8 = dArr24;
                                z19 = false;
                                graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                z14 = z21;
                                dArr24 = dArr8;
                                dArr19 = dArr7;
                            } else {
                                if (sqrt > 1.0d) {
                                    i12 = (i21 <= 1 || dArr36[i21 + (-1)] >= graggBulirschStoerIntegrator2.orderControl1 * dArr36[i21]) ? i21 : i21 - 1;
                                    d19 = dArr37[i12];
                                    z20 = true;
                                } else {
                                    i12 = i21;
                                }
                                dArr26 = dArr32;
                                dArr7 = dArr31;
                                graggBulirschStoerIntegrator = graggBulirschStoerIntegrator2;
                                dArr8 = dArr24;
                                z19 = false;
                                i19 = i12;
                                graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator;
                                z14 = z21;
                                dArr24 = dArr8;
                                dArr19 = dArr7;
                            }
                        }
                    } else {
                        i19 = i21;
                        z14 = z21;
                    }
                    graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator4;
                    dArr27 = dArr29;
                    completeState = dArr30;
                } else {
                    d19 = FastMath.abs(graggBulirschStoerIntegrator2.filterStep(graggBulirschStoerIntegrator2.stepSize * graggBulirschStoerIntegrator2.stabilityReduction, z21, false));
                    z19 = false;
                    z14 = z21;
                    i18 = i20;
                    graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator4;
                    dArr27 = dArr29;
                    i19 = i21;
                    completeState = dArr30;
                }
                z20 = true;
            }
            int i27 = i19;
            double[] dArr38 = completeState;
            GraggBulirschStoerStepInterpolator graggBulirschStoerStepInterpolator5 = graggBulirschStoerStepInterpolator2;
            double[] dArr39 = dArr27;
            double[][] dArr40 = dArr19;
            int i28 = i18;
            boolean z22 = z14;
            GraggBulirschStoerIntegrator graggBulirschStoerIntegrator4 = graggBulirschStoerIntegrator2;
            double[][] dArr41 = dArr24;
            if (z20) {
                dArr2 = dArr26;
                dArr3 = dArr25;
            } else {
                dArr2 = dArr26;
                dArr3 = dArr25;
                graggBulirschStoerIntegrator4.computeDerivatives(graggBulirschStoerIntegrator4.stepStart + graggBulirschStoerIntegrator4.stepSize, dArr2, dArr3);
            }
            double maxStep = getMaxStep();
            if (z20) {
                d11 = maxStep;
                dArr25 = dArr3;
                i10 = i27;
                dArr4 = dArr41;
                dArr5 = dArr23;
                graggBulirschStoerStepInterpolator = graggBulirschStoerStepInterpolator5;
                z11 = z22;
            } else {
                for (int i29 = 1; i29 <= i28; i29++) {
                    graggBulirschStoerIntegrator4.extrapolate(0, i29, dArr41, dArr20[0]);
                }
                dArr4 = dArr41;
                int i30 = ((i28 * 2) - graggBulirschStoerIntegrator4.mudif) + 3;
                int i31 = 0;
                while (i31 < i30) {
                    int i32 = i31 / 2;
                    double pow3 = FastMath.pow(graggBulirschStoerIntegrator4.sequence[i32] * 0.5d, i31);
                    int length = dArr16[i32].length / 2;
                    double d26 = maxStep;
                    boolean z23 = z22;
                    double[] dArr42 = dArr38;
                    for (int i33 = 0; i33 < dArr42.length; i33++) {
                        dArr20[i31 + 1][i33] = dArr16[i32][length + i31][i33] * pow3;
                    }
                    int i34 = 1;
                    while (i34 <= i28 - i32) {
                        int i35 = i34 + i32;
                        double pow4 = FastMath.pow(graggBulirschStoerIntegrator4.sequence[i35] * 0.5d, i31);
                        int length2 = dArr16[i35].length / 2;
                        double[] dArr43 = dArr3;
                        int i36 = i27;
                        for (int i37 = 0; i37 < dArr42.length; i37++) {
                            dArr4[i34 - 1][i37] = dArr16[i35][length2 + i31][i37] * pow4;
                        }
                        graggBulirschStoerIntegrator4.extrapolate(i32, i34, dArr4, dArr20[i31 + 1]);
                        i34++;
                        dArr3 = dArr43;
                        i27 = i36;
                    }
                    double[] dArr44 = dArr3;
                    int i38 = i27;
                    for (int i39 = 0; i39 < dArr42.length; i39++) {
                        double[] dArr45 = dArr20[i31 + 1];
                        dArr45[i39] = dArr45[i39] * graggBulirschStoerIntegrator4.stepSize;
                    }
                    i31++;
                    for (int i40 = i31 / 2; i40 <= i28; i40++) {
                        for (int length3 = dArr16[i40].length - 1; length3 >= i31 * 2; length3--) {
                            for (int i41 = 0; i41 < dArr42.length; i41++) {
                                double[][] dArr46 = dArr16[i40];
                                double[] dArr47 = dArr46[length3];
                                dArr47[i41] = dArr47[i41] - dArr46[length3 - 2][i41];
                            }
                        }
                    }
                    dArr38 = dArr42;
                    z22 = z23;
                    maxStep = d26;
                    dArr3 = dArr44;
                    i27 = i38;
                }
                d11 = maxStep;
                dArr25 = dArr3;
                i10 = i27;
                z11 = z22;
                double[] dArr48 = dArr38;
                if (i30 >= 0) {
                    graggBulirschStoerStepInterpolator = graggBulirschStoerStepInterpolator5;
                    graggBulirschStoerStepInterpolator.computeCoefficients(i30, graggBulirschStoerIntegrator4.stepSize);
                    if (graggBulirschStoerIntegrator4.useInterpolationError) {
                        dArr5 = dArr23;
                        double estimateError = graggBulirschStoerStepInterpolator.estimateError(dArr5);
                        dArr38 = dArr48;
                        d12 = FastMath.abs(graggBulirschStoerIntegrator4.stepSize / FastMath.max(FastMath.pow(estimateError, 1.0d / (r2 + 7)), 0.01d));
                        if (estimateError > 10.0d) {
                            d19 = d12;
                            z20 = true;
                        }
                        if (z20) {
                            graggBulirschStoerStepInterpolator.storeTime(graggBulirschStoerIntegrator4.stepStart + graggBulirschStoerIntegrator4.stepSize);
                            dArr6 = dArr38;
                            double acceptStep = acceptStep(graggBulirschStoerStepInterpolator, dArr2, dArr25, d10);
                            graggBulirschStoerIntegrator4.stepStart = acceptStep;
                            graggBulirschStoerStepInterpolator.storeTime(acceptStep);
                            double[] dArr49 = dArr;
                            System.arraycopy(dArr2, 0, dArr49, 0, dArr6.length);
                            double[] dArr50 = dArr25;
                            System.arraycopy(dArr50, 0, dArr39, 0, dArr6.length);
                            int i42 = 1;
                            if (i28 == 1) {
                                dArr39 = dArr39;
                                dArr25 = dArr50;
                                dArr26 = dArr2;
                                if (!z18) {
                                    i42 = 2;
                                }
                            } else {
                                int i43 = i10;
                                if (i28 <= i43) {
                                    double[] dArr51 = graggBulirschStoerIntegrator4.costPerTimeUnit;
                                    int i44 = i28 - 1;
                                    double d27 = dArr51[i44];
                                    i10 = i43;
                                    double d28 = graggBulirschStoerIntegrator4.orderControl1;
                                    double d29 = dArr51[i28];
                                    if (d27 < d28 * d29) {
                                        dArr39 = dArr39;
                                        dArr25 = dArr50;
                                        dArr26 = dArr2;
                                        i42 = i44;
                                    } else if (d29 < graggBulirschStoerIntegrator4.orderControl2 * d27) {
                                        i42 = FastMath.min(i28 + 1, graggBulirschStoerIntegrator4.sequence.length - 2);
                                        dArr39 = dArr39;
                                        dArr25 = dArr50;
                                        dArr26 = dArr2;
                                        if (z18) {
                                            i42 = FastMath.min(i42, i28);
                                            dArr = dArr49;
                                            d14 = FastMath.min(FastMath.abs(graggBulirschStoerIntegrator4.stepSize), graggBulirschStoerIntegrator4.optimalStep[i42]);
                                            z12 = z11;
                                            z13 = false;
                                        } else {
                                            dArr = dArr49;
                                            if (i42 <= i28) {
                                                filterStep = graggBulirschStoerIntegrator4.optimalStep[i42];
                                                z12 = z11;
                                                z13 = false;
                                            } else {
                                                if (i28 < i10) {
                                                    double[] dArr52 = graggBulirschStoerIntegrator4.costPerTimeUnit;
                                                    if (dArr52[i28] < graggBulirschStoerIntegrator4.orderControl2 * dArr52[i28 - 1]) {
                                                        double d30 = graggBulirschStoerIntegrator4.optimalStep[i28];
                                                        int[] iArr5 = graggBulirschStoerIntegrator4.costPerStep;
                                                        z12 = z11;
                                                        filterStep = graggBulirschStoerIntegrator4.filterStep((d30 * iArr5[i42 + 1]) / iArr5[i28], z12, false);
                                                        z13 = false;
                                                    }
                                                }
                                                z12 = z11;
                                                double d31 = graggBulirschStoerIntegrator4.optimalStep[i28];
                                                int[] iArr6 = graggBulirschStoerIntegrator4.costPerStep;
                                                z13 = false;
                                                filterStep = graggBulirschStoerIntegrator4.filterStep((d31 * iArr6[i42]) / iArr6[i28], z12, false);
                                            }
                                            d14 = filterStep;
                                        }
                                        i17 = i42;
                                        d13 = d14;
                                        z15 = true;
                                        z16 = true;
                                    } else {
                                        dArr39 = dArr39;
                                        dArr25 = dArr50;
                                        dArr26 = dArr2;
                                        i42 = i28;
                                    }
                                } else {
                                    i10 = i43;
                                    i42 = i28 - 1;
                                    if (i28 > 2) {
                                        double[] dArr53 = graggBulirschStoerIntegrator4.costPerTimeUnit;
                                        int i45 = i28 - 2;
                                        dArr39 = dArr39;
                                        dArr25 = dArr50;
                                        if (dArr53[i45] < graggBulirschStoerIntegrator4.orderControl1 * dArr53[i42]) {
                                            i42 = i45;
                                        }
                                    } else {
                                        dArr39 = dArr39;
                                        dArr25 = dArr50;
                                    }
                                    double[] dArr54 = graggBulirschStoerIntegrator4.costPerTimeUnit;
                                    dArr26 = dArr2;
                                    if (dArr54[i28] < graggBulirschStoerIntegrator4.orderControl2 * dArr54[i42]) {
                                        i42 = FastMath.min(i28, graggBulirschStoerIntegrator4.sequence.length - 2);
                                        if (z18) {
                                        }
                                        i17 = i42;
                                        d13 = d14;
                                        z15 = true;
                                        z16 = true;
                                    }
                                }
                            }
                            if (z18) {
                            }
                            i17 = i42;
                            d13 = d14;
                            z15 = true;
                            z16 = true;
                        } else {
                            dArr26 = dArr2;
                            z12 = z11;
                            dArr6 = dArr38;
                            z13 = false;
                            i17 = i10;
                            d13 = d19;
                            z15 = z10;
                        }
                        d16 = FastMath.min(d13, d12);
                        if (!z12) {
                            d16 = -d16;
                        }
                        if (z20) {
                            z18 = z13;
                        } else {
                            graggBulirschStoerIntegrator4.isLastStep = z13;
                            z18 = true;
                        }
                        if (!graggBulirschStoerIntegrator4.isLastStep) {
                            expandableStatefulODE.setTime(graggBulirschStoerIntegrator4.stepStart);
                            expandableStatefulODE.setCompleteState(dArr);
                            resetInternalState();
                            return;
                        }
                        z17 = z13;
                        graggBulirschStoerStepInterpolator2 = graggBulirschStoerStepInterpolator;
                        dArr23 = dArr5;
                        graggBulirschStoerIntegrator2 = graggBulirschStoerIntegrator4;
                        completeState = dArr6;
                        z14 = z12;
                        dArr28 = dArr;
                        d15 = d18;
                        dArr19 = dArr40;
                        dArr27 = dArr39;
                        dArr24 = dArr4;
                    } else {
                        dArr38 = dArr48;
                        dArr5 = dArr23;
                    }
                } else {
                    dArr38 = dArr48;
                    dArr5 = dArr23;
                    graggBulirschStoerStepInterpolator = graggBulirschStoerStepInterpolator5;
                }
            }
            d12 = d11;
            if (z20) {
            }
            d16 = FastMath.min(d13, d12);
            if (!z12) {
            }
            if (z20) {
            }
            if (!graggBulirschStoerIntegrator4.isLastStep) {
            }
        }
    }

    public void setControlFactors(double d10, double d11, double d12, double d13) {
        if (d10 < 1.0E-4d || d10 > 0.9999d) {
            this.stepControl1 = 0.65d;
        } else {
            this.stepControl1 = d10;
        }
        if (d11 < 1.0E-4d || d11 > 0.9999d) {
            this.stepControl2 = 0.94d;
        } else {
            this.stepControl2 = d11;
        }
        if (d12 < 1.0E-4d || d12 > 0.9999d) {
            this.stepControl3 = 0.02d;
        } else {
            this.stepControl3 = d12;
        }
        if (d13 < 1.0001d || d13 > 999.9d) {
            this.stepControl4 = 4.0d;
        } else {
            this.stepControl4 = d13;
        }
    }

    public void setInterpolationControl(boolean z10, int i10) {
        this.useInterpolationError = z10;
        if (i10 <= 0 || i10 >= 7) {
            this.mudif = 4;
        } else {
            this.mudif = i10;
        }
    }

    public void setOrderControl(int i10, double d10, double d11) {
        if (i10 <= 6 || i10 % 2 != 0) {
            this.maxOrder = 18;
        }
        if (d10 < 1.0E-4d || d10 > 0.9999d) {
            this.orderControl1 = 0.8d;
        } else {
            this.orderControl1 = d10;
        }
        if (d11 < 1.0E-4d || d11 > 0.9999d) {
            this.orderControl2 = 0.9d;
        } else {
            this.orderControl2 = d11;
        }
        initializeArrays();
    }

    public void setStabilityCheck(boolean z10, int i10, int i11, double d10) {
        this.performTest = z10;
        if (i10 <= 0) {
            i10 = 2;
        }
        this.maxIter = i10;
        if (i11 <= 0) {
            i11 = 1;
        }
        this.maxChecks = i11;
        if (d10 < 1.0E-4d || d10 > 0.9999d) {
            this.stabilityReduction = 0.5d;
        } else {
            this.stabilityReduction = d10;
        }
    }

    public GraggBulirschStoerIntegrator(double d10, double d11, double[] dArr, double[] dArr2) {
        super(METHOD_NAME, d10, d11, dArr, dArr2);
        setStabilityCheck(true, -1, -1, -1.0d);
        setControlFactors(-1.0d, -1.0d, -1.0d, -1.0d);
        setOrderControl(-1, -1.0d, -1.0d);
        setInterpolationControl(true, -1);
    }
}
