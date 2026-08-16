package android.gesture;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import java.util.ArrayList;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/gesture/GestureOverlayView.class
 */
public class GestureOverlayView extends FrameLayout {
    public static final int GESTURE_STROKE_TYPE_MULTIPLE = 1;
    public static final int GESTURE_STROKE_TYPE_SINGLE = 0;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/gesture/GestureOverlayView$OnGestureListener.class
 */
    public interface OnGestureListener {
        void onGestureStarted(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);

        void onGesture(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);

        void onGestureEnded(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);

        void onGestureCancelled(GestureOverlayView gestureOverlayView, MotionEvent motionEvent);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/gesture/GestureOverlayView$OnGesturePerformedListener.class
 */
    public interface OnGesturePerformedListener {
        void onGesturePerformed(GestureOverlayView gestureOverlayView, Gesture gesture);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/gesture/GestureOverlayView$OnGesturingListener.class
 */
    public interface OnGesturingListener {
        void onGesturingStarted(GestureOverlayView gestureOverlayView);

        void onGesturingEnded(GestureOverlayView gestureOverlayView);
    }

    public GestureOverlayView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GestureOverlayView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GestureOverlayView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public GestureOverlayView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ArrayList<GesturePoint> getCurrentStroke() {
        throw new RuntimeException("Stub!");
    }

    public int getOrientation() {
        throw new RuntimeException("Stub!");
    }

    public void setOrientation(int orientation) {
        throw new RuntimeException("Stub!");
    }

    public void setGestureColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public void setUncertainGestureColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public int getUncertainGestureColor() {
        throw new RuntimeException("Stub!");
    }

    public int getGestureColor() {
        throw new RuntimeException("Stub!");
    }

    public float getGestureStrokeWidth() {
        throw new RuntimeException("Stub!");
    }

    public void setGestureStrokeWidth(float gestureStrokeWidth) {
        throw new RuntimeException("Stub!");
    }

    public int getGestureStrokeType() {
        throw new RuntimeException("Stub!");
    }

    public void setGestureStrokeType(int gestureStrokeType) {
        throw new RuntimeException("Stub!");
    }

    public float getGestureStrokeLengthThreshold() {
        throw new RuntimeException("Stub!");
    }

    public void setGestureStrokeLengthThreshold(float gestureStrokeLengthThreshold) {
        throw new RuntimeException("Stub!");
    }

    public float getGestureStrokeSquarenessTreshold() {
        throw new RuntimeException("Stub!");
    }

    public void setGestureStrokeSquarenessTreshold(float gestureStrokeSquarenessTreshold) {
        throw new RuntimeException("Stub!");
    }

    public float getGestureStrokeAngleThreshold() {
        throw new RuntimeException("Stub!");
    }

    public void setGestureStrokeAngleThreshold(float gestureStrokeAngleThreshold) {
        throw new RuntimeException("Stub!");
    }

    public boolean isEventsInterceptionEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setEventsInterceptionEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFadeEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setFadeEnabled(boolean fadeEnabled) {
        throw new RuntimeException("Stub!");
    }

    public Gesture getGesture() {
        throw new RuntimeException("Stub!");
    }

    public void setGesture(Gesture gesture) {
        throw new RuntimeException("Stub!");
    }

    public Path getGesturePath() {
        throw new RuntimeException("Stub!");
    }

    public Path getGesturePath(Path path) {
        throw new RuntimeException("Stub!");
    }

    public boolean isGestureVisible() {
        throw new RuntimeException("Stub!");
    }

    public void setGestureVisible(boolean visible) {
        throw new RuntimeException("Stub!");
    }

    public long getFadeOffset() {
        throw new RuntimeException("Stub!");
    }

    public void setFadeOffset(long fadeOffset) {
        throw new RuntimeException("Stub!");
    }

    public void addOnGestureListener(OnGestureListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnGestureListener(OnGestureListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeAllOnGestureListeners() {
        throw new RuntimeException("Stub!");
    }

    public void addOnGesturePerformedListener(OnGesturePerformedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnGesturePerformedListener(OnGesturePerformedListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeAllOnGesturePerformedListeners() {
        throw new RuntimeException("Stub!");
    }

    public void addOnGesturingListener(OnGesturingListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeOnGesturingListener(OnGesturingListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void removeAllOnGesturingListeners() {
        throw new RuntimeException("Stub!");
    }

    public boolean isGesturing() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void clear(boolean animated) {
        throw new RuntimeException("Stub!");
    }

    public void cancelClearAnimation() {
        throw new RuntimeException("Stub!");
    }

    public void cancelGesture() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }
}
