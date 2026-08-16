package android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.animation.Interpolator;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ProgressBar.class
 */
@RemoteViews.RemoteView
public class ProgressBar extends View {
    public ProgressBar(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ProgressBar(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ProgressBar(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized boolean isIndeterminate() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setIndeterminate(boolean indeterminate) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getIndeterminateDrawable() {
        throw new RuntimeException("Stub!");
    }

    public void setIndeterminateDrawable(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public void setIndeterminateTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getIndeterminateTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setIndeterminateTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getIndeterminateTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void setIndeterminateDrawableTiled(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getProgressDrawable() {
        throw new RuntimeException("Stub!");
    }

    public void setProgressDrawable(Drawable d10) {
        throw new RuntimeException("Stub!");
    }

    public void setProgressTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getProgressTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setProgressTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getProgressTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void setProgressBackgroundTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getProgressBackgroundTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setProgressBackgroundTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getProgressBackgroundTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void setSecondaryProgressTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getSecondaryProgressTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setSecondaryProgressTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getSecondaryProgressTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void setProgressDrawableTiled(Drawable d10) {
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
    public void postInvalidate() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setProgress(int progress) {
        throw new RuntimeException("Stub!");
    }

    public void setProgress(int progress, boolean animate) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setSecondaryProgress(int secondaryProgress) {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getProgress() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getSecondaryProgress() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMin() {
        throw new RuntimeException("Stub!");
    }

    @ViewDebug.ExportedProperty(category = "progress")
    public synchronized int getMax() {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setMin(int min) {
        throw new RuntimeException("Stub!");
    }

    public synchronized void setMax(int max) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized void incrementProgressBy(int diff) {
        throw new RuntimeException("Stub!");
    }

    public final synchronized void incrementSecondaryProgressBy(int diff) {
        throw new RuntimeException("Stub!");
    }

    public void setInterpolator(Context context, int resID) {
        throw new RuntimeException("Stub!");
    }

    public void setInterpolator(Interpolator interpolator) {
        throw new RuntimeException("Stub!");
    }

    public Interpolator getInterpolator() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void invalidateDrawable(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public synchronized void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
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
    public Parcelable onSaveInstanceState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }

    public boolean isAnimating() {
        throw new RuntimeException("Stub!");
    }
}
