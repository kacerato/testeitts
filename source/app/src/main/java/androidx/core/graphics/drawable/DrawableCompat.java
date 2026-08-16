package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.util.AttributeSet;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class DrawableCompat {
    private static final String TAG = "DrawableCompat";
    private static Method sGetLayoutDirectionMethod;
    private static boolean sGetLayoutDirectionMethodFetched;
    private static Method sSetLayoutDirectionMethod;
    private static boolean sSetLayoutDirectionMethodFetched;

    public static class Api19Impl {
        private Api19Impl() {
        }

        public static int getAlpha(Drawable drawable) {
            return drawable.getAlpha();
        }

        public static Drawable getChild(DrawableContainer.DrawableContainerState drawableContainerState, int i10) {
            return drawableContainerState.getChild(i10);
        }

        public static Drawable getDrawable(InsetDrawable insetDrawable) {
            return insetDrawable.getDrawable();
        }

        public static boolean isAutoMirrored(Drawable drawable) {
            return drawable.isAutoMirrored();
        }

        public static void setAutoMirrored(Drawable drawable, boolean z10) {
            drawable.setAutoMirrored(z10);
        }
    }

    public static class Api21Impl {
        private Api21Impl() {
        }

        public static void applyTheme(Drawable drawable, Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        public static boolean canApplyTheme(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        public static ColorFilter getColorFilter(Drawable drawable) {
            return drawable.getColorFilter();
        }

        public static void inflate(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        public static void setHotspot(Drawable drawable, float f10, float f11) {
            drawable.setHotspot(f10, f11);
        }

        public static void setHotspotBounds(Drawable drawable, int i10, int i11, int i12, int i13) {
            drawable.setHotspotBounds(i10, i11, i12, i13);
        }

        public static void setTint(Drawable drawable, int i10) {
            drawable.setTint(i10);
        }

        public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        public static void setTintMode(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }
    }

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static int getLayoutDirection(Drawable drawable) {
            return drawable.getLayoutDirection();
        }

        public static boolean setLayoutDirection(Drawable drawable, int i10) {
            return drawable.setLayoutDirection(i10);
        }
    }

    private DrawableCompat() {
    }

    public static void applyTheme(Drawable drawable, Resources.Theme theme) {
        Api21Impl.applyTheme(drawable, theme);
    }

    public static boolean canApplyTheme(Drawable drawable) {
        return Api21Impl.canApplyTheme(drawable);
    }

    public static void clearColorFilter(Drawable drawable) {
        drawable.clearColorFilter();
    }

    public static int getAlpha(Drawable drawable) {
        return Api19Impl.getAlpha(drawable);
    }

    public static ColorFilter getColorFilter(Drawable drawable) {
        return Api21Impl.getColorFilter(drawable);
    }

    public static int getLayoutDirection(Drawable drawable) {
        return Api23Impl.getLayoutDirection(drawable);
    }

    public static void inflate(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Api21Impl.inflate(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return Api19Impl.isAutoMirrored(drawable);
    }

    @Deprecated
    public static void jumpToCurrentState(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(Drawable drawable, boolean z10) {
        Api19Impl.setAutoMirrored(drawable, z10);
    }

    public static void setHotspot(Drawable drawable, float f10, float f11) {
        Api21Impl.setHotspot(drawable, f10, f11);
    }

    public static void setHotspotBounds(Drawable drawable, int i10, int i11, int i12, int i13) {
        Api21Impl.setHotspotBounds(drawable, i10, i11, i12, i13);
    }

    public static boolean setLayoutDirection(Drawable drawable, int i10) {
        return Api23Impl.setLayoutDirection(drawable, i10);
    }

    public static void setTint(Drawable drawable, int i10) {
        Api21Impl.setTint(drawable, i10);
    }

    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        Api21Impl.setTintList(drawable, colorStateList);
    }

    public static void setTintMode(Drawable drawable, PorterDuff.Mode mode) {
        Api21Impl.setTintMode(drawable, mode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(Drawable drawable) {
        return drawable instanceof WrappedDrawable ? (T) ((WrappedDrawable) drawable).getWrappedDrawable() : drawable;
    }

    public static Drawable wrap(Drawable drawable) {
        return drawable;
    }
}
