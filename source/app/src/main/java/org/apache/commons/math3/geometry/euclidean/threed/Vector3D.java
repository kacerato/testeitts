package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.text.NumberFormat;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

public class Vector3D implements Serializable, Vector<Euclidean3D> {
    private static final long serialVersionUID = 1313493323784566947L;

    private final double f100192x;

    private final double f100193y;

    private final double f100194z;
    public static final Vector3D ZERO = new Vector3D(0.0d, 0.0d, 0.0d);
    public static final Vector3D PLUS_I = new Vector3D(1.0d, 0.0d, 0.0d);
    public static final Vector3D MINUS_I = new Vector3D(-1.0d, 0.0d, 0.0d);
    public static final Vector3D PLUS_J = new Vector3D(0.0d, 1.0d, 0.0d);
    public static final Vector3D MINUS_J = new Vector3D(0.0d, -1.0d, 0.0d);
    public static final Vector3D PLUS_K = new Vector3D(0.0d, 0.0d, 1.0d);
    public static final Vector3D MINUS_K = new Vector3D(0.0d, 0.0d, -1.0d);
    public static final Vector3D NaN = new Vector3D(Double.NaN, Double.NaN, Double.NaN);
    public static final Vector3D POSITIVE_INFINITY = new Vector3D(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
    public static final Vector3D NEGATIVE_INFINITY = new Vector3D(Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);

    public Vector3D(double d10, double d11, double d12) {
        this.f100192x = d10;
        this.f100193y = d11;
        this.f100194z = d12;
    }

    public static double angle(Vector3D vector3D, Vector3D vector3D2) throws MathArithmeticException {
        double norm = vector3D.getNorm() * vector3D2.getNorm();
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        double dotProduct = vector3D.dotProduct(vector3D2);
        double d10 = 0.9999d * norm;
        if (dotProduct >= (-d10) && dotProduct <= d10) {
            return FastMath.acos(dotProduct / norm);
        }
        Vector3D crossProduct = crossProduct(vector3D, vector3D2);
        return dotProduct >= 0.0d ? FastMath.asin(crossProduct.getNorm() / norm) : 3.141592653589793d - FastMath.asin(crossProduct.getNorm() / norm);
    }

    public Vector3D crossProduct(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return new Vector3D(MathArrays.linearCombination(this.f100193y, vector3D.f100194z, -this.f100194z, vector3D.f100193y), MathArrays.linearCombination(this.f100194z, vector3D.f100192x, -this.f100192x, vector3D.f100194z), MathArrays.linearCombination(this.f100192x, vector3D.f100193y, -this.f100193y, vector3D.f100192x));
    }

    @Override
    public double distance(Vector<Euclidean3D> vector) {
        return distance((Point<Euclidean3D>) vector);
    }

    @Override
    public double distance1(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return FastMath.abs(vector3D.f100192x - this.f100192x) + FastMath.abs(vector3D.f100193y - this.f100193y) + FastMath.abs(vector3D.f100194z - this.f100194z);
    }

    @Override
    public double distanceInf(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        double abs = FastMath.abs(vector3D.f100192x - this.f100192x);
        double abs2 = FastMath.abs(vector3D.f100193y - this.f100193y);
        return FastMath.max(FastMath.max(abs, abs2), FastMath.abs(vector3D.f100194z - this.f100194z));
    }

    @Override
    public double distanceSq(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        double d10 = vector3D.f100192x - this.f100192x;
        double d11 = vector3D.f100193y - this.f100193y;
        double d12 = vector3D.f100194z - this.f100194z;
        return (d10 * d10) + (d11 * d11) + (d12 * d12);
    }

    @Override
    public double dotProduct(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return MathArrays.linearCombination(this.f100192x, vector3D.f100192x, this.f100193y, vector3D.f100193y, this.f100194z, vector3D.f100194z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector3D)) {
            return false;
        }
        Vector3D vector3D = (Vector3D) obj;
        return vector3D.isNaN() ? isNaN() : this.f100192x == vector3D.f100192x && this.f100193y == vector3D.f100193y && this.f100194z == vector3D.f100194z;
    }

