package org.apache.commons.math3.optimization.direct;

import android.util.DisplayMetrics;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class BOBYQAOptimizer extends BaseAbstractMultivariateSimpleBoundsOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    public static final double DEFAULT_INITIAL_RADIUS = 10.0d;
    public static final double DEFAULT_STOPPING_RADIUS = 1.0E-8d;
    private static final double HALF = 0.5d;
    public static final int MINIMUM_PROBLEM_DIMENSION = 2;
    private static final double MINUS_ONE = -1.0d;
    private static final double ONE = 1.0d;
    private static final double ONE_OVER_A_THOUSAND = 0.001d;
    private static final double ONE_OVER_EIGHT = 0.125d;
    private static final double ONE_OVER_FOUR = 0.25d;
    private static final double ONE_OVER_TEN = 0.1d;
    private static final double SIXTEEN = 16.0d;
    private static final double TEN = 10.0d;
    private static final double TWO = 2.0d;
    private static final double TWO_HUNDRED_FIFTY = 250.0d;
    private static final double ZERO = 0.0d;
    private ArrayRealVector alternativeNewPoint;
    private Array2DRowRealMatrix bMatrix;
    private double[] boundDifference;
    private ArrayRealVector currentBest;
    private ArrayRealVector fAtInterpolationPoints;
    private ArrayRealVector gradientAtTrustRegionCenter;
    private double initialTrustRegionRadius;
    private Array2DRowRealMatrix interpolationPoints;
    private boolean isMinimize;
    private ArrayRealVector lagrangeValuesAtNewPoint;
    private ArrayRealVector lowerDifference;
    private ArrayRealVector modelSecondDerivativesParameters;
    private ArrayRealVector modelSecondDerivativesValues;
    private ArrayRealVector newPoint;
    private final int numberOfInterpolationPoints;
    private ArrayRealVector originShift;
    private final double stoppingTrustRegionRadius;
    private ArrayRealVector trialStepPoint;
    private int trustRegionCenterInterpolationPointIndex;
    private ArrayRealVector trustRegionCenterOffset;
    private ArrayRealVector upperDifference;
    private Array2DRowRealMatrix zMatrix;

    public static class PathIsExploredException extends RuntimeException {
        private static final String PATH_IS_EXPLORED = "If this exception is thrown, just remove it from the code";
        private static final long serialVersionUID = 745350979634801853L;

        public PathIsExploredException() {
            super("If this exception is thrown, just remove it from the code " + BOBYQAOptimizer.caller(3));
        }
    }

    public BOBYQAOptimizer(int i10) {
        this(i10, 10.0d, 1.0E-8d);
    }

    /* JADX WARN: Removed duplicated region for block: B:170:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0549 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private double[] altmov(int i10, double d10) {
        int i11;
        double d11;
        double d12;
        double d13;
        double d14;
        double d15;
        int i12;
        ArrayRealVector arrayRealVector;
        int i13;
        ArrayRealVector arrayRealVector2;
        ArrayRealVector arrayRealVector3;
        ArrayRealVector arrayRealVector4;
        double d16;
        double d17;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i14 = this.numberOfInterpolationPoints;
        ArrayRealVector arrayRealVector5 = new ArrayRealVector(dimension);
        ArrayRealVector arrayRealVector6 = new ArrayRealVector(i14);
        ArrayRealVector arrayRealVector7 = new ArrayRealVector(dimension);
        ArrayRealVector arrayRealVector8 = new ArrayRealVector(dimension);
        for (int i15 = 0; i15 < i14; i15++) {
            arrayRealVector6.setEntry(i15, 0.0d);
        }
        int i16 = (i14 - dimension) - 1;
        for (int i17 = 0; i17 < i16; i17++) {
            double entry = this.zMatrix.getEntry(i10, i17);
            for (int i18 = 0; i18 < i14; i18++) {
                arrayRealVector6.setEntry(i18, arrayRealVector6.getEntry(i18) + (this.zMatrix.getEntry(i18, i17) * entry));
            }
        }
        double entry2 = arrayRealVector6.getEntry(i10);
        double d18 = entry2 * 0.5d;
        for (int i19 = 0; i19 < dimension; i19++) {
            arrayRealVector5.setEntry(i19, this.bMatrix.getEntry(i10, i19));
        }
        for (int i20 = 0; i20 < i14; i20++) {
            double d19 = 0.0d;
            for (int i21 = 0; i21 < dimension; i21++) {
                d19 += this.interpolationPoints.getEntry(i20, i21) * this.trustRegionCenterOffset.getEntry(i21);
            }
            double entry3 = d19 * arrayRealVector6.getEntry(i20);
            int i22 = 0;
            while (i22 < dimension) {
                arrayRealVector5.setEntry(i22, arrayRealVector5.getEntry(i22) + (this.interpolationPoints.getEntry(i20, i22) * entry3));
                i22++;
                arrayRealVector8 = arrayRealVector8;
                entry2 = entry2;
            }
        }
        ArrayRealVector arrayRealVector9 = arrayRealVector8;
        double d20 = entry2;
        double d21 = Double.NaN;
        int i23 = dimension;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        double d22 = 0.0d;
        double d23 = 0.0d;
        while (i24 < i14) {
            if (i24 == this.trustRegionCenterInterpolationPointIndex) {
                i13 = i14;
                arrayRealVector2 = arrayRealVector5;
                arrayRealVector4 = arrayRealVector6;
                arrayRealVector3 = arrayRealVector7;
                arrayRealVector = arrayRealVector9;
                i12 = i23;
            } else {
                i12 = i23;
                int i27 = 0;
                double d24 = 0.0d;
                double d25 = 0.0d;
                while (i27 < i12) {
                    double entry4 = this.interpolationPoints.getEntry(i24, i27) - this.trustRegionCenterOffset.getEntry(i27);
                    d25 += arrayRealVector5.getEntry(i27) * entry4;
                    d24 += entry4 * entry4;
                    i27++;
                    arrayRealVector9 = arrayRealVector9;
                }
                arrayRealVector = arrayRealVector9;
                ArrayRealVector arrayRealVector10 = arrayRealVector6;
                double sqrt = d10 / FastMath.sqrt(d24);
                i13 = i14;
                arrayRealVector2 = arrayRealVector5;
                int i28 = i26;
                arrayRealVector3 = arrayRealVector7;
                double min = FastMath.min(1.0d, sqrt);
                double d26 = -sqrt;
                int i29 = 0;
                int i30 = 0;
                arrayRealVector4 = arrayRealVector10;
                int i31 = 0;
                while (i31 < i12) {
                    int i32 = i25;
                    double entry5 = this.interpolationPoints.getEntry(i24, i31) - this.trustRegionCenterOffset.getEntry(i31);
                    if (entry5 > 0.0d) {
                        if (d26 * entry5 < this.lowerDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) {
                            d26 = (this.lowerDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) / entry5;
                            i29 = (-i31) - 1;
                        }
                        if (sqrt * entry5 > this.upperDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) {
                            sqrt = FastMath.max(min, (this.upperDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) / entry5);
                            i30 = i31 + 1;
                        }
                    } else if (entry5 < 0.0d) {
                        if (d26 * entry5 > this.upperDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) {
                            d26 = (this.upperDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) / entry5;
                            i29 = i31 + 1;
                        }
                        if (sqrt * entry5 < this.lowerDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) {
                            sqrt = FastMath.max(min, (this.lowerDifference.getEntry(i31) - this.trustRegionCenterOffset.getEntry(i31)) / entry5);
                            i30 = (-i31) - 1;
                        }
                    }
                    i31++;
                    i25 = i32;
                }
                int i33 = i25;
                if (i24 == i10) {
                    double d27 = d25 - 1.0d;
                    double d28 = d26 * d27;
                    d17 = (d25 - d28) * d26;
                    double d29 = sqrt * d27;
                    double d30 = (d25 - d29) * sqrt;
                    if (FastMath.abs(d30) > FastMath.abs(d17)) {
                        d26 = sqrt;
                        i29 = i30;
                        d17 = d30;
                    }
                    double d31 = d25 * 0.5d;
                    if ((d31 - d28) * (d31 - d29) < 0.0d) {
                        double d32 = (d31 * d31) / d27;
                        if (FastMath.abs(d32) > FastMath.abs(d17)) {
                            d26 = d31 / d27;
                            d17 = d32;
                            i29 = 0;
                        }
                    }
                } else {
                    double d33 = d26 * (1.0d - d26);
                    double d34 = (1.0d - sqrt) * sqrt;
                    if (FastMath.abs(d34) > FastMath.abs(d33)) {
                        d26 = sqrt;
                        i29 = i30;
                        d33 = d34;
                    }
                    if (sqrt <= 0.5d || FastMath.abs(d33) >= ONE_OVER_FOUR) {
                        d16 = d26;
                    } else {
                        d33 = 0.25d;
                        d16 = 0.5d;
                        i29 = 0;
                    }
                    d17 = d33 * d25;
                    d26 = d16;
                }
                double d35 = (1.0d - d26) * d26 * d24;
                double d36 = d17 * d17;
                double d37 = d36 * (d36 + (d18 * d35 * d35));
                if (d37 > d23) {
                    i25 = i24;
                    d21 = d26;
                    d22 = d21;
                    i26 = i29;
                    d23 = d37;
                } else {
                    d21 = d26;
                    i26 = i28;
                    i25 = i33;
                }
            }
            i24++;
            i23 = i12;
            arrayRealVector9 = arrayRealVector;
            i14 = i13;
            arrayRealVector5 = arrayRealVector2;
            arrayRealVector6 = arrayRealVector4;
            arrayRealVector7 = arrayRealVector3;
        }
        int i34 = i14;
        ArrayRealVector arrayRealVector11 = arrayRealVector5;
        ArrayRealVector arrayRealVector12 = arrayRealVector6;
        ArrayRealVector arrayRealVector13 = arrayRealVector7;
        int i35 = i25;
        int i36 = i26;
        ArrayRealVector arrayRealVector14 = arrayRealVector9;
        int i37 = i23;
        for (int i38 = 0; i38 < i37; i38++) {
            this.newPoint.setEntry(i38, FastMath.max(this.lowerDifference.getEntry(i38), FastMath.min(this.upperDifference.getEntry(i38), this.trustRegionCenterOffset.getEntry(i38) + ((this.interpolationPoints.getEntry(i35, i38) - this.trustRegionCenterOffset.getEntry(i38)) * d22))));
        }
        if (i36 < 0) {
            i11 = i36;
            int i39 = (-i11) - 1;
            this.newPoint.setEntry(i39, this.lowerDifference.getEntry(i39));
        } else {
            i11 = i36;
        }
        if (i11 > 0) {
            int i40 = i11 - 1;
            this.newPoint.setEntry(i40, this.upperDifference.getEntry(i40));
        }
        double d38 = d10 + d10;
        double d39 = 0.0d;
        boolean z10 = false;
        while (true) {
            int i41 = 0;
            double d40 = 0.0d;
            while (i41 < i37) {
                ArrayRealVector arrayRealVector15 = arrayRealVector11;
                double entry6 = arrayRealVector15.getEntry(i41);
                double d41 = d21;
                ArrayRealVector arrayRealVector16 = arrayRealVector13;
                arrayRealVector16.setEntry(i41, 0.0d);
                double d42 = d39;
                if (FastMath.min(this.trustRegionCenterOffset.getEntry(i41) - this.lowerDifference.getEntry(i41), entry6) > 0.0d || FastMath.max(this.trustRegionCenterOffset.getEntry(i41) - this.upperDifference.getEntry(i41), entry6) < 0.0d) {
                    arrayRealVector16.setEntry(i41, d38);
                    d40 += entry6 * entry6;
                }
                i41++;
                arrayRealVector11 = arrayRealVector15;
                arrayRealVector13 = arrayRealVector16;
                d21 = d41;
                d39 = d42;
            }
            double d43 = d39;
            double d44 = d21;
            ArrayRealVector arrayRealVector17 = arrayRealVector11;
            ArrayRealVector arrayRealVector18 = arrayRealVector13;
            if (d40 == 0.0d) {
                return new double[]{d20, 0.0d};
            }
            double d45 = (d10 * d10) - 0.0d;
            if (d45 > 0.0d) {
                double sqrt2 = FastMath.sqrt(d45 / d40);
                for (int i42 = 0; i42 < i37; i42++) {
                    if (arrayRealVector18.getEntry(i42) == d38) {
                        double entry7 = this.trustRegionCenterOffset.getEntry(i42) - (arrayRealVector17.getEntry(i42) * sqrt2);
                        if (entry7 <= this.lowerDifference.getEntry(i42)) {
                            arrayRealVector18.setEntry(i42, this.lowerDifference.getEntry(i42) - this.trustRegionCenterOffset.getEntry(i42));
                            arrayRealVector18.getEntry(i42);
                        } else if (entry7 >= this.upperDifference.getEntry(i42)) {
                            arrayRealVector18.setEntry(i42, this.upperDifference.getEntry(i42) - this.trustRegionCenterOffset.getEntry(i42));
                            arrayRealVector18.getEntry(i42);
                        } else {
                            arrayRealVector17.getEntry(i42);
                        }
                    }
                }
                d11 = sqrt2;
            } else {
                d11 = d44;
            }
            int i43 = 0;
            double d46 = 0.0d;
            while (i43 < i37) {
                double entry8 = arrayRealVector17.getEntry(i43);
                if (arrayRealVector18.getEntry(i43) == d38) {
                    arrayRealVector18.setEntry(i43, (-d11) * entry8);
                    d14 = d38;
                    d15 = d11;
                    this.alternativeNewPoint.setEntry(i43, FastMath.max(this.lowerDifference.getEntry(i43), FastMath.min(this.upperDifference.getEntry(i43), this.trustRegionCenterOffset.getEntry(i43) + arrayRealVector18.getEntry(i43))));
                } else {
                    d14 = d38;
                    d15 = d11;
                    if (arrayRealVector18.getEntry(i43) == 0.0d) {
                        this.alternativeNewPoint.setEntry(i43, this.trustRegionCenterOffset.getEntry(i43));
                    } else if (entry8 > 0.0d) {
                        this.alternativeNewPoint.setEntry(i43, this.lowerDifference.getEntry(i43));
                    } else {
                        this.alternativeNewPoint.setEntry(i43, this.upperDifference.getEntry(i43));
                    }
                }
                d46 += entry8 * arrayRealVector18.getEntry(i43);
                i43++;
                d38 = d14;
                d11 = d15;
            }
            double d47 = d38;
            double d48 = d11;
            double d49 = 0.0d;
            int i44 = i34;
            for (int i45 = 0; i45 < i44; i45++) {
                double d50 = 0.0d;
                for (int i46 = 0; i46 < i37; i46++) {
                    d50 += this.interpolationPoints.getEntry(i45, i46) * arrayRealVector18.getEntry(i46);
                }
                d49 += arrayRealVector12.getEntry(i45) * d50 * d50;
            }
            ArrayRealVector arrayRealVector19 = arrayRealVector12;
            if (z10) {
                d49 = -d49;
            }
            double d51 = -d46;
            if (d49 <= d51) {
                i34 = i44;
                arrayRealVector12 = arrayRealVector19;
                arrayRealVector11 = arrayRealVector17;
                arrayRealVector13 = arrayRealVector18;
                d12 = 0.5d;
            } else if (d49 < (FastMath.sqrt(TWO) + 1.0d) * d51) {
                double d52 = d51 / d49;
                int i47 = 0;
                while (i47 < i37) {
                    this.alternativeNewPoint.setEntry(i47, FastMath.max(this.lowerDifference.getEntry(i47), FastMath.min(this.upperDifference.getEntry(i47), this.trustRegionCenterOffset.getEntry(i47) + (arrayRealVector18.getEntry(i47) * d52))));
                    i47++;
                    i44 = i44;
                    arrayRealVector17 = arrayRealVector17;
                    arrayRealVector19 = arrayRealVector19;
                    arrayRealVector18 = arrayRealVector18;
                }
                i34 = i44;
                arrayRealVector12 = arrayRealVector19;
                arrayRealVector11 = arrayRealVector17;
                arrayRealVector13 = arrayRealVector18;
                d13 = d46 * 0.5d * d52;
                d39 = d13 * d13;
                if (!z10) {
                    if (d43 > d39) {
                        for (int i48 = 0; i48 < i37; i48++) {
                            this.alternativeNewPoint.setEntry(i48, arrayRealVector14.getEntry(i48));
                        }
                        d39 = d43;
                    }
                    return new double[]{d20, d39};
                }
                for (int i49 = 0; i49 < i37; i49++) {
                    ArrayRealVector arrayRealVector20 = arrayRealVector11;
                    arrayRealVector20.setEntry(i49, -arrayRealVector20.getEntry(i49));
                    arrayRealVector14.setEntry(i49, this.alternativeNewPoint.getEntry(i49));
                }
                z10 = true;
                d38 = d47;
                d21 = d48;
            } else {
                i34 = i44;
                arrayRealVector12 = arrayRealVector19;
                arrayRealVector11 = arrayRealVector17;
                arrayRealVector13 = arrayRealVector18;
                d12 = 0.5d;
            }
            d13 = d46 + (d49 * d12);
            d39 = d13 * d13;
            if (!z10) {
            }
        }
    }

    private double bobyqa(double[] dArr, double[] dArr2) {
        printMethod();
        int dimension = this.currentBest.getDimension();
        for (int i10 = 0; i10 < dimension; i10++) {
            double d10 = this.boundDifference[i10];
            this.lowerDifference.setEntry(i10, dArr[i10] - this.currentBest.getEntry(i10));
            this.upperDifference.setEntry(i10, dArr2[i10] - this.currentBest.getEntry(i10));
            if (this.lowerDifference.getEntry(i10) >= (-this.initialTrustRegionRadius)) {
                if (this.lowerDifference.getEntry(i10) >= 0.0d) {
                    this.currentBest.setEntry(i10, dArr[i10]);
                    this.lowerDifference.setEntry(i10, 0.0d);
                    this.upperDifference.setEntry(i10, d10);
                } else {
                    this.currentBest.setEntry(i10, dArr[i10] + this.initialTrustRegionRadius);
                    this.lowerDifference.setEntry(i10, -this.initialTrustRegionRadius);
                    this.upperDifference.setEntry(i10, FastMath.max(dArr2[i10] - this.currentBest.getEntry(i10), this.initialTrustRegionRadius));
                }
            } else if (this.upperDifference.getEntry(i10) <= this.initialTrustRegionRadius) {
                if (this.upperDifference.getEntry(i10) <= 0.0d) {
                    this.currentBest.setEntry(i10, dArr2[i10]);
                    this.lowerDifference.setEntry(i10, -d10);
                    this.upperDifference.setEntry(i10, 0.0d);
                } else {
                    this.currentBest.setEntry(i10, dArr2[i10] - this.initialTrustRegionRadius);
                    this.lowerDifference.setEntry(i10, FastMath.min(dArr[i10] - this.currentBest.getEntry(i10), -this.initialTrustRegionRadius));
                    this.upperDifference.setEntry(i10, this.initialTrustRegionRadius);
                }
            }
        }
        return bobyqb(dArr, dArr2);
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0fd6  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0ff6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0fcc  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0418 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0433 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:238:0x04df  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x04e5  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0962  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x09c1  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x0a5a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0a19 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0989 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0588  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0d98  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private double bobyqb(double[] dArr, double[] dArr2) {
        double d10;
        int i10;
        ArrayRealVector arrayRealVector;
        ArrayRealVector arrayRealVector2;
        double d11;
        int i11;
        int i12;
        char c10;
        char c11;
        char c12;
        double d12;
        BOBYQAOptimizer bOBYQAOptimizer;
        int i13;
        int i14;
        int i15;
        int i16;
        ArrayRealVector arrayRealVector3;
        double d13;
        char c13;
        double d14;
        double d15;
        double d16;
        int i17;
        char c14;
        int i18;
        ArrayRealVector arrayRealVector4;
        double d17;
        int i19;
        ArrayRealVector arrayRealVector5;
        double d18;
        double d19;
        int i20;
        double d20;
        int i21;
        ArrayRealVector arrayRealVector6;
        double d21;
        int i22;
        int i23;
        int i24;
        BOBYQAOptimizer bOBYQAOptimizer2;
        int i25;
        double d22;
        ArrayRealVector arrayRealVector7;
        int i26;
        int i27;
        ArrayRealVector arrayRealVector8;
        int i28;
        int i29;
        double d23;
        int i30;
        double d24;
        ArrayRealVector arrayRealVector9;
        double d25;
        double d26;
        double d27;
        int i31;
        int i32;
        int i33;
        int i34;
        ArrayRealVector arrayRealVector10;
        ArrayRealVector arrayRealVector11;
        double d28;
        double d29;
        double d30;
        int i35;
        int i36;
        int i37;
        double d31;
        ArrayRealVector arrayRealVector12;
        double d32;
        int i38;
        double d33;
        int i39;
        int i40;
        double d34;
        ArrayRealVector arrayRealVector13;
        ArrayRealVector arrayRealVector14;
        double d35;
        double d36;
        double d37;
        double max;
        int i41;
        double d38;
        double d39;
        BOBYQAOptimizer bOBYQAOptimizer3 = this;
        printMethod();
        int dimension = bOBYQAOptimizer3.currentBest.getDimension();
        int i42 = bOBYQAOptimizer3.numberOfInterpolationPoints;
        int i43 = dimension + 1;
        int i44 = i42 - i43;
        int i45 = (i43 * dimension) / 2;
        ArrayRealVector arrayRealVector15 = new ArrayRealVector(dimension);
        ArrayRealVector arrayRealVector16 = new ArrayRealVector(i42);
        ArrayRealVector arrayRealVector17 = new ArrayRealVector(i42);
        bOBYQAOptimizer3.trustRegionCenterInterpolationPointIndex = 0;
        prelim(dArr, dArr2);
        double d40 = 0.0d;
        for (int i46 = 0; i46 < dimension; i46++) {
            bOBYQAOptimizer3.trustRegionCenterOffset.setEntry(i46, bOBYQAOptimizer3.interpolationPoints.getEntry(bOBYQAOptimizer3.trustRegionCenterInterpolationPointIndex, i46));
            double entry = bOBYQAOptimizer3.trustRegionCenterOffset.getEntry(i46);
            d40 += entry * entry;
        }
        double entry2 = bOBYQAOptimizer3.fAtInterpolationPoints.getEntry(0);
        int evaluations = getEvaluations();
        double d41 = bOBYQAOptimizer3.initialTrustRegionRadius;
        double d42 = entry2;
        double d43 = d41;
        double d44 = Double.NaN;
        double d45 = Double.NaN;
        double d46 = 0.0d;
        int i47 = 0;
        double d47 = 0.0d;
        double d48 = 0.0d;
        int i48 = 0;
        double d49 = 0.0d;
        double d50 = 0.0d;
        double d51 = 0.0d;
        double d52 = 0.0d;
        double d53 = 0.0d;
        double d54 = 0.0d;
        double d55 = 0.0d;
        int i49 = 0;
        int i50 = evaluations;
        double d56 = d40;
        double d57 = Double.NaN;
        char c15 = 20;
        while (true) {
            double d58 = d57;
            if (c15 == 20) {
                d10 = d43;
                i10 = i44;
                arrayRealVector = arrayRealVector15;
                arrayRealVector2 = arrayRealVector16;
                int i51 = i47;
                d11 = d47;
                i11 = i48;
                i12 = 0;
                c10 = '\u00d2';
                c11 = '\u02a8';
                c12 = 20;
                d12 = d41;
                int i52 = i45;
                bOBYQAOptimizer = bOBYQAOptimizer3;
                int i53 = i52;
                printState(20);
                if (bOBYQAOptimizer.trustRegionCenterInterpolationPointIndex != 0) {
                    int i54 = 0;
                    for (int i55 = 0; i55 < dimension; i55++) {
                        int i56 = 0;
                        while (i56 <= i55) {
                            if (i56 < i55) {
                                ArrayRealVector arrayRealVector18 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                i16 = i53;
                                arrayRealVector18.setEntry(i55, arrayRealVector18.getEntry(i55) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i54) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i56)));
                            } else {
                                i16 = i53;
                            }
                            ArrayRealVector arrayRealVector19 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                            arrayRealVector19.setEntry(i56, arrayRealVector19.getEntry(i56) + (bOBYQAOptimizer.modelSecondDerivativesValues.getEntry(i54) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i55)));
                            i54++;
                            i56++;
                            i53 = i16;
                        }
                    }
                    i14 = i53;
                    if (getEvaluations() > i42) {
                        for (int i57 = 0; i57 < i42; i57++) {
                            double d59 = 0.0d;
                            for (int i58 = 0; i58 < dimension; i58++) {
                                d59 += bOBYQAOptimizer.interpolationPoints.getEntry(i57, i58) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i58);
                            }
                            double entry3 = d59 * bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i57);
                            int i59 = 0;
                            while (i59 < dimension) {
                                ArrayRealVector arrayRealVector20 = bOBYQAOptimizer.gradientAtTrustRegionCenter;
                                arrayRealVector20.setEntry(i59, arrayRealVector20.getEntry(i59) + (bOBYQAOptimizer.interpolationPoints.getEntry(i57, i59) * entry3));
                                i59++;
                                i51 = i51;
                            }
                        }
                    }
                    i13 = i51;
                } else {
                    i13 = i51;
                    i14 = i53;
                }
                i15 = 60;
            } else if (c15 == '<') {
                d10 = d43;
                i10 = i44;
                arrayRealVector = arrayRealVector15;
                arrayRealVector2 = arrayRealVector16;
                int i60 = i47;
                d11 = d47;
                i11 = i48;
                i12 = 0;
                c10 = '\u00d2';
                c11 = '\u02a8';
                d12 = d41;
                int i61 = i45;
                bOBYQAOptimizer = bOBYQAOptimizer3;
                i13 = i60;
                i15 = 60;
                i14 = i61;
                c12 = 20;
            } else if (c15 != 'Z') {
                i22 = 720;
                if (c15 == '\u00d2') {
                    printState(210);
                    i23 = i47;
                    double d60 = d47;
                    i24 = i45;
                    bOBYQAOptimizer2 = this;
                    double[] altmov = bOBYQAOptimizer2.altmov(i23, d60);
                    i25 = 0;
                    double d61 = altmov[0];
                    double d62 = altmov[1];
                    int i62 = 0;
                    while (i62 < dimension) {
                        bOBYQAOptimizer2.trialStepPoint.setEntry(i62, bOBYQAOptimizer2.newPoint.getEntry(i62) - bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i62));
                        i62++;
                        d60 = d60;
                        arrayRealVector15 = arrayRealVector15;
                    }
                    d22 = d60;
                    arrayRealVector7 = arrayRealVector15;
                    i26 = 230;
                    d44 = d62;
                    d45 = d61;
                } else if (c15 == '\u00e6') {
                    i25 = 0;
                    i26 = 230;
                    arrayRealVector7 = arrayRealVector15;
                    i23 = i47;
                    d22 = d47;
                    i24 = i45;
                    bOBYQAOptimizer2 = this;
                } else if (c15 == '\u0168') {
                    i25 = 0;
                    d28 = d43;
                    d29 = d41;
                    i36 = 360;
                    arrayRealVector7 = arrayRealVector15;
                    arrayRealVector11 = arrayRealVector16;
                    arrayRealVector10 = arrayRealVector17;
                    d22 = d47;
                    i35 = i48;
                    d30 = d58;
                    i24 = i45;
                    bOBYQAOptimizer2 = this;
                    printState(i36);
                    for (i37 = i25; i37 < dimension; i37++) {
                        bOBYQAOptimizer2.currentBest.setEntry(i37, FastMath.min(FastMath.max(dArr[i37], bOBYQAOptimizer2.originShift.getEntry(i37) + bOBYQAOptimizer2.newPoint.getEntry(i37)), dArr2[i37]));
                        if (bOBYQAOptimizer2.newPoint.getEntry(i37) == bOBYQAOptimizer2.lowerDifference.getEntry(i37)) {
                            bOBYQAOptimizer2.currentBest.setEntry(i37, dArr[i37]);
                        }
                        if (bOBYQAOptimizer2.newPoint.getEntry(i37) == bOBYQAOptimizer2.upperDifference.getEntry(i37)) {
                            bOBYQAOptimizer2.currentBest.setEntry(i37, dArr2[i37]);
                        }
                    }
                    double computeObjectiveValue = bOBYQAOptimizer2.computeObjectiveValue(bOBYQAOptimizer2.currentBest.toArray());
                    if (!bOBYQAOptimizer2.isMinimize) {
                        computeObjectiveValue = -computeObjectiveValue;
                    }
                    double d63 = computeObjectiveValue;
                    if (i35 != -1) {
                        i48 = i35;
                        bOBYQAOptimizer3 = bOBYQAOptimizer2;
                        d42 = d63;
                        d48 = d42;
                        i45 = i24;
                        d57 = d30;
                        d47 = d22;
                        arrayRealVector15 = arrayRealVector7;
                        d41 = d29;
                        d43 = d28;
                        arrayRealVector16 = arrayRealVector11;
                        arrayRealVector17 = arrayRealVector10;
                        c15 = '\u02d0';
                    } else {
                        double entry4 = bOBYQAOptimizer2.fAtInterpolationPoints.getEntry(bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex);
                        int i63 = i25;
                        int i64 = i63;
                        double d64 = 0.0d;
                        while (i63 < dimension) {
                            d64 += bOBYQAOptimizer2.trialStepPoint.getEntry(i63) * bOBYQAOptimizer2.gradientAtTrustRegionCenter.getEntry(i63);
                            for (int i65 = i25; i65 <= i63; i65++) {
                                double entry5 = bOBYQAOptimizer2.trialStepPoint.getEntry(i65) * bOBYQAOptimizer2.trialStepPoint.getEntry(i63);
                                if (i65 == i63) {
                                    entry5 *= 0.5d;
                                }
                                d64 += bOBYQAOptimizer2.modelSecondDerivativesValues.getEntry(i64) * entry5;
                                i64++;
                            }
                            i63++;
                        }
                        double d65 = d64;
                        for (int i66 = i25; i66 < i42; i66++) {
                            double entry6 = arrayRealVector11.getEntry(i66);
                            d65 += bOBYQAOptimizer2.modelSecondDerivativesParameters.getEntry(i66) * 0.5d * entry6 * entry6;
                        }
                        ArrayRealVector arrayRealVector21 = arrayRealVector11;
                        double d66 = d63 - entry4;
                        double d67 = d66 - d65;
                        double abs = FastMath.abs(d67);
                        double d68 = d52;
                        if (d68 > d29) {
                            i50 = getEvaluations();
                        }
                        if (i35 > 0) {
                            d32 = 0.0d;
                            if (d65 >= 0.0d) {
                                throw new MathIllegalStateException(LocalizedFormats.TRUST_REGION_STEP_FAILED, Double.valueOf(d65));
                            }
                            double d69 = d66 / d65;
                            double d70 = d28 * 0.5d;
                            if (d69 <= ONE_OVER_TEN) {
                                max = FastMath.min(d70, d68);
                            } else if (d69 <= 0.7d) {
                                max = FastMath.max(d70, d68);
                            } else {
                                d54 = d69;
                                max = FastMath.max(d70, d68 * TWO);
                                if (max <= d29 * 1.5d) {
                                    max = d29;
                                }
                                if (d63 >= entry4) {
                                    double d71 = max * max;
                                    d31 = d68;
                                    double d72 = 0.0d;
                                    int i67 = i25;
                                    int i68 = i67;
                                    double d73 = d53;
                                    double d74 = d55;
                                    double d75 = 0.0d;
                                    while (i67 < i42) {
                                        double d76 = max;
                                        double d77 = 0.0d;
                                        for (int i69 = i25; i69 < i44; i69++) {
                                            double entry7 = bOBYQAOptimizer2.zMatrix.getEntry(i67, i69);
                                            d77 += entry7 * entry7;
                                        }
                                        double entry8 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i67);
                                        double d78 = (d77 * d46) + (entry8 * entry8);
                                        int i70 = i68;
                                        double d79 = 0.0d;
                                        int i71 = i25;
                                        while (i71 < dimension) {
                                            double entry9 = bOBYQAOptimizer2.interpolationPoints.getEntry(i67, i71) - bOBYQAOptimizer2.newPoint.getEntry(i71);
                                            d79 += entry9 * entry9;
                                            i71++;
                                            arrayRealVector21 = arrayRealVector21;
                                        }
                                        ArrayRealVector arrayRealVector22 = arrayRealVector21;
                                        double d80 = d79 / d71;
                                        double d81 = d71;
                                        double d82 = d80 * d80;
                                        double d83 = d79;
                                        double max2 = FastMath.max(1.0d, d82);
                                        double d84 = max2 * d78;
                                        if (d84 > d75) {
                                            i68 = i67;
                                            d75 = d84;
                                            d73 = d78;
                                        } else {
                                            i68 = i70;
                                        }
                                        double entry10 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i67);
                                        d72 = FastMath.max(d72, max2 * entry10 * entry10);
                                        i67++;
                                        arrayRealVector21 = arrayRealVector22;
                                        max = d76;
                                        d74 = d83;
                                        d71 = d81;
                                    }
                                    d33 = max;
                                    int i72 = i68;
                                    arrayRealVector12 = arrayRealVector21;
                                    if (d75 <= d72 * 0.5d) {
                                        i38 = i47;
                                        d55 = d74;
                                    } else {
                                        i38 = i72;
                                        d55 = d74;
                                        d53 = d73;
                                    }
                                } else {
                                    d31 = d68;
                                    d33 = max;
                                    arrayRealVector12 = arrayRealVector21;
                                    i38 = i47;
                                }
                            }
                            d54 = d69;
                            if (max <= d29 * 1.5d) {
                            }
                            if (d63 >= entry4) {
                            }
                        } else {
                            d31 = d68;
                            arrayRealVector12 = arrayRealVector21;
                            d32 = 0.0d;
                            i38 = i47;
                            d33 = d28;
                        }
                        d27 = d31;
                        i31 = i35;
                        double d85 = d29;
                        update(d46, d53, i38);
                        double entry11 = bOBYQAOptimizer2.modelSecondDerivativesParameters.getEntry(i38);
                        bOBYQAOptimizer2.modelSecondDerivativesParameters.setEntry(i38, d32);
                        int i73 = i25;
                        int i74 = i73;
                        while (i73 < dimension) {
                            double entry12 = bOBYQAOptimizer2.interpolationPoints.getEntry(i38, i73) * entry11;
                            int i75 = i25;
                            while (i75 <= i73) {
                                ArrayRealVector arrayRealVector23 = bOBYQAOptimizer2.modelSecondDerivativesValues;
                                arrayRealVector23.setEntry(i74, arrayRealVector23.getEntry(i74) + (bOBYQAOptimizer2.interpolationPoints.getEntry(i38, i75) * entry12));
                                i74++;
                                i75++;
                                entry11 = entry11;
                            }
                            i73++;
                        }
                        for (int i76 = i25; i76 < i44; i76++) {
                            double entry13 = bOBYQAOptimizer2.zMatrix.getEntry(i38, i76) * d67;
                            for (int i77 = i25; i77 < i42; i77++) {
                                ArrayRealVector arrayRealVector24 = bOBYQAOptimizer2.modelSecondDerivativesParameters;
                                arrayRealVector24.setEntry(i77, arrayRealVector24.getEntry(i77) + (bOBYQAOptimizer2.zMatrix.getEntry(i77, i76) * entry13));
                            }
                        }
                        bOBYQAOptimizer2.fAtInterpolationPoints.setEntry(i38, d63);
                        for (int i78 = i25; i78 < dimension; i78++) {
                            bOBYQAOptimizer2.interpolationPoints.setEntry(i38, i78, bOBYQAOptimizer2.newPoint.getEntry(i78));
                            arrayRealVector7.setEntry(i78, bOBYQAOptimizer2.bMatrix.getEntry(i38, i78));
                        }
                        ArrayRealVector arrayRealVector25 = arrayRealVector7;
                        for (int i79 = i25; i79 < i42; i79++) {
                            double d86 = 0.0d;
                            for (int i80 = i25; i80 < i44; i80++) {
                                d86 += bOBYQAOptimizer2.zMatrix.getEntry(i38, i80) * bOBYQAOptimizer2.zMatrix.getEntry(i79, i80);
                            }
                            double d87 = 0.0d;
                            for (int i81 = i25; i81 < dimension; i81++) {
                                d87 += bOBYQAOptimizer2.interpolationPoints.getEntry(i79, i81) * bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i81);
                            }
                            double d88 = d86 * d87;
                            for (int i82 = i25; i82 < dimension; i82++) {
                                arrayRealVector25.setEntry(i82, arrayRealVector25.getEntry(i82) + (bOBYQAOptimizer2.interpolationPoints.getEntry(i79, i82) * d88));
                            }
                        }
                        for (int i83 = i25; i83 < dimension; i83++) {
                            ArrayRealVector arrayRealVector26 = bOBYQAOptimizer2.gradientAtTrustRegionCenter;
                            arrayRealVector26.setEntry(i83, arrayRealVector26.getEntry(i83) + (arrayRealVector25.getEntry(i83) * d67));
                        }
                        if (d63 < entry4) {
                            bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex = i38;
                            int i84 = i25;
                            int i85 = i84;
                            double d89 = 0.0d;
                            while (i84 < dimension) {
                                int i86 = i38;
                                bOBYQAOptimizer2.trustRegionCenterOffset.setEntry(i84, bOBYQAOptimizer2.newPoint.getEntry(i84));
                                double entry14 = bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i84);
                                d89 += entry14 * entry14;
                                int i87 = i25;
                                while (i87 <= i84) {
                                    if (i87 < i84) {
                                        ArrayRealVector arrayRealVector27 = bOBYQAOptimizer2.gradientAtTrustRegionCenter;
                                        d37 = d89;
                                        arrayRealVector27.setEntry(i84, arrayRealVector27.getEntry(i84) + (bOBYQAOptimizer2.modelSecondDerivativesValues.getEntry(i85) * bOBYQAOptimizer2.trialStepPoint.getEntry(i87)));
                                    } else {
                                        d37 = d89;
                                    }
                                    ArrayRealVector arrayRealVector28 = bOBYQAOptimizer2.gradientAtTrustRegionCenter;
                                    arrayRealVector28.setEntry(i87, arrayRealVector28.getEntry(i87) + (bOBYQAOptimizer2.modelSecondDerivativesValues.getEntry(i85) * bOBYQAOptimizer2.trialStepPoint.getEntry(i84)));
                                    i85++;
                                    i87++;
                                    d89 = d37;
                                }
                                i84++;
                                i38 = i86;
                            }
                            i39 = i38;
                            for (int i88 = i25; i88 < i42; i88++) {
                                double d90 = 0.0d;
                                for (int i89 = i25; i89 < dimension; i89++) {
                                    d90 += bOBYQAOptimizer2.interpolationPoints.getEntry(i88, i89) * bOBYQAOptimizer2.trialStepPoint.getEntry(i89);
                                }
                                double entry15 = d90 * bOBYQAOptimizer2.modelSecondDerivativesParameters.getEntry(i88);
                                int i90 = i25;
                                while (i90 < dimension) {
                                    ArrayRealVector arrayRealVector29 = bOBYQAOptimizer2.gradientAtTrustRegionCenter;
                                    arrayRealVector29.setEntry(i90, arrayRealVector29.getEntry(i90) + (bOBYQAOptimizer2.interpolationPoints.getEntry(i88, i90) * entry15));
                                    i90++;
                                    d89 = d89;
                                }
                            }
                            d56 = d89;
                        } else {
                            i39 = i38;
                        }
                        if (i31 > 0) {
                            for (int i91 = i25; i91 < i42; i91++) {
                                bOBYQAOptimizer2.lagrangeValuesAtNewPoint.setEntry(i91, bOBYQAOptimizer2.fAtInterpolationPoints.getEntry(i91) - bOBYQAOptimizer2.fAtInterpolationPoints.getEntry(bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex));
                                arrayRealVector10.setEntry(i91, 0.0d);
                            }
                            arrayRealVector17 = arrayRealVector10;
                            for (int i92 = i25; i92 < i44; i92++) {
                                double d91 = 0.0d;
                                for (int i93 = i25; i93 < i42; i93++) {
                                    d91 += bOBYQAOptimizer2.zMatrix.getEntry(i93, i92) * bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i93);
                                }
                                for (int i94 = i25; i94 < i42; i94++) {
                                    arrayRealVector17.setEntry(i94, arrayRealVector17.getEntry(i94) + (bOBYQAOptimizer2.zMatrix.getEntry(i94, i92) * d91));
                                }
                            }
                            for (int i95 = i25; i95 < i42; i95++) {
                                double d92 = 0.0d;
                                for (int i96 = i25; i96 < dimension; i96++) {
                                    d92 += bOBYQAOptimizer2.interpolationPoints.getEntry(i95, i96) * bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i96);
                                }
                                arrayRealVector12.setEntry(i95, arrayRealVector17.getEntry(i95));
                                arrayRealVector17.setEntry(i95, d92 * arrayRealVector17.getEntry(i95));
                            }
                            ArrayRealVector arrayRealVector30 = arrayRealVector12;
                            int i97 = i25;
                            double d93 = 0.0d;
                            double d94 = 0.0d;
                            while (i97 < dimension) {
                                int i98 = i39;
                                ArrayRealVector arrayRealVector31 = arrayRealVector25;
                                int i99 = i25;
                                double d95 = 0.0d;
                                while (i99 < i42) {
                                    d95 += (bOBYQAOptimizer2.bMatrix.getEntry(i99, i97) * bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i99)) + (bOBYQAOptimizer2.interpolationPoints.getEntry(i99, i97) * arrayRealVector17.getEntry(i99));
                                    i99++;
                                    i44 = i44;
                                }
                                int i100 = i44;
                                if (bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i97) == bOBYQAOptimizer2.lowerDifference.getEntry(i97)) {
                                    d35 = d63;
                                    arrayRealVector14 = arrayRealVector30;
                                    double min = FastMath.min(0.0d, bOBYQAOptimizer2.gradientAtTrustRegionCenter.getEntry(i97));
                                    d94 += min * min;
                                    double min2 = FastMath.min(0.0d, d95);
                                    d93 += min2 * min2;
                                } else {
                                    arrayRealVector14 = arrayRealVector30;
                                    d35 = d63;
                                    if (bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i97) == bOBYQAOptimizer2.upperDifference.getEntry(i97)) {
                                        double max3 = FastMath.max(0.0d, bOBYQAOptimizer2.gradientAtTrustRegionCenter.getEntry(i97));
                                        d94 += max3 * max3;
                                        double max4 = FastMath.max(0.0d, d95);
                                        d36 = max4 * max4;
                                    } else {
                                        double entry16 = bOBYQAOptimizer2.gradientAtTrustRegionCenter.getEntry(i97);
                                        d94 += entry16 * entry16;
                                        d36 = d95 * d95;
                                    }
                                    d93 += d36;
                                }
                                bOBYQAOptimizer2.lagrangeValuesAtNewPoint.setEntry(i42 + i97, d95);
                                i97++;
                                i39 = i98;
                                i44 = i100;
                                arrayRealVector25 = arrayRealVector31;
                                d63 = d35;
                                arrayRealVector30 = arrayRealVector14;
                            }
                            ArrayRealVector arrayRealVector32 = arrayRealVector30;
                            i40 = i39;
                            arrayRealVector8 = arrayRealVector25;
                            i28 = i44;
                            d34 = d63;
                            int i101 = d94 < d93 * 10.0d ? i25 : i49 + 1;
                            i27 = i24;
                            if (i101 >= 3) {
                                int max5 = FastMath.max(i42, i27);
                                int i102 = i25;
                                while (i102 < max5) {
                                    if (i102 < dimension) {
                                        bOBYQAOptimizer2.gradientAtTrustRegionCenter.setEntry(i102, bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i42 + i102));
                                    }
                                    if (i102 < i42) {
                                        arrayRealVector13 = arrayRealVector32;
                                        bOBYQAOptimizer2.modelSecondDerivativesParameters.setEntry(i102, arrayRealVector13.getEntry(i102));
                                    } else {
                                        arrayRealVector13 = arrayRealVector32;
                                    }
                                    if (i102 < i27) {
                                        bOBYQAOptimizer2.modelSecondDerivativesValues.setEntry(i102, 0.0d);
                                    }
                                    i102++;
                                    arrayRealVector32 = arrayRealVector13;
                                    i101 = i25;
                                }
                            }
                            arrayRealVector9 = arrayRealVector32;
                            i49 = i101;
                        } else {
                            i40 = i39;
                            arrayRealVector8 = arrayRealVector25;
                            i28 = i44;
                            d34 = d63;
                            i27 = i24;
                            arrayRealVector9 = arrayRealVector12;
                            arrayRealVector17 = arrayRealVector10;
                        }
                        if (i31 != 0 && d34 > entry4 + (d65 * ONE_OVER_TEN)) {
                            double d96 = TWO * d33;
                            d23 = d85;
                            double d97 = d23 * 10.0d;
                            d55 = FastMath.max(d96 * d96, d97 * d97);
                            d51 = d50;
                            d57 = d30;
                            d48 = d34;
                            d25 = d33;
                            i32 = 650;
                            d50 = d49;
                            d49 = abs;
                            printState(i32);
                            i34 = -1;
                            while (i33 < i42) {
                            }
                            if (i34 < 0) {
                            }
                            BOBYQAOptimizer bOBYQAOptimizer4 = bOBYQAOptimizer2;
                            i45 = i27;
                            bOBYQAOptimizer3 = bOBYQAOptimizer4;
                        } else {
                            arrayRealVector16 = arrayRealVector9;
                            i48 = i31;
                            d51 = d50;
                            i47 = i40;
                            d57 = d30;
                            i44 = i28;
                            d47 = d22;
                            arrayRealVector15 = arrayRealVector8;
                            d48 = d34;
                            d43 = d33;
                            d52 = d27;
                            d41 = d85;
                            c15 = '<';
                            d50 = d49;
                            d49 = abs;
                            BOBYQAOptimizer bOBYQAOptimizer42 = bOBYQAOptimizer2;
                            i45 = i27;
                            bOBYQAOptimizer3 = bOBYQAOptimizer42;
                        }
                    }
                } else if (c15 == '\u028a') {
                    i25 = 0;
                    d25 = d43;
                    i32 = 650;
                    i28 = i44;
                    i27 = i45;
                    arrayRealVector8 = arrayRealVector15;
                    arrayRealVector9 = arrayRealVector16;
                    d22 = d47;
                    i31 = i48;
                    d27 = d52;
                    d57 = d58;
                    bOBYQAOptimizer2 = this;
                    d23 = d41;
                    printState(i32);
                    i34 = -1;
                    for (i33 = i25; i33 < i42; i33++) {
                        double d98 = 0.0d;
                        for (int i103 = i25; i103 < dimension; i103++) {
                            double entry17 = bOBYQAOptimizer2.interpolationPoints.getEntry(i33, i103) - bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i103);
                            d98 += entry17 * entry17;
                        }
                        if (d98 > d55) {
                            i34 = i33;
                            d55 = d98;
                        }
                    }
                    if (i34 < 0) {
                        double sqrt = FastMath.sqrt(d55);
                        if (i31 == -1) {
                            d25 = FastMath.min(d25 * ONE_OVER_TEN, sqrt * 0.5d);
                            if (d25 <= d23 * 1.5d) {
                                d25 = d23;
                            }
                        }
                        double max6 = FastMath.max(FastMath.min(sqrt * ONE_OVER_TEN, d25), d23);
                        d47 = max6;
                        i47 = i34;
                        d57 = max6 * max6;
                        d41 = d23;
                        i48 = i25;
                        i44 = i28;
                        arrayRealVector15 = arrayRealVector8;
                        d52 = d27;
                        arrayRealVector16 = arrayRealVector9;
                        d43 = d25;
                        c15 = 'Z';
                    } else {
                        i30 = i31;
                        if (i30 == -1) {
                            i47 = i34;
                            i48 = i30;
                            d41 = d23;
                            i44 = i28;
                            d47 = d22;
                            arrayRealVector15 = arrayRealVector8;
                            d52 = d27;
                            arrayRealVector16 = arrayRealVector9;
                            d43 = d25;
                            c15 = '\u02a8';
                        } else {
                            if (d54 > 0.0d) {
                                i47 = i34;
                                i48 = i30;
                                d41 = d23;
                                i44 = i28;
                                d47 = d22;
                                arrayRealVector15 = arrayRealVector8;
                                d52 = d27;
                            } else {
                                d24 = d27;
                                if (FastMath.max(d25, d24) > d23) {
                                    i47 = i34;
                                    d52 = d24;
                                    i48 = i30;
                                    d41 = d23;
                                    i44 = i28;
                                    d47 = d22;
                                    arrayRealVector15 = arrayRealVector8;
                                } else {
                                    i47 = i34;
                                    i29 = 680;
                                    printState(i29);
                                    double d99 = d57;
                                    d26 = bOBYQAOptimizer2.stoppingTrustRegionRadius;
                                    if (d23 > d26) {
                                    }
                                }
                            }
                            arrayRealVector16 = arrayRealVector9;
                            d43 = d25;
                            c15 = '<';
                        }
                    }
                    BOBYQAOptimizer bOBYQAOptimizer422 = bOBYQAOptimizer2;
                    i45 = i27;
                    bOBYQAOptimizer3 = bOBYQAOptimizer422;
                } else if (c15 == '\u02a8') {
                    d25 = d43;
                    i28 = i44;
                    arrayRealVector8 = arrayRealVector15;
                    arrayRealVector9 = arrayRealVector16;
                    d22 = d47;
                    i30 = i48;
                    d57 = d58;
                    i25 = 0;
                    d23 = d41;
                    i29 = 680;
                    i27 = i45;
                    d24 = d52;
                    bOBYQAOptimizer2 = this;
                    printState(i29);
                    double d992 = d57;
                    d26 = bOBYQAOptimizer2.stoppingTrustRegionRadius;
                    if (d23 > d26) {
                        if (i30 != -1) {
                            i22 = 720;
                            break;
                        }
                        i48 = i30;
                        d57 = d992;
                        i44 = i28;
                        d47 = d22;
                        d52 = d24;
                        d41 = d23;
                        arrayRealVector15 = arrayRealVector8;
                        arrayRealVector16 = arrayRealVector9;
                        d43 = d25;
                        c15 = '\u0168';
                        BOBYQAOptimizer bOBYQAOptimizer4222 = bOBYQAOptimizer2;
                        i45 = i27;
                        bOBYQAOptimizer3 = bOBYQAOptimizer4222;
                    } else {
                        double d100 = d23 * 0.5d;
                        d54 = d23 / d26;
                        if (d54 > SIXTEEN) {
                            d26 = d54 <= TWO_HUNDRED_FIFTY ? FastMath.sqrt(d54) * bOBYQAOptimizer2.stoppingTrustRegionRadius : d23 * ONE_OVER_TEN;
                        }
                        double max7 = FastMath.max(d100, d26);
                        i50 = getEvaluations();
                        arrayRealVector16 = arrayRealVector9;
                        i48 = i25;
                        i44 = i28;
                        d47 = d22;
                        arrayRealVector15 = arrayRealVector8;
                        d43 = max7;
                        c15 = '<';
                        BOBYQAOptimizer bOBYQAOptimizer5 = bOBYQAOptimizer2;
                        i45 = i27;
                        bOBYQAOptimizer3 = bOBYQAOptimizer5;
                        double d101 = d26;
                        d57 = d992;
                        d52 = d24;
                        d41 = d101;
                    }
                } else {
                    if (c15 != '\u02d0') {
                        throw new MathIllegalStateException(LocalizedFormats.SIMPLE_MESSAGE, "bobyqb");
                    }
                    i25 = 0;
                    bOBYQAOptimizer2 = this;
                }
                printState(i26);
                int i104 = i25;
                while (i104 < i42) {
                    double d102 = d41;
                    double d103 = 0.0d;
                    double d104 = 0.0d;
                    double d105 = 0.0d;
                    for (int i105 = i25; i105 < dimension; i105++) {
                        d104 += bOBYQAOptimizer2.interpolationPoints.getEntry(i104, i105) * bOBYQAOptimizer2.trialStepPoint.getEntry(i105);
                        d105 += bOBYQAOptimizer2.interpolationPoints.getEntry(i104, i105) * bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i105);
                        d103 += bOBYQAOptimizer2.bMatrix.getEntry(i104, i105) * bOBYQAOptimizer2.trialStepPoint.getEntry(i105);
                    }
                    arrayRealVector17.setEntry(i104, d104 * ((d104 * 0.5d) + d105));
                    bOBYQAOptimizer2.lagrangeValuesAtNewPoint.setEntry(i104, d103);
                    arrayRealVector16.setEntry(i104, d104);
                    i104++;
                    d41 = d102;
                    d43 = d43;
                }
                d28 = d43;
                d29 = d41;
                double d106 = 0.0d;
                for (int i106 = i25; i106 < i44; i106++) {
                    double d107 = 0.0d;
                    for (int i107 = i25; i107 < i42; i107++) {
                        d107 += bOBYQAOptimizer2.zMatrix.getEntry(i107, i106) * arrayRealVector17.getEntry(i107);
                    }
                    d106 -= d107 * d107;
                    int i108 = i25;
                    while (i108 < i42) {
                        ArrayRealVector arrayRealVector33 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint;
                        arrayRealVector33.setEntry(i108, arrayRealVector33.getEntry(i108) + (bOBYQAOptimizer2.zMatrix.getEntry(i108, i106) * d107));
                        i108++;
                        d106 = d106;
                    }
                }
                int i109 = i25;
                double d108 = 0.0d;
                double d109 = 0.0d;
                double d110 = 0.0d;
                while (i109 < dimension) {
                    ArrayRealVector arrayRealVector34 = arrayRealVector16;
                    double entry18 = bOBYQAOptimizer2.trialStepPoint.getEntry(i109);
                    double d111 = d108 + (entry18 * entry18);
                    int i110 = i25;
                    double d112 = 0.0d;
                    while (i110 < i42) {
                        d112 += arrayRealVector17.getEntry(i110) * bOBYQAOptimizer2.bMatrix.getEntry(i110, i109);
                        i110++;
                        d111 = d111;
                    }
                    double d113 = d111;
                    double entry19 = d110 + (bOBYQAOptimizer2.trialStepPoint.getEntry(i109) * d112);
                    int i111 = i42 + i109;
                    ArrayRealVector arrayRealVector35 = arrayRealVector17;
                    int i112 = i25;
                    double d114 = d112;
                    while (i112 < dimension) {
                        d114 += bOBYQAOptimizer2.bMatrix.getEntry(i111, i112) * bOBYQAOptimizer2.trialStepPoint.getEntry(i112);
                        i112++;
                        i44 = i44;
                    }
                    bOBYQAOptimizer2.lagrangeValuesAtNewPoint.setEntry(i111, d114);
                    d110 = entry19 + (d114 * bOBYQAOptimizer2.trialStepPoint.getEntry(i109));
                    d109 += bOBYQAOptimizer2.trialStepPoint.getEntry(i109) * bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i109);
                    i109++;
                    arrayRealVector16 = arrayRealVector34;
                    d108 = d113;
                    arrayRealVector17 = arrayRealVector35;
                    i44 = i44;
                }
                int i113 = i44;
                arrayRealVector11 = arrayRealVector16;
                arrayRealVector10 = arrayRealVector17;
                d46 = (((d109 * d109) + ((((d56 + d109) + d109) + (d108 * 0.5d)) * d108)) + d106) - d110;
                ArrayRealVector arrayRealVector36 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint;
                int i114 = bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex;
                arrayRealVector36.setEntry(i114, arrayRealVector36.getEntry(i114) + 1.0d);
                i35 = i48;
                if (i35 == 0) {
                    double entry20 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i23);
                    d53 = (entry20 * entry20) + (d45 * d46);
                    if (d53 >= d44 || d44 <= 0.0d) {
                        i47 = i23;
                        d30 = d108;
                        i44 = i113;
                    } else {
                        for (int i115 = i25; i115 < dimension; i115++) {
                            bOBYQAOptimizer2.newPoint.setEntry(i115, bOBYQAOptimizer2.alternativeNewPoint.getEntry(i115));
                            bOBYQAOptimizer2.trialStepPoint.setEntry(i115, bOBYQAOptimizer2.newPoint.getEntry(i115) - bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i115));
                        }
                        i47 = i23;
                        d57 = d108;
                        i48 = i35;
                        bOBYQAOptimizer3 = bOBYQAOptimizer2;
                        i45 = i24;
                        d47 = d22;
                        arrayRealVector15 = arrayRealVector7;
                        d41 = d29;
                        d43 = d28;
                        arrayRealVector16 = arrayRealVector11;
                        arrayRealVector17 = arrayRealVector10;
                        i44 = i113;
                        c15 = '\u00e6';
                        d44 = 0.0d;
                    }
                } else {
                    double d115 = d28 * d28;
                    int i116 = i25;
                    int i117 = i116;
                    double d116 = 0.0d;
                    double d117 = 0.0d;
                    while (i116 < i42) {
                        if (i116 == bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex) {
                            d39 = d115;
                            d38 = d108;
                            i41 = i113;
                        } else {
                            int i118 = i25;
                            i41 = i113;
                            double d118 = 0.0d;
                            while (i118 < i41) {
                                double d119 = d108;
                                double entry21 = bOBYQAOptimizer2.zMatrix.getEntry(i116, i118);
                                d118 += entry21 * entry21;
                                i118++;
                                d108 = d119;
                            }
                            d38 = d108;
                            double entry22 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i116);
                            double d120 = (d118 * d46) + (entry22 * entry22);
                            int i119 = i25;
                            double d121 = 0.0d;
                            while (i119 < dimension) {
                                double entry23 = bOBYQAOptimizer2.interpolationPoints.getEntry(i116, i119) - bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i119);
                                d121 += entry23 * entry23;
                                i119++;
                                i117 = i117;
                            }
                            int i120 = i117;
                            double d122 = d121 / d115;
                            d39 = d115;
                            double d123 = d122 * d122;
                            d55 = d121;
                            double max8 = FastMath.max(1.0d, d123);
                            double d124 = max8 * d120;
                            if (d124 > d116) {
                                i117 = i116;
                                d116 = d124;
                                d53 = d120;
                            } else {
                                i117 = i120;
                            }
                            double entry24 = bOBYQAOptimizer2.lagrangeValuesAtNewPoint.getEntry(i116);
                            d117 = FastMath.max(d117, max8 * entry24 * entry24);
                        }
                        i116++;
                        i113 = i41;
                        d108 = d38;
                        d115 = d39;
                    }
                    d30 = d108;
                    i44 = i113;
                    i47 = i117;
                }
                i36 = DisplayMetrics.DENSITY_360;
                printState(i36);
                while (i37 < dimension) {
                }
                double computeObjectiveValue2 = bOBYQAOptimizer2.computeObjectiveValue(bOBYQAOptimizer2.currentBest.toArray());
                if (!bOBYQAOptimizer2.isMinimize) {
                }
                double d632 = computeObjectiveValue2;
                if (i35 != -1) {
                }
            } else {
                i10 = i44;
                ArrayRealVector arrayRealVector37 = arrayRealVector15;
                d11 = d47;
                d12 = d41;
                double d125 = d52;
                int i121 = i45;
                bOBYQAOptimizer = bOBYQAOptimizer3;
                i17 = 90;
                i13 = i47;
                i14 = i121;
                i19 = i42;
                arrayRealVector3 = arrayRealVector17;
                i18 = 0;
                d14 = d50;
                d13 = d51;
                arrayRealVector5 = arrayRealVector37;
                d17 = d43;
                c14 = '\u00d2';
                c13 = '\u00e6';
                arrayRealVector4 = arrayRealVector16;
                d15 = d49;
                d16 = d125;
                printState(i17);
                if (d58 > 0.001d * d56) {
                    double d126 = ONE_OVER_FOUR * d56;
                    int i122 = i18;
                    double d127 = 0.0d;
                    while (i122 < i19) {
                        double entry25 = d127 + bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i122);
                        double d128 = (-0.5d) * d56;
                        for (int i123 = i18; i123 < dimension; i123++) {
                            d128 += bOBYQAOptimizer.interpolationPoints.getEntry(i122, i123) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i123);
                        }
                        arrayRealVector4.setEntry(i122, d128);
                        double d129 = d126 - (d128 * 0.5d);
                        int i124 = i18;
                        while (i124 < dimension) {
                            double d130 = d17;
                            arrayRealVector5.setEntry(i124, bOBYQAOptimizer.bMatrix.getEntry(i122, i124));
                            double d131 = d128;
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i124, (bOBYQAOptimizer.interpolationPoints.getEntry(i122, i124) * d128) + (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i124) * d129));
                            int i125 = i19 + i124;
                            int i126 = i18;
                            while (i126 <= i124) {
                                Array2DRowRealMatrix array2DRowRealMatrix = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix.setEntry(i125, i126, array2DRowRealMatrix.getEntry(i125, i126) + (arrayRealVector5.getEntry(i124) * bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i126)) + (bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i124) * arrayRealVector5.getEntry(i126)));
                                i126++;
                                d12 = d12;
                            }
                            i124++;
                            d128 = d131;
                            d17 = d130;
                        }
                        i122++;
                        d127 = entry25;
                    }
                    d18 = d17;
                    d19 = d12;
                    int i127 = i18;
                    int i128 = i10;
                    while (i127 < i128) {
                        int i129 = i18;
                        double d132 = 0.0d;
                        double d133 = 0.0d;
                        while (i129 < i19) {
                            d132 += bOBYQAOptimizer.zMatrix.getEntry(i129, i127);
                            bOBYQAOptimizer.lagrangeValuesAtNewPoint.setEntry(i129, arrayRealVector4.getEntry(i129) * bOBYQAOptimizer.zMatrix.getEntry(i129, i127));
                            d133 += bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i129);
                            i129++;
                            i128 = i128;
                        }
                        int i130 = i128;
                        int i131 = i18;
                        while (i131 < dimension) {
                            double entry26 = ((d126 * d132) - (d133 * 0.5d)) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i131);
                            int i132 = i18;
                            while (i132 < i19) {
                                entry26 += bOBYQAOptimizer.lagrangeValuesAtNewPoint.getEntry(i132) * bOBYQAOptimizer.interpolationPoints.getEntry(i132, i131);
                                i132++;
                                d126 = d126;
                                d132 = d132;
                            }
                            double d134 = d126;
                            double d135 = d132;
                            arrayRealVector5.setEntry(i131, entry26);
                            for (int i133 = i18; i133 < i19; i133++) {
                                Array2DRowRealMatrix array2DRowRealMatrix2 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix2.setEntry(i133, i131, array2DRowRealMatrix2.getEntry(i133, i131) + (bOBYQAOptimizer.zMatrix.getEntry(i133, i127) * entry26));
                            }
                            i131++;
                            d126 = d134;
                            d132 = d135;
                        }
                        double d136 = d126;
                        for (int i134 = i18; i134 < dimension; i134++) {
                            int i135 = i134 + i19;
                            double entry27 = arrayRealVector5.getEntry(i134);
                            for (int i136 = i18; i136 <= i134; i136++) {
                                Array2DRowRealMatrix array2DRowRealMatrix3 = bOBYQAOptimizer.bMatrix;
                                array2DRowRealMatrix3.setEntry(i135, i136, array2DRowRealMatrix3.getEntry(i135, i136) + (arrayRealVector5.getEntry(i136) * entry27));
                            }
                        }
                        i127++;
                        d126 = d136;
                        i128 = i130;
                    }
                    i20 = i128;
                    int i137 = i18;
                    for (int i138 = i137; i138 < dimension; i138++) {
                        arrayRealVector5.setEntry(i138, d127 * (-0.5d) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i138));
                        for (int i139 = i18; i139 < i19; i139++) {
                            arrayRealVector5.setEntry(i138, arrayRealVector5.getEntry(i138) + (bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i139) * bOBYQAOptimizer.interpolationPoints.getEntry(i139, i138)));
                            Array2DRowRealMatrix array2DRowRealMatrix4 = bOBYQAOptimizer.interpolationPoints;
                            array2DRowRealMatrix4.setEntry(i139, i138, array2DRowRealMatrix4.getEntry(i139, i138) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i138));
                        }
                        for (int i140 = i18; i140 <= i138; i140++) {
                            ArrayRealVector arrayRealVector38 = bOBYQAOptimizer.modelSecondDerivativesValues;
                            arrayRealVector38.setEntry(i137, arrayRealVector38.getEntry(i137) + (arrayRealVector5.getEntry(i140) * bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i138)) + (bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i140) * arrayRealVector5.getEntry(i138)));
                            Array2DRowRealMatrix array2DRowRealMatrix5 = bOBYQAOptimizer.bMatrix;
                            array2DRowRealMatrix5.setEntry(i19 + i140, i138, array2DRowRealMatrix5.getEntry(i19 + i138, i140));
                            i137++;
                        }
                    }
                    for (int i141 = i18; i141 < dimension; i141++) {
                        ArrayRealVector arrayRealVector39 = bOBYQAOptimizer.originShift;
                        arrayRealVector39.setEntry(i141, arrayRealVector39.getEntry(i141) + bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i141));
                        ArrayRealVector arrayRealVector40 = bOBYQAOptimizer.newPoint;
                        arrayRealVector40.setEntry(i141, arrayRealVector40.getEntry(i141) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i141));
                        ArrayRealVector arrayRealVector41 = bOBYQAOptimizer.lowerDifference;
                        arrayRealVector41.setEntry(i141, arrayRealVector41.getEntry(i141) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i141));
                        ArrayRealVector arrayRealVector42 = bOBYQAOptimizer.upperDifference;
                        arrayRealVector42.setEntry(i141, arrayRealVector42.getEntry(i141) - bOBYQAOptimizer.trustRegionCenterOffset.getEntry(i141));
                        bOBYQAOptimizer.trustRegionCenterOffset.setEntry(i141, 0.0d);
                    }
                    d56 = 0.0d;
                } else {
                    d18 = d17;
                    d19 = d12;
                    i20 = i10;
                }
                if (i48 != 0) {
                    arrayRealVector15 = arrayRealVector5;
                    i42 = i19;
                    bOBYQAOptimizer3 = bOBYQAOptimizer;
                    arrayRealVector16 = arrayRealVector4;
                    c15 = c14;
                    i47 = i13;
                    i45 = i14;
                } else {
                    arrayRealVector15 = arrayRealVector5;
                    i42 = i19;
                    bOBYQAOptimizer3 = bOBYQAOptimizer;
                    arrayRealVector16 = arrayRealVector4;
                    i47 = i13;
                    i45 = i14;
                    c15 = c13;
                }
                d57 = d58;
                d47 = d11;
                d43 = d18;
                arrayRealVector17 = arrayRealVector3;
                i44 = i20;
                d41 = d19;
                d52 = d16;
                d49 = d15;
                d50 = d14;
                d51 = d13;
            }
            printState(i15);
            int i142 = i42;
            int i143 = i11;
            d17 = d10;
            arrayRealVector3 = arrayRealVector17;
            arrayRealVector4 = arrayRealVector2;
            i18 = i12;
            c14 = c10;
            char c16 = c11;
            i17 = 90;
            c13 = '\u00e6';
            double[] trsbox = trsbox(d10, new ArrayRealVector(dimension), new ArrayRealVector(dimension), new ArrayRealVector(dimension), new ArrayRealVector(dimension), new ArrayRealVector(dimension));
            double d137 = trsbox[i18];
            double d138 = trsbox[1];
            double min3 = FastMath.min(d17, FastMath.sqrt(d137));
            if (min3 < d12 * 0.5d) {
                double d139 = d12 * 10.0d;
                d55 = d139 * d139;
                if (getEvaluations() <= i50 + 2) {
                    d57 = d137;
                    d43 = d17;
                    bOBYQAOptimizer3 = bOBYQAOptimizer;
                    i48 = -1;
                    c15 = '\u028a';
                    i47 = i13;
                    i42 = i142;
                    i45 = i14;
                    i44 = i10;
                    d47 = d11;
                    d52 = min3;
                    d41 = d12;
                    arrayRealVector16 = arrayRealVector4;
                    arrayRealVector15 = arrayRealVector;
                    arrayRealVector17 = arrayRealVector3;
                } else {
                    double d140 = d49;
                    double d141 = d50;
                    double max9 = FastMath.max(d140, d141);
                    double d142 = d51;
                    double max10 = FastMath.max(max9, d142);
                    double d143 = ONE_OVER_EIGHT * d12 * d12;
                    if (d138 <= 0.0d || max10 <= d143 * d138) {
                        double d144 = max10 / d12;
                        int i144 = i18;
                        while (true) {
                            if (i144 >= dimension) {
                                d20 = d140;
                                i21 = i142;
                                arrayRealVector6 = arrayRealVector;
                                break;
                            }
                            if (bOBYQAOptimizer.newPoint.getEntry(i144) == bOBYQAOptimizer.lowerDifference.getEntry(i144)) {
                                arrayRealVector6 = arrayRealVector;
                                d21 = arrayRealVector6.getEntry(i144);
                            } else {
                                arrayRealVector6 = arrayRealVector;
                                d21 = d144;
                            }
                            if (bOBYQAOptimizer.newPoint.getEntry(i144) == bOBYQAOptimizer.upperDifference.getEntry(i144)) {
                                d21 = -arrayRealVector6.getEntry(i144);
                            }
                            if (d21 < d144) {
                                d20 = d140;
                                double entry28 = bOBYQAOptimizer.modelSecondDerivativesValues.getEntry((i144 + (i144 * i144)) / 2);
                                i21 = i142;
                                for (int i145 = i18; i145 < i21; i145++) {
                                    double entry29 = bOBYQAOptimizer.interpolationPoints.getEntry(i145, i144);
                                    entry28 += bOBYQAOptimizer.modelSecondDerivativesParameters.getEntry(i145) * entry29 * entry29;
                                }
                                if (d21 + (entry28 * 0.5d * d12) < d144) {
                                    break;
                                }
                            } else {
                                d20 = d140;
                                i21 = i142;
                            }
                            i144++;
                            arrayRealVector = arrayRealVector6;
                            i142 = i21;
                            d140 = d20;
                        }
                        d43 = d17;
                        bOBYQAOptimizer3 = bOBYQAOptimizer;
                        d41 = d12;
                        arrayRealVector16 = arrayRealVector4;
                        i47 = i13;
                        c15 = c16;
                        i45 = i14;
                        i44 = i10;
                        d47 = d11;
                        arrayRealVector17 = arrayRealVector3;
                        arrayRealVector15 = arrayRealVector6;
                        i42 = i21;
                        d57 = d137;
                        d52 = min3;
                        d49 = d20;
                        d50 = d141;
                        d51 = d142;
                        i48 = -1;
                    } else {
                        d43 = d17;
                        d41 = d12;
                        arrayRealVector16 = arrayRealVector4;
                        c15 = '\u028a';
                        d57 = d137;
                        i47 = i13;
                        i42 = i142;
                        d51 = d142;
                        i44 = i10;
                        d47 = d11;
                        arrayRealVector15 = arrayRealVector;
                        arrayRealVector17 = arrayRealVector3;
                        i48 = -1;
                        d52 = min3;
                        d50 = d141;
                        d49 = d140;
                        bOBYQAOptimizer3 = bOBYQAOptimizer;
                        i45 = i14;
                    }
                }
            } else {
                d14 = d50;
                d13 = d51;
                arrayRealVector5 = arrayRealVector;
                d15 = d49;
                d16 = min3;
                i19 = i142;
                d58 = d137;
                i48 = i143 + 1;
                printState(i17);
                if (d58 > 0.001d * d56) {
                }
                if (i48 != 0) {
                }
                d57 = d58;
                d47 = d11;
                d43 = d18;
                arrayRealVector17 = arrayRealVector3;
                i44 = i20;
                d41 = d19;
                d52 = d16;
                d49 = d15;
                d50 = d14;
                d51 = d13;
            }
        }
        printState(i22);
        if (bOBYQAOptimizer2.fAtInterpolationPoints.getEntry(bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex) > d42) {
            return d48;
        }
        for (int i146 = i25; i146 < dimension; i146++) {
            bOBYQAOptimizer2.currentBest.setEntry(i146, FastMath.min(FastMath.max(dArr[i146], bOBYQAOptimizer2.originShift.getEntry(i146) + bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i146)), dArr2[i146]));
            if (bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i146) == bOBYQAOptimizer2.lowerDifference.getEntry(i146)) {
                bOBYQAOptimizer2.currentBest.setEntry(i146, dArr[i146]);
            }
            if (bOBYQAOptimizer2.trustRegionCenterOffset.getEntry(i146) == bOBYQAOptimizer2.upperDifference.getEntry(i146)) {
                bOBYQAOptimizer2.currentBest.setEntry(i146, dArr2[i146]);
            }
        }
        return bOBYQAOptimizer2.fAtInterpolationPoints.getEntry(bOBYQAOptimizer2.trustRegionCenterInterpolationPointIndex);
    }

    public static String caller(int i10) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i10];
        return stackTraceElement.getMethodName() + " (at line " + stackTraceElement.getLineNumber() + ")";
    }

    private void prelim(double[] dArr, double[] dArr2) {
        double d10;
        int i10;
        int i11;
        double d11;
        double d12;
        double d13;
        int i12;
        long j10;
        double d14;
        int i13;
        char c10;
        int i14;
        double d15;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i15 = this.numberOfInterpolationPoints;
        int rowDimension = this.bMatrix.getRowDimension();
        double d16 = this.initialTrustRegionRadius;
        double d17 = d16 * d16;
        double d18 = 1.0d / d17;
        int i16 = dimension + 1;
        for (int i17 = 0; i17 < dimension; i17++) {
            this.originShift.setEntry(i17, this.currentBest.getEntry(i17));
            for (int i18 = 0; i18 < i15; i18++) {
                this.interpolationPoints.setEntry(i18, i17, 0.0d);
            }
            for (int i19 = 0; i19 < rowDimension; i19++) {
                this.bMatrix.setEntry(i19, i17, 0.0d);
            }
        }
        int i20 = (dimension * i16) / 2;
        for (int i21 = 0; i21 < i20; i21++) {
            this.modelSecondDerivativesValues.setEntry(i21, 0.0d);
        }
        for (int i22 = 0; i22 < i15; i22++) {
            this.modelSecondDerivativesParameters.setEntry(i22, 0.0d);
            int i23 = i15 - i16;
            for (int i24 = 0; i24 < i23; i24++) {
                this.zMatrix.setEntry(i22, i24, 0.0d);
            }
        }
        double d19 = Double.NaN;
        int i25 = 0;
        int i26 = 0;
        while (true) {
            int evaluations = getEvaluations();
            int i27 = evaluations - dimension;
            int i28 = evaluations - 1;
            int i29 = i27 - 1;
            int i30 = dimension * 2;
            if (evaluations <= i30) {
                if (evaluations < 1 || evaluations > dimension) {
                    int i31 = i25;
                    i10 = i27;
                    if (evaluations > dimension) {
                        double entry = this.interpolationPoints.getEntry(i10, i29);
                        int i32 = i26;
                        d10 = d18;
                        double d20 = -this.initialTrustRegionRadius;
                        if (this.lowerDifference.getEntry(i29) == 0.0d) {
                            i10 = i10;
                            d20 = FastMath.min(this.initialTrustRegionRadius * TWO, this.upperDifference.getEntry(i29));
                        } else {
                            i10 = i10;
                        }
                        if (this.upperDifference.getEntry(i29) == 0.0d) {
                            d20 = FastMath.max(this.initialTrustRegionRadius * (-2.0d), this.lowerDifference.getEntry(i29));
                        }
                        this.interpolationPoints.setEntry(evaluations, i29, d20);
                        d13 = entry;
                        double d21 = d20;
                        i26 = i32;
                        i11 = i31;
                        d11 = d17;
                        d12 = d21;
                    } else {
                        d10 = d18;
                        i11 = i31;
                        d13 = 0.0d;
                    }
                } else {
                    i10 = i27;
                    d13 = this.initialTrustRegionRadius;
                    int i33 = i25;
                    if (this.upperDifference.getEntry(i28) == 0.0d) {
                        d13 = -d13;
                    }
                    this.interpolationPoints.setEntry(evaluations, i28, d13);
                    d10 = d18;
                    i11 = i33;
                }
                d11 = d17;
                d12 = 0.0d;
            } else {
                d10 = d18;
                i10 = i27;
                int i34 = (evaluations - i16) / dimension;
                i26 = (evaluations - (i34 * dimension)) - dimension;
                i11 = i34 + i26;
                if (i11 > dimension) {
                    i26 = i11 - dimension;
                    i11 = i26;
                }
                int i35 = i11 - 1;
                int i36 = i26 - 1;
                Array2DRowRealMatrix array2DRowRealMatrix = this.interpolationPoints;
                d11 = d17;
                array2DRowRealMatrix.setEntry(evaluations, i35, array2DRowRealMatrix.getEntry(i11, i35));
                Array2DRowRealMatrix array2DRowRealMatrix2 = this.interpolationPoints;
                array2DRowRealMatrix2.setEntry(evaluations, i36, array2DRowRealMatrix2.getEntry(i26, i36));
                d12 = 0.0d;
                d13 = 0.0d;
            }
            int i37 = 0;
            while (i37 < dimension) {
                int i38 = i11;
                double d22 = d12;
                int i39 = dimension;
                int i40 = i15;
                this.currentBest.setEntry(i37, FastMath.min(FastMath.max(dArr[i37], this.originShift.getEntry(i37) + this.interpolationPoints.getEntry(evaluations, i37)), dArr2[i37]));
                if (this.interpolationPoints.getEntry(evaluations, i37) == this.lowerDifference.getEntry(i37)) {
                    this.currentBest.setEntry(i37, dArr[i37]);
                }
                if (this.interpolationPoints.getEntry(evaluations, i37) == this.upperDifference.getEntry(i37)) {
                    this.currentBest.setEntry(i37, dArr2[i37]);
                }
                i37++;
                dimension = i39;
                i11 = i38;
                d12 = d22;
                i15 = i40;
            }
            int i41 = i15;
            int i42 = i11;
            double d23 = d12;
            int i43 = dimension;
            double computeObjectiveValue = computeObjectiveValue(this.currentBest.toArray());
            if (!this.isMinimize) {
                computeObjectiveValue = -computeObjectiveValue;
            }
            int evaluations2 = getEvaluations();
            this.fAtInterpolationPoints.setEntry(evaluations, computeObjectiveValue);
            if (evaluations2 == 1) {
                this.trustRegionCenterInterpolationPointIndex = 0;
                d19 = computeObjectiveValue;
            } else if (computeObjectiveValue < this.fAtInterpolationPoints.getEntry(this.trustRegionCenterInterpolationPointIndex)) {
                this.trustRegionCenterInterpolationPointIndex = evaluations;
            }
            if (evaluations2 > i30 + 1) {
                i12 = i43;
                j10 = 0;
                d14 = d10;
                this.zMatrix.setEntry(0, i29, d14);
                this.zMatrix.setEntry(evaluations, i29, d14);
                double d24 = -d14;
                i13 = i42;
                this.zMatrix.setEntry(i13, i29, d24);
                this.zMatrix.setEntry(i26, i29, d24);
                int i44 = i13 - 1;
                c10 = 2;
                this.modelSecondDerivativesValues.setEntry((((i13 * i44) / 2) + i26) - 1, (((d19 - this.fAtInterpolationPoints.getEntry(i13)) - this.fAtInterpolationPoints.getEntry(i26)) + computeObjectiveValue) / (this.interpolationPoints.getEntry(evaluations, i44) * this.interpolationPoints.getEntry(evaluations, i26 - 1)));
            } else if (evaluations2 < 2 || evaluations2 > i16) {
                if (evaluations2 >= i43 + 2) {
                    double d25 = (computeObjectiveValue - d19) / d23;
                    double d26 = d23 - d13;
                    this.modelSecondDerivativesValues.setEntry((((i10 + 1) * i10) / 2) - 1, ((d25 - this.gradientAtTrustRegionCenter.getEntry(i29)) * TWO) / d26);
                    ArrayRealVector arrayRealVector = this.gradientAtTrustRegionCenter;
                    arrayRealVector.setEntry(i29, ((arrayRealVector.getEntry(i29) * d23) - (d25 * d13)) / d26);
                    double d27 = d13 * d23;
                    j10 = 0;
                    if (d27 < 0.0d) {
                        i14 = i10;
                        if (computeObjectiveValue < this.fAtInterpolationPoints.getEntry(i14)) {
                            ArrayRealVector arrayRealVector2 = this.fAtInterpolationPoints;
                            i41 = i41;
                            i12 = i43;
                            arrayRealVector2.setEntry(evaluations, arrayRealVector2.getEntry(i14));
                            this.fAtInterpolationPoints.setEntry(i14, computeObjectiveValue);
                            if (this.trustRegionCenterInterpolationPointIndex == evaluations) {
                                this.trustRegionCenterInterpolationPointIndex = i14;
                            }
                            d15 = d23;
                            this.interpolationPoints.setEntry(i14, i29, d15);
                            this.interpolationPoints.setEntry(evaluations, i29, d13);
                            this.bMatrix.setEntry(0, i29, (-(d13 + d15)) / d27);
                            this.bMatrix.setEntry(evaluations, i29, (-0.5d) / this.interpolationPoints.getEntry(i14, i29));
                            Array2DRowRealMatrix array2DRowRealMatrix3 = this.bMatrix;
                            array2DRowRealMatrix3.setEntry(i14, i29, (-array2DRowRealMatrix3.getEntry(0, i29)) - this.bMatrix.getEntry(evaluations, i29));
                            this.zMatrix.setEntry(0, i29, FastMath.sqrt(TWO) / d27);
                            this.zMatrix.setEntry(evaluations, i29, FastMath.sqrt(0.5d) / d11);
                            Array2DRowRealMatrix array2DRowRealMatrix4 = this.zMatrix;
                            array2DRowRealMatrix4.setEntry(i14, i29, (-array2DRowRealMatrix4.getEntry(0, i29)) - this.zMatrix.getEntry(evaluations, i29));
                        } else {
                            i41 = i41;
                            i12 = i43;
                        }
                    } else {
                        i41 = i41;
                        i12 = i43;
                        i14 = i10;
                    }
                    d15 = d23;
                    this.bMatrix.setEntry(0, i29, (-(d13 + d15)) / d27);
                    this.bMatrix.setEntry(evaluations, i29, (-0.5d) / this.interpolationPoints.getEntry(i14, i29));
                    Array2DRowRealMatrix array2DRowRealMatrix32 = this.bMatrix;
                    array2DRowRealMatrix32.setEntry(i14, i29, (-array2DRowRealMatrix32.getEntry(0, i29)) - this.bMatrix.getEntry(evaluations, i29));
                    this.zMatrix.setEntry(0, i29, FastMath.sqrt(TWO) / d27);
                    this.zMatrix.setEntry(evaluations, i29, FastMath.sqrt(0.5d) / d11);
                    Array2DRowRealMatrix array2DRowRealMatrix42 = this.zMatrix;
                    array2DRowRealMatrix42.setEntry(i14, i29, (-array2DRowRealMatrix42.getEntry(0, i29)) - this.zMatrix.getEntry(evaluations, i29));
                } else {
                    i41 = i41;
                    i12 = i43;
                    j10 = 0;
                }
                i13 = i42;
                d14 = d10;
                c10 = 2;
            } else {
                this.gradientAtTrustRegionCenter.setEntry(i28, (computeObjectiveValue - d19) / d13);
                if (i41 < evaluations2 + i43) {
                    double d28 = 1.0d / d13;
                    this.bMatrix.setEntry(0, i28, -d28);
                    this.bMatrix.setEntry(evaluations, i28, d28);
                    this.bMatrix.setEntry(i41 + i28, i28, (-0.5d) * d11);
                }
                i41 = i41;
                i12 = i43;
                i13 = i42;
                d14 = d10;
                c10 = 2;
                j10 = 0;
            }
            i15 = i41;
            if (getEvaluations() >= i15) {
                return;
            }
            dimension = i12;
            i25 = i13;
            d18 = d14;
            d17 = d11;
        }
    }

    private static void printMethod() {
    }

    private static void printState(int i10) {
    }

    private void setup(double[] dArr, double[] dArr2) {
        printMethod();
        int length = getStartPoint().length;
        if (length < 2) {
            throw new NumberIsTooSmallException(Integer.valueOf(length), 2, true);
        }
        int i10 = length + 2;
        int i11 = length + 1;
        int[] iArr = {i10, (i10 * i11) / 2};
        int i12 = this.numberOfInterpolationPoints;
        if (i12 < iArr[0] || i12 > iArr[1]) {
            throw new OutOfRangeException(LocalizedFormats.NUMBER_OF_INTERPOLATION_POINTS, Integer.valueOf(this.numberOfInterpolationPoints), Integer.valueOf(iArr[0]), Integer.valueOf(iArr[1]));
        }
        this.boundDifference = new double[length];
        double d10 = this.initialTrustRegionRadius * TWO;
        double d11 = Double.POSITIVE_INFINITY;
        for (int i13 = 0; i13 < length; i13++) {
            double[] dArr3 = this.boundDifference;
            double d12 = dArr2[i13] - dArr[i13];
            dArr3[i13] = d12;
            d11 = FastMath.min(d11, d12);
        }
        if (d11 < d10) {
            this.initialTrustRegionRadius = d11 / 3.0d;
        }
        this.bMatrix = new Array2DRowRealMatrix(this.numberOfInterpolationPoints + length, length);
        int i14 = this.numberOfInterpolationPoints;
        this.zMatrix = new Array2DRowRealMatrix(i14, (i14 - length) - 1);
        this.interpolationPoints = new Array2DRowRealMatrix(this.numberOfInterpolationPoints, length);
        this.originShift = new ArrayRealVector(length);
        this.fAtInterpolationPoints = new ArrayRealVector(this.numberOfInterpolationPoints);
        this.trustRegionCenterOffset = new ArrayRealVector(length);
        this.gradientAtTrustRegionCenter = new ArrayRealVector(length);
        this.lowerDifference = new ArrayRealVector(length);
        this.upperDifference = new ArrayRealVector(length);
        this.modelSecondDerivativesParameters = new ArrayRealVector(this.numberOfInterpolationPoints);
        this.newPoint = new ArrayRealVector(length);
        this.alternativeNewPoint = new ArrayRealVector(length);
        this.trialStepPoint = new ArrayRealVector(length);
        this.lagrangeValuesAtNewPoint = new ArrayRealVector(this.numberOfInterpolationPoints + length);
        this.modelSecondDerivativesValues = new ArrayRealVector((length * i11) / 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x07dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x07d0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private double[] trsbox(double d10, ArrayRealVector arrayRealVector, ArrayRealVector arrayRealVector2, ArrayRealVector arrayRealVector3, ArrayRealVector arrayRealVector4, ArrayRealVector arrayRealVector5) {
        ArrayRealVector arrayRealVector6;
        int i10;
        double d11;
        int i11;
        double d12;
        int i12;
        double d13;
        int i13;
        int i14;
        ArrayRealVector arrayRealVector7;
        int i15;
        int i16;
        ArrayRealVector arrayRealVector8;
        double d14;
        int i17;
        ArrayRealVector arrayRealVector9;
        int i18;
        int i19;
        int i20;
        double d15;
        ArrayRealVector arrayRealVector10;
        double d16;
        double d17;
        int i21;
        int i22;
        int i23;
        double d18;
        double entry;
        double entry2;
        int i24;
        ArrayRealVector arrayRealVector11;
        int i25;
        int i26;
        double d19;
        int i27;
        double d20;
        int i28;
        int i29;
        int i30;
        int i31;
        ArrayRealVector arrayRealVector12 = arrayRealVector2;
        ArrayRealVector arrayRealVector13 = arrayRealVector3;
        ArrayRealVector arrayRealVector14 = arrayRealVector4;
        ArrayRealVector arrayRealVector15 = arrayRealVector5;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i32 = this.numberOfInterpolationPoints;
        int i33 = 0;
        for (int i34 = 0; i34 < dimension; i34++) {
            arrayRealVector12.setEntry(i34, 0.0d);
            if (this.trustRegionCenterOffset.getEntry(i34) <= this.lowerDifference.getEntry(i34)) {
                if (this.gradientAtTrustRegionCenter.getEntry(i34) >= 0.0d) {
                    arrayRealVector12.setEntry(i34, MINUS_ONE);
                }
            } else if (this.trustRegionCenterOffset.getEntry(i34) >= this.upperDifference.getEntry(i34) && this.gradientAtTrustRegionCenter.getEntry(i34) <= 0.0d) {
                arrayRealVector12.setEntry(i34, 1.0d);
            }
            if (arrayRealVector12.getEntry(i34) != 0.0d) {
                i33++;
            }
            this.trialStepPoint.setEntry(i34, 0.0d);
            arrayRealVector.setEntry(i34, this.gradientAtTrustRegionCenter.getEntry(i34));
        }
        double d21 = d10 * d10;
        int i35 = 20;
        int i36 = 20;
        double d22 = 0.0d;
        double d23 = 0.0d;
        double d24 = 0.0d;
        double d25 = 0.0d;
        double d26 = 0.0d;
        double d27 = 0.0d;
        double d28 = 0.0d;
        double d29 = 0.0d;
        double d30 = 0.0d;
        double d31 = 0.0d;
        double d32 = 0.0d;
        double d33 = 0.0d;
        double d34 = 0.0d;
        int i37 = 0;
        int i38 = 0;
        double d35 = MINUS_ONE;
        int i39 = -1;
        int i40 = 0;
        while (true) {
            if (i36 == i35) {
                arrayRealVector6 = arrayRealVector13;
                i10 = dimension;
                d11 = d21;
                i11 = i37;
                d12 = d35;
                i12 = i39;
                d13 = d33;
                i13 = i40;
                i14 = i32;
                int i41 = i35;
                arrayRealVector7 = arrayRealVector12;
                i15 = i41;
                printState(i15);
                i16 = 30;
                d28 = 0.0d;
            } else if (i36 != 30) {
                if (i36 == 50) {
                    ArrayRealVector arrayRealVector16 = arrayRealVector12;
                    d14 = d21;
                    i17 = i33;
                    int i42 = i37;
                    double d36 = d35;
                    arrayRealVector9 = arrayRealVector13;
                    i18 = dimension;
                    i19 = i32;
                    int i43 = i39;
                    double d37 = d33;
                    printState(50);
                    double d38 = d14;
                    double d39 = 0.0d;
                    double d40 = 0.0d;
                    for (int i44 = 0; i44 < i18; i44++) {
                        if (arrayRealVector16.getEntry(i44) == 0.0d) {
                            double entry3 = this.trialStepPoint.getEntry(i44);
                            d38 -= entry3 * entry3;
                            d39 += arrayRealVector9.getEntry(i44) * this.trialStepPoint.getEntry(i44);
                            d40 += arrayRealVector9.getEntry(i44) * arrayRealVector14.getEntry(i44);
                        }
                    }
                    double d41 = 0.0d;
                    if (d38 <= 0.0d) {
                        i39 = i43;
                        d33 = d37;
                        arrayRealVector12 = arrayRealVector16;
                        i32 = i19;
                        i33 = i17;
                        d21 = d14;
                        i37 = i42;
                        d35 = d36;
                        dimension = i18;
                        i36 = 90;
                        arrayRealVector13 = arrayRealVector9;
                        i35 = 20;
                    } else {
                        double sqrt = FastMath.sqrt((d26 * d38) + (d39 * d39));
                        double d42 = d39 < 0.0d ? (sqrt - d39) / d26 : d38 / (sqrt + d39);
                        double min = d40 > 0.0d ? FastMath.min(d42, d22 / d40) : d42;
                        i20 = -1;
                        int i45 = 0;
                        while (i45 < i18) {
                            if (arrayRealVector9.getEntry(i45) != d41) {
                                double entry4 = this.trustRegionCenterOffset.getEntry(i45) + this.trialStepPoint.getEntry(i45);
                                if (arrayRealVector9.getEntry(i45) > d41) {
                                    entry = this.upperDifference.getEntry(i45) - entry4;
                                    entry2 = arrayRealVector9.getEntry(i45);
                                } else {
                                    entry = this.lowerDifference.getEntry(i45) - entry4;
                                    entry2 = arrayRealVector9.getEntry(i45);
                                }
                                double d43 = entry / entry2;
                                if (d43 < min) {
                                    i20 = i45;
                                    min = d43;
                                }
                            }
                            i45++;
                            d41 = 0.0d;
                        }
                        if (min > d41) {
                            int i46 = i42 + 1;
                            d15 = d37;
                            double d44 = d40 / d26;
                            if (i20 != -1 || d44 <= d41) {
                                d18 = d36;
                            } else {
                                d18 = FastMath.min(d36, d44);
                                if (d18 == MINUS_ONE) {
                                    d18 = d44;
                                }
                            }
                            int i47 = 0;
                            double d45 = 0.0d;
                            while (i47 < i18) {
                                double d46 = d18;
                                arrayRealVector.setEntry(i47, arrayRealVector.getEntry(i47) + (arrayRealVector14.getEntry(i47) * min));
                                if (arrayRealVector2.getEntry(i47) == 0.0d) {
                                    double entry5 = arrayRealVector.getEntry(i47);
                                    d45 += entry5 * entry5;
                                }
                                ArrayRealVector arrayRealVector17 = this.trialStepPoint;
                                arrayRealVector17.setEntry(i47, arrayRealVector17.getEntry(i47) + (arrayRealVector9.getEntry(i47) * min));
                                i47++;
                                d18 = d46;
                                d45 = d45;
                            }
                            double d47 = d18;
                            arrayRealVector10 = arrayRealVector2;
                            d16 = 0.0d;
                            double max = FastMath.max(min * (d22 - ((0.5d * min) * d40)), 0.0d);
                            d25 += max;
                            d34 = d22;
                            d17 = max;
                            d22 = d45;
                            i21 = i46;
                            d35 = d47;
                        } else {
                            d15 = d37;
                            arrayRealVector10 = arrayRealVector16;
                            d16 = d41;
                            d17 = d16;
                            i21 = i42;
                            d35 = d36;
                        }
                        if (i20 >= 0) {
                            i33 = i17 + 1;
                            arrayRealVector10.setEntry(i20, 1.0d);
                            if (arrayRealVector9.getEntry(i20) < d16) {
                                arrayRealVector10.setEntry(i20, MINUS_ONE);
                            }
                            double entry6 = this.trialStepPoint.getEntry(i20);
                            double d48 = d14 - (entry6 * entry6);
                            if (d48 <= d16) {
                                arrayRealVector14 = arrayRealVector4;
                                arrayRealVector15 = arrayRealVector5;
                                i39 = i20;
                                dimension = i18;
                                arrayRealVector12 = arrayRealVector10;
                                d21 = d48;
                                arrayRealVector13 = arrayRealVector9;
                                d33 = d15;
                                i35 = 20;
                                i36 = 190;
                            } else {
                                arrayRealVector14 = arrayRealVector4;
                                arrayRealVector15 = arrayRealVector5;
                                i39 = i20;
                                dimension = i18;
                                arrayRealVector12 = arrayRealVector10;
                                d21 = d48;
                                arrayRealVector13 = arrayRealVector9;
                                d33 = d15;
                                i35 = 20;
                                i36 = 20;
                            }
                        } else if (min < d42) {
                            int i48 = i40;
                            if (i21 != i48 && d17 > 0.01d * d25) {
                                d28 = d22 / d34;
                                arrayRealVector14 = arrayRealVector4;
                                arrayRealVector15 = arrayRealVector5;
                                i39 = i20;
                                dimension = i18;
                                i40 = i48;
                                arrayRealVector12 = arrayRealVector10;
                                arrayRealVector13 = arrayRealVector9;
                                i33 = i17;
                                d21 = d14;
                                d33 = d15;
                                i35 = 20;
                                i36 = 30;
                            } else {
                                arrayRealVector14 = arrayRealVector4;
                                arrayRealVector15 = arrayRealVector5;
                                i39 = i20;
                                dimension = i18;
                                i40 = i48;
                                arrayRealVector12 = arrayRealVector10;
                                arrayRealVector13 = arrayRealVector9;
                                i33 = i17;
                            }
                        } else {
                            i22 = i40;
                            i23 = 90;
                            printState(i23);
                            i24 = 100;
                            d35 = 0.0d;
                            printState(i24);
                            i33 = i17;
                            if (i33 >= i18 - 1) {
                            }
                        }
                        int i49 = i19;
                        i37 = i21;
                        i32 = i49;
                    }
                } else if (i36 == 90) {
                    ArrayRealVector arrayRealVector18 = arrayRealVector12;
                    d14 = d21;
                    i17 = i33;
                    int i50 = i37;
                    arrayRealVector9 = arrayRealVector13;
                    i18 = dimension;
                    i19 = i32;
                    i20 = i39;
                    i23 = 90;
                    arrayRealVector10 = arrayRealVector18;
                    d15 = d33;
                    i22 = i40;
                    i21 = i50;
                    printState(i23);
                    i24 = 100;
                    d35 = 0.0d;
                    printState(i24);
                    i33 = i17;
                    if (i33 >= i18 - 1) {
                    }
                } else if (i36 == 100) {
                    ArrayRealVector arrayRealVector19 = arrayRealVector12;
                    d14 = d21;
                    i17 = i33;
                    int i51 = i37;
                    arrayRealVector9 = arrayRealVector13;
                    i18 = dimension;
                    i19 = i32;
                    i20 = i39;
                    arrayRealVector10 = arrayRealVector19;
                    d15 = d33;
                    i21 = i51;
                    i24 = 100;
                    i22 = i40;
                    printState(i24);
                    i33 = i17;
                    if (i33 >= i18 - 1) {
                        arrayRealVector14 = arrayRealVector4;
                        arrayRealVector15 = arrayRealVector5;
                        i39 = i20;
                        dimension = i18;
                        i40 = i22;
                        arrayRealVector12 = arrayRealVector10;
                        arrayRealVector13 = arrayRealVector9;
                    } else {
                        d22 = 0.0d;
                        d23 = 0.0d;
                        d24 = 0.0d;
                        for (int i52 = 0; i52 < i18; i52++) {
                            if (arrayRealVector10.getEntry(i52) == 0.0d) {
                                double entry7 = this.trialStepPoint.getEntry(i52);
                                d23 += entry7 * entry7;
                                d24 += this.trialStepPoint.getEntry(i52) * arrayRealVector.getEntry(i52);
                                double entry8 = arrayRealVector.getEntry(i52);
                                d22 += entry8 * entry8;
                                arrayRealVector9.setEntry(i52, this.trialStepPoint.getEntry(i52));
                            } else {
                                arrayRealVector9.setEntry(i52, 0.0d);
                            }
                        }
                        arrayRealVector14 = arrayRealVector4;
                        arrayRealVector15 = arrayRealVector5;
                        i39 = i20;
                        dimension = i18;
                        i40 = i22;
                        i38 = i21;
                        arrayRealVector12 = arrayRealVector10;
                        arrayRealVector13 = arrayRealVector9;
                        d21 = d14;
                        d33 = d15;
                        i35 = 20;
                        i36 = 210;
                        i32 = i19;
                        i37 = i38;
                    }
                } else if (i36 == 120) {
                    ArrayRealVector arrayRealVector20 = arrayRealVector12;
                    double d49 = d21;
                    int i53 = i33;
                    int i54 = i37;
                    double d50 = d35;
                    ArrayRealVector arrayRealVector21 = arrayRealVector13;
                    int i55 = dimension;
                    int i56 = i32;
                    int i57 = i39;
                    double d51 = d33;
                    printState(120);
                    int i58 = i54 + 1;
                    double d52 = (d22 * d23) - (d24 * d24);
                    if (d52 <= 1.0E-4d * d25 * d25) {
                        i39 = i57;
                        d33 = d51;
                        i32 = i56;
                        d21 = d49;
                        d35 = d50;
                        i35 = 20;
                        dimension = i55;
                        i37 = i58;
                        arrayRealVector13 = arrayRealVector21;
                        i33 = i53;
                        arrayRealVector8 = arrayRealVector20;
                        i36 = 190;
                        arrayRealVector12 = arrayRealVector8;
                    } else {
                        double sqrt2 = FastMath.sqrt(d52);
                        int i59 = 0;
                        while (i59 < i55) {
                            int i60 = i58;
                            if (arrayRealVector20.getEntry(i59) == 0.0d) {
                                arrayRealVector21.setEntry(i59, ((this.trialStepPoint.getEntry(i59) * d24) - (arrayRealVector.getEntry(i59) * d23)) / sqrt2);
                            } else {
                                arrayRealVector21.setEntry(i59, 0.0d);
                            }
                            i59++;
                            i58 = i60;
                        }
                        int i61 = i58;
                        double d53 = 0.0d;
                        double d54 = -sqrt2;
                        d33 = d51;
                        int i62 = 0;
                        d27 = 1.0d;
                        i39 = -1;
                        while (true) {
                            if (i62 >= i55) {
                                i33 = i53;
                                break;
                            }
                            if (arrayRealVector20.getEntry(i62) == d53) {
                                double entry9 = (this.trustRegionCenterOffset.getEntry(i62) + this.trialStepPoint.getEntry(i62)) - this.lowerDifference.getEntry(i62);
                                double entry10 = (this.upperDifference.getEntry(i62) - this.trustRegionCenterOffset.getEntry(i62)) - this.trialStepPoint.getEntry(i62);
                                if (entry9 <= 0.0d) {
                                    i33 = i53 + 1;
                                    arrayRealVector20.setEntry(i62, MINUS_ONE);
                                    break;
                                }
                                if (entry10 <= 0.0d) {
                                    i33 = i53 + 1;
                                    arrayRealVector20.setEntry(i62, 1.0d);
                                    break;
                                }
                                double entry11 = this.trialStepPoint.getEntry(i62);
                                double entry12 = arrayRealVector21.getEntry(i62);
                                double d55 = (entry11 * entry11) + (entry12 * entry12);
                                double entry13 = this.trustRegionCenterOffset.getEntry(i62) - this.lowerDifference.getEntry(i62);
                                double d56 = d55 - (entry13 * entry13);
                                if (d56 > 0.0d) {
                                    double sqrt3 = FastMath.sqrt(d56) - arrayRealVector21.getEntry(i62);
                                    if (d27 * sqrt3 > entry9) {
                                        d27 = entry9 / sqrt3;
                                        i39 = i62;
                                        d33 = MINUS_ONE;
                                    }
                                }
                                double entry14 = this.upperDifference.getEntry(i62) - this.trustRegionCenterOffset.getEntry(i62);
                                double d57 = d55 - (entry14 * entry14);
                                if (d57 > 0.0d) {
                                    double sqrt4 = FastMath.sqrt(d57) + arrayRealVector21.getEntry(i62);
                                    if (d27 * sqrt4 > entry10) {
                                        i39 = i62;
                                        d27 = entry10 / sqrt4;
                                        i31 = 1;
                                        d33 = 1.0d;
                                        i62 += i31;
                                        d53 = 0.0d;
                                    }
                                }
                            }
                            i31 = 1;
                            i62 += i31;
                            d53 = 0.0d;
                        }
                        d32 = d54;
                        arrayRealVector12 = arrayRealVector20;
                        i36 = 210;
                        i32 = i56;
                        d21 = d49;
                        d35 = d50;
                        i35 = 20;
                        i37 = i61;
                        dimension = i55;
                        arrayRealVector13 = arrayRealVector21;
                    }
                } else if (i36 == 150) {
                    double d58 = d21;
                    int i63 = dimension;
                    int i64 = i37;
                    i19 = i32;
                    double d59 = d35;
                    printState(150);
                    double d60 = 0.0d;
                    double d61 = 0.0d;
                    double d62 = 0.0d;
                    for (int i65 = 0; i65 < i63; i65++) {
                        if (arrayRealVector12.getEntry(i65) == 0.0d) {
                            d60 += arrayRealVector13.getEntry(i65) * arrayRealVector14.getEntry(i65);
                            d61 += this.trialStepPoint.getEntry(i65) * arrayRealVector14.getEntry(i65);
                            d62 += this.trialStepPoint.getEntry(i65) * arrayRealVector15.getEntry(i65);
                        }
                    }
                    d19 = d59;
                    i21 = i64;
                    int i66 = (int) ((17.0d * d27) + 3.1d);
                    int i67 = 0;
                    int i68 = -1;
                    double d63 = 0.0d;
                    double d64 = 0.0d;
                    while (i67 < i66) {
                        int i69 = i33;
                        d29 = (i67 * d27) / i66;
                        double d65 = (d29 + d29) / ((d29 * d29) + 1.0d);
                        double d66 = d65 * (((d29 * d24) - d32) - ((d65 * 0.5d) * (((((d29 * d62) - d61) - d61) * d29) + d60)));
                        if (d66 > d63) {
                            d63 = d66;
                            i68 = i67;
                            d30 = d64;
                            i30 = 1;
                        } else {
                            i30 = 1;
                            if (i67 == i68 + 1) {
                                d31 = d66;
                            }
                        }
                        i67 += i30;
                        d64 = d66;
                        i33 = i69;
                    }
                    int i70 = i33;
                    if (i68 >= 0) {
                        if (i68 < i66) {
                            d29 = ((i68 + (((d31 - d30) / (((d63 + d63) - d30) - d31)) * 0.5d)) * d27) / i66;
                        }
                        double d67 = d29 * d29;
                        double d68 = 1.0d - d67;
                        double d69 = d67 + 1.0d;
                        double d70 = d68 / d69;
                        double d71 = (d29 + d29) / d69;
                        double d72 = (((d29 * d24) - d32) - ((0.5d * d71) * (d60 + ((((d62 * d29) - d61) - d61) * d29)))) * d71;
                        if (d72 > 0.0d) {
                            int i71 = 0;
                            d22 = 0.0d;
                            d24 = 0.0d;
                            while (i71 < i63) {
                                arrayRealVector.setEntry(i71, arrayRealVector.getEntry(i71) + ((d70 - 1.0d) * arrayRealVector15.getEntry(i71)) + (arrayRealVector14.getEntry(i71) * d71));
                                if (arrayRealVector2.getEntry(i71) == 0.0d) {
                                    ArrayRealVector arrayRealVector22 = this.trialStepPoint;
                                    i28 = i21;
                                    i29 = i63;
                                    arrayRealVector22.setEntry(i71, (arrayRealVector22.getEntry(i71) * d70) + (arrayRealVector3.getEntry(i71) * d71));
                                    d24 += this.trialStepPoint.getEntry(i71) * arrayRealVector.getEntry(i71);
                                    double entry15 = arrayRealVector.getEntry(i71);
                                    d22 += entry15 * entry15;
                                } else {
                                    i28 = i21;
                                    i29 = i63;
                                }
                                arrayRealVector15.setEntry(i71, (arrayRealVector15.getEntry(i71) * d70) + (arrayRealVector14.getEntry(i71) * d71));
                                i71++;
                                i63 = i29;
                                i21 = i28;
                            }
                            arrayRealVector11 = arrayRealVector2;
                            int i72 = i21;
                            i25 = i63;
                            d25 += d72;
                            int i73 = i39;
                            if (i73 < 0 || i68 != i66) {
                                double d73 = d33;
                                if (d72 <= 0.01d * d25) {
                                    i26 = 190;
                                    break;
                                }
                                i39 = i73;
                                d33 = d73;
                                arrayRealVector12 = arrayRealVector11;
                                arrayRealVector13 = arrayRealVector3;
                                i32 = i19;
                                i33 = i70;
                                d21 = d58;
                                dimension = i25;
                                i37 = i72;
                                d35 = d19;
                                i35 = 20;
                                i36 = 120;
                            } else {
                                i33 = i70 + 1;
                                arrayRealVector11.setEntry(i73, d33);
                                i39 = i73;
                                arrayRealVector12 = arrayRealVector11;
                                arrayRealVector13 = arrayRealVector3;
                                i32 = i19;
                                d21 = d58;
                                dimension = i25;
                                i37 = i72;
                                d35 = d19;
                                i35 = 20;
                                i36 = 100;
                            }
                        }
                    }
                    arrayRealVector12 = arrayRealVector2;
                    arrayRealVector13 = arrayRealVector3;
                    dimension = i63;
                    i36 = 190;
                    i33 = i70;
                    d21 = d58;
                    d35 = d19;
                    i35 = 20;
                    int i492 = i19;
                    i37 = i21;
                    i32 = i492;
                } else {
                    if (i36 == 190) {
                        arrayRealVector11 = arrayRealVector12;
                        i25 = dimension;
                        i26 = 190;
                        d19 = d35;
                        break;
                    }
                    if (i36 != 210) {
                        throw new MathIllegalStateException(LocalizedFormats.SIMPLE_MESSAGE, "trsbox");
                    }
                    printState(210);
                    int i74 = 0;
                    int i75 = 0;
                    while (i74 < dimension) {
                        int i76 = dimension;
                        arrayRealVector14.setEntry(i74, 0.0d);
                        int i77 = 0;
                        while (i77 <= i74) {
                            if (i77 < i74) {
                                d20 = d21;
                                arrayRealVector14.setEntry(i74, arrayRealVector14.getEntry(i74) + (this.modelSecondDerivativesValues.getEntry(i75) * arrayRealVector13.getEntry(i77)));
                            } else {
                                d20 = d21;
                            }
                            arrayRealVector14.setEntry(i77, arrayRealVector14.getEntry(i77) + (this.modelSecondDerivativesValues.getEntry(i75) * arrayRealVector13.getEntry(i74)));
                            i75++;
                            i77++;
                            d21 = d20;
                        }
                        i74++;
                        dimension = i76;
                    }
                    int i78 = dimension;
                    double d74 = d21;
                    RealVector ebeMultiply = this.interpolationPoints.operate(arrayRealVector13).ebeMultiply(this.modelSecondDerivativesParameters);
                    int i79 = 0;
                    while (i79 < i32) {
                        if (this.modelSecondDerivativesParameters.getEntry(i79) != 0.0d) {
                            i27 = i78;
                            for (int i80 = 0; i80 < i27; i80++) {
                                arrayRealVector14.setEntry(i80, arrayRealVector14.getEntry(i80) + (ebeMultiply.getEntry(i79) * this.interpolationPoints.getEntry(i79, i80)));
                            }
                        } else {
                            i27 = i78;
                        }
                        i79++;
                        i78 = i27;
                    }
                    double d75 = d35;
                    int i81 = i78;
                    if (d75 != 0.0d) {
                        dimension = i81;
                        d35 = d75;
                        d21 = d74;
                        i35 = 20;
                        i36 = 50;
                    } else {
                        int i82 = i37;
                        int i83 = i38;
                        if (i82 > i83) {
                            i37 = i82;
                            i38 = i83;
                            dimension = i81;
                            d35 = d75;
                            d21 = d74;
                            i35 = 20;
                            i36 = 150;
                        } else {
                            int i84 = 0;
                            while (i84 < i81) {
                                arrayRealVector15.setEntry(i84, arrayRealVector14.getEntry(i84));
                                i84++;
                                i32 = i32;
                                i83 = i83;
                            }
                            i38 = i83;
                            i37 = i82;
                            dimension = i81;
                            d35 = d75;
                            d21 = d74;
                            i36 = 120;
                            i35 = 20;
                        }
                    }
                }
                d21 = d14;
                d33 = d15;
                i35 = 20;
                i36 = 190;
                int i4922 = i19;
                i37 = i21;
                i32 = i4922;
            } else {
                arrayRealVector7 = arrayRealVector12;
                arrayRealVector6 = arrayRealVector13;
                i10 = dimension;
                d11 = d21;
                i11 = i37;
                d12 = d35;
                i12 = i39;
                d13 = d33;
                i13 = i40;
                i14 = i32;
                i15 = 20;
                i16 = 30;
            }
            printState(i16);
            d26 = 0.0d;
            for (int i85 = 0; i85 < i10; i85++) {
                if (arrayRealVector7.getEntry(i85) != 0.0d) {
                    arrayRealVector6.setEntry(i85, 0.0d);
                } else if (d28 == 0.0d) {
                    arrayRealVector6.setEntry(i85, -arrayRealVector.getEntry(i85));
                } else {
                    arrayRealVector6.setEntry(i85, (arrayRealVector6.getEntry(i85) * d28) - arrayRealVector.getEntry(i85));
                }
                double entry16 = arrayRealVector6.getEntry(i85);
                d26 += entry16 * entry16;
            }
            if (d26 == 0.0d) {
                arrayRealVector14 = arrayRealVector4;
                arrayRealVector15 = arrayRealVector5;
                i40 = i13;
            } else {
                if (d28 == 0.0d) {
                    i40 = (i11 + i10) - i33;
                    d22 = d26;
                } else {
                    i40 = i13;
                }
                if (d22 * d11 <= 1.0E-4d * d25 * d25) {
                    arrayRealVector14 = arrayRealVector4;
                    arrayRealVector15 = arrayRealVector5;
                } else {
                    arrayRealVector14 = arrayRealVector4;
                    arrayRealVector15 = arrayRealVector5;
                    i39 = i12;
                    i32 = i14;
                    d21 = d11;
                    d33 = d13;
                    i37 = i11;
                    d35 = d12;
                    dimension = i10;
                    arrayRealVector13 = arrayRealVector6;
                    i36 = 210;
                    arrayRealVector8 = arrayRealVector7;
                    i35 = i15;
                    arrayRealVector12 = arrayRealVector8;
                }
            }
            i39 = i12;
            i32 = i14;
            d21 = d11;
            d33 = d13;
            i37 = i11;
            d35 = d12;
            dimension = i10;
            arrayRealVector13 = arrayRealVector6;
            i36 = 190;
            arrayRealVector8 = arrayRealVector7;
            i35 = i15;
            arrayRealVector12 = arrayRealVector8;
        }
        printState(i26);
        int i86 = i25;
        double d76 = 0.0d;
        for (int i87 = 0; i87 < i86; i87++) {
            this.newPoint.setEntry(i87, FastMath.max(FastMath.min(this.trustRegionCenterOffset.getEntry(i87) + this.trialStepPoint.getEntry(i87), this.upperDifference.getEntry(i87)), this.lowerDifference.getEntry(i87)));
            if (arrayRealVector11.getEntry(i87) == MINUS_ONE) {
                this.newPoint.setEntry(i87, this.lowerDifference.getEntry(i87));
            }
            if (arrayRealVector11.getEntry(i87) == 1.0d) {
                this.newPoint.setEntry(i87, this.upperDifference.getEntry(i87));
            }
            this.trialStepPoint.setEntry(i87, this.newPoint.getEntry(i87) - this.trustRegionCenterOffset.getEntry(i87));
            double entry17 = this.trialStepPoint.getEntry(i87);
            d76 += entry17 * entry17;
        }
        return new double[]{d76, d19};
    }

    private void update(double d10, double d11, int i10) {
        double d12;
        int i11 = i10;
        printMethod();
        int dimension = this.currentBest.getDimension();
        int i12 = this.numberOfInterpolationPoints;
        int i13 = 1;
        int i14 = (i12 - dimension) - 1;
        ArrayRealVector arrayRealVector = new ArrayRealVector(i12 + dimension);
        int i15 = 0;
        double d13 = 0.0d;
        for (int i16 = 0; i16 < i12; i16++) {
            for (int i17 = 0; i17 < i14; i17++) {
                d13 = FastMath.max(d13, FastMath.abs(this.zMatrix.getEntry(i16, i17)));
            }
        }
        double d14 = d13 * 1.0E-20d;
        while (i13 < i14) {
            if (FastMath.abs(this.zMatrix.getEntry(i11, i13)) > d14) {
                double entry = this.zMatrix.getEntry(i11, 0);
                double entry2 = this.zMatrix.getEntry(i11, i13);
                double sqrt = FastMath.sqrt((entry * entry) + (entry2 * entry2));
                double entry3 = this.zMatrix.getEntry(i11, 0) / sqrt;
                double entry4 = this.zMatrix.getEntry(i11, i13) / sqrt;
                int i18 = 0;
                while (i18 < i12) {
                    double entry5 = (this.zMatrix.getEntry(i18, 0) * entry3) + (this.zMatrix.getEntry(i18, i13) * entry4);
                    Array2DRowRealMatrix array2DRowRealMatrix = this.zMatrix;
                    array2DRowRealMatrix.setEntry(i18, i13, (array2DRowRealMatrix.getEntry(i18, i13) * entry3) - (this.zMatrix.getEntry(i18, 0) * entry4));
                    this.zMatrix.setEntry(i18, 0, entry5);
                    i18++;
                    d14 = d14;
                }
            }
            this.zMatrix.setEntry(i11, i13, 0.0d);
            i13++;
            d14 = d14;
        }
        for (int i19 = 0; i19 < i12; i19++) {
            arrayRealVector.setEntry(i19, this.zMatrix.getEntry(i11, 0) * this.zMatrix.getEntry(i19, 0));
        }
        double entry6 = arrayRealVector.getEntry(i11);
        double entry7 = this.lagrangeValuesAtNewPoint.getEntry(i11);
        ArrayRealVector arrayRealVector2 = this.lagrangeValuesAtNewPoint;
        arrayRealVector2.setEntry(i11, arrayRealVector2.getEntry(i11) - 1.0d);
        double sqrt2 = FastMath.sqrt(d11);
        double d15 = entry7 / sqrt2;
        double entry8 = this.zMatrix.getEntry(i11, 0) / sqrt2;
        int i20 = 0;
        while (i20 < i12) {
            Array2DRowRealMatrix array2DRowRealMatrix2 = this.zMatrix;
            double d16 = d15;
            double entry9 = (array2DRowRealMatrix2.getEntry(i20, i15) * d15) - (this.lagrangeValuesAtNewPoint.getEntry(i20) * entry8);
            i15 = 0;
            array2DRowRealMatrix2.setEntry(i20, 0, entry9);
            i20++;
            d15 = d16;
        }
        int i21 = i15;
        while (i21 < dimension) {
            int i22 = i12 + i21;
            arrayRealVector.setEntry(i22, this.bMatrix.getEntry(i11, i21));
            double entry10 = ((this.lagrangeValuesAtNewPoint.getEntry(i22) * entry6) - (arrayRealVector.getEntry(i22) * entry7)) / d11;
            int i23 = i21;
            double entry11 = (((-d10) * arrayRealVector.getEntry(i22)) - (this.lagrangeValuesAtNewPoint.getEntry(i22) * entry7)) / d11;
            int i24 = 0;
            while (i24 <= i22) {
                int i25 = dimension;
                Array2DRowRealMatrix array2DRowRealMatrix3 = this.bMatrix;
                double d17 = entry6;
                int i26 = i23;
                ArrayRealVector arrayRealVector3 = arrayRealVector;
                array2DRowRealMatrix3.setEntry(i24, i26, array2DRowRealMatrix3.getEntry(i24, i26) + (this.lagrangeValuesAtNewPoint.getEntry(i24) * entry10) + (arrayRealVector.getEntry(i24) * entry11));
                if (i24 >= i12) {
                    Array2DRowRealMatrix array2DRowRealMatrix4 = this.bMatrix;
                    d12 = entry7;
                    array2DRowRealMatrix4.setEntry(i22, i24 - i12, array2DRowRealMatrix4.getEntry(i24, i26));
                } else {
                    d12 = entry7;
                }
                i24++;
                arrayRealVector = arrayRealVector3;
                dimension = i25;
                entry7 = d12;
                i23 = i26;
                entry6 = d17;
            }
            i21 = i23 + 1;
            i11 = i10;
            entry6 = entry6;
        }
    }

    @Override
    public PointValuePair doOptimize() {
        double[] lowerBound = getLowerBound();
        double[] upperBound = getUpperBound();
        setup(lowerBound, upperBound);
        this.isMinimize = getGoalType() == GoalType.MINIMIZE;
        this.currentBest = new ArrayRealVector(getStartPoint());
        double bobyqa = bobyqa(lowerBound, upperBound);
        double[] dataRef = this.currentBest.getDataRef();
        if (!this.isMinimize) {
            bobyqa = -bobyqa;
        }
        return new PointValuePair(dataRef, bobyqa);
    }

    public BOBYQAOptimizer(int i10, double d10, double d11) {
        super(null);
        this.numberOfInterpolationPoints = i10;
        this.initialTrustRegionRadius = d10;
        this.stoppingTrustRegionRadius = d11;
    }
}
