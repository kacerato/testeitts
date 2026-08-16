package androidx.transition;

import android.graphics.Matrix;
import android.graphics.RectF;

class MatrixUtils {
    static final Matrix IDENTITY_MATRIX = new Matrix() {
        public void oops() {
            throw new IllegalStateException("Matrix can not be modified");
        }

        @Override
        public boolean postConcat(Matrix matrix) {
            oops();
            return false;
        }

        @Override
        public boolean postRotate(float f10, float f11, float f12) {
            oops();
            return false;
        }

        @Override
        public boolean postScale(float f10, float f11, float f12, float f13) {
            oops();
            return false;
        }

        @Override
        public boolean postSkew(float f10, float f11, float f12, float f13) {
            oops();
            return false;
        }

        @Override
        public boolean postTranslate(float f10, float f11) {
            oops();
            return false;
        }

        @Override
        public boolean preConcat(Matrix matrix) {
            oops();
            return false;
        }

        @Override
        public boolean preRotate(float f10, float f11, float f12) {
            oops();
            return false;
        }

        @Override
        public boolean preScale(float f10, float f11, float f12, float f13) {
            oops();
            return false;
        }

        @Override
        public boolean preSkew(float f10, float f11, float f12, float f13) {
            oops();
            return false;
        }

        @Override
        public boolean preTranslate(float f10, float f11) {
            oops();
            return false;
        }

        @Override
        public void reset() {
            oops();
        }

        @Override
        public void set(Matrix matrix) {
            oops();
        }

        @Override
        public boolean setConcat(Matrix matrix, Matrix matrix2) {
            oops();
            return false;
        }

        @Override
        public boolean setPolyToPoly(float[] fArr, int i10, float[] fArr2, int i11, int i12) {
            oops();
            return false;
        }

        @Override
        public boolean setRectToRect(RectF rectF, RectF rectF2, Matrix.ScaleToFit scaleToFit) {
            oops();
            return false;
        }

        @Override
        public void setRotate(float f10, float f11, float f12) {
            oops();
        }

        @Override
        public void setScale(float f10, float f11, float f12, float f13) {
            oops();
        }

        @Override
        public void setSinCos(float f10, float f11, float f12, float f13) {
            oops();
        }

        @Override
        public void setSkew(float f10, float f11, float f12, float f13) {
            oops();
        }

        @Override
        public void setTranslate(float f10, float f11) {
            oops();
        }

        @Override
        public void setValues(float[] fArr) {
            oops();
        }

        @Override
        public boolean postRotate(float f10) {
            oops();
            return false;
        }

        @Override
        public boolean postScale(float f10, float f11) {
            oops();
            return false;
        }

        @Override
        public boolean postSkew(float f10, float f11) {
            oops();
            return false;
        }

        @Override
        public boolean preRotate(float f10) {
            oops();
            return false;
        }

        @Override
        public boolean preScale(float f10, float f11) {
            oops();
            return false;
        }

        @Override
        public boolean preSkew(float f10, float f11) {
            oops();
            return false;
        }

        @Override
        public void setRotate(float f10) {
            oops();
        }

        @Override
        public void setScale(float f10, float f11) {
            oops();
        }

        @Override
        public void setSinCos(float f10, float f11) {
            oops();
        }

        @Override
        public void setSkew(float f10, float f11) {
            oops();
        }
    };

    private MatrixUtils() {
    }
}
