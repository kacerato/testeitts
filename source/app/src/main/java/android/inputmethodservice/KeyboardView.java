package android.inputmethodservice;

import android.content.Context;
import android.graphics.Canvas;
import android.inputmethodservice.Keyboard;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/KeyboardView.class
 */
public class KeyboardView extends View implements View.OnClickListener {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/inputmethodservice/KeyboardView$OnKeyboardActionListener.class
 */
    public interface OnKeyboardActionListener {
        void onPress(int i10);

        void onRelease(int i10);

        void onKey(int i10, int[] iArr);

        void onText(CharSequence charSequence);

        void swipeLeft();

        void swipeRight();

        void swipeDown();

        void swipeUp();
    }

    public KeyboardView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public KeyboardView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public KeyboardView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setOnKeyboardActionListener(OnKeyboardActionListener listener) {
        throw new RuntimeException("Stub!");
    }

    protected OnKeyboardActionListener getOnKeyboardActionListener() {
        throw new RuntimeException("Stub!");
    }

    public void setKeyboard(Keyboard keyboard) {
        throw new RuntimeException("Stub!");
    }

    public Keyboard getKeyboard() {
        throw new RuntimeException("Stub!");
    }

    public boolean setShifted(boolean shifted) {
        throw new RuntimeException("Stub!");
    }

    public boolean isShifted() {
        throw new RuntimeException("Stub!");
    }

    public void setPreviewEnabled(boolean previewEnabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isPreviewEnabled() {
        throw new RuntimeException("Stub!");
    }

    public void setVerticalCorrection(int verticalOffset) {
        throw new RuntimeException("Stub!");
    }

    public void setPopupParent(View v10) {
        throw new RuntimeException("Stub!");
    }

    public void setPopupOffset(int x10, int y10) {
        throw new RuntimeException("Stub!");
    }

    public void setProximityCorrectionEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public boolean isProximityCorrectionEnabled() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void invalidateAllKeys() {
        throw new RuntimeException("Stub!");
    }

    public void invalidateKey(int keyIndex) {
        throw new RuntimeException("Stub!");
    }

    protected boolean onLongPress(Keyboard.Key popupKey) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onHoverEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent me2) {
        throw new RuntimeException("Stub!");
    }

    protected void swipeRight() {
        throw new RuntimeException("Stub!");
    }

    protected void swipeLeft() {
        throw new RuntimeException("Stub!");
    }

    protected void swipeUp() {
        throw new RuntimeException("Stub!");
    }

    protected void swipeDown() {
        throw new RuntimeException("Stub!");
    }

    public void closing() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    public boolean handleBack() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onClick(View v10) {
        throw new RuntimeException("Stub!");
    }
}
