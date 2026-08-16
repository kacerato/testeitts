package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import java.net.HttpURLConnection;
import java.text.NumberFormat;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class FieldVector3D<T extends RealFieldElement<T>> implements Serializable {
    private static final long serialVersionUID = 20130224;

    private final T f100171x;

    private final T f100172y;

    private final T f100173z;

    public FieldVector3D(T t10, T t11, T t12) {
        this.f100171x = t10;
        this.f100172y = t11;
        this.f100173z = t12;
    }

    public static <T extends RealFieldElement<T>> T angle(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) throws MathArithmeticException {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.getNorm().multiply(fieldVector3D2.getNorm());
        if (realFieldElement.getReal() != 0.0d) {
            RealFieldElement dotProduct = dotProduct(fieldVector3D, fieldVector3D2);
            double real = realFieldElement.getReal() * 0.9999d;
            if (dotProduct.getReal() >= (-real) && dotProduct.getReal() <= real) {
                return (T) ((RealFieldElement) dotProduct.divide(realFieldElement)).acos();
            }
            FieldVector3D crossProduct = crossProduct(fieldVector3D, fieldVector3D2);
            if (dotProduct.getReal() >= 0.0d) {
                return (T) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin();
            }
            return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin()).subtract(3.141592653589793d)).negate();
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public FieldVector3D<T> add(FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.add(fieldVector3D.f100171x), (RealFieldElement) this.f100172y.add(fieldVector3D.f100172y), (RealFieldElement) this.f100173z.add(fieldVector3D.f100173z));
    }

    public FieldVector3D<T> crossProduct(FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.linearCombination(this.f100172y, fieldVector3D.f100173z, this.f100173z.negate(), fieldVector3D.f100172y), (RealFieldElement) this.f100172y.linearCombination(this.f100173z, fieldVector3D.f100171x, this.f100171x.negate(), fieldVector3D.f100173z), (RealFieldElement) this.f100173z.linearCombination(this.f100171x, fieldVector3D.f100172y, this.f100172y.negate(), fieldVector3D.f100171x));
    }

    public T distance(FieldVector3D<T> fieldVector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.f100171x.subtract(this.f100171x);
        RealFieldElement realFieldElement2 = (RealFieldElement) fieldVector3D.f100172y.subtract(this.f100172y);
        RealFieldElement realFieldElement3 = (RealFieldElement) fieldVector3D.f100173z.subtract(this.f100173z);
        return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3))).sqrt();
    }

    public T distance1(FieldVector3D<T> fieldVector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) fieldVector3D.f100171x.subtract(this.f100171x)).abs();
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) fieldVector3D.f100172y.subtract(this.f100172y)).abs();
        return (T) ((RealFieldElement) realFieldElement.add(realFieldElement2)).add((RealFieldElement) ((RealFieldElement) fieldVector3D.f100173z.subtract(this.f100173z)).abs());
    }

    public T distanceInf(FieldVector3D<T> fieldVector3D) {
        T t10 = (T) ((RealFieldElement) fieldVector3D.f100171x.subtract(this.f100171x)).abs();
        T t11 = (T) ((RealFieldElement) fieldVector3D.f100172y.subtract(this.f100172y)).abs();
        T t12 = (T) ((RealFieldElement) fieldVector3D.f100173z.subtract(this.f100173z)).abs();
        return t10.getReal() <= t11.getReal() ? t11.getReal() <= t12.getReal() ? t12 : t11 : t10.getReal() <= t12.getReal() ? t12 : t10;
    }

    public T distanceSq(FieldVector3D<T> fieldVector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.f100171x.subtract(this.f100171x);
        RealFieldElement realFieldElement2 = (RealFieldElement) fieldVector3D.f100172y.subtract(this.f100172y);
        RealFieldElement realFieldElement3 = (RealFieldElement) fieldVector3D.f100173z.subtract(this.f100173z);
        return (T) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
    }

    public T dotProduct(FieldVector3D<T> fieldVector3D) {
        T t10 = this.f100171x;
        return (T) t10.linearCombination(t10, fieldVector3D.f100171x, this.f100172y, fieldVector3D.f100172y, this.f100173z, fieldVector3D.f100173z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldVector3D)) {
            return false;
        }
        FieldVector3D fieldVector3D = (FieldVector3D) obj;
        return fieldVector3D.isNaN() ? isNaN() : this.f100171x.equals(fieldVector3D.f100171x) && this.f100172y.equals(fieldVector3D.f100172y) && this.f100173z.equals(fieldVector3D.f100173z);
    }

    public T getAlpha() {
        return (T) this.f100172y.atan2(this.f100171x);
    }

    public T getDelta() {
        return (T) ((RealFieldElement) this.f100173z.divide(getNorm())).asin();
    }

    public T getNorm() {
        T t10 = this.f100171x;
        RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(t10);
        T t11 = this.f100172y;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add((RealFieldElement) t11.multiply(t11));
        T t12 = this.f100173z;
        return (T) ((RealFieldElement) realFieldElement2.add((RealFieldElement) t12.multiply(t12))).sqrt();
    }

    public T getNorm1() {
        return (T) ((RealFieldElement) ((RealFieldElement) this.f100171x.abs()).add((RealFieldElement) this.f100172y.abs())).add((RealFieldElement) this.f100173z.abs());
    }

    public T getNormInf() {
        T t10 = (T) this.f100171x.abs();
        T t11 = (T) this.f100172y.abs();
        T t12 = (T) this.f100173z.abs();
        return t10.getReal() <= t11.getReal() ? t11.getReal() <= t12.getReal() ? t12 : t11 : t10.getReal() <= t12.getReal() ? t12 : t10;
    }

    public T getNormSq() {
        T t10 = this.f100171x;
        RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(t10);
        T t11 = this.f100172y;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add((RealFieldElement) t11.multiply(t11));
        T t12 = this.f100173z;
        return (T) realFieldElement2.add((RealFieldElement) t12.multiply(t12));
    }

    public T getX() {
        return this.f100171x;
    }

    public T getY() {
        return this.f100172y;
    }

    public T getZ() {
        return this.f100173z;
    }

    public int hashCode() {
        return isNaN() ? HttpURLConnection.HTTP_CONFLICT : ((this.f100171x.hashCode() * 107) + (this.f100172y.hashCode() * 83) + this.f100173z.hashCode()) * 311;
    }

    public boolean isInfinite() {
        return !isNaN() && (Double.isInfinite(this.f100171x.getReal()) || Double.isInfinite(this.f100172y.getReal()) || Double.isInfinite(this.f100173z.getReal()));
    }

    public boolean isNaN() {
        return Double.isNaN(this.f100171x.getReal()) || Double.isNaN(this.f100172y.getReal()) || Double.isNaN(this.f100173z.getReal());
    }

    public FieldVector3D<T> negate() {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.negate(), (RealFieldElement) this.f100172y.negate(), (RealFieldElement) this.f100173z.negate());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldVector3D<T> normalize() throws MathArithmeticException {
        RealFieldElement norm = getNorm();
        if (norm.getReal() != 0.0d) {
            return scalarMultiply((FieldVector3D<T>) norm.reciprocal());
        }
        throw new MathArithmeticException(LocalizedFormats.CANNOT_NORMALIZE_A_ZERO_NORM_VECTOR, new Object[0]);
    }

    public FieldVector3D<T> orthogonal() throws MathArithmeticException {
        double real = getNorm().getReal() * 0.6d;
        if (real == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        if (FastMath.abs(this.f100171x.getReal()) <= real) {
            T t10 = this.f100172y;
            RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(t10);
            T t11 = this.f100173z;
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add((RealFieldElement) t11.multiply(t11))).sqrt()).reciprocal();
            return new FieldVector3D<>((RealFieldElement) realFieldElement2.getField().getZero(), (RealFieldElement) realFieldElement2.multiply(this.f100173z), (RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(this.f100172y)).negate());
        }
        if (FastMath.abs(this.f100172y.getReal()) <= real) {
            T t12 = this.f100171x;
            RealFieldElement realFieldElement3 = (RealFieldElement) t12.multiply(t12);
            T t13 = this.f100173z;
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.add((RealFieldElement) t13.multiply(t13))).sqrt()).reciprocal();
            return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) realFieldElement4.multiply(this.f100173z)).negate(), (RealFieldElement) realFieldElement4.getField().getZero(), (RealFieldElement) realFieldElement4.multiply(this.f100171x));
        }
        T t14 = this.f100171x;
        RealFieldElement realFieldElement5 = (RealFieldElement) t14.multiply(t14);
        T t15 = this.f100172y;
        RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement5.add((RealFieldElement) t15.multiply(t15))).sqrt()).reciprocal();
        return new FieldVector3D<>((RealFieldElement) realFieldElement6.multiply(this.f100172y), (RealFieldElement) ((RealFieldElement) realFieldElement6.multiply(this.f100171x)).negate(), (RealFieldElement) realFieldElement6.getField().getZero());
    }

    public FieldVector3D<T> scalarMultiply(T t10) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.multiply(t10), (RealFieldElement) this.f100172y.multiply(t10), (RealFieldElement) this.f100173z.multiply(t10));
    }

    public FieldVector3D<T> subtract(FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.subtract(fieldVector3D.f100171x), (RealFieldElement) this.f100172y.subtract(fieldVector3D.f100172y), (RealFieldElement) this.f100173z.subtract(fieldVector3D.f100173z));
    }

    public T[] toArray() {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(this.f100171x.getField(), 3));
        tArr[0] = this.f100171x;
        tArr[1] = this.f100172y;
        tArr[2] = this.f100173z;
        return tArr;
    }

    public String toString() {
        return Vector3DFormat.getInstance().format(toVector3D());
    }

    public Vector3D toVector3D() {
        return new Vector3D(this.f100171x.getReal(), this.f100172y.getReal(), this.f100173z.getReal());
    }

    public FieldVector3D<T> add(Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.add(vector3D.getX()), (RealFieldElement) this.f100172y.add(vector3D.getY()), (RealFieldElement) this.f100173z.add(vector3D.getZ()));
    }

    public FieldVector3D<T> crossProduct(Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.linearCombination(vector3D.getZ(), this.f100172y, -vector3D.getY(), this.f100173z), (RealFieldElement) this.f100172y.linearCombination(vector3D.getX(), this.f100173z, -vector3D.getZ(), this.f100171x), (RealFieldElement) this.f100173z.linearCombination(vector3D.getY(), this.f100171x, -vector3D.getX(), this.f100172y));
    }

    public T dotProduct(Vector3D vector3D) {
        return (T) this.f100171x.linearCombination(vector3D.getX(), this.f100171x, vector3D.getY(), this.f100172y, vector3D.getZ(), this.f100173z);
    }

    public FieldVector3D<T> scalarMultiply(double d10) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.multiply(d10), (RealFieldElement) this.f100172y.multiply(d10), (RealFieldElement) this.f100173z.multiply(d10));
    }

    public FieldVector3D<T> subtract(Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.subtract(vector3D.getX()), (RealFieldElement) this.f100172y.subtract(vector3D.getY()), (RealFieldElement) this.f100173z.subtract(vector3D.getZ()));
    }

    public String toString(NumberFormat numberFormat) {
        return new Vector3DFormat(numberFormat).format(toVector3D());
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> crossProduct(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.crossProduct(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T dotProduct(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.dotProduct(fieldVector3D2);
    }

    public FieldVector3D<T> add(T t10, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.getField().getOne(), this, t10, fieldVector3D);
    }

    public FieldVector3D<T> subtract(T t10, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.getField().getOne(), this, (RealFieldElement) t10.negate(), fieldVector3D);
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> crossProduct(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.crossProduct(vector3D);
    }

    public static <T extends RealFieldElement<T>> T dotProduct(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.dotProduct(vector3D);
    }

    public FieldVector3D<T> add(T t10, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.add(t10.multiply(vector3D.getX())), (RealFieldElement) this.f100172y.add(t10.multiply(vector3D.getY())), (RealFieldElement) this.f100173z.add(t10.multiply(vector3D.getZ())));
    }

    public FieldVector3D<T> subtract(T t10, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.subtract(t10.multiply(vector3D.getX())), (RealFieldElement) this.f100172y.subtract(t10.multiply(vector3D.getY())), (RealFieldElement) this.f100173z.subtract(t10.multiply(vector3D.getZ())));
    }

    public FieldVector3D(T[] tArr) throws DimensionMismatchException {
        if (tArr.length == 3) {
            this.f100171x = tArr[0];
            this.f100172y = tArr[1];
            this.f100173z = tArr[2];
            return;
        }
        throw new DimensionMismatchException(tArr.length, 3);
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> crossProduct(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>((RealFieldElement) ((FieldVector3D) fieldVector3D).f100171x.linearCombination(vector3D.getY(), ((FieldVector3D) fieldVector3D).f100173z, -vector3D.getZ(), ((FieldVector3D) fieldVector3D).f100172y), (RealFieldElement) ((FieldVector3D) fieldVector3D).f100172y.linearCombination(vector3D.getZ(), ((FieldVector3D) fieldVector3D).f100171x, -vector3D.getX(), ((FieldVector3D) fieldVector3D).f100173z), (RealFieldElement) ((FieldVector3D) fieldVector3D).f100173z.linearCombination(vector3D.getX(), ((FieldVector3D) fieldVector3D).f100172y, -vector3D.getY(), ((FieldVector3D) fieldVector3D).f100171x));
    }

    public static <T extends RealFieldElement<T>> T dotProduct(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.dotProduct(vector3D);
    }

    public FieldVector3D<T> add(double d10, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>(1.0d, this, d10, fieldVector3D);
    }

    public T distance(Vector3D vector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) this.f100171x.subtract(vector3D.getX());
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100172y.subtract(vector3D.getY());
        RealFieldElement realFieldElement3 = (RealFieldElement) this.f100173z.subtract(vector3D.getZ());
        return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3))).sqrt();
    }

    public T distance1(Vector3D vector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) this.f100171x.subtract(vector3D.getX())).abs();
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) this.f100172y.subtract(vector3D.getY())).abs();
        return (T) ((RealFieldElement) realFieldElement.add(realFieldElement2)).add((RealFieldElement) ((RealFieldElement) this.f100173z.subtract(vector3D.getZ())).abs());
    }

    public T distanceSq(Vector3D vector3D) {
        RealFieldElement realFieldElement = (RealFieldElement) this.f100171x.subtract(vector3D.getX());
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100172y.subtract(vector3D.getY());
        RealFieldElement realFieldElement3 = (RealFieldElement) this.f100173z.subtract(vector3D.getZ());
        return (T) ((RealFieldElement) ((RealFieldElement) realFieldElement.multiply(realFieldElement)).add((RealFieldElement) realFieldElement2.multiply(realFieldElement2))).add((RealFieldElement) realFieldElement3.multiply(realFieldElement3));
    }

    public FieldVector3D<T> subtract(double d10, FieldVector3D<T> fieldVector3D) {
        return new FieldVector3D<>(1.0d, this, -d10, fieldVector3D);
    }

    public FieldVector3D<T> add(double d10, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.add(vector3D.getX() * d10), (RealFieldElement) this.f100172y.add(vector3D.getY() * d10), (RealFieldElement) this.f100173z.add(d10 * vector3D.getZ()));
    }

    public FieldVector3D<T> subtract(double d10, Vector3D vector3D) {
        return new FieldVector3D<>((RealFieldElement) this.f100171x.subtract(vector3D.getX() * d10), (RealFieldElement) this.f100172y.subtract(vector3D.getY() * d10), (RealFieldElement) this.f100173z.subtract(d10 * vector3D.getZ()));
    }

    public T distanceInf(Vector3D vector3D) {
        T t10 = (T) ((RealFieldElement) this.f100171x.subtract(vector3D.getX())).abs();
        T t11 = (T) ((RealFieldElement) this.f100172y.subtract(vector3D.getY())).abs();
        T t12 = (T) ((RealFieldElement) this.f100173z.subtract(vector3D.getZ())).abs();
        return t10.getReal() <= t11.getReal() ? t11.getReal() <= t12.getReal() ? t12 : t11 : t10.getReal() <= t12.getReal() ? t12 : t10;
    }

    public static <T extends RealFieldElement<T>> T distance(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distance(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distance1(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distance1(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distanceSq(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distanceSq(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distance(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distance(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distance1(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distance1(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distanceSq(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distanceSq(vector3D);
    }

    public FieldVector3D(T t10, T t11) {
        RealFieldElement realFieldElement = (RealFieldElement) t11.cos();
        this.f100171x = (T) ((RealFieldElement) t10.cos()).multiply(realFieldElement);
        this.f100172y = (T) ((RealFieldElement) t10.sin()).multiply(realFieldElement);
        this.f100173z = (T) t11.sin();
    }

    public static <T extends RealFieldElement<T>> T distance(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distance(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distance1(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distance1(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distanceSq(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distanceSq(vector3D);
    }

    public static <T extends RealFieldElement<T>> T angle(FieldVector3D<T> fieldVector3D, Vector3D vector3D) throws MathArithmeticException {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.getNorm().multiply(vector3D.getNorm());
        if (realFieldElement.getReal() != 0.0d) {
            RealFieldElement dotProduct = dotProduct(fieldVector3D, vector3D);
            double real = realFieldElement.getReal() * 0.9999d;
            if (dotProduct.getReal() >= (-real) && dotProduct.getReal() <= real) {
                return (T) ((RealFieldElement) dotProduct.divide(realFieldElement)).acos();
            }
            FieldVector3D crossProduct = crossProduct(fieldVector3D, vector3D);
            if (dotProduct.getReal() >= 0.0d) {
                return (T) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin();
            }
            return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) crossProduct.getNorm().divide(realFieldElement)).asin()).subtract(3.141592653589793d)).negate();
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
    }

    public static <T extends RealFieldElement<T>> T distanceInf(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) {
        return fieldVector3D.distanceInf(fieldVector3D2);
    }

    public static <T extends RealFieldElement<T>> T distanceInf(FieldVector3D<T> fieldVector3D, Vector3D vector3D) {
        return fieldVector3D.distanceInf(vector3D);
    }

    public static <T extends RealFieldElement<T>> T distanceInf(Vector3D vector3D, FieldVector3D<T> fieldVector3D) {
        return fieldVector3D.distanceInf(vector3D);
    }

    public FieldVector3D(T t10, FieldVector3D<T> fieldVector3D) {
        this.f100171x = (T) t10.multiply(fieldVector3D.f100171x);
        this.f100172y = (T) t10.multiply(fieldVector3D.f100172y);
        this.f100173z = (T) t10.multiply(fieldVector3D.f100173z);
    }

    public FieldVector3D(T t10, Vector3D vector3D) {
        this.f100171x = (T) t10.multiply(vector3D.getX());
        this.f100172y = (T) t10.multiply(vector3D.getY());
        this.f100173z = (T) t10.multiply(vector3D.getZ());
    }

    public static <T extends RealFieldElement<T>> T angle(Vector3D vector3D, FieldVector3D<T> fieldVector3D) throws MathArithmeticException {
        return (T) angle(fieldVector3D, vector3D);
    }

    public FieldVector3D(double d10, FieldVector3D<T> fieldVector3D) {
        this.f100171x = (T) fieldVector3D.f100171x.multiply(d10);
        this.f100172y = (T) fieldVector3D.f100172y.multiply(d10);
        this.f100173z = (T) fieldVector3D.f100173z.multiply(d10);
    }

    public FieldVector3D(T t10, FieldVector3D<T> fieldVector3D, T t11, FieldVector3D<T> fieldVector3D2) {
        this.f100171x = (T) t10.linearCombination(t10, fieldVector3D.getX(), t11, fieldVector3D2.getX());
        this.f100172y = (T) t10.linearCombination(t10, fieldVector3D.getY(), t11, fieldVector3D2.getY());
        this.f100173z = (T) t10.linearCombination(t10, fieldVector3D.getZ(), t11, fieldVector3D2.getZ());
    }

    public FieldVector3D(T t10, Vector3D vector3D, T t11, Vector3D vector3D2) {
        this.f100171x = (T) t10.linearCombination(vector3D.getX(), t10, vector3D2.getX(), t11);
        this.f100172y = (T) t10.linearCombination(vector3D.getY(), t10, vector3D2.getY(), t11);
        this.f100173z = (T) t10.linearCombination(vector3D.getZ(), t10, vector3D2.getZ(), t11);
    }

    public FieldVector3D(double d10, FieldVector3D<T> fieldVector3D, double d11, FieldVector3D<T> fieldVector3D2) {
        T x10 = fieldVector3D.getX();
        this.f100171x = (T) x10.linearCombination(d10, fieldVector3D.getX(), d11, fieldVector3D2.getX());
        this.f100172y = (T) x10.linearCombination(d10, fieldVector3D.getY(), d11, fieldVector3D2.getY());
        this.f100173z = (T) x10.linearCombination(d10, fieldVector3D.getZ(), d11, fieldVector3D2.getZ());
    }

    public FieldVector3D(T t10, FieldVector3D<T> fieldVector3D, T t11, FieldVector3D<T> fieldVector3D2, T t12, FieldVector3D<T> fieldVector3D3) {
        this.f100171x = (T) t10.linearCombination(t10, fieldVector3D.getX(), t11, fieldVector3D2.getX(), t12, fieldVector3D3.getX());
        this.f100172y = (T) t10.linearCombination(t10, fieldVector3D.getY(), t11, fieldVector3D2.getY(), t12, fieldVector3D3.getY());
        this.f100173z = (T) t10.linearCombination(t10, fieldVector3D.getZ(), t11, fieldVector3D2.getZ(), t12, fieldVector3D3.getZ());
    }

    public FieldVector3D(T t10, Vector3D vector3D, T t11, Vector3D vector3D2, T t12, Vector3D vector3D3) {
        this.f100171x = (T) t10.linearCombination(vector3D.getX(), t10, vector3D2.getX(), t11, vector3D3.getX(), t12);
        this.f100172y = (T) t10.linearCombination(vector3D.getY(), t10, vector3D2.getY(), t11, vector3D3.getY(), t12);
        this.f100173z = (T) t10.linearCombination(vector3D.getZ(), t10, vector3D2.getZ(), t11, vector3D3.getZ(), t12);
    }

    public FieldVector3D(double d10, FieldVector3D<T> fieldVector3D, double d11, FieldVector3D<T> fieldVector3D2, double d12, FieldVector3D<T> fieldVector3D3) {
        T x10 = fieldVector3D.getX();
        this.f100171x = (T) x10.linearCombination(d10, fieldVector3D.getX(), d11, fieldVector3D2.getX(), d12, fieldVector3D3.getX());
        this.f100172y = (T) x10.linearCombination(d10, fieldVector3D.getY(), d11, fieldVector3D2.getY(), d12, fieldVector3D3.getY());
        this.f100173z = (T) x10.linearCombination(d10, fieldVector3D.getZ(), d11, fieldVector3D2.getZ(), d12, fieldVector3D3.getZ());
    }

    public FieldVector3D(T t10, FieldVector3D<T> fieldVector3D, T t11, FieldVector3D<T> fieldVector3D2, T t12, FieldVector3D<T> fieldVector3D3, T t13, FieldVector3D<T> fieldVector3D4) {
        this.f100171x = (T) t10.linearCombination(t10, fieldVector3D.getX(), t11, fieldVector3D2.getX(), t12, fieldVector3D3.getX(), t13, fieldVector3D4.getX());
        this.f100172y = (T) t10.linearCombination(t10, fieldVector3D.getY(), t11, fieldVector3D2.getY(), t12, fieldVector3D3.getY(), t13, fieldVector3D4.getY());
        this.f100173z = (T) t10.linearCombination(t10, fieldVector3D.getZ(), t11, fieldVector3D2.getZ(), t12, fieldVector3D3.getZ(), t13, fieldVector3D4.getZ());
    }

    public FieldVector3D(T t10, Vector3D vector3D, T t11, Vector3D vector3D2, T t12, Vector3D vector3D3, T t13, Vector3D vector3D4) {
        this.f100171x = (T) t10.linearCombination(vector3D.getX(), t10, vector3D2.getX(), t11, vector3D3.getX(), t12, vector3D4.getX(), t13);
        this.f100172y = (T) t10.linearCombination(vector3D.getY(), t10, vector3D2.getY(), t11, vector3D3.getY(), t12, vector3D4.getY(), t13);
        this.f100173z = (T) t10.linearCombination(vector3D.getZ(), t10, vector3D2.getZ(), t11, vector3D3.getZ(), t12, vector3D4.getZ(), t13);
    }

    public FieldVector3D(double d10, FieldVector3D<T> fieldVector3D, double d11, FieldVector3D<T> fieldVector3D2, double d12, FieldVector3D<T> fieldVector3D3, double d13, FieldVector3D<T> fieldVector3D4) {
        T x10 = fieldVector3D.getX();
        this.f100171x = (T) x10.linearCombination(d10, fieldVector3D.getX(), d11, fieldVector3D2.getX(), d12, fieldVector3D3.getX(), d13, fieldVector3D4.getX());
        this.f100172y = (T) x10.linearCombination(d10, fieldVector3D.getY(), d11, fieldVector3D2.getY(), d12, fieldVector3D3.getY(), d13, fieldVector3D4.getY());
        this.f100173z = (T) x10.linearCombination(d10, fieldVector3D.getZ(), d11, fieldVector3D2.getZ(), d12, fieldVector3D3.getZ(), d13, fieldVector3D4.getZ());
    }
}
