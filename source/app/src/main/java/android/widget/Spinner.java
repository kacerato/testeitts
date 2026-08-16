package android.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.widget.AdapterView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/Spinner.class
 */
public class Spinner extends AbsSpinner implements DialogInterface.OnClickListener {
    public static final int MODE_DIALOG = 0;
    public static final int MODE_DROPDOWN = 1;

    public Spinner(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Spinner(Context context, int mode) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Spinner(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Spinner(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Spinner(Context context, AttributeSet attrs, int defStyleAttr, int mode) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Spinner(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes, int mode) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Spinner(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes, int mode, Resources.Theme popupTheme) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public Context getPopupContext() {
        throw new RuntimeException("Stub!");
    }

    public void setPopupBackgroundDrawable(Drawable background) {
        throw new RuntimeException("Stub!");
    }

    public void setPopupBackgroundResource(int resId) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getPopupBackground() {
        throw new RuntimeException("Stub!");
    }

    public void setDropDownVerticalOffset(int pixels) {
        throw new RuntimeException("Stub!");
    }

    public int getDropDownVerticalOffset() {
        throw new RuntimeException("Stub!");
    }

    public void setDropDownHorizontalOffset(int pixels) {
        throw new RuntimeException("Stub!");
    }

    public int getDropDownHorizontalOffset() {
        throw new RuntimeException("Stub!");
    }

    public void setDropDownWidth(int pixels) {
        throw new RuntimeException("Stub!");
    }

    public int getDropDownWidth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setEnabled(boolean enabled) {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public int getGravity() {
        throw new RuntimeException("Stub!");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public void setAdapter(SpinnerAdapter adapter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setOnItemClickListener(AdapterView.OnItemClickListener l10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performClick() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public void setPrompt(CharSequence prompt) {
        throw new RuntimeException("Stub!");
    }

    public void setPromptId(int promptId) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getPrompt() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public PointerIcon onResolvePointerIcon(MotionEvent event, int pointerIndex) {
        throw new RuntimeException("Stub!");
    }
}
