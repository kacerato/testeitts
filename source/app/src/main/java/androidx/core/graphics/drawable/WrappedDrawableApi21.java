package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import java.lang.reflect.Method;

public class WrappedDrawableApi21 extends WrappedDrawableApi14 {
    private static final String TAG = "WrappedDrawableApi21";
    private static Method sIsProjectedDrawableMethod;

    public WrappedDrawableApi21(Drawable drawable) {
        super(drawable);
        findAndCacheIsProjectedDrawableMethod();
    }

    private void findAndCacheIsProjectedDrawableMethod() {
        if (sIsProjectedDrawableMethod == null) {
            try {
                sIsProjectedDrawableMethod = Drawable.class.getDeclaredMethod("isProjected", null);
            } catch (Exception e10) {
                Log.w(TAG, "Failed to retrieve Drawable#isProjected() method", e10);
            }
        }
    }

    @Override
    public Rect getDirtyBounds() {
        return this.mDrawable.getDirtyBounds();
    }

    @Override
    public void getOutline(Outline outline) {
        this.mDrawable.getOutline(outline);
    }

    @Override
    public boolean isCompatTintEnabled() {
        return false;
    }

    public boolean isProjected() {
        Method method;
        Drawable drawable = this.mDrawable;
        if (drawable == null || (method = sIsProjectedDrawableMethod) == null) {
            return false;
        }
        try {
            return ((Boolean) method.invoke(drawable, null)).booleanValue();
        } catch (Exception e10) {
            Log.w(TAG, "Error calling Drawable#isProjected() method", e10);
            return false;
        }
    }

    @Override
    public void setHotspot(float f10, float f11) {
        this.mDrawable.setHotspot(f10, f11);
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        this.mDrawable.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override
    public boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override
    public void setTint(int i10) {
        if (isCompatTintEnabled()) {
            super.setTint(i10);
        } else {
            this.mDrawable.setTint(i10);
        }
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        if (isCompatTintEnabled()) {
            super.setTintList(colorStateList);
        } else {
            this.mDrawable.setTintList(colorStateList);
        }
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        if (isCompatTintEnabled()) {
            super.setTintMode(mode);
        } else {
            this.mDrawable.setTintMode(mode);
        }
    }

    public WrappedDrawableApi21(WrappedDrawableState wrappedDrawableState, Resources resources) {
        super(wrappedDrawableState, resources);
        findAndCacheIsProjectedDrawableMethod();
    }
}
