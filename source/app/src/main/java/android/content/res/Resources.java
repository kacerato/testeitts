package android.content.res;

import android.graphics.Movie;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/Resources.class
 */
public class Resources {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/Resources$NotFoundException.class
 */
    public static class NotFoundException extends RuntimeException {
        public NotFoundException() {
            throw new RuntimeException("Stub!");
        }

        public NotFoundException(String name) {
            throw new RuntimeException("Stub!");
        }

        public NotFoundException(String name, Exception cause) {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/content/res/Resources$Theme.class
 */
    public final class Theme {
        Theme() {
            throw new RuntimeException("Stub!");
        }

        public void applyStyle(int resId, boolean force) {
            throw new RuntimeException("Stub!");
        }

        public void setTo(Theme other) {
            throw new RuntimeException("Stub!");
        }

        public TypedArray obtainStyledAttributes(int[] attrs) {
            throw new RuntimeException("Stub!");
        }

        public TypedArray obtainStyledAttributes(int resId, int[] attrs) throws NotFoundException {
            throw new RuntimeException("Stub!");
        }

        public TypedArray obtainStyledAttributes(AttributeSet set, int[] attrs, int defStyleAttr, int defStyleRes) {
            throw new RuntimeException("Stub!");
        }

        public boolean resolveAttribute(int resid, TypedValue outValue, boolean resolveRefs) {
            throw new RuntimeException("Stub!");
        }

        public Resources getResources() {
            throw new RuntimeException("Stub!");
        }

        public Drawable getDrawable(int id2) throws NotFoundException {
            throw new RuntimeException("Stub!");
        }

        public int getChangingConfigurations() {
            throw new RuntimeException("Stub!");
        }

        public void dump(int priority, String tag, String prefix) {
            throw new RuntimeException("Stub!");
        }
    }

    @Deprecated
    public Resources(AssetManager assets, DisplayMetrics metrics, Configuration config) {
        throw new RuntimeException("Stub!");
    }

    public static Resources getSystem() {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getText(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Typeface getFont(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getQuantityText(int id2, int quantity) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getString(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getString(int id2, Object... formatArgs) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getQuantityString(int id2, int quantity, Object... formatArgs) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getQuantityString(int id2, int quantity) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public CharSequence getText(int id2, CharSequence def) {
        throw new RuntimeException("Stub!");
    }

    public CharSequence[] getTextArray(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String[] getStringArray(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public int[] getIntArray(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public TypedArray obtainTypedArray(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public float getDimension(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public int getDimensionPixelOffset(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public int getDimensionPixelSize(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public float getFraction(int id2, int base, int pbase) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Drawable getDrawable(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDrawable(int id2, Theme theme) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Drawable getDrawableForDensity(int id2, int density) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDrawableForDensity(int id2, int density, Theme theme) {
        throw new RuntimeException("Stub!");
    }

    public Movie getMovie(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int getColor(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public int getColor(int id2, Theme theme) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public ColorStateList getColorStateList(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getColorStateList(int id2, Theme theme) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public boolean getBoolean(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public int getInteger(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public XmlResourceParser getLayout(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public XmlResourceParser getAnimation(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public XmlResourceParser getXml(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public InputStream openRawResource(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public InputStream openRawResource(int id2, TypedValue value) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public AssetFileDescriptor openRawResourceFd(int id2) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void getValue(int id2, TypedValue outValue, boolean resolveRefs) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void getValueForDensity(int id2, int density, TypedValue outValue, boolean resolveRefs) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void getValue(String name, TypedValue outValue, boolean resolveRefs) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public final Theme newTheme() {
        throw new RuntimeException("Stub!");
    }

    public TypedArray obtainAttributes(AttributeSet set, int[] attrs) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void updateConfiguration(Configuration config, DisplayMetrics metrics) {
        throw new RuntimeException("Stub!");
    }

    public DisplayMetrics getDisplayMetrics() {
        throw new RuntimeException("Stub!");
    }

    public Configuration getConfiguration() {
        throw new RuntimeException("Stub!");
    }

    public int getIdentifier(String name, String defType, String defPackage) {
        throw new RuntimeException("Stub!");
    }

    public String getResourceName(int resid) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getResourcePackageName(int resid) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getResourceTypeName(int resid) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public String getResourceEntryName(int resid) throws NotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void parseBundleExtras(XmlResourceParser parser, Bundle outBundle) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void parseBundleExtra(String tagName, AttributeSet attrs, Bundle outBundle) throws XmlPullParserException {
        throw new RuntimeException("Stub!");
    }

    public final AssetManager getAssets() {
        throw new RuntimeException("Stub!");
    }

    public final void flushLayoutCache() {
        throw new RuntimeException("Stub!");
    }

    public final void finishPreloading() {
        throw new RuntimeException("Stub!");
    }
}
