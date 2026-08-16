package org.apache.commons.math3.geometry.euclidean.twod;

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

public class Vector2D implements Vector<Euclidean2D> {
    private static final long serialVersionUID = 266938651998679754L;

    private final double f100195x;

    private final double f100196y;
    public static final Vector2D ZERO = new Vector2D(0.0d, 0.0d);
    public static final Vector2D NaN = new Vector2D(Double.NaN, Double.NaN);
    public static final Vector2D POSITIVE_INFINITY = new Vector2D(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
    public static final Vector2D NEGATIVE_INFINITY = new Vector2D(Double.NEGATIVE_INFINITY, Double.NEGATIVE_INFINITY);

    public Vector2D(double d10, double d11) {
        this.f100195x = d10;
        this.f100196y = d11;
    }

    public static double angle(Vector2D vector2D, Vector2D vector2D2) throws MathArithmeticException {
        double norm = vector2D.getNorm() * vector2D2.getNorm();
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        double dotProduct = vector2D.dotProduct(vector2D2);
        double d10 = 0.9999d * norm;
        if (dotProduct >= (-d10) && dotProduct <= d10) {
            return FastMath.acos(dotProduct / norm);
        }
        double abs = FastMath.abs(MathArrays.linearCombination(vector2D.f100195x, vector2D2.f100196y, -vector2D.f100196y, vector2D2.f100195x));
        return dotProduct >= 0.0d ? FastMath.asin(abs / norm) : 3.141592653589793d - FastMath.asin(abs / norm);
    }

    public double crossProduct(Vector2D vector2D, Vector2D vector2D2) {
        return MathArrays.linearCombination(vector2D2.getX() - vector2D.getX(), getY() - vector2D.getY(), -(getX() - vector2D.getX()), vector2D2.getY() - vector2D.getY());
    }

    @Override
    public double distance(Vector<Euclidean2D> vector) {
        return distance((Point<Euclidean2D>) vector);
    }

    @Override
    public double distance1(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return FastMath.abs(vector2D.f100195x - this.f100195x) + FastMath.abs(vector2D.f100196y - this.f100196y);
    }

    @Override
    public double distanceInf(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return FastMath.max(FastMath.abs(vector2D.f100195x - this.f100195x), FastMath.abs(vector2D.f100196y - this.f100196y));
    }

    @Override
    public double distanceSq(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        double d10 = vector2D.f100195x - this.f100195x;
        double d11 = vector2D.f100196y - this.f100196y;
        return (d10 * d10) + (d11 * d11);
    }

    @Override
    public double dotProduct(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return MathArrays.linearCombination(this.f100195x, vector2D.f100195x, this.f100196y, vector2D.f100196y);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Vector2D)) {
            return false;
        }
        Vector2D vector2D = (Vector2D) obj;
        return vector2D.isNaN() ? isNaN() : this.f100195x == vector2D.f100195x && this.f100196y == vector2D.f100196y;
    }

    @Override
    public double getNorm() {
        double d10 = this.f100195x;
        double d11 = this.f100196y;
        return FastMath.sqrt((d10 * d10) + (d11 * d11));
    }

    @Override
    public double getNorm1() {
        return FastMath.abs(this.f100195x) + FastMath.abs(this.f100196y);
    }

    @Override
    public double getNormInf() {
        return FastMath.max(FastMath.abs(this.f100195x), FastMath.abs(this.f100196y));
    }

    @Override
    public double getNormSq() {
        double d10 = this.f100195x;
        double d11 = this.f100196y;
        return (d10 * d10) + (d11 * d11);
    }

    @Override
    public Space getSpace() {
        return Euclidean2D.getInstance();
    }

    public double getX() {
        return this.f100195x;
    }

    public double getY() {
        return this.f100196y;
    }

    public int hashCode() {
        if (isNaN()) {
            return 542;
        }
        return ((MathUtils.hash(this.f100195x) * 76) + MathUtils.hash(this.f100196y)) * 122;
    }

    @Override
    public boolean isInfinite() {
        return !isNaN() && (Double.isInfinite(this.f100195x) || Double.isInfinite(this.f100196y));
    }

    @Override
    public boolean isNaN() {
        return Double.isNaN(this.f100195x) || Double.isNaN(this.f100196y);
    }

    public double[] toArray() {
        return new double[]{this.f100195x, this.f100196y};
    }

    public String toString() {
        return Vector2DFormat.getInstance().format(this);
    }

    @Override
    public double distance(Point<Euclidean2D> point) {
        Vector2D vector2D = (Vector2D) point;
        double d10 = vector2D.f100195x - this.f100195x;
        double d11 = vector2D.f100196y - this.f100196y;
        return FastMath.sqrt((d10 * d10) + (d11 * d11));
    }

    @Override
    public Vector<Euclidean2D> getZero() {
        return ZERO;
    }

    @Override
    public Vector<Euclidean2D> negate() {
        return new Vector2D(-this.f100195x, -this.f100196y);
    }

    @Override
    public Vector<Euclidean2D> normalize() throws MathArithmeticException {
        double norm = getNorm();
        if (norm != 0.0d) {
            return scalarMultiply(1.0d / norm);
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    @Override
    public Vector<Euclidean2D> scalarMultiply(double d10) {
        return new Vector2D(this.f100195x * d10, d10 * this.f100196y);
    }

    @Override
    public String toString(NumberFormat numberFormat) {
        return new Vector2DFormat(numberFormat).format(this);
    }

    @Override
    public Vector<Euclidean2D> add(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f100195x + vector2D.getX(), this.f100196y + vector2D.getY());
    }

    @Override
    public Vector<Euclidean2D> subtract(Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f100195x - vector2D.f100195x, this.f100196y - vector2D.f100196y);
    }

    public Vector2D(double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 2) {
            this.f100195x = dArr[0];
            this.f100196y = dArr[1];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 2);
    }

    public static double distanceSq(Vector2D vector2D, Vector2D vector2D2) {
        return vector2D.distanceSq(vector2D2);
    }

    public static double distanceInf(Vector2D vector2D, Vector2D vector2D2) {
        return vector2D.distanceInf(vector2D2);
    }

    @Override
    public Vector<Euclidean2D> add(double d10, Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f100195x + (vector2D.getX() * d10), this.f100196y + (d10 * vector2D.getY()));
    }

    @Override
    public Vector<Euclidean2D> subtract(double d10, Vector<Euclidean2D> vector) {
        Vector2D vector2D = (Vector2D) vector;
        return new Vector2D(this.f100195x - (vector2D.getX() * d10), this.f100196y - (d10 * vector2D.getY()));
    }

    public static double distance(Vector2D vector2D, Vector2D vector2D2) {
        return vector2D.distance((Vector<Euclidean2D>) vector2D2);
    }

    public Vector2D(double d10, Vector2D vector2D) {
        this.f100195x = vector2D.f100195x * d10;
        this.f100196y = d10 * vector2D.f100196y;
    }

    public Vector2D(double d10, Vector2D vector2D, double d11, Vector2D vector2D2) {
        this.f100195x = (vector2D.f100195x * d10) + (vector2D2.f100195x * d11);
        this.f100196y = (d10 * vector2D.f100196y) + (d11 * vector2D2.f100196y);
    }

    public Vector2D(double d10, Vector2D vector2D, double d11, Vector2D vector2D2, double d12, Vector2D vector2D3) {
        this.f100195x = (vector2D.f100195x * d10) + (vector2D2.f100195x * d11) + (vector2D3.f100195x * d12);
        this.f100196y = (d10 * vector2D.f100196y) + (d11 * vector2D2.f100196y) + (d12 * vector2D3.f100196y);
    }

    public Vector2D(double d10, Vector2D vector2D, double d11, Vector2D vector2D2, double d12, Vector2D vector2D3, double d13, Vector2D vector2D4) {
        this.f100195x = (vector2D.f100195x * d10) + (vector2D2.f100195x * d11) + (vector2D3.f100195x * d12) + (vector2D4.f100195x * d13);
        this.f100196y = (vector2D.f100196y * d10) + (vector2D2.f100196y * d11) + (vector2D3.f100196y * d12) + (vector2D4.f100196y * d13);
    }
}
