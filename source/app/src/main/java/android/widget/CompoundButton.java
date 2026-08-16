package android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.ViewStructure;
import android.view.autofill.AutofillValue;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/CompoundButton.class
 */
public abstract class CompoundButton extends Button implements Checkable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/CompoundButton$OnCheckedChangeListener.class
 */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(CompoundButton compoundButton, boolean z10);
    }

    public CompoundButton(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public CompoundButton(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public CompoundButton(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public CompoundButton(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void toggle() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean performClick() {
        throw new RuntimeException("Stub!");
    }

    @Override
    @ViewDebug.ExportedProperty
    public boolean isChecked() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setChecked(boolean checked) {
        throw new RuntimeException("Stub!");
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener listener) {
        throw new RuntimeException("Stub!");
    }

    public void setButtonDrawable(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setButtonDrawable(Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getButtonDrawable() {
        throw new RuntimeException("Stub!");
    }

    public void setButtonTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getButtonTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setButtonTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getButtonTintMode() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCompoundPaddingLeft() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCompoundPaddingRight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int[] onCreateDrawableState(int extraSpace) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean verifyDrawable(Drawable who) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpDrawablesToCurrentState() {
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
    public void onProvideAutofillStructure(ViewStructure structure, int flags) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void autofill(AutofillValue value) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getAutofillType() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AutofillValue getAutofillValue() {
        throw new RuntimeException("Stub!");
    }
}
