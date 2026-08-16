package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import org.xmlpull.v1.XmlPullParserException;

public class VectorEnabledTintResources extends ResourcesWrapper {
    public static final int MAX_SDK_WHERE_REQUIRED = 20;
    private static boolean sCompatVectorFromResourcesEnabled = false;
    private final WeakReference<Context> mContextRef;

    public VectorEnabledTintResources(Context context, Resources resources) {
        super(resources);
        this.mContextRef = new WeakReference<>(context);
    }

    public static boolean isCompatVectorFromResourcesEnabled() {
        return sCompatVectorFromResourcesEnabled;
    }

    public static void setCompatVectorFromResourcesEnabled(boolean z10) {
        sCompatVectorFromResourcesEnabled = z10;
    }

    public static boolean shouldBeUsed() {
        isCompatVectorFromResourcesEnabled();
        return false;
    }

    @Override
    public XmlResourceParser getAnimation(int i10) throws Resources.NotFoundException {
        return super.getAnimation(i10);
    }

    @Override
    public boolean getBoolean(int i10) throws Resources.NotFoundException {
        return super.getBoolean(i10);
    }

    @Override
    public int getColor(int i10) throws Resources.NotFoundException {
        return super.getColor(i10);
    }

    @Override
    public ColorStateList getColorStateList(int i10) throws Resources.NotFoundException {
        return super.getColorStateList(i10);
    }

    @Override
    public Configuration getConfiguration() {
        return super.getConfiguration();
    }

    @Override
    public float getDimension(int i10) throws Resources.NotFoundException {
        return super.getDimension(i10);
    }

    @Override
    public int getDimensionPixelOffset(int i10) throws Resources.NotFoundException {
        return super.getDimensionPixelOffset(i10);
    }

    @Override
    public int getDimensionPixelSize(int i10) throws Resources.NotFoundException {
        return super.getDimensionPixelSize(i10);
    }

    @Override
    public DisplayMetrics getDisplayMetrics() {
        return super.getDisplayMetrics();
    }

    @Override
    public Drawable getDrawable(int i10, Resources.Theme theme) throws Resources.NotFoundException {
        return super.getDrawable(i10, theme);
    }

    @Override
    public Drawable getDrawableForDensity(int i10, int i11) throws Resources.NotFoundException {
        return super.getDrawableForDensity(i10, i11);
    }

    @Override
    public float getFraction(int i10, int i11, int i12) {
        return super.getFraction(i10, i11, i12);
    }

    @Override
    public int getIdentifier(String str, String str2, String str3) {
        return super.getIdentifier(str, str2, str3);
    }

    @Override
    public int[] getIntArray(int i10) throws Resources.NotFoundException {
        return super.getIntArray(i10);
    }

    @Override
    public int getInteger(int i10) throws Resources.NotFoundException {
        return super.getInteger(i10);
    }

    @Override
    public XmlResourceParser getLayout(int i10) throws Resources.NotFoundException {
        return super.getLayout(i10);
    }

    @Override
    public Movie getMovie(int i10) throws Resources.NotFoundException {
        return super.getMovie(i10);
    }

    @Override
    public String getQuantityString(int i10, int i11) throws Resources.NotFoundException {
        return super.getQuantityString(i10, i11);
    }

    @Override
    public CharSequence getQuantityText(int i10, int i11) throws Resources.NotFoundException {
        return super.getQuantityText(i10, i11);
    }

    @Override
    public String getResourceEntryName(int i10) throws Resources.NotFoundException {
        return super.getResourceEntryName(i10);
    }

    @Override
    public String getResourceName(int i10) throws Resources.NotFoundException {
        return super.getResourceName(i10);
    }

    @Override
    public String getResourcePackageName(int i10) throws Resources.NotFoundException {
        return super.getResourcePackageName(i10);
    }

    @Override
    public String getResourceTypeName(int i10) throws Resources.NotFoundException {
        return super.getResourceTypeName(i10);
    }

    @Override
    public String getString(int i10) throws Resources.NotFoundException {
        return super.getString(i10);
    }

    @Override
    public String[] getStringArray(int i10) throws Resources.NotFoundException {
        return super.getStringArray(i10);
    }

    @Override
    public CharSequence getText(int i10) throws Resources.NotFoundException {
        return super.getText(i10);
    }

    @Override
    public CharSequence[] getTextArray(int i10) throws Resources.NotFoundException {
        return super.getTextArray(i10);
    }

    @Override
    public void getValue(int i10, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        super.getValue(i10, typedValue, z10);
    }

    @Override
    public void getValueForDensity(int i10, int i11, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        super.getValueForDensity(i10, i11, typedValue, z10);
    }

    @Override
    public XmlResourceParser getXml(int i10) throws Resources.NotFoundException {
        return super.getXml(i10);
    }

    @Override
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return super.obtainAttributes(attributeSet, iArr);
    }

    @Override
    public TypedArray obtainTypedArray(int i10) throws Resources.NotFoundException {
        return super.obtainTypedArray(i10);
    }

    @Override
    public InputStream openRawResource(int i10) throws Resources.NotFoundException {
        return super.openRawResource(i10);
    }

    @Override
    public AssetFileDescriptor openRawResourceFd(int i10) throws Resources.NotFoundException {
        return super.openRawResourceFd(i10);
    }

    @Override
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        super.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        super.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
    }

    @Override
    public Drawable getDrawable(int i10) throws Resources.NotFoundException {
        Context context = this.mContextRef.get();
        if (context != null) {
            return ResourceManagerInternal.get().onDrawableLoadedFromResources(context, this, i10);
        }
        return getDrawableCanonical(i10);
    }

    @Override
    public Drawable getDrawableForDensity(int i10, int i11, Resources.Theme theme) {
        return super.getDrawableForDensity(i10, i11, theme);
    }

    @Override
    public String getQuantityString(int i10, int i11, Object[] objArr) throws Resources.NotFoundException {
        return super.getQuantityString(i10, i11, objArr);
    }

    @Override
    public String getString(int i10, Object[] objArr) throws Resources.NotFoundException {
        return super.getString(i10, objArr);
    }

    @Override
    public CharSequence getText(int i10, CharSequence charSequence) {
        return super.getText(i10, charSequence);
    }

    @Override
    public void getValue(String str, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        super.getValue(str, typedValue, z10);
    }

    @Override
    public InputStream openRawResource(int i10, TypedValue typedValue) throws Resources.NotFoundException {
        return super.openRawResource(i10, typedValue);
    }
}
