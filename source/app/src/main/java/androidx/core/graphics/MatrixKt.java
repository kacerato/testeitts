package androidx.core.graphics;

import android.graphics.Matrix;
import kotlin.jvm.internal.M;

public final class MatrixKt {
    public static final Matrix rotationMatrix(float f10, float f11, float f12) {
        Matrix matrix = new Matrix();
        matrix.setRotate(f10, f11, f12);
        return matrix;
    }

    public static Matrix rotationMatrix$default(float f10, float f11, float f12, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        if ((i10 & 4) != 0) {
            f12 = 0.0f;
        }
        return rotationMatrix(f10, f11, f12);
    }

    public static final Matrix scaleMatrix(float f10, float f11) {
        Matrix matrix = new Matrix();
        matrix.setScale(f10, f11);
        return matrix;
    }

    public static Matrix scaleMatrix$default(float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 1.0f;
        }
        return scaleMatrix(f10, f11);
    }

    public static final Matrix times(Matrix matrix, Matrix m10) {
        M.p(matrix, "<this>");
        M.p(m10, "m");
        Matrix matrix2 = new Matrix(matrix);
        matrix2.preConcat(m10);
        return matrix2;
    }

    public static final Matrix translationMatrix(float f10, float f11) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(f10, f11);
        return matrix;
    }

    public static Matrix translationMatrix$default(float f10, float f11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f11 = 0.0f;
        }
        return translationMatrix(f10, f11);
    }

    public static final float[] values(Matrix matrix) {
        M.p(matrix, "<this>");
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        return fArr;
    }
}
