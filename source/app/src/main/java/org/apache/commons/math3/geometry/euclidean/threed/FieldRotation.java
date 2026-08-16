package org.apache.commons.math3.geometry.euclidean.threed;

import java.io.Serializable;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

public class FieldRotation<T extends RealFieldElement<T>> implements Serializable {
    private static final long serialVersionUID = 20130224;

    private final T f100167q0;

    private final T f100168q1;

    private final T f100169q2;

    private final T f100170q3;

    public FieldRotation(T t10, T t11, T t12, T t13, boolean z10) {
        if (z10) {
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t10.multiply(t10)).add((RealFieldElement) t11.multiply(t11))).add((RealFieldElement) t12.multiply(t12))).add((RealFieldElement) t13.multiply(t13))).sqrt()).reciprocal();
            this.f100167q0 = (T) realFieldElement.multiply(t10);
            this.f100168q1 = (T) realFieldElement.multiply(t11);
            this.f100169q2 = (T) realFieldElement.multiply(t12);
            this.f100170q3 = (T) realFieldElement.multiply(t13);
            return;
        }
        this.f100167q0 = t10;
        this.f100168q1 = t11;
        this.f100169q2 = t12;
        this.f100170q3 = t13;
    }

    private T[] buildArray(T t10, T t11, T t12) {
        T[] tArr = (T[]) ((RealFieldElement[]) MathArrays.buildArray(t10.getField(), 3));
        tArr[0] = t10;
        tArr[1] = t11;
        tArr[2] = t12;
        return tArr;
    }

    private FieldRotation<T> composeInternal(FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100167q0)).subtract((RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100168q1)).add((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100169q2))).add((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100170q3))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100167q0)).add((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100168q1))).add((RealFieldElement) ((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100170q3)).subtract((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100169q2))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100167q0)).add((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100169q2))).add((RealFieldElement) ((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100168q1)).subtract((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100170q3))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100167q0)).add((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100170q3))).add((RealFieldElement) ((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100169q2)).subtract((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100168q1))), false);
    }

    private FieldRotation<T> composeInverseInternal(FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100167q0)).add((RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100168q1)).add((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100169q2))).add((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100170q3)))).negate(), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100168q1)).add((RealFieldElement) ((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100170q3)).subtract((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100169q2)))).subtract((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100167q0)), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100169q2)).add((RealFieldElement) ((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100168q1)).subtract((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100170q3)))).subtract((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100167q0)), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) fieldRotation.f100167q0.multiply(this.f100170q3)).add((RealFieldElement) ((RealFieldElement) fieldRotation.f100168q1.multiply(this.f100169q2)).subtract((RealFieldElement) fieldRotation.f100169q2.multiply(this.f100168q1)))).subtract((RealFieldElement) fieldRotation.f100170q3.multiply(this.f100167q0)), false);
    }

    public static <T extends RealFieldElement<T>> T distance(FieldRotation<T> fieldRotation, FieldRotation<T> fieldRotation2) {
        return fieldRotation.composeInverseInternal(fieldRotation2).getAngle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private T[] mat2quat(T[][] tArr) {
        T[] tArr2 = (T[]) ((RealFieldElement[]) MathArrays.buildArray(tArr[0][0].getField(), 4));
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) tArr[0][0].add(tArr[1][1])).add(tArr[2][2]);
        if (realFieldElement.getReal() > -0.19d) {
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(1.0d)).sqrt()).multiply(0.5d);
            tArr2[0] = realFieldElement2;
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) realFieldElement2.reciprocal()).multiply(0.25d);
            tArr2[1] = (RealFieldElement) realFieldElement3.multiply((RealFieldElement) tArr[1][2].subtract(tArr[2][1]));
            tArr2[2] = (RealFieldElement) realFieldElement3.multiply((RealFieldElement) tArr[2][0].subtract(tArr[0][2]));
            tArr2[3] = (RealFieldElement) realFieldElement3.multiply((RealFieldElement) tArr[0][1].subtract(tArr[1][0]));
        } else {
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) tArr[0][0].subtract(tArr[1][1])).subtract(tArr[2][2]);
            if (realFieldElement4.getReal() > -0.19d) {
                RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement4.add(1.0d)).sqrt()).multiply(0.5d);
                tArr2[1] = realFieldElement5;
                RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) realFieldElement5.reciprocal()).multiply(0.25d);
                tArr2[0] = (RealFieldElement) realFieldElement6.multiply((RealFieldElement) tArr[1][2].subtract(tArr[2][1]));
                tArr2[2] = (RealFieldElement) realFieldElement6.multiply((RealFieldElement) tArr[0][1].add(tArr[1][0]));
                tArr2[3] = (RealFieldElement) realFieldElement6.multiply((RealFieldElement) tArr[0][2].add(tArr[2][0]));
            } else {
                RealFieldElement realFieldElement7 = (RealFieldElement) ((RealFieldElement) tArr[1][1].subtract(tArr[0][0])).subtract(tArr[2][2]);
                if (realFieldElement7.getReal() > -0.19d) {
                    RealFieldElement realFieldElement8 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement7.add(1.0d)).sqrt()).multiply(0.5d);
                    tArr2[2] = realFieldElement8;
                    RealFieldElement realFieldElement9 = (RealFieldElement) ((RealFieldElement) realFieldElement8.reciprocal()).multiply(0.25d);
                    tArr2[0] = (RealFieldElement) realFieldElement9.multiply((RealFieldElement) tArr[2][0].subtract(tArr[0][2]));
                    tArr2[1] = (RealFieldElement) realFieldElement9.multiply((RealFieldElement) tArr[0][1].add(tArr[1][0]));
                    tArr2[3] = (RealFieldElement) realFieldElement9.multiply((RealFieldElement) tArr[2][1].add(tArr[1][2]));
                } else {
                    RealFieldElement realFieldElement10 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[2][2].subtract(tArr[0][0])).subtract(tArr[1][1])).add(1.0d)).sqrt()).multiply(0.5d);
                    tArr2[3] = realFieldElement10;
                    RealFieldElement realFieldElement11 = (RealFieldElement) ((RealFieldElement) realFieldElement10.reciprocal()).multiply(0.25d);
                    tArr2[0] = (RealFieldElement) realFieldElement11.multiply((RealFieldElement) tArr[0][1].subtract(tArr[1][0]));
                    tArr2[1] = (RealFieldElement) realFieldElement11.multiply((RealFieldElement) tArr[0][2].add(tArr[2][0]));
                    tArr2[2] = (RealFieldElement) realFieldElement11.multiply((RealFieldElement) tArr[2][1].add(tArr[1][2]));
                }
            }
        }
        return tArr2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r0v34, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r12v2, types: [T extends org.apache.commons.math3.RealFieldElement<T>[][], org.apache.commons.math3.RealFieldElement[][]] */
    /* JADX WARN: Type inference failed for: r15v48 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v39 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r3v43 */
    /* JADX WARN: Type inference failed for: r3v44, types: [org.apache.commons.math3.RealFieldElement] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    private T[][] orthogonalizeMatrix(T[][] tArr, double d10) throws NotARotationMatrixException {
        char c10 = 0;
        T[] tArr2 = tArr[0];
        T t10 = tArr2[0];
        T t11 = tArr2[1];
        T t12 = tArr2[2];
        T[] tArr3 = tArr[1];
        T t13 = tArr3[0];
        T t14 = tArr3[1];
        T t15 = tArr3[2];
        T[] tArr4 = tArr[2];
        T t16 = tArr4[0];
        T t17 = tArr4[1];
        T t18 = tArr4[2];
        ?? r12 = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(t10.getField(), 3, 3));
        double d11 = 0.0d;
        int i10 = 0;
        T t19 = t12;
        T t20 = t10;
        T t21 = t11;
        T t22 = t15;
        T t23 = t13;
        T t24 = t14;
        T t25 = t18;
        T t26 = t16;
        T t27 = t17;
        while (true) {
            int i11 = i10 + 1;
            if (i11 >= 11) {
                throw new NotARotationMatrixException(LocalizedFormats.UNABLE_TO_ORTHOGONOLIZE_MATRIX, Integer.valueOf(i10));
            }
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[c10][c10].multiply(t20)).add((RealFieldElement) tArr[1][c10].multiply(t23))).add((RealFieldElement) tArr[2][c10].multiply(t26));
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[c10][1].multiply(t20)).add((RealFieldElement) tArr[1][1].multiply(t23))).add((RealFieldElement) tArr[2][1].multiply(t26));
            double d12 = d11;
            RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][2].multiply(t20)).add((RealFieldElement) tArr[1][2].multiply(t23))).add((RealFieldElement) tArr[2][2].multiply(t26));
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][0].multiply(t21)).add((RealFieldElement) tArr[1][0].multiply(t24))).add((RealFieldElement) tArr[2][0].multiply(t27));
            T t28 = t26;
            RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][1].multiply(t21)).add((RealFieldElement) tArr[1][1].multiply(t24))).add((RealFieldElement) tArr[2][1].multiply(t27));
            T t29 = t23;
            RealFieldElement realFieldElement6 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][2].multiply(t21)).add((RealFieldElement) tArr[1][2].multiply(t24))).add((RealFieldElement) tArr[2][2].multiply(t27));
            T t30 = t27;
            RealFieldElement realFieldElement7 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][0].multiply(t19)).add((RealFieldElement) tArr[1][0].multiply(t22))).add((RealFieldElement) tArr[2][0].multiply(t25));
            RealFieldElement realFieldElement8 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][1].multiply(t19)).add((RealFieldElement) tArr[1][1].multiply(t22))).add((RealFieldElement) tArr[2][1].multiply(t25));
            T t31 = t24;
            RealFieldElement realFieldElement9 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) tArr[0][2].multiply(t19)).add((RealFieldElement) tArr[1][2].multiply(t22))).add((RealFieldElement) tArr[2][2].multiply(t25));
            T t32 = t25;
            r12[0][0] = (RealFieldElement) t20.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t20.multiply(realFieldElement)).add((RealFieldElement) t21.multiply(realFieldElement2))).add((RealFieldElement) t19.multiply(realFieldElement3))).subtract(tArr[0][0])).multiply(0.5d));
            r12[0][1] = (RealFieldElement) t21.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t20.multiply(realFieldElement4)).add((RealFieldElement) t21.multiply(realFieldElement5))).add((RealFieldElement) t19.multiply(realFieldElement6))).subtract(tArr[0][1])).multiply(0.5d));
            r12[0][2] = (RealFieldElement) t19.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t20.multiply(realFieldElement7)).add((RealFieldElement) t21.multiply(realFieldElement8))).add((RealFieldElement) t19.multiply(realFieldElement9))).subtract(tArr[0][2])).multiply(0.5d));
            r12[1][0] = (RealFieldElement) t29.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t29.multiply(realFieldElement)).add((RealFieldElement) t31.multiply(realFieldElement2))).add((RealFieldElement) t22.multiply(realFieldElement3))).subtract(tArr[1][0])).multiply(0.5d));
            ?? r22 = r12[1];
            RealFieldElement realFieldElement10 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t29.multiply(realFieldElement4)).add((RealFieldElement) t31.multiply(realFieldElement5))).add((RealFieldElement) t22.multiply(realFieldElement6))).subtract(tArr[1][1]);
            T t33 = t22;
            r22[1] = (RealFieldElement) t31.subtract(realFieldElement10.multiply(0.5d));
            r12[1][2] = (RealFieldElement) t33.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t29.multiply(realFieldElement7)).add((RealFieldElement) t31.multiply(realFieldElement8))).add((RealFieldElement) t33.multiply(realFieldElement9))).subtract(tArr[1][2])).multiply(0.5d));
            r12[2][0] = (RealFieldElement) t28.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t28.multiply(realFieldElement)).add((RealFieldElement) t30.multiply(realFieldElement2))).add((RealFieldElement) t32.multiply(realFieldElement3))).subtract(tArr[2][0])).multiply(0.5d));
            r12[2][1] = (RealFieldElement) t30.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t28.multiply(realFieldElement4)).add((RealFieldElement) t30.multiply(realFieldElement5))).add((RealFieldElement) t32.multiply(realFieldElement6))).subtract(tArr[2][1])).multiply(0.5d));
            r12[2][2] = (RealFieldElement) t32.subtract(((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t28.multiply(realFieldElement7)).add((RealFieldElement) t30.multiply(realFieldElement8))).add((RealFieldElement) t32.multiply(realFieldElement9))).subtract(tArr[2][2])).multiply(0.5d));
            double real = r12[0][0].getReal() - tArr[0][0].getReal();
            double real2 = r12[0][1].getReal() - tArr[0][1].getReal();
            double real3 = r12[0][2].getReal() - tArr[0][2].getReal();
            double real4 = r12[1][0].getReal() - tArr[1][0].getReal();
            double real5 = r12[1][1].getReal() - tArr[1][1].getReal();
            double real6 = r12[1][2].getReal() - tArr[1][2].getReal();
            double real7 = r12[2][0].getReal() - tArr[2][0].getReal();
            double real8 = r12[2][1].getReal() - tArr[2][1].getReal();
            double real9 = r12[2][2].getReal() - tArr[2][2].getReal();
            d11 = (real * real) + (real2 * real2) + (real3 * real3) + (real4 * real4) + (real5 * real5) + (real6 * real6) + (real7 * real7) + (real8 * real8) + (real9 * real9);
            if (FastMath.abs(d11 - d12) <= d10) {
                return r12;
            }
            c10 = 0;
            ?? r13 = r12[0];
            ?? r23 = r13[0];
            ?? r42 = r13[1];
            ?? r14 = r13[2];
            ?? r62 = r12[1];
            ?? r72 = r62[0];
            ?? r82 = r62[1];
            ?? r63 = r62[2];
            ?? r92 = r12[2];
            ?? r10 = r92[0];
            ?? r11 = r92[1];
            i10 = i11;
            t19 = r14;
            t20 = r23;
            t21 = r42;
            t22 = r63;
            t23 = r72;
            t24 = r82;
            t25 = r92[2];
            t26 = r10;
            t27 = r11;
        }
    }

    private FieldVector3D<T> vector(double d10, double d11, double d12) {
        RealFieldElement realFieldElement = (RealFieldElement) this.f100167q0.getField().getZero();
        return new FieldVector3D<>((RealFieldElement) realFieldElement.add(d10), (RealFieldElement) realFieldElement.add(d11), (RealFieldElement) realFieldElement.add(d12));
    }

    public FieldVector3D<T> applyInverseTo(FieldVector3D<T> fieldVector3D) {
        T x10 = fieldVector3D.getX();
        T y10 = fieldVector3D.getY();
        T z10 = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(x10)).add((RealFieldElement) this.f100169q2.multiply(y10))).add((RealFieldElement) this.f100170q3.multiply(z10));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100167q0.negate();
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) x10.multiply(realFieldElement2)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(z10)).subtract((RealFieldElement) this.f100170q3.multiply(y10))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(x10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) y10.multiply(realFieldElement2)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(x10)).subtract((RealFieldElement) this.f100168q1.multiply(z10))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(y10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) z10.multiply(realFieldElement2)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(y10)).subtract((RealFieldElement) this.f100169q2.multiply(x10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(z10));
    }

    public FieldVector3D<T> applyTo(FieldVector3D<T> fieldVector3D) {
        T x10 = fieldVector3D.getX();
        T y10 = fieldVector3D.getY();
        T z10 = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(x10)).add((RealFieldElement) this.f100169q2.multiply(y10))).add((RealFieldElement) this.f100170q3.multiply(z10));
        T t10 = this.f100167q0;
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t10.multiply(((RealFieldElement) x10.multiply(t10)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(z10)).subtract((RealFieldElement) this.f100170q3.multiply(y10))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(x10);
        T t11 = this.f100167q0;
        RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) y10.multiply(t11)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(x10)).subtract((RealFieldElement) this.f100168q1.multiply(z10))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(y10);
        T t12 = this.f100167q0;
        return new FieldVector3D<>(realFieldElement2, realFieldElement3, (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(((RealFieldElement) z10.multiply(t12)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(y10)).subtract((RealFieldElement) this.f100169q2.multiply(x10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(z10));
    }

    public FieldRotation<T> compose(FieldRotation<T> fieldRotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(fieldRotation) : fieldRotation.composeInternal(this);
    }

    public FieldRotation<T> composeInverse(FieldRotation<T> fieldRotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(fieldRotation) : fieldRotation.composeInternal(revert());
    }

    public T getAngle() {
        if (this.f100167q0.getReal() >= -0.1d && this.f100167q0.getReal() <= 0.1d) {
            return this.f100167q0.getReal() < 0.0d ? (T) ((RealFieldElement) ((RealFieldElement) this.f100167q0.negate()).acos()).multiply(2) : (T) ((RealFieldElement) this.f100167q0.acos()).multiply(2);
        }
        T t10 = this.f100168q1;
        RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(t10);
        T t11 = this.f100169q2;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add((RealFieldElement) t11.multiply(t11));
        T t12 = this.f100170q3;
        return (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.add((RealFieldElement) t12.multiply(t12))).sqrt()).asin()).multiply(2);
    }

    @Deprecated
    public T[] getAngles(RotationOrder rotationOrder) throws CardanEulerSingularityException {
        return getAngles(rotationOrder, RotationConvention.VECTOR_OPERATOR);
    }

    @Deprecated
    public FieldVector3D<T> getAxis() {
        return getAxis(RotationConvention.VECTOR_OPERATOR);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[][] getMatrix() {
        T t10 = this.f100167q0;
        RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(t10);
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100167q0.multiply(this.f100168q1);
        RealFieldElement realFieldElement3 = (RealFieldElement) this.f100167q0.multiply(this.f100169q2);
        RealFieldElement realFieldElement4 = (RealFieldElement) this.f100167q0.multiply(this.f100170q3);
        T t11 = this.f100168q1;
        RealFieldElement realFieldElement5 = (RealFieldElement) t11.multiply(t11);
        RealFieldElement realFieldElement6 = (RealFieldElement) this.f100168q1.multiply(this.f100169q2);
        RealFieldElement realFieldElement7 = (RealFieldElement) this.f100168q1.multiply(this.f100170q3);
        T t12 = this.f100169q2;
        RealFieldElement realFieldElement8 = (RealFieldElement) t12.multiply(t12);
        RealFieldElement realFieldElement9 = (RealFieldElement) this.f100169q2.multiply(this.f100170q3);
        T t13 = this.f100170q3;
        RealFieldElement realFieldElement10 = (RealFieldElement) t13.multiply(t13);
        T[][] tArr = (T[][]) ((RealFieldElement[][]) MathArrays.buildArray(this.f100167q0.getField(), 3, 3));
        tArr[0][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(realFieldElement5)).multiply(2)).subtract(1.0d);
        tArr[1][0] = (RealFieldElement) ((RealFieldElement) realFieldElement6.subtract(realFieldElement4)).multiply(2);
        tArr[2][0] = (RealFieldElement) ((RealFieldElement) realFieldElement7.add(realFieldElement3)).multiply(2);
        tArr[0][1] = (RealFieldElement) ((RealFieldElement) realFieldElement6.add(realFieldElement4)).multiply(2);
        tArr[1][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(realFieldElement8)).multiply(2)).subtract(1.0d);
        tArr[2][1] = (RealFieldElement) ((RealFieldElement) realFieldElement9.subtract(realFieldElement2)).multiply(2);
        tArr[0][2] = (RealFieldElement) ((RealFieldElement) realFieldElement7.subtract(realFieldElement3)).multiply(2);
        tArr[1][2] = (RealFieldElement) ((RealFieldElement) realFieldElement9.add(realFieldElement2)).multiply(2);
        tArr[2][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement.add(realFieldElement10)).multiply(2)).subtract(1.0d);
        return tArr;
    }

    public T getQ0() {
        return this.f100167q0;
    }

    public T getQ1() {
        return this.f100168q1;
    }

    public T getQ2() {
        return this.f100169q2;
    }

    public T getQ3() {
        return this.f100170q3;
    }

    public FieldRotation<T> revert() {
        return new FieldRotation<>((RealFieldElement) this.f100167q0.negate(), (RealFieldElement) this.f100168q1, (RealFieldElement) this.f100169q2, (RealFieldElement) this.f100170q3, false);
    }

    public Rotation toRotation() {
        return new Rotation(this.f100167q0.getReal(), this.f100168q1.getReal(), this.f100169q2.getReal(), this.f100170q3.getReal(), false);
    }

    private FieldRotation<T> composeInternal(Rotation rotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) this.f100167q0.multiply(rotation.getQ0())).subtract((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(rotation.getQ1())).add((RealFieldElement) this.f100169q2.multiply(rotation.getQ2()))).add((RealFieldElement) this.f100170q3.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100167q0.multiply(rotation.getQ1())).add((RealFieldElement) this.f100168q1.multiply(rotation.getQ0()))).add((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(rotation.getQ2())).subtract((RealFieldElement) this.f100169q2.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100167q0.multiply(rotation.getQ2())).add((RealFieldElement) this.f100169q2.multiply(rotation.getQ0()))).add((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(rotation.getQ3())).subtract((RealFieldElement) this.f100170q3.multiply(rotation.getQ1()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100167q0.multiply(rotation.getQ3())).add((RealFieldElement) this.f100170q3.multiply(rotation.getQ0()))).add((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(rotation.getQ1())).subtract((RealFieldElement) this.f100168q1.multiply(rotation.getQ2()))), false);
    }

    private FieldRotation<T> composeInverseInternal(Rotation rotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100167q0.multiply(rotation.getQ0())).add((RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(rotation.getQ1())).add((RealFieldElement) this.f100169q2.multiply(rotation.getQ2()))).add((RealFieldElement) this.f100170q3.multiply(rotation.getQ3())))).negate(), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(rotation.getQ0())).add((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(rotation.getQ2())).subtract((RealFieldElement) this.f100169q2.multiply(rotation.getQ3())))).subtract((RealFieldElement) this.f100167q0.multiply(rotation.getQ1())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(rotation.getQ0())).add((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(rotation.getQ3())).subtract((RealFieldElement) this.f100170q3.multiply(rotation.getQ1())))).subtract((RealFieldElement) this.f100167q0.multiply(rotation.getQ2())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(rotation.getQ0())).add((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(rotation.getQ1())).subtract((RealFieldElement) this.f100168q1.multiply(rotation.getQ2())))).subtract((RealFieldElement) this.f100167q0.multiply(rotation.getQ3())), false);
    }

    public FieldRotation<T> compose(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInternal(rotation) : applyTo(rotation, this);
    }

    public FieldRotation<T> composeInverse(Rotation rotation, RotationConvention rotationConvention) {
        return rotationConvention == RotationConvention.VECTOR_OPERATOR ? composeInverseInternal(rotation) : applyTo(rotation, revert());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public T[] getAngles(RotationOrder rotationOrder, RotationConvention rotationConvention) throws CardanEulerSingularityException {
        if (rotationConvention == RotationConvention.VECTOR_OPERATOR) {
            if (rotationOrder == RotationOrder.XYZ) {
                FieldVector3D applyTo = applyTo(vector(0.0d, 0.0d, 1.0d));
                FieldVector3D applyInverseTo = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (applyInverseTo.getZ().getReal() >= -0.9999999999d && applyInverseTo.getZ().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) ((RealFieldElement) applyTo.getY().negate()).atan2(applyTo.getZ()), (RealFieldElement) applyInverseTo.getZ().asin(), (RealFieldElement) ((RealFieldElement) applyInverseTo.getY().negate()).atan2(applyInverseTo.getX()));
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.XZY) {
                FieldVector3D applyTo2 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D applyInverseTo2 = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (applyInverseTo2.getY().getReal() >= -0.9999999999d && applyInverseTo2.getY().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo2.getZ().atan2(applyTo2.getY()), (RealFieldElement) ((RealFieldElement) applyInverseTo2.getY().asin()).negate(), (RealFieldElement) applyInverseTo2.getZ().atan2(applyInverseTo2.getX()));
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.YXZ) {
                FieldVector3D applyTo3 = applyTo(vector(0.0d, 0.0d, 1.0d));
                FieldVector3D applyInverseTo3 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (applyInverseTo3.getZ().getReal() >= -0.9999999999d && applyInverseTo3.getZ().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo3.getX().atan2(applyTo3.getZ()), (RealFieldElement) ((RealFieldElement) applyInverseTo3.getZ().asin()).negate(), (RealFieldElement) applyInverseTo3.getX().atan2(applyInverseTo3.getY()));
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.YZX) {
                FieldVector3D applyTo4 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D applyInverseTo4 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (applyInverseTo4.getX().getReal() >= -0.9999999999d && applyInverseTo4.getX().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) ((RealFieldElement) applyTo4.getZ().negate()).atan2(applyTo4.getX()), (RealFieldElement) applyInverseTo4.getX().asin(), (RealFieldElement) ((RealFieldElement) applyInverseTo4.getZ().negate()).atan2(applyInverseTo4.getY()));
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.ZXY) {
                FieldVector3D applyTo5 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D applyInverseTo5 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
                if (applyInverseTo5.getY().getReal() >= -0.9999999999d && applyInverseTo5.getY().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) ((RealFieldElement) applyTo5.getX().negate()).atan2(applyTo5.getY()), (RealFieldElement) applyInverseTo5.getY().asin(), (RealFieldElement) ((RealFieldElement) applyInverseTo5.getX().negate()).atan2(applyInverseTo5.getZ()));
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.ZYX) {
                FieldVector3D applyTo6 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D applyInverseTo6 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
                if (applyInverseTo6.getX().getReal() >= -0.9999999999d && applyInverseTo6.getX().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo6.getY().atan2(applyTo6.getX()), (RealFieldElement) ((RealFieldElement) applyInverseTo6.getX().asin()).negate(), (RealFieldElement) applyInverseTo6.getY().atan2(applyInverseTo6.getZ()));
                }
                throw new CardanEulerSingularityException(true);
            }
            if (rotationOrder == RotationOrder.XYX) {
                FieldVector3D applyTo7 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D applyInverseTo7 = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (applyInverseTo7.getX().getReal() >= -0.9999999999d && applyInverseTo7.getX().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo7.getY().atan2(applyTo7.getZ().negate()), (RealFieldElement) applyInverseTo7.getX().acos(), (RealFieldElement) applyInverseTo7.getY().atan2(applyInverseTo7.getZ()));
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.XZX) {
                FieldVector3D applyTo8 = applyTo(vector(1.0d, 0.0d, 0.0d));
                FieldVector3D applyInverseTo8 = applyInverseTo(vector(1.0d, 0.0d, 0.0d));
                if (applyInverseTo8.getX().getReal() >= -0.9999999999d && applyInverseTo8.getX().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo8.getZ().atan2(applyTo8.getY()), (RealFieldElement) applyInverseTo8.getX().acos(), (RealFieldElement) applyInverseTo8.getZ().atan2(applyInverseTo8.getY().negate()));
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.YXY) {
                FieldVector3D applyTo9 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D applyInverseTo9 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (applyInverseTo9.getY().getReal() >= -0.9999999999d && applyInverseTo9.getY().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo9.getX().atan2(applyTo9.getZ()), (RealFieldElement) applyInverseTo9.getY().acos(), (RealFieldElement) applyInverseTo9.getX().atan2(applyInverseTo9.getZ().negate()));
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.YZY) {
                FieldVector3D applyTo10 = applyTo(vector(0.0d, 1.0d, 0.0d));
                FieldVector3D applyInverseTo10 = applyInverseTo(vector(0.0d, 1.0d, 0.0d));
                if (applyInverseTo10.getY().getReal() >= -0.9999999999d && applyInverseTo10.getY().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo10.getZ().atan2(applyTo10.getX().negate()), (RealFieldElement) applyInverseTo10.getY().acos(), (RealFieldElement) applyInverseTo10.getZ().atan2(applyInverseTo10.getX()));
                }
                throw new CardanEulerSingularityException(false);
            }
            if (rotationOrder == RotationOrder.ZXZ) {
                FieldVector3D applyTo11 = applyTo(vector(0.0d, 0.0d, 1.0d));
                FieldVector3D applyInverseTo11 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
                if (applyInverseTo11.getZ().getReal() >= -0.9999999999d && applyInverseTo11.getZ().getReal() <= 0.9999999999d) {
                    return (T[]) buildArray((RealFieldElement) applyTo11.getX().atan2(applyTo11.getY().negate()), (RealFieldElement) applyInverseTo11.getZ().acos(), (RealFieldElement) applyInverseTo11.getX().atan2(applyInverseTo11.getY()));
                }
                throw new CardanEulerSingularityException(false);
            }
            FieldVector3D applyTo12 = applyTo(vector(0.0d, 0.0d, 1.0d));
            FieldVector3D applyInverseTo12 = applyInverseTo(vector(0.0d, 0.0d, 1.0d));
            if (applyInverseTo12.getZ().getReal() >= -0.9999999999d && applyInverseTo12.getZ().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyTo12.getY().atan2(applyTo12.getX()), (RealFieldElement) applyInverseTo12.getZ().acos(), (RealFieldElement) applyInverseTo12.getY().atan2(applyInverseTo12.getX().negate()));
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.XYZ) {
            FieldVector3D applyTo13 = applyTo(Vector3D.PLUS_I);
            FieldVector3D applyInverseTo13 = applyInverseTo(Vector3D.PLUS_K);
            if (applyInverseTo13.getX().getReal() >= -0.9999999999d && applyInverseTo13.getX().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) ((RealFieldElement) applyInverseTo13.getY().negate()).atan2(applyInverseTo13.getZ()), (RealFieldElement) applyInverseTo13.getX().asin(), (RealFieldElement) ((RealFieldElement) applyTo13.getY().negate()).atan2(applyTo13.getX()));
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.XZY) {
            FieldVector3D applyTo14 = applyTo(Vector3D.PLUS_I);
            FieldVector3D applyInverseTo14 = applyInverseTo(Vector3D.PLUS_J);
            if (applyInverseTo14.getX().getReal() >= -0.9999999999d && applyInverseTo14.getX().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo14.getZ().atan2(applyInverseTo14.getY()), (RealFieldElement) ((RealFieldElement) applyInverseTo14.getX().asin()).negate(), (RealFieldElement) applyTo14.getZ().atan2(applyTo14.getX()));
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.YXZ) {
            FieldVector3D applyTo15 = applyTo(Vector3D.PLUS_J);
            FieldVector3D applyInverseTo15 = applyInverseTo(Vector3D.PLUS_K);
            if (applyInverseTo15.getY().getReal() >= -0.9999999999d && applyInverseTo15.getY().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo15.getX().atan2(applyInverseTo15.getZ()), (RealFieldElement) ((RealFieldElement) applyInverseTo15.getY().asin()).negate(), (RealFieldElement) applyTo15.getX().atan2(applyTo15.getY()));
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.YZX) {
            FieldVector3D applyTo16 = applyTo(Vector3D.PLUS_J);
            FieldVector3D applyInverseTo16 = applyInverseTo(Vector3D.PLUS_I);
            if (applyInverseTo16.getY().getReal() >= -0.9999999999d && applyInverseTo16.getY().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) ((RealFieldElement) applyInverseTo16.getZ().negate()).atan2(applyInverseTo16.getX()), (RealFieldElement) applyInverseTo16.getY().asin(), (RealFieldElement) ((RealFieldElement) applyTo16.getZ().negate()).atan2(applyTo16.getY()));
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.ZXY) {
            FieldVector3D applyTo17 = applyTo(Vector3D.PLUS_K);
            FieldVector3D applyInverseTo17 = applyInverseTo(Vector3D.PLUS_J);
            if (applyInverseTo17.getZ().getReal() >= -0.9999999999d && applyInverseTo17.getZ().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) ((RealFieldElement) applyInverseTo17.getX().negate()).atan2(applyInverseTo17.getY()), (RealFieldElement) applyInverseTo17.getZ().asin(), (RealFieldElement) ((RealFieldElement) applyTo17.getX().negate()).atan2(applyTo17.getZ()));
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.ZYX) {
            FieldVector3D applyTo18 = applyTo(Vector3D.PLUS_K);
            FieldVector3D applyInverseTo18 = applyInverseTo(Vector3D.PLUS_I);
            if (applyInverseTo18.getZ().getReal() >= -0.9999999999d && applyInverseTo18.getZ().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo18.getY().atan2(applyInverseTo18.getX()), (RealFieldElement) ((RealFieldElement) applyInverseTo18.getZ().asin()).negate(), (RealFieldElement) applyTo18.getY().atan2(applyTo18.getZ()));
            }
            throw new CardanEulerSingularityException(true);
        }
        if (rotationOrder == RotationOrder.XYX) {
            Vector3D vector3D = Vector3D.PLUS_I;
            FieldVector3D applyTo19 = applyTo(vector3D);
            FieldVector3D applyInverseTo19 = applyInverseTo(vector3D);
            if (applyInverseTo19.getX().getReal() >= -0.9999999999d && applyInverseTo19.getX().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo19.getY().atan2(applyInverseTo19.getZ().negate()), (RealFieldElement) applyInverseTo19.getX().acos(), (RealFieldElement) applyTo19.getY().atan2(applyTo19.getZ()));
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.XZX) {
            Vector3D vector3D2 = Vector3D.PLUS_I;
            FieldVector3D applyTo20 = applyTo(vector3D2);
            FieldVector3D applyInverseTo20 = applyInverseTo(vector3D2);
            if (applyInverseTo20.getX().getReal() >= -0.9999999999d && applyInverseTo20.getX().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo20.getZ().atan2(applyInverseTo20.getY()), (RealFieldElement) applyInverseTo20.getX().acos(), (RealFieldElement) applyTo20.getZ().atan2(applyTo20.getY().negate()));
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.YXY) {
            Vector3D vector3D3 = Vector3D.PLUS_J;
            FieldVector3D applyTo21 = applyTo(vector3D3);
            FieldVector3D applyInverseTo21 = applyInverseTo(vector3D3);
            if (applyInverseTo21.getY().getReal() >= -0.9999999999d && applyInverseTo21.getY().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo21.getX().atan2(applyInverseTo21.getZ()), (RealFieldElement) applyInverseTo21.getY().acos(), (RealFieldElement) applyTo21.getX().atan2(applyTo21.getZ().negate()));
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.YZY) {
            Vector3D vector3D4 = Vector3D.PLUS_J;
            FieldVector3D applyTo22 = applyTo(vector3D4);
            FieldVector3D applyInverseTo22 = applyInverseTo(vector3D4);
            if (applyInverseTo22.getY().getReal() >= -0.9999999999d && applyInverseTo22.getY().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo22.getZ().atan2(applyInverseTo22.getX().negate()), (RealFieldElement) applyInverseTo22.getY().acos(), (RealFieldElement) applyTo22.getZ().atan2(applyTo22.getX()));
            }
            throw new CardanEulerSingularityException(false);
        }
        if (rotationOrder == RotationOrder.ZXZ) {
            Vector3D vector3D5 = Vector3D.PLUS_K;
            FieldVector3D applyTo23 = applyTo(vector3D5);
            FieldVector3D applyInverseTo23 = applyInverseTo(vector3D5);
            if (applyInverseTo23.getZ().getReal() >= -0.9999999999d && applyInverseTo23.getZ().getReal() <= 0.9999999999d) {
                return (T[]) buildArray((RealFieldElement) applyInverseTo23.getX().atan2(applyInverseTo23.getY().negate()), (RealFieldElement) applyInverseTo23.getZ().acos(), (RealFieldElement) applyTo23.getX().atan2(applyTo23.getY()));
            }
            throw new CardanEulerSingularityException(false);
        }
        Vector3D vector3D6 = Vector3D.PLUS_K;
        FieldVector3D applyTo24 = applyTo(vector3D6);
        FieldVector3D applyInverseTo24 = applyInverseTo(vector3D6);
        if (applyInverseTo24.getZ().getReal() >= -0.9999999999d && applyInverseTo24.getZ().getReal() <= 0.9999999999d) {
            return (T[]) buildArray((RealFieldElement) applyInverseTo24.getY().atan2(applyInverseTo24.getX()), (RealFieldElement) applyInverseTo24.getZ().acos(), (RealFieldElement) applyTo24.getY().atan2(applyTo24.getX().negate()));
        }
        throw new CardanEulerSingularityException(false);
    }

    public FieldVector3D<T> getAxis(RotationConvention rotationConvention) {
        T t10 = this.f100168q1;
        RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(t10);
        T t11 = this.f100169q2;
        RealFieldElement realFieldElement2 = (RealFieldElement) realFieldElement.add((RealFieldElement) t11.multiply(t11));
        T t12 = this.f100170q3;
        RealFieldElement realFieldElement3 = (RealFieldElement) realFieldElement2.add((RealFieldElement) t12.multiply(t12));
        if (realFieldElement3.getReal() == 0.0d) {
            Field<T> field = realFieldElement3.getField();
            return new FieldVector3D<>((RealFieldElement) (rotationConvention == RotationConvention.VECTOR_OPERATOR ? field.getOne() : ((RealFieldElement) field.getOne()).negate()), (RealFieldElement) field.getZero(), (RealFieldElement) field.getZero());
        }
        double d10 = rotationConvention == RotationConvention.VECTOR_OPERATOR ? 1.0d : -1.0d;
        if (this.f100167q0.getReal() < 0.0d) {
            RealFieldElement realFieldElement4 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.sqrt()).reciprocal()).multiply(d10);
            return new FieldVector3D<>((RealFieldElement) this.f100168q1.multiply(realFieldElement4), (RealFieldElement) this.f100169q2.multiply(realFieldElement4), (RealFieldElement) this.f100170q3.multiply(realFieldElement4));
        }
        RealFieldElement realFieldElement5 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement3.sqrt()).reciprocal()).negate()).multiply(d10);
        return new FieldVector3D<>((RealFieldElement) this.f100168q1.multiply(realFieldElement5), (RealFieldElement) this.f100169q2.multiply(realFieldElement5), (RealFieldElement) this.f100170q3.multiply(realFieldElement5));
    }

    public FieldVector3D<T> applyTo(Vector3D vector3D) {
        double x10 = vector3D.getX();
        double y10 = vector3D.getY();
        double z10 = vector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(x10)).add((RealFieldElement) this.f100169q2.multiply(y10))).add((RealFieldElement) this.f100170q3.multiply(z10));
        T t10 = this.f100167q0;
        RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t10.multiply(((RealFieldElement) t10.multiply(x10)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(z10)).subtract((RealFieldElement) this.f100170q3.multiply(y10))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(x10);
        T t11 = this.f100167q0;
        RealFieldElement realFieldElement3 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(y10)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(x10)).subtract((RealFieldElement) this.f100168q1.multiply(z10))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(y10);
        T t12 = this.f100167q0;
        return new FieldVector3D<>(realFieldElement2, realFieldElement3, (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(((RealFieldElement) t12.multiply(z10)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(y10)).subtract((RealFieldElement) this.f100169q2.multiply(x10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(z10));
    }

    public FieldVector3D<T> applyInverseTo(Vector3D vector3D) {
        double x10 = vector3D.getX();
        double y10 = vector3D.getY();
        double z10 = vector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(x10)).add((RealFieldElement) this.f100169q2.multiply(y10))).add((RealFieldElement) this.f100170q3.multiply(z10));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100167q0.negate();
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(x10)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(z10)).subtract((RealFieldElement) this.f100170q3.multiply(y10))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(x10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(y10)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(x10)).subtract((RealFieldElement) this.f100168q1.multiply(z10))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(y10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(z10)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(y10)).subtract((RealFieldElement) this.f100169q2.multiply(x10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(z10));
    }

    @Deprecated
    public FieldRotation(FieldVector3D<T> fieldVector3D, T t10) throws MathIllegalArgumentException {
        this(fieldVector3D, t10, RotationConvention.VECTOR_OPERATOR);
    }

    public void applyTo(T[] tArr, T[] tArr2) {
        T t10 = tArr[0];
        T t11 = tArr[1];
        T t12 = tArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(t10)).add((RealFieldElement) this.f100169q2.multiply(t11))).add((RealFieldElement) this.f100170q3.multiply(t12));
        T t13 = this.f100167q0;
        tArr2[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t13.multiply(((RealFieldElement) t10.multiply(t13)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(t12)).subtract((RealFieldElement) this.f100170q3.multiply(t11))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(t10);
        T t14 = this.f100167q0;
        tArr2[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t14.multiply(((RealFieldElement) t11.multiply(t14)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(t10)).subtract((RealFieldElement) this.f100168q1.multiply(t12))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(t11);
        T t15 = this.f100167q0;
        tArr2[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t15.multiply(((RealFieldElement) t12.multiply(t15)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(t11)).subtract((RealFieldElement) this.f100169q2.multiply(t10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(t12);
    }

    public FieldRotation(FieldVector3D<T> fieldVector3D, T t10, RotationConvention rotationConvention) throws MathIllegalArgumentException {
        T norm = fieldVector3D.getNorm();
        if (norm.getReal() != 0.0d) {
            RealFieldElement realFieldElement = (RealFieldElement) t10.multiply(rotationConvention == RotationConvention.VECTOR_OPERATOR ? -0.5d : 0.5d);
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) realFieldElement.sin()).divide(norm);
            this.f100167q0 = (T) realFieldElement.cos();
            this.f100168q1 = (T) realFieldElement2.multiply(fieldVector3D.getX());
            this.f100169q2 = (T) realFieldElement2.multiply(fieldVector3D.getY());
            this.f100170q3 = (T) realFieldElement2.multiply(fieldVector3D.getZ());
            return;
        }
        throw new MathIllegalArgumentException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_AXIS, new Object[0]);
    }

    public void applyInverseTo(T[] tArr, T[] tArr2) {
        T t10 = tArr[0];
        T t11 = tArr[1];
        T t12 = tArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(t10)).add((RealFieldElement) this.f100169q2.multiply(t11))).add((RealFieldElement) this.f100170q3.multiply(t12));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100167q0.negate();
        tArr2[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) t10.multiply(realFieldElement2)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(t12)).subtract((RealFieldElement) this.f100170q3.multiply(t11))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(t10);
        tArr2[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) t11.multiply(realFieldElement2)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(t10)).subtract((RealFieldElement) this.f100168q1.multiply(t12))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(t11);
        tArr2[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) t12.multiply(realFieldElement2)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(t11)).subtract((RealFieldElement) this.f100169q2.multiply(t10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(t12);
    }

    public void applyTo(double[] dArr, T[] tArr) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(d10)).add((RealFieldElement) this.f100169q2.multiply(d11))).add((RealFieldElement) this.f100170q3.multiply(d12));
        T t10 = this.f100167q0;
        tArr[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t10.multiply(((RealFieldElement) t10.multiply(d10)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(d12)).subtract((RealFieldElement) this.f100170q3.multiply(d11))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(d10);
        T t11 = this.f100167q0;
        tArr[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t11.multiply(((RealFieldElement) t11.multiply(d11)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(d10)).subtract((RealFieldElement) this.f100168q1.multiply(d12))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(d11);
        T t12 = this.f100167q0;
        tArr[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) t12.multiply(((RealFieldElement) t12.multiply(d12)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(d11)).subtract((RealFieldElement) this.f100169q2.multiply(d10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(d12);
    }

    public void applyInverseTo(double[] dArr, T[] tArr) {
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(d10)).add((RealFieldElement) this.f100169q2.multiply(d11))).add((RealFieldElement) this.f100170q3.multiply(d12));
        RealFieldElement realFieldElement2 = (RealFieldElement) this.f100167q0.negate();
        tArr[0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(d10)).subtract((RealFieldElement) ((RealFieldElement) this.f100169q2.multiply(d12)).subtract((RealFieldElement) this.f100170q3.multiply(d11))))).add((RealFieldElement) realFieldElement.multiply(this.f100168q1))).multiply(2)).subtract(d10);
        tArr[1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(d11)).subtract((RealFieldElement) ((RealFieldElement) this.f100170q3.multiply(d10)).subtract((RealFieldElement) this.f100168q1.multiply(d12))))).add((RealFieldElement) realFieldElement.multiply(this.f100169q2))).multiply(2)).subtract(d11);
        tArr[2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply((RealFieldElement) ((RealFieldElement) realFieldElement2.multiply(d12)).subtract((RealFieldElement) ((RealFieldElement) this.f100168q1.multiply(d11)).subtract((RealFieldElement) this.f100169q2.multiply(d10))))).add((RealFieldElement) realFieldElement.multiply(this.f100170q3))).multiply(2)).subtract(d12);
    }

    public FieldRotation(T[][] tArr, double d10) throws NotARotationMatrixException {
        if (tArr.length == 3 && tArr[0].length == 3 && tArr[1].length == 3 && tArr[2].length == 3) {
            T[][] orthogonalizeMatrix = orthogonalizeMatrix(tArr, d10);
            RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) orthogonalizeMatrix[0][0].multiply((RealFieldElement) ((RealFieldElement) orthogonalizeMatrix[1][1].multiply(orthogonalizeMatrix[2][2])).subtract((RealFieldElement) orthogonalizeMatrix[2][1].multiply(orthogonalizeMatrix[1][2])))).subtract((RealFieldElement) orthogonalizeMatrix[1][0].multiply((RealFieldElement) ((RealFieldElement) orthogonalizeMatrix[0][1].multiply(orthogonalizeMatrix[2][2])).subtract((RealFieldElement) orthogonalizeMatrix[2][1].multiply(orthogonalizeMatrix[0][2]))))).add((RealFieldElement) orthogonalizeMatrix[2][0].multiply((RealFieldElement) ((RealFieldElement) orthogonalizeMatrix[0][1].multiply(orthogonalizeMatrix[1][2])).subtract((RealFieldElement) orthogonalizeMatrix[1][1].multiply(orthogonalizeMatrix[0][2]))));
            if (realFieldElement.getReal() >= 0.0d) {
                T[] mat2quat = mat2quat(orthogonalizeMatrix);
                this.f100167q0 = mat2quat[0];
                this.f100168q1 = mat2quat[1];
                this.f100169q2 = mat2quat[2];
                this.f100170q3 = mat2quat[3];
                return;
            }
            throw new NotARotationMatrixException(LocalizedFormats.CLOSEST_ORTHOGONAL_MATRIX_HAS_NEGATIVE_DETERMINANT, realFieldElement);
        }
        throw new NotARotationMatrixException(LocalizedFormats.ROTATION_MATRIX_DIMENSIONS, Integer.valueOf(tArr.length), Integer.valueOf(tArr[0].length));
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> applyTo(Rotation rotation, FieldVector3D<T> fieldVector3D) {
        T x10 = fieldVector3D.getX();
        T y10 = fieldVector3D.getY();
        T z10 = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) x10.multiply(rotation.getQ1())).add((RealFieldElement) y10.multiply(rotation.getQ2()))).add((RealFieldElement) z10.multiply(rotation.getQ3()));
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) x10.multiply(rotation.getQ0())).subtract((RealFieldElement) ((RealFieldElement) z10.multiply(rotation.getQ2())).subtract((RealFieldElement) y10.multiply(rotation.getQ3())))).multiply(rotation.getQ0())).add((RealFieldElement) realFieldElement.multiply(rotation.getQ1()))).multiply(2)).subtract(x10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) y10.multiply(rotation.getQ0())).subtract((RealFieldElement) ((RealFieldElement) x10.multiply(rotation.getQ3())).subtract((RealFieldElement) z10.multiply(rotation.getQ1())))).multiply(rotation.getQ0())).add((RealFieldElement) realFieldElement.multiply(rotation.getQ2()))).multiply(2)).subtract(y10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) z10.multiply(rotation.getQ0())).subtract((RealFieldElement) ((RealFieldElement) y10.multiply(rotation.getQ1())).subtract((RealFieldElement) x10.multiply(rotation.getQ2())))).multiply(rotation.getQ0())).add((RealFieldElement) realFieldElement.multiply(rotation.getQ3()))).multiply(2)).subtract(z10));
    }

    public static <T extends RealFieldElement<T>> FieldVector3D<T> applyInverseTo(Rotation rotation, FieldVector3D<T> fieldVector3D) {
        T x10 = fieldVector3D.getX();
        T y10 = fieldVector3D.getY();
        T z10 = fieldVector3D.getZ();
        RealFieldElement realFieldElement = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) x10.multiply(rotation.getQ1())).add((RealFieldElement) y10.multiply(rotation.getQ2()))).add((RealFieldElement) z10.multiply(rotation.getQ3()));
        double d10 = -rotation.getQ0();
        return new FieldVector3D<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) x10.multiply(d10)).subtract((RealFieldElement) ((RealFieldElement) z10.multiply(rotation.getQ2())).subtract((RealFieldElement) y10.multiply(rotation.getQ3())))).multiply(d10)).add((RealFieldElement) realFieldElement.multiply(rotation.getQ1()))).multiply(2)).subtract(x10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) y10.multiply(d10)).subtract((RealFieldElement) ((RealFieldElement) x10.multiply(rotation.getQ3())).subtract((RealFieldElement) z10.multiply(rotation.getQ1())))).multiply(d10)).add((RealFieldElement) realFieldElement.multiply(rotation.getQ2()))).multiply(2)).subtract(y10), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) z10.multiply(d10)).subtract((RealFieldElement) ((RealFieldElement) y10.multiply(rotation.getQ1())).subtract((RealFieldElement) x10.multiply(rotation.getQ2())))).multiply(d10)).add((RealFieldElement) realFieldElement.multiply(rotation.getQ3()))).multiply(2)).subtract(z10));
    }

    public FieldRotation<T> applyTo(FieldRotation<T> fieldRotation) {
        return compose(fieldRotation, RotationConvention.VECTOR_OPERATOR);
    }

    public FieldRotation<T> applyTo(Rotation rotation) {
        return compose(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    public static <T extends RealFieldElement<T>> FieldRotation<T> applyTo(Rotation rotation, FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ0())).subtract((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ1())).add((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ2()))).add((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ0())).add((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ1()))).add((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ3())).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ2()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ0())).add((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ2()))).add((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ1())).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ3()))), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ0())).add((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ3()))).add((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ2())).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ1()))), false);
    }

    public FieldRotation<T> applyInverseTo(FieldRotation<T> fieldRotation) {
        return composeInverse(fieldRotation, RotationConvention.VECTOR_OPERATOR);
    }

    public FieldRotation<T> applyInverseTo(Rotation rotation) {
        return composeInverse(rotation, RotationConvention.VECTOR_OPERATOR);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FieldRotation(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2, FieldVector3D<T> fieldVector3D3, FieldVector3D<T> fieldVector3D4) throws MathArithmeticException {
        FieldVector3D<T> normalize = FieldVector3D.crossProduct(fieldVector3D, fieldVector3D2).normalize();
        FieldVector3D<T> normalize2 = FieldVector3D.crossProduct(normalize, fieldVector3D).normalize();
        FieldVector3D<T> normalize3 = fieldVector3D.normalize();
        FieldVector3D<T> normalize4 = FieldVector3D.crossProduct(fieldVector3D3, fieldVector3D4).normalize();
        FieldVector3D<T> normalize5 = FieldVector3D.crossProduct(normalize4, fieldVector3D3).normalize();
        FieldVector3D<T> normalize6 = fieldVector3D3.normalize();
        RealFieldElement[][] realFieldElementArr = (RealFieldElement[][]) MathArrays.buildArray(normalize3.getX().getField(), 3, 3);
        realFieldElementArr[0][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getX().multiply(normalize6.getX())).add((RealFieldElement) normalize2.getX().multiply(normalize5.getX()))).add((RealFieldElement) normalize.getX().multiply(normalize4.getX()));
        realFieldElementArr[0][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getY().multiply(normalize6.getX())).add((RealFieldElement) normalize2.getY().multiply(normalize5.getX()))).add((RealFieldElement) normalize.getY().multiply(normalize4.getX()));
        realFieldElementArr[0][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getZ().multiply(normalize6.getX())).add((RealFieldElement) normalize2.getZ().multiply(normalize5.getX()))).add((RealFieldElement) normalize.getZ().multiply(normalize4.getX()));
        realFieldElementArr[1][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getX().multiply(normalize6.getY())).add((RealFieldElement) normalize2.getX().multiply(normalize5.getY()))).add((RealFieldElement) normalize.getX().multiply(normalize4.getY()));
        realFieldElementArr[1][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getY().multiply(normalize6.getY())).add((RealFieldElement) normalize2.getY().multiply(normalize5.getY()))).add((RealFieldElement) normalize.getY().multiply(normalize4.getY()));
        realFieldElementArr[1][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getZ().multiply(normalize6.getY())).add((RealFieldElement) normalize2.getZ().multiply(normalize5.getY()))).add((RealFieldElement) normalize.getZ().multiply(normalize4.getY()));
        realFieldElementArr[2][0] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getX().multiply(normalize6.getZ())).add((RealFieldElement) normalize2.getX().multiply(normalize5.getZ()))).add((RealFieldElement) normalize.getX().multiply(normalize4.getZ()));
        realFieldElementArr[2][1] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getY().multiply(normalize6.getZ())).add((RealFieldElement) normalize2.getY().multiply(normalize5.getZ()))).add((RealFieldElement) normalize.getY().multiply(normalize4.getZ()));
        realFieldElementArr[2][2] = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) normalize3.getZ().multiply(normalize6.getZ())).add((RealFieldElement) normalize2.getZ().multiply(normalize5.getZ()))).add((RealFieldElement) normalize.getZ().multiply(normalize4.getZ()));
        RealFieldElement[] mat2quat = mat2quat(realFieldElementArr);
        this.f100167q0 = (T) mat2quat[0];
        this.f100168q1 = (T) mat2quat[1];
        this.f100169q2 = (T) mat2quat[2];
        this.f100170q3 = (T) mat2quat[3];
    }

    public static <T extends RealFieldElement<T>> FieldRotation<T> applyInverseTo(Rotation rotation, FieldRotation<T> fieldRotation) {
        return new FieldRotation<>((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ0())).add((RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ1())).add((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ2()))).add((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ3())))).negate(), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ1())).add((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ3())).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ2())))).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ0())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ2())).add((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ1())).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ3())))).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ0())), (RealFieldElement) ((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100167q0.multiply(rotation.getQ3())).add((RealFieldElement) ((RealFieldElement) ((FieldRotation) fieldRotation).f100168q1.multiply(rotation.getQ2())).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100169q2.multiply(rotation.getQ1())))).subtract((RealFieldElement) ((FieldRotation) fieldRotation).f100170q3.multiply(rotation.getQ0())), false);
    }

    public FieldRotation(FieldVector3D<T> fieldVector3D, FieldVector3D<T> fieldVector3D2) throws MathArithmeticException {
        RealFieldElement realFieldElement = (RealFieldElement) fieldVector3D.getNorm().multiply(fieldVector3D2.getNorm());
        if (realFieldElement.getReal() != 0.0d) {
            RealFieldElement dotProduct = FieldVector3D.dotProduct(fieldVector3D, fieldVector3D2);
            if (dotProduct.getReal() < realFieldElement.getReal() * (-0.999999999999998d)) {
                FieldVector3D<T> orthogonal = fieldVector3D.orthogonal();
                this.f100167q0 = (T) realFieldElement.getField().getZero();
                this.f100168q1 = (T) orthogonal.getX().negate();
                this.f100169q2 = (T) orthogonal.getY().negate();
                this.f100170q3 = (T) orthogonal.getZ().negate();
                return;
            }
            T t10 = (T) ((RealFieldElement) ((RealFieldElement) ((RealFieldElement) dotProduct.divide(realFieldElement)).add(1.0d)).multiply(0.5d)).sqrt();
            this.f100167q0 = t10;
            RealFieldElement realFieldElement2 = (RealFieldElement) ((RealFieldElement) ((RealFieldElement) t10.multiply(realFieldElement)).multiply(2.0d)).reciprocal();
            FieldVector3D crossProduct = FieldVector3D.crossProduct(fieldVector3D2, fieldVector3D);
            this.f100168q1 = (T) realFieldElement2.multiply(crossProduct.getX());
            this.f100169q2 = (T) realFieldElement2.multiply(crossProduct.getY());
            this.f100170q3 = (T) realFieldElement2.multiply(crossProduct.getZ());
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_NORM_FOR_ROTATION_DEFINING_VECTOR, new Object[0]);
    }

    @Deprecated
    public FieldRotation(RotationOrder rotationOrder, T t10, T t11, T t12) {
        this(rotationOrder, RotationConvention.VECTOR_OPERATOR, t10, t11, t12);
    }

    public FieldRotation(RotationOrder rotationOrder, RotationConvention rotationConvention, T t10, T t11, T t12) {
        RealFieldElement realFieldElement = (RealFieldElement) t10.getField().getOne();
        FieldRotation<T> compose = new FieldRotation(new FieldVector3D(realFieldElement, rotationOrder.getA1()), t10, rotationConvention).compose(new FieldRotation(new FieldVector3D(realFieldElement, rotationOrder.getA2()), t11, rotationConvention).compose(new FieldRotation<>(new FieldVector3D(realFieldElement, rotationOrder.getA3()), t12, rotationConvention), rotationConvention), rotationConvention);
        this.f100167q0 = compose.f100167q0;
        this.f100168q1 = compose.f100168q1;
        this.f100169q2 = compose.f100169q2;
        this.f100170q3 = compose.f100170q3;
    }
}
