package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

public final class Quaternion implements Serializable {
    private static final long serialVersionUID = 20092012;

    private final double f100144q0;

    private final double f100145q1;

    private final double f100146q2;

    private final double f100147q3;
    public static final Quaternion IDENTITY = new Quaternion(1.0d, 0.0d, 0.0d, 0.0d);
    public static final Quaternion ZERO = new Quaternion(0.0d, 0.0d, 0.0d, 0.0d);

    public static final Quaternion f100141I = new Quaternion(0.0d, 1.0d, 0.0d, 0.0d);

    public static final Quaternion f100142J = new Quaternion(0.0d, 0.0d, 1.0d, 0.0d);

    public static final Quaternion f100143K = new Quaternion(0.0d, 0.0d, 0.0d, 1.0d);

    public Quaternion(double d10, double d11, double d12, double d13) {
        this.f100144q0 = d10;
        this.f100145q1 = d11;
        this.f100146q2 = d12;
        this.f100147q3 = d13;
    }

    public static Quaternion add(Quaternion quaternion, Quaternion quaternion2) {
        return new Quaternion(quaternion.getQ0() + quaternion2.getQ0(), quaternion.getQ1() + quaternion2.getQ1(), quaternion.getQ2() + quaternion2.getQ2(), quaternion.getQ3() + quaternion2.getQ3());
    }

    public static double dotProduct(Quaternion quaternion, Quaternion quaternion2) {
        return (quaternion.getQ0() * quaternion2.getQ0()) + (quaternion.getQ1() * quaternion2.getQ1()) + (quaternion.getQ2() * quaternion2.getQ2()) + (quaternion.getQ3() * quaternion2.getQ3());
    }

    public static Quaternion multiply(Quaternion quaternion, Quaternion quaternion2) {
        double q02 = quaternion.getQ0();
        double q12 = quaternion.getQ1();
        double q22 = quaternion.getQ2();
        double q32 = quaternion.getQ3();
        double q03 = quaternion2.getQ0();
        double q13 = quaternion2.getQ1();
        double q23 = quaternion2.getQ2();
        double q33 = quaternion2.getQ3();
        return new Quaternion((((q02 * q03) - (q12 * q13)) - (q22 * q23)) - (q32 * q33), (((q02 * q13) + (q12 * q03)) + (q22 * q33)) - (q32 * q23), ((q02 * q23) - (q12 * q33)) + (q22 * q03) + (q32 * q13), (((q02 * q33) + (q12 * q23)) - (q22 * q13)) + (q32 * q03));
    }

    public static Quaternion subtract(Quaternion quaternion, Quaternion quaternion2) {
        return new Quaternion(quaternion.getQ0() - quaternion2.getQ0(), quaternion.getQ1() - quaternion2.getQ1(), quaternion.getQ2() - quaternion2.getQ2(), quaternion.getQ3() - quaternion2.getQ3());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Quaternion)) {
            return false;
        }
        Quaternion quaternion = (Quaternion) obj;
        return this.f100144q0 == quaternion.getQ0() && this.f100145q1 == quaternion.getQ1() && this.f100146q2 == quaternion.getQ2() && this.f100147q3 == quaternion.getQ3();
    }

    public Quaternion getConjugate() {
        return new Quaternion(this.f100144q0, -this.f100145q1, -this.f100146q2, -this.f100147q3);
    }

    public Quaternion getInverse() {
        double d10 = this.f100144q0;
        double d11 = this.f100145q1;
        double d12 = this.f100146q2;
        double d13 = this.f100147q3;
        double d14 = (d10 * d10) + (d11 * d11) + (d12 * d12) + (d13 * d13);
        if (d14 >= Precision.SAFE_MIN) {
            return new Quaternion(d10 / d14, (-d11) / d14, (-d12) / d14, (-d13) / d14);
        }
        throw new ZeroException(LocalizedFormats.NORM, Double.valueOf(d14));
    }

    public double getNorm() {
        double d10 = this.f100144q0;
        double d11 = this.f100145q1;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f100146q2;
        double d14 = d12 + (d13 * d13);
        double d15 = this.f100147q3;
        return FastMath.sqrt(d14 + (d15 * d15));
    }

    public Quaternion getPositivePolarForm() {
        if (getQ0() >= 0.0d) {
            return normalize();
        }
        Quaternion normalize = normalize();
        return new Quaternion(-normalize.getQ0(), -normalize.getQ1(), -normalize.getQ2(), -normalize.getQ3());
    }

    public double getQ0() {
        return this.f100144q0;
    }

    public double getQ1() {
        return this.f100145q1;
    }

    public double getQ2() {
        return this.f100146q2;
    }

    public double getQ3() {
        return this.f100147q3;
    }

    public double getScalarPart() {
        return getQ0();
    }

    public double[] getVectorPart() {
        return new double[]{getQ1(), getQ2(), getQ3()};
    }

    public int hashCode() {
        double[] dArr = {this.f100144q0, this.f100145q1, this.f100146q2, this.f100147q3};
        int i10 = 17;
        for (int i11 = 0; i11 < 4; i11++) {
            i10 = (i10 * 31) + MathUtils.hash(dArr[i11]);
        }
        return i10;
    }

    public boolean isPureQuaternion(double d10) {
        return FastMath.abs(getQ0()) <= d10;
    }

    public boolean isUnitQuaternion(double d10) {
        return Precision.equals(getNorm(), 1.0d, d10);
    }

    public Quaternion normalize() {
        double norm = getNorm();
        if (norm >= Precision.SAFE_MIN) {
            return new Quaternion(this.f100144q0 / norm, this.f100145q1 / norm, this.f100146q2 / norm, this.f100147q3 / norm);
        }
        throw new ZeroException(LocalizedFormats.NORM, Double.valueOf(norm));
    }

    public String toString() {
        return "[" + this.f100144q0 + " " + this.f100145q1 + " " + this.f100146q2 + " " + this.f100147q3 + "]";
    }

    public Quaternion add(Quaternion quaternion) {
        return add(this, quaternion);
    }

    public double dotProduct(Quaternion quaternion) {
        return dotProduct(this, quaternion);
    }

    public Quaternion subtract(Quaternion quaternion) {
        return subtract(this, quaternion);
    }

    public boolean equals(Quaternion quaternion, double d10) {
        return Precision.equals(this.f100144q0, quaternion.getQ0(), d10) && Precision.equals(this.f100145q1, quaternion.getQ1(), d10) && Precision.equals(this.f100146q2, quaternion.getQ2(), d10) && Precision.equals(this.f100147q3, quaternion.getQ3(), d10);
    }

    public Quaternion(double d10, double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 3) {
            this.f100144q0 = d10;
            this.f100145q1 = dArr[0];
            this.f100146q2 = dArr[1];
            this.f100147q3 = dArr[2];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 3);
    }

    public Quaternion multiply(Quaternion quaternion) {
        return multiply(this, quaternion);
    }

    public Quaternion multiply(double d10) {
        return new Quaternion(d10 * this.f100144q0, this.f100145q1 * d10, this.f100146q2 * d10, this.f100147q3 * d10);
    }

    public Quaternion(double[] dArr) {
        this(0.0d, dArr);
    }
}
