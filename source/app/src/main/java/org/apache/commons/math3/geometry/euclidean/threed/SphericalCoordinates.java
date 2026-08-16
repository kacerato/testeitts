package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.util.FastMath;

public class SphericalCoordinates implements Serializable {
    private static final long serialVersionUID = 20130206;
    private double[][] jacobian;
    private final double phi;
    private double[][] phiHessian;

    private final double f100187r;
    private double[][] rHessian;
    private final double theta;
    private double[][] thetaHessian;

    private final Vector3D f100188v;

    public static class DataTransferObject implements Serializable {
        private static final long serialVersionUID = 20130206;

        private final double f100189x;

        private final double f100190y;

        private final double f100191z;

        public DataTransferObject(double d10, double d11, double d12) {
            this.f100189x = d10;
            this.f100190y = d11;
            this.f100191z = d12;
        }

        private Object readResolve() {
            return new SphericalCoordinates(new Vector3D(this.f100189x, this.f100190y, this.f100191z));
        }
    }

    public SphericalCoordinates(Vector3D vector3D) {
        this.f100188v = vector3D;
        double norm = vector3D.getNorm();
        this.f100187r = norm;
        this.theta = vector3D.getAlpha();
        this.phi = FastMath.acos(vector3D.getZ() / norm);
    }

    private void computeHessians() {
        if (this.rHessian == null) {
            double x10 = this.f100188v.getX();
            double y10 = this.f100188v.getY();
            double z10 = this.f100188v.getZ();
            double d10 = x10 * x10;
            double d11 = y10 * y10;
            double d12 = z10 * z10;
            double d13 = d10 + d11;
            double sqrt = FastMath.sqrt(d13);
            double d14 = d13 + d12;
            double d15 = this.f100187r;
            double d16 = x10 / d13;
            double d17 = y10 / d13;
            double d18 = (x10 / d15) / d14;
            double d19 = (y10 / d15) / d14;
            double d20 = (z10 / d15) / d14;
            Class<Double> cls = Double.TYPE;
            double[][] dArr = (double[][]) Array.newInstance(cls, 3, 3);
            this.rHessian = dArr;
            double[] dArr2 = dArr[0];
            double d21 = y10 * d19;
            double d22 = z10 * d20;
            dArr2[0] = d21 + d22;
            double[] dArr3 = dArr[1];
            double d23 = -x10;
            dArr3[0] = d19 * d23;
            double[] dArr4 = dArr[2];
            double d24 = (-z10) * d18;
            dArr4[0] = d24;
            double d25 = d18 * x10;
            dArr3[1] = d25 + d22;
            dArr4[1] = (-y10) * d20;
            dArr4[2] = d25 + d21;
            dArr2[1] = dArr3[0];
            dArr2[2] = d24;
            dArr3[2] = dArr4[1];
            double[][] dArr5 = (double[][]) Array.newInstance(cls, 2, 2);
            this.thetaHessian = dArr5;
            double[] dArr6 = dArr5[0];
            dArr6[0] = d16 * 2.0d * d17;
            double[] dArr7 = dArr5[1];
            double d26 = (d17 * d17) - (d16 * d16);
            dArr7[0] = d26;
            dArr7[1] = d16 * (-2.0d) * d17;
            dArr6[1] = d26;
            double d27 = sqrt * d14;
            double d28 = sqrt * d27;
            double d29 = d27 * d14;
            double d30 = d29 * d13;
            double d31 = (3.0d * d13) + d12;
            double[][] dArr8 = (double[][]) Array.newInstance(cls, 3, 3);
            this.phiHessian = dArr8;
            double[] dArr9 = dArr8[0];
            dArr9[0] = ((d28 - (d10 * d31)) * z10) / d30;
            double[] dArr10 = dArr8[1];
            dArr10[0] = (((d23 * y10) * z10) * d31) / d30;
            double[] dArr11 = dArr8[2];
            double d32 = d13 - d12;
            double d33 = (x10 * d32) / d29;
            dArr11[0] = d33;
            dArr10[1] = (z10 * (d28 - (d11 * d31))) / d30;
            dArr11[1] = (y10 * d32) / d29;
            dArr11[2] = ((sqrt * 2.0d) * d20) / this.f100187r;
            dArr9[1] = dArr10[0];
            dArr9[2] = d33;
            dArr10[2] = dArr11[1];
        }
    }