    public double getAlpha() {
        return FastMath.atan2(this.f100193y, this.f100192x);
    }

    public double getDelta() {
        return FastMath.asin(this.f100194z / getNorm());
    }

    @Override
    public double getNorm() {
        double d10 = this.f100192x;
        double d11 = this.f100193y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f100194z;
        return FastMath.sqrt(d12 + (d13 * d13));
    }

    @Override
    public double getNorm1() {
        return FastMath.abs(this.f100192x) + FastMath.abs(this.f100193y) + FastMath.abs(this.f100194z);
    }

    @Override
    public double getNormInf() {
        return FastMath.max(FastMath.max(FastMath.abs(this.f100192x), FastMath.abs(this.f100193y)), FastMath.abs(this.f100194z));
    }

    @Override
    public double getNormSq() {
        double d10 = this.f100192x;
        double d11 = this.f100193y;
        double d12 = (d10 * d10) + (d11 * d11);
        double d13 = this.f100194z;
        return d12 + (d13 * d13);
    }

    @Override
    public Space getSpace() {
        return Euclidean3D.getInstance();
    }

    public double getX() {
        return this.f100192x;
    }

    public double getY() {
        return this.f100193y;
    }

    public double getZ() {
        return this.f100194z;
    }

    public int hashCode() {
        if (isNaN()) {
            return 642;
        }
        return ((MathUtils.hash(this.f100192x) * 164) + (MathUtils.hash(this.f100193y) * 3) + MathUtils.hash(this.f100194z)) * 643;
    }

    @Override
    public boolean isInfinite() {
        return !isNaN() && (Double.isInfinite(this.f100192x) || Double.isInfinite(this.f100193y) || Double.isInfinite(this.f100194z));
    }

    @Override
    public boolean isNaN() {
        return Double.isNaN(this.f100192x) || Double.isNaN(this.f100193y) || Double.isNaN(this.f100194z);
    }

    public Vector3D orthogonal() throws MathArithmeticException {
        double norm = getNorm() * 0.6d;
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        if (FastMath.abs(this.f100192x) <= norm) {
            double d10 = this.f100193y;
            double d11 = this.f100194z;
            double sqrt = 1.0d / FastMath.sqrt((d10 * d10) + (d11 * d11));
            return new Vector3D(0.0d, sqrt * this.f100194z, (-sqrt) * this.f100193y);
        }
        if (FastMath.abs(this.f100193y) <= norm) {
            double d12 = this.f100192x;
            double d13 = this.f100194z;
            double sqrt2 = 1.0d / FastMath.sqrt((d12 * d12) + (d13 * d13));
            return new Vector3D((-sqrt2) * this.f100194z, 0.0d, sqrt2 * this.f100192x);
        }
        double d14 = this.f100192x;
        double d15 = this.f100193y;
        double sqrt3 = 1.0d / FastMath.sqrt((d14 * d14) + (d15 * d15));
        return new Vector3D(sqrt3 * this.f100193y, (-sqrt3) * this.f100192x, 0.0d);
    }

    public double[] toArray() {
        return new double[]{this.f100192x, this.f100193y, this.f100194z};
    }

    public String toString() {
        return Vector3DFormat.getInstance().format(this);
    }

    @Override
    public double distance(Point<Euclidean3D> point) {
        Vector3D vector3D = (Vector3D) point;
        double d10 = vector3D.f100192x - this.f100192x;
        double d11 = vector3D.f100193y - this.f100193y;
        double d12 = vector3D.f100194z - this.f100194z;
        return FastMath.sqrt((d10 * d10) + (d11 * d11) + (d12 * d12));
    }

    @Override
    public Vector<Euclidean3D> getZero() {
        return ZERO;
    }

    @Override
    public Vector<Euclidean3D> negate() {
        return new Vector3D(-this.f100192x, -this.f100193y, -this.f100194z);
    }

    @Override
    public Vector<Euclidean3D> normalize() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return scalarMultiply(1.0d / norm);
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    @Override
    public Vector<Euclidean3D> scalarMultiply(double d10) {
        return new Vector3D(d10 * this.f100192x, this.f100193y * d10, this.f100194z * d10);
    }

