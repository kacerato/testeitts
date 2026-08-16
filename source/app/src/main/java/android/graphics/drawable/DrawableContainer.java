package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/DrawableContainer.class
 */
public class DrawableContainer extends Drawable implements Drawable.Callback {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/DrawableContainer$DrawableContainerState.class
 */
    public static abstract class DrawableContainerState extends Drawable.ConstantState {
        DrawableContainerState() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public int getChangingConfigurations() {
            throw new RuntimeException("Stub!");
        }

        public final int addChild(Drawable dr) {
            throw new RuntimeException("Stub!");
        }

        public final int getChildCount() {
            throw new RuntimeException("Stub!");
        }

        public final Drawable[] getChildren() {
            throw new RuntimeException("Stub!");
        }

        public final Drawable getChild(int index) {
            throw new RuntimeException("Stub!");
        }

        @Override
        public boolean canApplyTheme() {
            throw new RuntimeException("Stub!");
        }

        public final void setVariablePadding(boolean variable) {
            throw new RuntimeException("Stub!");
        }

        public final Rect getConstantPadding() {
            throw new RuntimeException("Stub!");
        }

        public final void setConstantSize(boolean constant) {
            throw new RuntimeException("Stub!");
        }

        public final boolean isConstantSize() {
            throw new RuntimeException("Stub!");
        }

        public final int getConstantWidth() {
            throw new RuntimeException("Stub!");
        }

        public final int getConstantHeight() {
            throw new RuntimeException("Stub!");
        }

        public final int getConstantMinimumWidth() {
            throw new RuntimeException("Stub!");
        }

        public final int getConstantMinimumHeight() {
            throw new RuntimeException("Stub!");
        }

        protected void computeConstantSize() {
            throw new RuntimeException("Stub!");
        }

        public final void setEnterFadeDuration(int duration) {
            throw new RuntimeException("Stub!");
        }

        public final int getEnterFadeDuration() {
            throw new RuntimeException("Stub!");
        }

        public final void setExitFadeDuration(int duration) {
            throw new RuntimeException("Stub!");
        }

        public final int getExitFadeDuration() {
            throw new RuntimeException("Stub!");
        }

        public final int getOpacity() {
            throw new RuntimeException("Stub!");
        }

        public final boolean isStateful() {
            throw new RuntimeException("Stub!");
        }

        public void growArray(int oldSize, int newSize) {
            throw new RuntimeException("Stub!");
        }

        public synchronized boolean canConstantState() {
            throw new RuntimeException("Stub!");
        }
    }

    public DrawableContainer() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getChangingConfigurations() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getPadding(Rect padding) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getOutline(Outline outline) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setAlpha(int alpha) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getAlpha() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDither(boolean dither) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public void setEnterFadeDuration(int ms) {
        throw new RuntimeException("Stub!");
    }

    public void setExitFadeDuration(int ms) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBoundsChange(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStateful() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setAutoMirrored(boolean mirrored) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isAutoMirrored() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setHotspot(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setHotspotBounds(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getHotspotBounds(Rect outRect) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onStateChange(int[] state) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onLevelChange(int level) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onLayoutDirectionChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getIntrinsicWidth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getIntrinsicHeight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getMinimumWidth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getMinimumHeight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void invalidateDrawable(Drawable who) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void unscheduleDrawable(Drawable who, Runnable what) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setVisible(boolean visible, boolean restart) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOpacity() {
        throw new RuntimeException("Stub!");
    }

    public boolean selectDrawable(int index) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getCurrent() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canApplyTheme() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable mutate() {
        throw new RuntimeException("Stub!");
    }

    protected void setConstantState(DrawableContainerState state) {
        throw new RuntimeException("Stub!");
    }
}
