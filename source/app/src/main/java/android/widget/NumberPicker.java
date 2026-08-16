package android.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/NumberPicker.class
 */
public class NumberPicker extends LinearLayout {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/NumberPicker$Formatter.class
 */
    public interface Formatter {
        String format(int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/NumberPicker$OnScrollListener.class
 */
    public interface OnScrollListener {
        public static final int SCROLL_STATE_FLING = 2;
        public static final int SCROLL_STATE_IDLE = 0;
        public static final int SCROLL_STATE_TOUCH_SCROLL = 1;

        void onScrollStateChange(NumberPicker numberPicker, int i10);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/NumberPicker$OnValueChangeListener.class
 */
    public interface OnValueChangeListener {
        void onValueChange(NumberPicker numberPicker, int i10, int i11);
    }

    public NumberPicker(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public NumberPicker(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public NumberPicker(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public NumberPicker(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchTrackballEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean dispatchHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void computeScroll() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void scrollBy(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeVerticalScrollOffset() {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected int computeVerticalScrollRange() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int computeVerticalScrollExtent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSolidColor() {
        throw new RuntimeException("Stub!");
    }

    public void setOnValueChangedListener(OnValueChangeListener onValueChangedListener) {
        throw new RuntimeException("Stub!");
    }

    public void setOnScrollListener(OnScrollListener onScrollListener) {
        throw new RuntimeException("Stub!");
    }

    public void setFormatter(Formatter formatter) {
        throw new RuntimeException("Stub!");
    }

    public void setValue(int value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performClick() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performLongClick() {
        throw new RuntimeException("Stub!");
    }

    public boolean getWrapSelectorWheel() {
        throw new RuntimeException("Stub!");
    }

    public void setWrapSelectorWheel(boolean wrapSelectorWheel) {
        throw new RuntimeException("Stub!");
    }

    public void setOnLongPressUpdateInterval(long intervalMillis) {
        throw new RuntimeException("Stub!");
    }

    public int getValue() {
        throw new RuntimeException("Stub!");
    }

    public int getMinValue() {
        throw new RuntimeException("Stub!");
    }

    public void setMinValue(int minValue) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxValue() {
        throw new RuntimeException("Stub!");
    }

    public void setMaxValue(int maxValue) {
        throw new RuntimeException("Stub!");
    }

    public String[] getDisplayedValues() {
        throw new RuntimeException("Stub!");
    }

    public void setDisplayedValues(String[] displayedValues) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getTopFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getBottomFadingEdgeStrength() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AccessibilityNodeProvider getAccessibilityNodeProvider() {
        throw new RuntimeException("Stub!");
    }
}
