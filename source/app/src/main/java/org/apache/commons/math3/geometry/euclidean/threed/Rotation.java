package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class Rotation implements Serializable {
    public static final Rotation IDENTITY = new Rotation(1.0d, 0.0d, 0.0d, 0.0d, false);
    private static final long serialVersionUID = -2153622329907944313L;

    private final double f100180q0;

    private final double f100181q1;

    private final double f100182q2;

    private final double f100183q3;

    public Rotation(double d10, double d11, double d12, double d13, boolean z10) {
        if (z10) {
            double sqrt = 1.0d / FastMath.sqrt((((d10 * d10) + (d11 * d11)) + (d12 * d12)) + (d13 * d13));
            d10 *= sqrt;
            d11 *= sqrt;
            d12 *= sqrt;
            d13 *= sqrt;
        }
        this.f100180q0 = d10;
        this.f100181q1 = d11;
        this.f100182q2 = d12;
        this.f100183q3 = d13;
    }

    private Rotation composeInternal(Rotation rotation) {
        double d10 = rotation.f100180q0;
        double d11 = this.f100180q0;
        double d12 = d10 * d11;
        double d13 = rotation.f100181q1;
        double d14 = this.f100181q1;
        double d15 = rotation.f100182q2;
        double d16 = this.f100182q2;
        double d17 = (d13 * d14) + (d15 * d16);
        double d18 = rotation.f100183q3;
        double d19 = this.f100183q3;
        return new Rotation(d12 - (d17 + (d18 * d19)), (d13 * d11) + (d10 * d14) + ((d15 * d19) - (d18 * d16)), (d15 * d11) + (d10 * d16) + ((d18 * d14) - (d13 * d19)), ((d13 * d16) - (d15 * d14)) + (d18 * d11) + (d10 * d19), false);
    }

    private Rotation composeInverseInternal(Rotation rotation) {
        double d10 = rotation.f100180q0;
        double d11 = this.f100180q0;
        double d12 = (-d10) * d11;
        double d13 = rotation.f100181q1;
        double d14 = this.f100181q1;
        double d15 = rotation.f100182q2;
        double d16 = this.f100182q2;
        double d17 = (d13 * d14) + (d15 * d16);
        double d18 = rotation.f100183q3;
        double d19 = this.f100183q3;
        return new Rotation(d12 - (d17 + (d18 * d19)), ((-d13) * d11) + (d10 * d14) + ((d15 * d19) - (d18 * d16)), ((-d15) * d11) + (d10 * d16) + ((d18 * d14) - (d13 * d19)), ((d13 * d16) - (d15 * d14)) + ((-d18) * d11) + (d10 * d19), false);
    }

    public static double distance(Rotation rotation, Rotation rotation2) {
        return rotation.composeInverseInternal(rotation2).getAngle();
    }

    private static double[] mat2quat(double[][] dArr) {
        double[] dArr2 = new double[4];
        double d10 = dArr[0][0];
        double d11 = dArr[1][1];
        double d12 = dArr[2][2];
        double d13 = d10 + d11 + d12;
        if (d13 > -0.19d) {
            double sqrt = FastMath.sqrt(d13 + 1.0d) * 0.5d;
            dArr2[0] = sqrt;
            double d14 = 0.25d / sqrt;
            double[] dArr3 = dArr[1];
            double d15 = dArr3[2];
            double[] dArr4 = dArr[2];
            dArr2[1] = (d15 - dArr4[1]) * d14;
            double d16 = dArr4[0];
            double[] dArr5 = dArr[0];
            dArr2[2] = (d16 - dArr5[2]) * d14;
            dArr2[3] = d14 * (dArr5[1] - dArr3[0]);
        } else {
            double d17 = (d10 - d11) - d12;
            if (d17 > -0.19d) {
                double sqrt2 = FastMath.sqrt(d17 + 1.0d) * 0.5d;
                dArr2[1] = sqrt2;
                double d18 = 0.25d / sqrt2;
                double[] dArr6 = dArr[1];
                double d19 = dArr6[2];
                double[] dArr7 = dArr[2];
                dArr2[0] = (d19 - dArr7[1]) * d18;
                double[] dArr8 = dArr[0];
                dArr2[2] = (dArr8[1] + dArr6[0]) * d18;
                dArr2[3] = d18 * (dArr8[2] + dArr7[0]);
            } else {
                double d20 = (d11 - d10) - d12;
                if (d20 > -0.19d) {
                    double sqrt3 = FastMath.sqrt(d20 + 1.0d) * 0.5d;
                    dArr2[2] = sqrt3;
                    double d21 = 0.25d / sqrt3;
                    double[] dArr9 = dArr[2];
                    double d22 = dArr9[0];
                    double[] dArr10 = dArr[0];
                    dArr2[0] = (d22 - dArr10[2]) * d21;
                    double d23 = dArr10[1];
                    double[] dArr11 = dArr[1];
                    dArr2[1] = (d23 + dArr11[0]) * d21;
                    dArr2[3] = d21 * (dArr9[1] + dArr11[2]);
                } else {
                    double sqrt4 = FastMath.sqrt(((d12 - d10) - d11) + 1.0d) * 0.5d;
                    dArr2[3] = sqrt4;
                    double d24 = 0.25d / sqrt4;
                    double[] dArr12 = dArr[0];
                    double d25 = dArr12[1];
                    double[] dArr13 = dArr[1];
                    dArr2[0] = (d25 - dArr13[0]) * d24;
                    double d26 = dArr12[2];
                    double[] dArr14 = dArr[2];
                    dArr2[1] = (d26 + dArr14[0]) * d24;
                    dArr2[2] = d24 * (dArr14[1] + dArr13[2]);
                }
            }
        }
        return dArr2;
    }

    private double[][] orthogonalizeMatrix(double[][] dArr, double d10) throws NotARotationMatrixException {
        double[] dArr2 = dArr[0];
        double[] dArr3 = dArr[1];
        double[] dArr4 = dArr[2];
        double d11 = dArr2[0];
        double d12 = dArr2[1];
        double d13 = dArr2[2];
        double d14 = dArr3[0];
        double d15 = dArr3[1];
        double d16 = dArr3[2];
        double d17 = dArr4[0];
        double d18 = dArr4[1];
        double d19 = dArr4[2];
        char c10 = 0;
        double[][] dArr5 = (double[][]) Array.newInstance(Double.TYPE, 3, 3);
        double[] dArr6 = dArr5[0];
        double[] dArr7 = dArr5[1];
        double[] dArr8 = dArr5[2];
        double d20 = 0.0d;
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            double[][] dArr9 = dArr5;
            if (i11 >= 11) {
                throw new NotARotationMatrixException(LocalizedFormats.UNABLE_TO_ORTHOGONOLIZE_MATRIX, Integer.valueOf(i10));
            }
            double d21 = dArr2[c10];
            double d22 = dArr3[c10];
            double d23 = dArr4[c10];
            double d24 = (d21 * d11) + (d22 * d14) + (d23 * d17);
            double d25 = dArr2[1];
            double d26 = dArr3[1];
            double d27 = dArr4[1];
            double d28 = (d25 * d11) + (d26 * d14) + (d27 * d17);
            double d29 = dArr2[2];
            double d30 = dArr3[2];
            double d31 = dArr4[2];
            double d32 = (d29 * d11) + (d30 * d14) + (d31 * d17);
            double d33 = (d21 * d12) + (d22 * d15) + (d23 * d18);
            double d34 = (d25 * d12) + (d26 * d15) + (d27 * d18);
            double d35 = (d29 * d12) + (d30 * d15) + (d31 * d18);
            double d36 = (d21 * d13) + (d22 * d16) + (d23 * d19);
            double d37 = (d25 * d13) + (d26 * d16) + (d27 * d19);
            double d38 = (d29 * d13) + (d30 * d16) + (d31 * d19);
            dArr6[0] = d11 - (((((d11 * d24) + (d12 * d28)) + (d13 * d32)) - d21) * 0.5d);
            dArr6[1] = d12 - (((((d11 * d33) + (d12 * d34)) + (d13 * d35)) - d25) * 0.5d);
            dArr6[2] = d13 - (((((d11 * d36) + (d12 * d37)) + (d13 * d38)) - d29) * 0.5d);
            dArr7[0] = d14 - (((((d14 * d24) + (d15 * d28)) + (d16 * d32)) - dArr3[0]) * 0.5d);
            dArr7[1] = d15 - (((((d14 * d33) + (d15 * d34)) + (d16 * d35)) - dArr3[1]) * 0.5d);
            dArr7[2] = d16 - (((((d14 * d36) + (d15 * d37)) + (d16 * d38)) - dArr3[2]) * 0.5d);
            double d39 = d17 - (((((d24 * d17) + (d28 * d18)) + (d32 * d19)) - dArr4[0]) * 0.5d);
            dArr8[0] = d39;
            double d40 = d18 - (((((d33 * d17) + (d34 * d18)) + (d35 * d19)) - dArr4[1]) * 0.5d);
            dArr8[1] = d40;
            double d41 = d19 - (((((d17 * d36) + (d18 * d37)) + (d38 * d19)) - dArr4[2]) * 0.5d);
            dArr8[2] = d41;
            double d42 = dArr6[0] - dArr2[0];
            double d43 = dArr6[1] - dArr2[1];
            double d44 = dArr6[2] - dArr2[2];
            double d45 = dArr7[0] - dArr3[0];
            double d46 = dArr7[1] - dArr3[1];
            double d47 = dArr7[2] - dArr3[2];
            double d48 = d39 - dArr4[0];
            double d49 = d40 - dArr4[1];
            double d50 = d41 - dArr4[2];
            double d51 = (d42 * d42) + (d43 * d43) + (d44 * d44) + (d45 * d45) + (d46 * d46) + (d47 * d47) + (d48 * d48) + (d49 * d49) + (d50 * d50);
            if (FastMath.abs(d51 - d20) <= d10) {
                return dArr9;
            }
            double d52 = dArr6[0];
            double d53 = dArr6[1];
            double d54 = dArr6[2];
            double d55 = dArr7[0];
            double d56 = dArr7[1];
            double d57 = dArr7[2];
            double d58 = dArr8[0];
            double d59 = dArr8[1];
            i10 = i11;
            dArr5 = dArr9;
            c10 = 0;
            d19 = dArr8[2];
            d20 = d51;
            d11 = d52;
            d12 = d53;
            d13 = d54;
            d14 = d55;
            d15 = d56;
            d16 = d57;
            d17 = d58;
            d18 = d59;
        }
    }

    public Vector3D applyInverseTo(Vector3D vector3D) {
        double x10 = vector3D.getX();
        double y10 = vector3D.getY();
        double z10 = vector3D.getZ();
        double d10 = (this.f100181q1 * x10) + (this.f100182q2 * y10) + (this.f100183q3 * z10);
        double d11 = -this.f100180q0;
        double d12 = this.f100182q2;
        double d13 = d12 * z10;
        double d14 = this.f100183q3;
        double d15 = this.f100181q1;
        return new Vector3D((((((x10 * d11) - (d13 - (d14 * y10))) * d11) + (d10 * d15)) * 2.0d) - x10, (((((y10 * d11) - ((d14 * x10) - (d15 * z10))) * d11) + (d10 * d12)) * 2.0d) - y10, (((d11 * ((z10 * d11) - ((d15 * y10) - (x10 * d12)))) + (d10 * d14)) * 2.0d) - z10);
    }

    public Vector3D applyTo(Vector3D vector3D) {
        double x10 = vector3D.getX();
        double y10 = vector3D.getY();
        double z10 = vector3D.getZ();
        double d10 = (this.f100181q1 * x10) + (this.f100182q2 * y10) + (this.f100183q3 * z10);
        double d11 = this.f100180q0;
        double d12 = this.f100182q2;
        double d13 = d12 * z10;
        double d14 = this.f100183q3;
        double d15 = this.f100181q1;
        return new Vector3D((((((x10 * d11) - (d13 - (d14 * y10))) * d11) + (d10 * d15)) * 2.0d) - x10, (((((y10 * d11) - ((d14 * x10) - (d15 * z10))) * d11) + (d10 * d12)) * 2.0d) - y10, (((d11 * ((z10 * d11) - ((d15 * y10) - (x10 * d12)))) + (d10 * d14)) * 2.0d) - z10);
    }

    public Rotation compose(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(rotation) : rotation.composeInternal(this);
    }

    public Rotation composeInverse(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(rotation) : rotation.composeInternal(revert());
    }

    public double getAngle() {
        double asin;
        double d10 = this.f100180q0;
        if (d10 < -0.1d || d10 > 0.1d) {
            double d11 = this.f100181q1;
            double d12 = this.f100182q2;
            double d13 = (d11 * d11) + (d12 * d12);
            double d14 = this.f100183q3;
            asin = FastMath.asin(FastMath.sqrt(d13 + (d14 * d14)));
        } else {
            asin = d10 < 0.0d ? FastMath.acos(-d10) : FastMath.acos(d10);
        }
        return asin * 2.0d;
    }

    @Deprecated
    public double[] getAngles(RotationOrder rotationOrder) throws CardanEulerSingularityException {
        return getAngles(rotationOrder, RotationConvention.VECTOR_OPERATOR);
    }

    @Deprecated
    public Vector3D getAxis() {
        return getAxis(RotationConvention.VECTOR_OPERATOR);
    }

    public double[][] getMatrix() {
        double d10 = this.f100180q0;
        double d11 = d10 * d10;
        double d12 = this.f100181q1;
        double d13 = d10 * d12;
        double d14 = this.f100182q2;
        double d15 = d10 * d14;
        double d16 = this.f100183q3;
        double d17 = d10 * d16;
        double d18 = d12 * d12;
        double d19 = d12 * d14;
        double d20 = d12 * d16;
        double d21 = d14 * d14;
        double d22 = d14 * d16;
        double[][] dArr = {new double[3], new double[3], new double[3]};
        double[] dArr2 = dArr[0];
        dArr2[0] = ((d18 + d11) * 2.0d) - 1.0d;
        double[] dArr3 = dArr[1];
        dArr3[0] = (d19 - d17) * 2.0d;
        double[] dArr4 = dArr[2];
        dArr4[0] = (d20 + d15) * 2.0d;
        dArr2[1] = (d19 + d17) * 2.0d;
        dArr3[1] = ((d11 + d21) * 2.0d) - 1.0d;
        dArr4[1] = (d22 - d13) * 2.0d;
        dArr2[2] = (d20 - d15) * 2.0d;
        dArr3[2] = (d22 + d13) * 2.0d;
        dArr4[2] = ((d11 + (d16 * d16)) * 2.0d) - 1.0d;
        return dArr;
    }

    public double getQ0() {
        return this.f100180q0;
    }

    public double getQ1() {
        return this.f100181q1;
    }

    public double getQ2() {
        return this.f100182q2;
    }

    public double getQ3() {
        return this.f100183q3;
    }

    public Rotation revert() {
        return new Rotation(-this.f100180q0, this.f100181q1, this.f100182q2, this.f100183q3, false);
    }

    public double[] getAngles(RotationOrder rotationOrder, RotationConvention rotationConvention) throws CardanEulerSingularityException {
        if (rotationConvention == RotationConvention.VECTOR_OPERATOR) {
            if (rotationOrder == RotationOrder.XYZ) {
                Vector3D applyTo = applyTo(Vector3D.PLUS_K);
                Vector3D applyInverseTo = applyInverseTo(Vector3D.PLUS_I);
                if (applyInverseTo.getZ() >= -0.9999999999d && applyInverseTo.getZ() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(-applyTo.getY(), applyTo.getZ()), FastMath.asin(applyInverseTo.getZ()), FastMath.atan2(-applyInverseTo.getY(), applyInverseTo.getX())};
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.XZY) {
                Vector3D applyTo2 = applyTo(Vector3D.PLUS_J);
                Vector3D applyInverseTo2 = applyInverseTo(Vector3D.PLUS_I);
                if (applyInverseTo2.getY() >= -0.9999999999d && applyInverseTo2.getY() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo2.getZ(), applyTo2.getY()), -FastMath.asin(applyInverseTo2.getY()), FastMath.atan2(applyInverseTo2.getZ(), applyInverseTo2.getX())};
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.YXZ) {
                Vector3D applyTo3 = applyTo(Vector3D.PLUS_K);
                Vector3D applyInverseTo3 = applyInverseTo(Vector3D.PLUS_J);
                if (applyInverseTo3.getZ() >= -0.9999999999d && applyInverseTo3.getZ() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo3.getX(), applyTo3.getZ()), -FastMath.asin(applyInverseTo3.getZ()), FastMath.atan2(applyInverseTo3.getX(), applyInverseTo3.getY())};
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.YZX) {
                Vector3D applyTo4 = applyTo(Vector3D.PLUS_I);
                Vector3D applyInverseTo4 = applyInverseTo(Vector3D.PLUS_J);
                if (applyInverseTo4.getX() >= -0.9999999999d && applyInverseTo4.getX() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(-applyTo4.getZ(), applyTo4.getX()), FastMath.asin(applyInverseTo4.getX()), FastMath.atan2(-applyInverseTo4.getZ(), applyInverseTo4.getY())};
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.ZXY) {
                Vector3D applyTo5 = applyTo(Vector3D.PLUS_J);
                Vector3D applyInverseTo5 = applyInverseTo(Vector3D.PLUS_K);
                if (applyInverseTo5.getY() >= -0.9999999999d && applyInverseTo5.getY() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(-applyTo5.getX(), applyTo5.getY()), FastMath.asin(applyInverseTo5.getY()), FastMath.atan2(-applyInverseTo5.getX(), applyInverseTo5.getZ())};
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.ZYX) {
                Vector3D applyTo6 = applyTo(Vector3D.PLUS_I);
                Vector3D applyInverseTo6 = applyInverseTo(Vector3D.PLUS_K);
                if (applyInverseTo6.getX() >= -0.9999999999d && applyInverseTo6.getX() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo6.getY(), applyTo6.getX()), -FastMath.asin(applyInverseTo6.getX()), FastMath.atan2(applyInverseTo6.getY(), applyInverseTo6.getZ())};
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.XYX) {
                Vector3D vector3D = Vector3D.PLUS_I;
                Vector3D applyTo7 = applyTo(vector3D);
                Vector3D applyInverseTo7 = applyInverseTo(vector3D);
                if (applyInverseTo7.getX() >= -0.9999999999d && applyInverseTo7.getX() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo7.getY(), -applyTo7.getZ()), FastMath.acos(applyInverseTo7.getX()), FastMath.atan2(applyInverseTo7.getY(), applyInverseTo7.getZ())};
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.XZX) {
                Vector3D vector3D2 = Vector3D.PLUS_I;
                Vector3D applyTo8 = applyTo(vector3D2);
                Vector3D applyInverseTo8 = applyInverseTo(vector3D2);
                if (applyInverseTo8.getX() >= -0.9999999999d && applyInverseTo8.getX() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo8.getZ(), applyTo8.getY()), FastMath.acos(applyInverseTo8.getX()), FastMath.atan2(applyInverseTo8.getZ(), -applyInverseTo8.getY())};
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.YXY) {
                Vector3D vector3D3 = Vector3D.PLUS_J;
                Vector3D applyTo9 = applyTo(vector3D3);
                Vector3D applyInverseTo9 = applyInverseTo(vector3D3);
                if (applyInverseTo9.getY() >= -0.9999999999d && applyInverseTo9.getY() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo9.getX(), applyTo9.getZ()), FastMath.acos(applyInverseTo9.getY()), FastMath.atan2(applyInverseTo9.getX(), -applyInverseTo9.getZ())};
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.YZY) {
                Vector3D vector3D4 = Vector3D.PLUS_J;
                Vector3D applyTo10 = applyTo(vector3D4);
                Vector3D applyInverseTo10 = applyInverseTo(vector3D4);
                if (applyInverseTo10.getY() >= -0.9999999999d && applyInverseTo10.getY() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo10.getZ(), -applyTo10.getX()), FastMath.acos(applyInverseTo10.getY()), FastMath.atan2(applyInverseTo10.getZ(), applyInverseTo10.getX())};
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.ZXZ) {
                Vector3D vector3D5 = Vector3D.PLUS_K;
                Vector3D applyTo11 = applyTo(vector3D5);
                Vector3D applyInverseTo11 = applyInverseTo(vector3D5);
                if (applyInverseTo11.getZ() >= -0.9999999999d && applyInverseTo11.getZ() <= 0.9999999999d) {
                    return new double[]{FastMath.atan2(applyTo11.getX(), -applyTo11.getY()), FastMath.acos(applyInverseTo11.getZ()), FastMath.atan2(applyInverseTo11.getX(), applyInverseTo11.getY())};
                }
                throw new CardanEulerSingularityException(false);
            }
            Vector3D vector3D6 = Vector3D.PLUS_K;
            Vector3D applyTo12 = applyTo(vector3D6);
            Vector3D applyInverseTo12 = applyInverseTo(vector3D6);
            if (applyInverseTo12.getZ() >= -0.9999999999d && applyInverseTo12.getZ() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyTo12.getY(), applyTo12.getX()), FastMath.acos(applyInverseTo12.getZ()), FastMath.atan2(applyInverseTo12.getY(), -applyInverseTo12.getX())};
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.XYZ) {
            Vector3D applyTo13 = applyTo(Vector3D.PLUS_I);
            Vector3D applyInverseTo13 = applyInverseTo(Vector3D.PLUS_K);
            if (applyInverseTo13.getX() >= -0.9999999999d && applyInverseTo13.getX() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(-applyInverseTo13.getY(), applyInverseTo13.getZ()), FastMath.asin(applyInverseTo13.getX()), FastMath.atan2(-applyTo13.getY(), applyTo13.getX())};
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.XZY) {
            Vector3D applyTo14 = applyTo(Vector3D.PLUS_I);
            Vector3D applyInverseTo14 = applyInverseTo(Vector3D.PLUS_J);
            if (applyInverseTo14.getX() >= -0.9999999999d && applyInverseTo14.getX() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo14.getZ(), applyInverseTo14.getY()), -FastMath.asin(applyInverseTo14.getX()), FastMath.atan2(applyTo14.getZ(), applyTo14.getX())};
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.YXZ) {
            Vector3D applyTo15 = applyTo(Vector3D.PLUS_J);
            Vector3D applyInverseTo15 = applyInverseTo(Vector3D.PLUS_K);
            if (applyInverseTo15.getY() >= -0.9999999999d && applyInverseTo15.getY() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo15.getX(), applyInverseTo15.getZ()), -FastMath.asin(applyInverseTo15.getY()), FastMath.atan2(applyTo15.getX(), applyTo15.getY())};
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.YZX) {
            Vector3D applyTo16 = applyTo(Vector3D.PLUS_J);
            Vector3D applyInverseTo16 = applyInverseTo(Vector3D.PLUS_I);
            if (applyInverseTo16.getY() >= -0.9999999999d && applyInverseTo16.getY() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(-applyInverseTo16.getZ(), applyInverseTo16.getX()), FastMath.asin(applyInverseTo16.getY()), FastMath.atan2(-applyTo16.getZ(), applyTo16.getY())};
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.ZXY) {
            Vector3D applyTo17 = applyTo(Vector3D.PLUS_K);
            Vector3D applyInverseTo17 = applyInverseTo(Vector3D.PLUS_J);
            if (applyInverseTo17.getZ() >= -0.9999999999d && applyInverseTo17.getZ() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(-applyInverseTo17.getX(), applyInverseTo17.getY()), FastMath.asin(applyInverseTo17.getZ()), FastMath.atan2(-applyTo17.getX(), applyTo17.getZ())};
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.ZYX) {
            Vector3D applyTo18 = applyTo(Vector3D.PLUS_K);
            Vector3D applyInverseTo18 = applyInverseTo(Vector3D.PLUS_I);
            if (applyInverseTo18.getZ() >= -0.9999999999d && applyInverseTo18.getZ() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo18.getY(), applyInverseTo18.getX()), -FastMath.asin(applyInverseTo18.getZ()), FastMath.atan2(applyTo18.getY(), applyTo18.getZ())};
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.XYX) {
            Vector3D vector3D7 = Vector3D.PLUS_I;
            Vector3D applyTo19 = applyTo(vector3D7);
            Vector3D applyInverseTo19 = applyInverseTo(vector3D7);
            if (applyInverseTo19.getX() >= -0.9999999999d && applyInverseTo19.getX() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo19.getY(), -applyInverseTo19.getZ()), FastMath.acos(applyInverseTo19.getX()), FastMath.atan2(applyTo19.getY(), applyTo19.getZ())};
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.XZX) {
            Vector3D vector3D8 = Vector3D.PLUS_I;
            Vector3D applyTo20 = applyTo(vector3D8);
            Vector3D applyInverseTo20 = applyInverseTo(vector3D8);
            if (applyInverseTo20.getX() >= -0.9999999999d && applyInverseTo20.getX() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo20.getZ(), applyInverseTo20.getY()), FastMath.acos(applyInverseTo20.getX()), FastMath.atan2(applyTo20.getZ(), -applyTo20.getY())};
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.YXY) {
            Vector3D vector3D9 = Vector3D.PLUS_J;
            Vector3D applyTo21 = applyTo(vector3D9);
            Vector3D applyInverseTo21 = applyInverseTo(vector3D9);
            if (applyInverseTo21.getY() >= -0.9999999999d && applyInverseTo21.getY() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo21.getX(), applyInverseTo21.getZ()), FastMath.acos(applyInverseTo21.getY()), FastMath.atan2(applyTo21.getX(), -applyTo21.getZ())};
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.YZY) {
            Vector3D vector3D10 = Vector3D.PLUS_J;
            Vector3D applyTo22 = applyTo(vector3D10);
            Vector3D applyInverseTo22 = applyInverseTo(vector3D10);
            if (applyInverseTo22.getY() >= -0.9999999999d && applyInverseTo22.getY() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo22.getZ(), -applyInverseTo22.getX()), FastMath.acos(applyInverseTo22.getY()), FastMath.atan2(applyTo22.getZ(), applyTo22.getX())};
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.ZXZ) {
            Vector3D vector3D11 = Vector3D.PLUS_K;
            Vector3D applyTo23 = applyTo(vector3D11);
            Vector3D applyInverseTo23 = applyInverseTo(vector3D11);
            if (applyInverseTo23.getZ() >= -0.9999999999d && applyInverseTo23.getZ() <= 0.9999999999d) {
                return new double[]{FastMath.atan2(applyInverseTo23.getX(), -applyInverseTo23.getY()), FastMath.acos(applyInverseTo23.getZ()), FastMath.atan2(applyTo23.getX(), applyTo23.getY())};
            }
            throw new CardanEulerSingularityException(false);
        }
        Vector3D vector3D12 = Vector3D.PLUS_K;
        Vector3D applyTo24 = applyTo(vector3D12);
        Vector3D applyInverseTo24 = applyInverseTo(vector3D12);
        if (applyInverseTo24.getZ() >= -0.9999999999d && applyInverseTo24.getZ() <= 0.9999999999d) {
            return new double[]{FastMath.atan2(applyInverseTo24.getY(), applyInverseTo24.getX()), FastMath.acos(applyInverseTo24.getZ()), FastMath.atan2(applyTo24.getY(), -applyTo24.getX())};
        }
        throw new CardanEulerSingularityException(false);
    }

    public Vector3D getAxis(RotationConvention rotationConvention) {
        double d10 = this.f100181q1;
        double d11 = this.f100182q2;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f100183q3;
        double d14 = d12 + (d13 * d13);
        if (d14 == 0.0d) {
            return rotationConvention == RotationConvention.VECTOR_OPERATOR ? Vector3D.PLUS_I : Vector3D.MINUS_I;
        }
        double d15 = rotationConvention == RotationConvention.VECTOR_OPERATOR ? 1.0d : -1.0d;
        if (this.f100180q0 < 0.0d) {
            double sqrt = d15 / FastMath.sqrt(d14);
            return new Vector3D(this.f100181q1 * sqrt, this.f100182q2 * sqrt, this.f100183q3 * sqrt);
        }
        double sqrt2 = (-d15) / FastMath.sqrt(d14);
        return new Vector3D(this.f100181q1 * sqrt2, this.f100182q2 * sqrt2, this.f100183q3 * sqrt2);
    }

    public void applyTo(double[] dArr, double[] dArr2) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        double d13 = this.f100181q1;
        double d14 = this.f100182q2;
        double d15 = this.f100183q3;
        double d16 = (d13 * d10) + (d14 * d11) + (d15 * d12);
        double d17 = this.f100180q0;
        dArr2[0] = (((((d10 * d17) - ((d14 * d12) - (d15 * d11))) * d17) + (d16 * d13)) * 2.0d) - d10;
        dArr2[1] = (((((d11 * d17) - ((d15 * d10) - (d13 * d12))) * d17) + (d16 * d14)) * 2.0d) - d11;
        dArr2[2] = (((d17 * ((d12 * d17) - ((d13 * d11) - (d14 * d10)))) + (d16 * d15)) * 2.0d) - d12;
    }

    @Deprecated
    public Rotation(Vector3D vector3D, double d10) throws MathIllegalArgumentException {
        this(vector3D, d10, RotationConvention.VECTOR_OPERATOR);
    }

    public void applyInverseTo(double[] dArr, double[] dArr2) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        double d13 = this.f100181q1;
        double d14 = this.f100182q2;
        double d15 = this.f100183q3;
        double d16 = (d13 * d10) + (d14 * d11) + (d15 * d12);
        double d17 = -this.f100180q0;
        dArr2[0] = (((((d10 * d17) - ((d14 * d12) - (d15 * d11))) * d17) + (d16 * d13)) * 2.0d) - d10;
        dArr2[1] = (((((d11 * d17) - ((d15 * d10) - (d13 * d12))) * d17) + (d16 * d14)) * 2.0d) - d11;
        dArr2[2] = (((d17 * ((d12 * d17) - ((d13 * d11) - (d14 * d10)))) + (d16 * d15)) * 2.0d) - d12;
    }

    public Rotation(Vector3D vector3D, double d10, RotationConvention rotationConvention) throws MathIllegalArgumentException {
        double norm = vector3D.getNorm();
        if (norm != 0.0d) {
            double d11 = d10 * (rotationConvention == RotationConvention.VECTOR_OPERATOR ? -0.5d : 0.5d);
            double sin = FastMath.sin(d11) / norm;
            this.f100180q0 = FastMath.cos(d11);
            this.f100181q1 = vector3D.getX() * sin;
            this.f100182q2 = vector3D.getY() * sin;
            this.f100183q3 = sin * vector3D.getZ();
            return;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_AXIS, new Object[0]);
    }

    public Rotation applyTo(Rotation rotation) {
        return compose(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public Rotation applyInverseTo(Rotation rotation) {
        return composeInverse(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public Rotation(double[][] dArr, double d10) throws NotARotationMatrixException {
        if (dArr.length == 3 && dArr[0].length == 3 && dArr[1].length == 3 && dArr[2].length == 3) {
            double[][] orthogonalizeMatrix = orthogonalizeMatrix(dArr, d10);
            double[] dArr2 = orthogonalizeMatrix[0];
            double d11 = dArr2[0];
            double[] dArr3 = orthogonalizeMatrix[1];
            double d12 = dArr3[1];
            double[] dArr4 = orthogonalizeMatrix[2];
            double d13 = dArr4[2];
            double d14 = dArr4[1];
            double d15 = dArr3[2];
            double d16 = dArr3[0];
            double d17 = dArr2[1];
            double d18 = dArr2[2];
            double d19 = ((d11 * ((d12 * d13) - (d14 * d15))) - (d16 * ((d13 * d17) - (d14 * d18)))) + (dArr4[0] * ((d17 * d15) - (d12 * d18)));
            if (d19 >= 0.0d) {
                double[] mat2quat = mat2quat(orthogonalizeMatrix);
                this.f100180q0 = mat2quat[0];
                this.f100181q1 = mat2quat[1];
                this.f100182q2 = mat2quat[2];
                this.f100183q3 = mat2quat[3];
                return;
            }
            throw new NotARotationMatrixException(LocalizedFormats.CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT, Double.valueOf(d19));
        }
        throw new NotARotationMatrixException(LocalizedFormats.ROTATION_MATRIX_DIMENSIONS, Integer.valueOf(dArr.length), Integer.valueOf(dArr[0].length));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r2v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r3v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r5v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.apache.commons.math3.geometry.euclidean.threed.Vector3D] */
    public Rotation(Vector3D vector3D, Vector3D vector3D2, Vector3D vector3D3, Vector3D vector3D4) throws MathArithmeticException {
        ?? normalize = vector3D.crossProduct(vector3D2).normalize();
        ?? normalize2 = normalize.crossProduct(vector3D).normalize();
        ?? normalize3 = vector3D.normalize();
        ?? normalize4 = vector3D3.crossProduct(vector3D4).normalize();
        ?? normalize5 = normalize4.crossProduct(vector3D3).normalize();
        ?? normalize6 = vector3D3.normalize();
        double[] mat2quat = mat2quat(new double[][]{new double[]{MathArrays.linearCombination(normalize3.getX(), normalize6.getX(), normalize2.getX(), normalize5.getX(), normalize.getX(), normalize4.getX()), MathArrays.linearCombination(normalize3.getY(), normalize6.getX(), normalize2.getY(), normalize5.getX(), normalize.getY(), normalize4.getX()), MathArrays.linearCombination(normalize3.getZ(), normalize6.getX(), normalize2.getZ(), normalize5.getX(), normalize.getZ(), normalize4.getX())}, new double[]{MathArrays.linearCombination(normalize3.getX(), normalize6.getY(), normalize2.getX(), normalize5.getY(), normalize.getX(), normalize4.getY()), MathArrays.linearCombination(normalize3.getY(), normalize6.getY(), normalize2.getY(), normalize5.getY(), normalize.getY(), normalize4.getY()), MathArrays.linearCombination(normalize3.getZ(), normalize6.getY(), normalize2.getZ(), normalize5.getY(), normalize.getZ(), normalize4.getY())}, new double[]{MathArrays.linearCombination(normalize3.getX(), normalize6.getZ(), normalize2.getX(), normalize5.getZ(), normalize.getX(), normalize4.getZ()), MathArrays.linearCombination(normalize3.getY(), normalize6.getZ(), normalize2.getY(), normalize5.getZ(), normalize.getY(), normalize4.getZ()), MathArrays.linearCombination(normalize3.getZ(), normalize6.getZ(), normalize2.getZ(), normalize5.getZ(), normalize.getZ(), normalize4.getZ())}});
        this.f100180q0 = mat2quat[0];
        this.f100181q1 = mat2quat[1];
        this.f100182q2 = mat2quat[2];
        this.f100183q3 = mat2quat[3];
    }

    public Rotation(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        double norm = vector3D.getNorm() * vector3D2.getNorm();
        if (norm != 0.0d) {
            double dotProduct = vector3D.dotProduct(vector3D2);
            if (dotProduct < (-0.999999999999998d) * norm) {
                Vector3D orthogonal = vector3D.orthogonal();
                this.f100180q0 = 0.0d;
                this.f100181q1 = -orthogonal.getX();
                this.f100182q2 = -orthogonal.getY();
                this.f100183q3 = -orthogonal.getZ();
                return;
            }
            double sqrt = FastMath.sqrt(((dotProduct / norm) + 1.0d) * 0.5d);
            this.f100180q0 = sqrt;
            double d10 = 1.0d / ((sqrt * 2.0d) * norm);
            Vector3D crossProduct = vector3D2.crossProduct(vector3D);
            this.f100181q1 = crossProduct.getX() * d10;
            this.f100182q2 = crossProduct.getY() * d10;
            this.f100183q3 = d10 * crossProduct.getZ();
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR, new Object[0]);
    }

    @Deprecated
    public Rotation(RotationOrder rotationOrder, double d10, double d11, double d12) {
        this(rotationOrder, RotationConvention.VECTOR_OPERATOR, d10, d11, d12);
    }

    public Rotation(RotationOrder rotationOrder, RotationConvention rotationConvention, double d10, double d11, double d12) {
        Rotation compose = new Rotation(rotationOrder.getA1(), d10, rotationConvention).compose(new Rotation(rotationOrder.getA2(), d11, rotationConvention).compose(new Rotation(rotationOrder.getA3(), d12, rotationConvention), rotationConvention), rotationConvention);
        this.f100180q0 = compose.f100180q0;
        this.f100181q1 = compose.f100181q1;
        this.f100182q2 = compose.f100182q2;
        this.f100183q3 = compose.f100183q3;
    }
}
