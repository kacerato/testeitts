package androidx.core.view;

import android.view.ScaleGestureDetector;

public final class ScaleGestureDetectorCompat {

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static boolean isQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector) {
            return scaleGestureDetector.isQuickScaleEnabled();
        }

        public static void setQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector, boolean z10) {
            scaleGestureDetector.setQuickScaleEnabled(z10);
        }
    }

    private ScaleGestureDetectorCompat() {
    }

    @Deprecated
    public static boolean isQuickScaleEnabled(Object obj) {
        return isQuickScaleEnabled((ScaleGestureDetector) obj);
    }

    @Deprecated
    public static void setQuickScaleEnabled(Object obj, boolean z10) {
        setQuickScaleEnabled((ScaleGestureDetector) obj, z10);
    }

    public static boolean isQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector) {
        return Api19Impl.isQuickScaleEnabled(scaleGestureDetector);
    }

    public static void setQuickScaleEnabled(ScaleGestureDetector scaleGestureDetector, boolean z10) {
        Api19Impl.setQuickScaleEnabled(scaleGestureDetector, z10);
    }
}
