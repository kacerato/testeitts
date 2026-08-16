package jf;

import android.content.Context;
import com.jme3.bounding.BoundingBox;
import com.jme3.math.Matrix3f;
import com.jme3.math.Vector3f;
import java.util.HashSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.math3.linear.ConjugateGradient;
import p000if.C13702E;

public final class c {

    public static final Logger f92896a = Logger.getLogger(c.class.getName());

    public static final boolean f92897b = false;

    public static BoundingBox a(Vector3f[] vector3fArr, BoundingBox boundingBox) {
        C13702E.n(vector3fArr, "array");
        Vector3f vector3f = new Vector3f(Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        Vector3f vector3f2 = new Vector3f(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY);
        for (Vector3f vector3f3 : vector3fArr) {
            if (!Vector3f.isValidVector(vector3f3)) {
                f92896a.log(Level.WARNING, "Invalid vector {0} in array", vector3f3);
            }
            h.b(vector3f2, vector3f3);
            h.a(vector3f, vector3f3);
        }
        if (boundingBox == null) {
            return new BoundingBox(vector3f2, vector3f);
        }
        boundingBox.setMinMax(vector3f2, vector3f);
        return boundingBox;
    }

    public static int b(Vector3f[] vector3fArr) {
        HashSet hashSet = new HashSet(vector3fArr.length);
        for (Vector3f vector3f : vector3fArr) {
            hashSet.add(h.U(vector3f, null));
        }
        return hashSet.size();
    }

    public static int c(float... fArr) {
        C13702E.t(fArr, "array");
        Float f10 = null;
        int i10 = 0;
        for (float f11 : fArr) {
            if (f10 == null || f11 != f10.floatValue()) {
                i10++;
            }
            f10 = Float.valueOf(f11);
        }
        return i10;
    }

    public static Matrix3f d(float[] fArr, Matrix3f matrix3f) {
        C13702E.l(fArr, Context.INPUT_SERVICE);
        int length = fArr.length;
        if (matrix3f == null) {
            matrix3f = new Matrix3f();
        }
        Vector3f l10 = l(fArr, null);
        matrix3f.zero();
        int i10 = length / 3;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 3;
            float[] fArr2 = {fArr[i12] - l10.f81611x, fArr[i12 + 1] - l10.f81612y, fArr[i12 + 2] - l10.f81613z};
            for (int i13 = 0; i13 < 3; i13++) {
                for (int i14 = i13; i14 < 3; i14++) {
                    matrix3f.set(i13, i14, matrix3f.get(i13, i14) + (fArr2[i13] * fArr2[i14]));
                }
            }
        }
        float f10 = i10 - 1;
        for (int i15 = 0; i15 < 3; i15++) {
            for (int i16 = i15; i16 < 3; i16++) {
                float f11 = matrix3f.get(i15, i16) / f10;
                matrix3f.set(i15, i16, f11);
                matrix3f.set(i16, i15, f11);
            }
        }
        return matrix3f;
    }

    public static boolean e(float[] fArr, int i10) {
        C13702E.t(fArr, ConjugateGradient.VECTOR);
        C13702E.i(i10, "length", 0, fArr.length);
        if (i10 <= 1) {
            return false;
        }
        float f10 = fArr[0];
        for (int i11 = 1; i11 < i10; i11++) {
            if (fArr[i11] != f10) {
                return true;
            }
        }
        return false;
    }

    public static int f(float f10, float[] fArr) {
        C13702E.t(fArr, "array");
        int length = fArr.length - 1;
        int i10 = -1;
        while (length != i10) {
            int i11 = ((i10 + length) + 1) / 2;
            float f11 = fArr[i11];
            if (f10 > f11) {
                i10 = i11;
            } else if (f10 < f11) {
                length = i11 - 1;
            } else if (f10 == f11) {
                return i11;
            }
        }
        return i10;
    }

    public static int g(boolean[] zArr) {
        for (int i10 = 0; i10 < zArr.length; i10++) {
            if (zArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static boolean h(float[] fArr) {
        int i10 = 0;
        while (i10 < fArr.length - 1) {
            float f10 = fArr[i10];
            i10++;
            if (f10 >= fArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public static boolean i(int[] iArr) {
        int i10 = 0;
        while (i10 < iArr.length - 1) {
            int i11 = iArr[i10];
            i10++;
            if (i11 >= iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public static boolean j(Comparable[] comparableArr) {
        int i10 = 0;
        while (i10 < comparableArr.length - 1) {
            Comparable comparable = comparableArr[i10];
            i10++;
            if (comparable.compareTo(comparableArr[i10]) >= 0) {
                return false;
            }
        }
        return true;
    }

    public static Vector3f k(Vector3f[] vector3fArr, Vector3f vector3f) {
        C13702E.n(vector3fArr, "array");
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        for (Vector3f vector3f2 : vector3fArr) {
            vector3f.addLocal(vector3f2);
        }
        vector3f.divideLocal(vector3fArr.length);
        return vector3f;
    }

    public static Vector3f l(float[] fArr, Vector3f vector3f) {
        C13702E.l(fArr, Context.INPUT_SERVICE);
        int length = fArr.length;
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        vector3f.zero();
        int i10 = length / 3;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = i11 * 3;
            vector3f.f81611x += fArr[i12];
            vector3f.f81612y += fArr[i12 + 1];
            vector3f.f81613z += fArr[i12 + 2];
        }
        vector3f.divideLocal(i10);
        return vector3f;
    }

    public static void m(float[] fArr, float f10, float f11) {
        C13702E.t(fArr, "dataset");
        for (int i10 = 0; i10 < fArr.length; i10++) {
            if (f10 == f11) {
                fArr[i10] = 0.5f;
            } else {
                fArr[i10] = (fArr[i10] - f10) / (f11 - f10);
            }
        }
    }
}
