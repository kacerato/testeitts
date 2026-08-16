package android.test.mock;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.InputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/mock/MockResources.class
 */
@Deprecated
public class MockResources extends Resources {
    public MockResources() {
        super((AssetManager) null, (DisplayMetrics) null, (Configuration) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateConfiguration(Configuration config, DisplayMetrics metrics) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getText(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getQuantityText(int id2, int quantity) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getString(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getString(int id2, Object... formatArgs) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getQuantityString(int id2, int quantity, Object... formatArgs) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getQuantityString(int id2, int quantity) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getText(int id2, CharSequence def) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence[] getTextArray(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getStringArray(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int[] getIntArray(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TypedArray obtainTypedArray(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getDimension(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getDimensionPixelOffset(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getDimensionPixelSize(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable getDrawable(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Movie getMovie(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getColor(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ColorStateList getColorStateList(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getInteger(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public XmlResourceParser getLayout(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public XmlResourceParser getAnimation(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public XmlResourceParser getXml(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public InputStream openRawResource(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public AssetFileDescriptor openRawResourceFd(int id2) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getValue(int id2, TypedValue outValue, boolean resolveRefs) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getValue(String name, TypedValue outValue, boolean resolveRefs) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public TypedArray obtainAttributes(AttributeSet set, int[] attrs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public DisplayMetrics getDisplayMetrics() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Configuration getConfiguration() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getIdentifier(String name, String defType, String defPackage) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getResourceName(int resid) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getResourcePackageName(int resid) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getResourceTypeName(int resid) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getResourceEntryName(int resid) throws Resources.NotFoundException {
        throw new RuntimeException("Stub!");
    }
}
