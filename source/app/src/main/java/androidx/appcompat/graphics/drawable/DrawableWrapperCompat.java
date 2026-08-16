package androidx.appcompat.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.DrawableCompat;

public class DrawableWrapperCompat extends Drawable implements Drawable.Callback {
    private Drawable mDrawable;

    public DrawableWrapperCompat(Drawable drawable) {
        setDrawable(drawable);
    }

    @Override
    public void draw(Canvas canvas) {
        this.mDrawable.draw(canvas);
    }

    @Override
    public int getChangingConfigurations() {
        return this.mDrawable.getChangingConfigurations();
    }

    @Override
    public Drawable getCurrent() {
        return this.mDrawable.getCurrent();
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override
    public int getIntrinsicHeight() {
        return this.mDrawable.getIntrinsicHeight();
    }

    @Override
    public int getIntrinsicWidth() {
        return this.mDrawable.getIntrinsicWidth();
    }

    @Override
    public int getMinimumHeight() {
        return this.mDrawable.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return this.mDrawable.getMinimumWidth();
    }

    @Override
    public int getOpacity() {
        return this.mDrawable.getOpacity();
    }

    @Override
    public boolean getPadding(Rect rect) {
        return this.mDrawable.getPadding(rect);
    }

    @Override
    public int[] getState() {
        return this.mDrawable.getState();
    }

    @Override
    public Region getTransparentRegion() {
        return this.mDrawable.getTransparentRegion();
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override
    public boolean isAutoMirrored() {
        return DrawableCompat.isAutoMirrored(this.mDrawable);
    }

    @Override
    public boolean isStateful() {
        return this.mDrawable.isStateful();
    }

    @Override
    public void jumpToCurrentState() {
        this.mDrawable.jumpToCurrentState();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        this.mDrawable.setBounds(rect);
    }

    @Override
    public boolean onLevelChange(int i10) {
        return this.mDrawable.setLevel(i10);
    }

    @Override
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override
    public void setAlpha(int i10) {
        this.mDrawable.setAlpha(i10);
    }

    @Override
    public void setAutoMirrored(boolean z10) {
        DrawableCompat.setAutoMirrored(this.mDrawable, z10);
    }

    @Override
    public void setChangingConfigurations(int i10) {
        this.mDrawable.setChangingConfigurations(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.mDrawable.setColorFilter(colorFilter);
    }

    @Override
    public void setDither(boolean z10) {
        this.mDrawable.setDither(z10);
    }

    public void setDrawable(Drawable drawable) {
        Drawable drawable2 = this.mDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        this.mDrawable.setFilterBitmap(z10);
    }

    @Override
    public void setHotspot(float f10, float f11) {
        DrawableCompat.setHotspot(this.mDrawable, f10, f11);
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        DrawableCompat.setHotspotBounds(this.mDrawable, i10, i11, i12, i13);
    }

    @Override
    public boolean setState(int[] iArr) {
        return this.mDrawable.setState(iArr);
    }

    @Override
    public void setTint(int i10) {
        DrawableCompat.setTint(this.mDrawable, i10);
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        DrawableCompat.setTintList(this.mDrawable, colorStateList);
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        DrawableCompat.setTintMode(this.mDrawable, mode);
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11) || this.mDrawable.setVisible(z10, z11);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }
}
