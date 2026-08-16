package android.view;

import android.content.Context;
import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/GestureDetector.class
 */
public class GestureDetector {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/GestureDetector$OnContextClickListener.class
 */
    public interface OnContextClickListener {
        boolean onContextClick(MotionEvent motionEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/GestureDetector$OnDoubleTapListener.class
 */
    public interface OnDoubleTapListener {
        boolean onSingleTapConfirmed(MotionEvent motionEvent);

        boolean onDoubleTap(MotionEvent motionEvent);

        boolean onDoubleTapEvent(MotionEvent motionEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/GestureDetector$OnGestureListener.class
 */
    public interface OnGestureListener {
        boolean onDown(MotionEvent motionEvent);

        void onShowPress(MotionEvent motionEvent);

        boolean onSingleTapUp(MotionEvent motionEvent);

        boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11);

        void onLongPress(MotionEvent motionEvent);

        boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/GestureDetector$SimpleOnGestureListener.class
 */
    public static class SimpleOnGestureListener implements OnGestureListener, OnDoubleTapListener, OnContextClickListener {
        public SimpleOnGestureListener() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onScroll(MotionEvent e12, MotionEvent e22, float distanceX, float distanceY) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onFling(MotionEvent e12, MotionEvent e22, float velocityX, float velocityY) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public void onShowPress(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onDown(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onDoubleTap(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onDoubleTapEvent(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean onContextClick(MotionEvent e10) {
            throw new RuntimeException("Stub!");
        }
    }

    @Deprecated
    public GestureDetector(OnGestureListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public GestureDetector(OnGestureListener listener) {
        throw new RuntimeException("Stub!");
    }

    public GestureDetector(Context context, OnGestureListener listener) {
        throw new RuntimeException("Stub!");
    }

    public GestureDetector(Context context, OnGestureListener listener, Handler handler) {
        throw new RuntimeException("Stub!");
    }

    public GestureDetector(Context context, OnGestureListener listener, Handler handler, boolean unused) {
        throw new RuntimeException("Stub!");
    }

    public void setOnDoubleTapListener(OnDoubleTapListener onDoubleTapListener) {
        throw new RuntimeException("Stub!");
    }

    public void setContextClickListener(OnContextClickListener onContextClickListener) {
        throw new RuntimeException("Stub!");
    }

    public void setIsLongpressEnabled(boolean isLongpressEnabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isLongpressEnabled() {
        throw new RuntimeException("Stub!");
    }

    public boolean onTouchEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }

    public boolean onGenericMotionEvent(MotionEvent ev) {
        throw new RuntimeException("Stub!");
    }
}
