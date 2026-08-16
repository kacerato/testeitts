package android.view;

import android.content.Context;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ScaleGestureDetector.class
 */
public class ScaleGestureDetector {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ScaleGestureDetector$OnScaleGestureListener.class
 */
    public interface OnScaleGestureListener {
        boolean onScale(ScaleGestureDetector scaleGestureDetector);

        boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector);

        void onScaleEnd(ScaleGestureDetector scaleGestureDetector);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/ScaleGestureDetector$SimpleOnScaleGestureListener.class
 */
    public static class SimpleOnScaleGestureListener implements OnScaleGestureListener {
        public SimpleOnScaleGestureListener() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onScale(ScaleGestureDetector detector) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onScaleBegin(ScaleGestureDetector detector) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void onScaleEnd(ScaleGestureDetector detector) {
            throw new RuntimeException("Stub!");
        }
    }

    public ScaleGestureDetector(Context context, OnScaleGestureListener listener) {
        throw new RuntimeException("Stub!");
    }

    public ScaleGestureDetector(Context context, OnScaleGestureListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    public void setQuickScaleEnabled(boolean scales) {
        throw new RuntimeException("Stub!");
    }

    public boolean isQuickScaleEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setStylusScaleEnabled(boolean scales) {
        throw new RuntimeException("Stub!");
    }

    public boolean isStylusScaleEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean isInProgress() {
        throw new RuntimeException("Stub!");
    }

    public float getFocusX() {
        throw new RuntimeException("Stub!");
    }

    public float getFocusY() {
        throw new RuntimeException("Stub!");
    }

    public float getCurrentSpan() {
        throw new RuntimeException("Stub!");
    }

    public float getCurrentSpanX() {
        throw new RuntimeException("Stub!");
    }

    public float getCurrentSpanY() {
        throw new RuntimeException("Stub!");
    }

    public float getPreviousSpan() {
        throw new RuntimeException("Stub!");
    }

    public float getPreviousSpanX() {
        throw new RuntimeException("Stub!");
    }

    public float getPreviousSpanY() {
        throw new RuntimeException("Stub!");
    }

    public float getScaleFactor() {
        throw new RuntimeException("Stub!");
    }

    public long getTimeDelta() {
        throw new RuntimeException("Stub!");
    }

    public long getEventTime() {
        throw new RuntimeException("Stub!");
    }
}