    @Override
    public String toString(NumberFormat numberFormat) {
        return new Vector3DFormat(numberFormat).format(this);
    }

    public static Vector3D crossProduct(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.crossProduct(vector3D2);
    }

    public static double dotProduct(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.dotProduct(vector3D2);
    }

    @Override
    public Vector<Euclidean3D> add(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return new Vector3D(this.f100192x + vector3D.f100192x, this.f100193y + vector3D.f100193y, this.f100194z + vector3D.f100194z);
    }

    @Override
    public Vector<Euclidean3D> subtract(Vector<Euclidean3D> vector) {
        Vector3D vector3D = (Vector3D) vector;
        return new Vector3D(this.f100192x - vector3D.f100192x, this.f100193y - vector3D.f100193y, this.f100194z - vector3D.f100194z);
    }

    public Vector3D(double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 3) {
            this.f100192x = dArr[0];
            this.f100193y = dArr[1];
            this.f100194z = dArr[2];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 3);
    }

    public static double distance1(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distance1(vector3D2);
    }

    public static double distanceSq(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distanceSq(vector3D2);
    }

    @Override
    public Vector<Euclidean3D> add(double d10, Vector<Euclidean3D> vector) {
        return new Vector3D(1.0d, this, d10, (Vector3D) vector);
    }

    @Override
    public Vector<Euclidean3D> subtract(double d10, Vector<Euclidean3D> vector) {
        return new Vector3D(1.0d, this, -d10, (Vector3D) vector);
    }

    public static double distanceInf(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distanceInf(vector3D2);
    }

    public static double distance(Vector3D vector3D, Vector3D vector3D2) {
        return vector3D.distance((Vector<Euclidean3D>) vector3D2);
    }

    public Vector3D(double d10, double d11) {
        double cos = FastMath.cos(d11);
        this.f100192x = FastMath.cos(d10) * cos;
        this.f100193y = FastMath.sin(d10) * cos;
        this.f100194z = FastMath.sin(d11);
    }

    public Vector3D(double d10, Vector3D vector3D) {
        this.f100192x = vector3D.f100192x * d10;
        this.f100193y = vector3D.f100193y * d10;
        this.f100194z = d10 * vector3D.f100194z;
    }

    public Vector3D(double d10, Vector3D vector3D, double d11, Vector3D vector3D2) {
        this.f100192x = MathArrays.linearCombination(d10, vector3D.f100192x, d11, vector3D2.f100192x);
        this.f100193y = MathArrays.linearCombination(d10, vector3D.f100193y, d11, vector3D2.f100193y);
        this.f100194z = MathArrays.linearCombination(d10, vector3D.f100194z, d11, vector3D2.f100194z);
    }

    public Vector3D(double d10, Vector3D vector3D, double d11, Vector3D vector3D2, double d12, Vector3D vector3D3) {
        this.f100192x = MathArrays.linearCombination(d10, vector3D.f100192x, d11, vector3D2.f100192x, d12, vector3D3.f100192x);
        this.f100193y = MathArrays.linearCombination(d10, vector3D.f100193y, d11, vector3D2.f100193y, d12, vector3D3.f100193y);
        this.f100194z = MathArrays.linearCombination(d10, vector3D.f100194z, d11, vector3D2.f100194z, d12, vector3D3.f100194z);
    }

    public Vector3D(double d10, Vector3D vector3D, double d11, Vector3D vector3D2, double d12, Vector3D vector3D3, double d13, Vector3D vector3D4) {
        this.f100192x = MathArrays.linearCombination(d10, vector3D.f100192x, d11, vector3D2.f100192x, d12, vector3D3.f100192x, d13, vector3D4.f100192x);
        this.f100193y = MathArrays.linearCombination(d10, vector3D.f100193y, d11, vector3D2.f100193y, d12, vector3D3.f100193y, d13, vector3D4.f100193y);
        this.f100194z = MathArrays.linearCombination(d10, vector3D.f100194z, d11, vector3D2.f100194z, d12, vector3D3.f100194z, d13, vector3D4.f100194z);
    }
}