    private void computeJacobian() {
        if (this.jacobian == null) {
            double x10 = this.f100188v.getX();
            double y10 = this.f100188v.getY();
            double z10 = this.f100188v.getZ();
            double d10 = (x10 * x10) + (y10 * y10);
            double sqrt = FastMath.sqrt(d10);
            double d11 = (z10 * z10) + d10;
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, 3, 3);
            this.jacobian = dArr;
            double[] dArr2 = dArr[0];
            double d12 = this.f100187r;
            dArr2[0] = x10 / d12;
            dArr2[1] = y10 / d12;
            dArr2[2] = z10 / d12;
            double[] dArr3 = dArr[1];
            dArr3[0] = (-y10) / d10;
            dArr3[1] = x10 / d10;
            double[] dArr4 = dArr[2];
            double d13 = sqrt * d11;
            dArr4[0] = (x10 * z10) / d13;
            dArr4[1] = (y10 * z10) / d13;
            dArr4[2] = (-sqrt) / d11;
        }
    }

    private Object writeReplace() {
        return new DataTransferObject(this.f100188v.getX(), this.f100188v.getY(), this.f100188v.getZ());
    }

    public Vector3D getCartesian() {
        return this.f100188v;
    }

    public double getPhi() {
        return this.phi;
    }

    public double getR() {
        return this.f100187r;
    }

    public double getTheta() {
        return this.theta;
    }

    public double[] toCartesianGradient(double[] dArr) {
        computeJacobian();
        double d10 = dArr[0];
        double[][] dArr2 = this.jacobian;
        double[] dArr3 = dArr2[0];
        double d11 = dArr3[0] * d10;
        double d12 = dArr[1];
        double[] dArr4 = dArr2[1];
        double d13 = d11 + (dArr4[0] * d12);
        double d14 = dArr[2];
        double[] dArr5 = dArr2[2];
        return new double[]{d13 + (dArr5[0] * d14), (dArr3[1] * d10) + (d12 * dArr4[1]) + (dArr5[1] * d14), (d10 * dArr3[2]) + (d14 * dArr5[2])};
    }

    public double[][] toCartesianHessian(double[][] dArr, double[] dArr2) {
        computeJacobian();
        computeHessians();
        Class<Double> cls = Double.TYPE;
        double[][] dArr3 = (double[][]) Array.newInstance(cls, 3, 3);
        double[][] dArr4 = (double[][]) Array.newInstance(cls, 3, 3);
        double[] dArr5 = dArr3[0];
        double[] dArr6 = dArr[0];
        double d10 = dArr6[0];
        double[][] dArr7 = this.jacobian;
        double[] dArr8 = dArr7[0];
        double d11 = d10 * dArr8[0];
        double[] dArr9 = dArr[1];
        double d12 = dArr9[0];
        double[] dArr10 = dArr7[1];
        double d13 = d11 + (d12 * dArr10[0]);
        double[] dArr11 = dArr[2];
        double d14 = dArr11[0];
        double[] dArr12 = dArr7[2];
        dArr5[0] = d13 + (d14 * dArr12[0]);
        double d15 = dArr6[0];
        double d16 = dArr8[1] * d15;
        double d17 = dArr9[0];
        double d18 = d16 + (dArr10[1] * d17);
        double d19 = dArr11[0];
        dArr5[1] = d18 + (dArr12[1] * d19);
        dArr5[2] = (d15 * dArr8[2]) + (d19 * dArr12[2]);
        double[] dArr13 = dArr3[1];
        double d20 = d17 * dArr8[0];
        double d21 = dArr9[1];
        double d22 = d20 + (dArr10[0] * d21);
        double d23 = dArr11[1];
        dArr13[0] = d22 + (dArr12[0] * d23);
        dArr13[1] = (dArr9[0] * dArr8[1]) + (d21 * dArr10[1]) + (d23 * dArr12[1]);
        double[] dArr14 = dArr3[2];
        double d24 = dArr11[0] * dArr8[0];
        double d25 = dArr11[1];
        double d26 = d24 + (dArr10[0] * d25);
        double d27 = dArr11[2];
        double d28 = d26 + (dArr12[0] * d27);
        dArr14[0] = d28;
        double d29 = dArr11[0];
        double d30 = (dArr8[1] * d29) + (d25 * dArr10[1]) + (dArr12[1] * d27);
        dArr14[1] = d30;
        double d31 = (d29 * dArr8[2]) + (d27 * dArr12[2]);
        dArr14[2] = d31;
        double[] dArr15 = dArr4[0];
        dArr15[0] = (dArr8[0] * dArr5[0]) + (dArr10[0] * dArr13[0]) + (dArr12[0] * d28);
        double[] dArr16 = dArr4[1];
        double d32 = dArr8[1];
        double d33 = dArr5[0] * d32;
        double d34 = dArr10[1];
        double d35 = d33 + (dArr13[0] * d34);
        double d36 = dArr12[1];
        dArr16[0] = d35 + (dArr14[0] * d36);
        double[] dArr17 = dArr4[2];
        double d37 = dArr8[2];
        double d38 = dArr5[0] * d37;
        double d39 = dArr12[2];
        dArr17[0] = d38 + (dArr14[0] * d39);
        dArr16[1] = (d32 * dArr5[1]) + (d34 * dArr13[1]) + (d36 * d30);
        dArr17[1] = (dArr5[1] * d37) + (dArr14[1] * d39);
        double d40 = (d37 * dArr5[2]) + (d39 * d31);
        dArr17[2] = d40;
        double d41 = dArr15[0];
        double d42 = dArr2[0];
        double[][] dArr18 = this.rHessian;
        double d43 = d42 * dArr18[0][0];
        double d44 = dArr2[1];
        double[][] dArr19 = this.thetaHessian;
        double d45 = d43 + (dArr19[0][0] * d44);
        double d46 = dArr2[2];
        double[][] dArr20 = this.phiHessian;
        dArr15[0] = d41 + d45 + (dArr20[0][0] * d46);
        double d47 = dArr16[0];
        double d48 = dArr2[0];
        double[] dArr21 = dArr18[1];
        double d49 = d48 * dArr21[0];
        double[] dArr22 = dArr19[1];
        double d50 = d49 + (dArr22[0] * d44);
        double[] dArr23 = dArr20[1];
        dArr16[0] = d47 + d50 + (dArr23[0] * d46);
        double d51 = dArr17[0];
        double d52 = dArr2[0];
        double[] dArr24 = dArr18[2];
        double d53 = d52 * dArr24[0];
        double[] dArr25 = dArr20[2];
        double d54 = d51 + d53 + (dArr25[0] * d46);
        dArr17[0] = d54;
        double d55 = dArr16[1];
        double d56 = dArr2[0];
        dArr16[1] = d55 + (dArr21[1] * d56) + (d44 * dArr22[1]) + (dArr23[1] * d46);
        dArr17[1] = dArr17[1] + (dArr24[1] * d56) + (dArr25[1] * d46);
        dArr17[2] = d40 + (d56 * dArr24[2]) + (d46 * dArr25[2]);
        dArr15[1] = dArr16[0];
        dArr15[2] = d54;
        dArr16[2] = dArr17[1];
        return dArr4;
    }

    public SphericalCoordinates(double d10, double d11, double d12) {
        double cos = FastMath.cos(d11);
        double sin = FastMath.sin(d11);
        double cos2 = FastMath.cos(d12);
        double sin2 = FastMath.sin(d12);
        this.f100187r = d10;
        this.theta = d11;
        this.phi = d12;
        this.f100188v = new Vector3D(cos * d10 * sin2, d10 * sin * sin2, d10 * cos2);
    }
}
