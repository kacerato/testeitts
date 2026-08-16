package androidx.appcompat.widget;

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
import androidx.appcompat.resources.Compatibility;
import androidx.core.content.res.ResourcesCompat;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

public class ResourcesWrapper extends Resources {
    private final Resources mResources;

    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
    }

    @Override
    public XmlResourceParser getAnimation(int i10) throws Resources.NotFoundException {
        return this.mResources.getAnimation(i10);
    }

    @Override
    public boolean getBoolean(int i10) throws Resources.NotFoundException {
        return this.mResources.getBoolean(i10);
    }

    @Override
    public int getColor(int i10) throws Resources.NotFoundException {
        return this.mResources.getColor(i10);
    }

    @Override
    public ColorStateList getColorStateList(int i10) throws Resources.NotFoundException {
        return this.mResources.getColorStateList(i10);
    }

    @Override
    public Configuration getConfiguration() {
        return this.mResources.getConfiguration();
    }

    @Override
    public float getDimension(int i10) throws Resources.NotFoundException {
        return this.mResources.getDimension(i10);
    }

    @Override
    public int getDimensionPixelOffset(int i10) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelOffset(i10);
    }

    @Override
    public int getDimensionPixelSize(int i10) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelSize(i10);
    }

    @Override
    public DisplayMetrics getDisplayMetrics() {
        return this.mResources.getDisplayMetrics();
    }

    @Override
    public Drawable getDrawable(int i10) throws Resources.NotFoundException {
        return this.mResources.getDrawable(i10);
    }

    public final Drawable getDrawableCanonical(int i10) throws Resources.NotFoundException {
        return super.getDrawable(i10);
    }

    @Override
    public Drawable getDrawableForDensity(int i10, int i11) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawableForDensity(this.mResources, i10, i11, null);
    }

    @Override
    public float getFraction(int i10, int i11, int i12) {
        return this.mResources.getFraction(i10, i11, i12);
    }

    @Override
    public int getIdentifier(String str, String str2, String str3) {
        return this.mResources.getIdentifier(str, str2, str3);
    }

    @Override
    public int[] getIntArray(int i10) throws Resources.NotFoundException {
        return this.mResources.getIntArray(i10);
    }

    @Override
    public int getInteger(int i10) throws Resources.NotFoundException {
        return this.mResources.getInteger(i10);
    }

    @Override
    public XmlResourceParser getLayout(int i10) throws Resources.NotFoundException {
        return this.mResources.getLayout(i10);
    }

    @Override
    public Movie getMovie(int i10) throws Resources.NotFoundException {
        return this.mResources.getMovie(i10);
    }

    @Override
    public String getQuantityString(int i10, int i11, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(i10, i11, objArr);
    }

    @Override
    public CharSequence getQuantityText(int i10, int i11) throws Resources.NotFoundException {
        return this.mResources.getQuantityText(i10, i11);
    }

    @Override
    public String getResourceEntryName(int i10) throws Resources.NotFoundException {
        return this.mResources.getResourceEntryName(i10);
    }

    @Override
    public String getResourceName(int i10) throws Resources.NotFoundException {
        return this.mResources.getResourceName(i10);
    }

    @Override
    public String getResourcePackageName(int i10) throws Resources.NotFoundException {
        return this.mResources.getResourcePackageName(i10);
    }

    @Override
    public String getResourceTypeName(int i10) throws Resources.NotFoundException {
        return this.mResources.getResourceTypeName(i10);
    }

    @Override
    public String getString(int i10) throws Resources.NotFoundException {
        return this.mResources.getString(i10);
    }

    @Override
    public String[] getStringArray(int i10) throws Resources.NotFoundException {
        return this.mResources.getStringArray(i10);
    }

    @Override
    public CharSequence getText(int i10) throws Resources.NotFoundException {
        return this.mResources.getText(i10);
    }

    @Override
    public CharSequence[] getTextArray(int i10) throws Resources.NotFoundException {
        return this.mResources.getTextArray(i10);
    }

    @Override
    public void getValue(int i10, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        this.mResources.getValue(i10, typedValue, z10);
    }

    @Override
    public void getValueForDensity(int i10, int i11, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        Compatibility.Api15Impl.getValueForDensity(this.mResources, i10, i11, typedValue, z10);
    }

    @Override
    public XmlResourceParser getXml(int i10) throws Resources.NotFoundException {
        return this.mResources.getXml(i10);
    }

    @Override
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.mResources.obtainAttributes(attributeSet, iArr);
    }

    @Override
    public TypedArray obtainTypedArray(int i10) throws Resources.NotFoundException {
        return this.mResources.obtainTypedArray(i10);
    }

    @Override
    public InputStream openRawResource(int i10) throws Resources.NotFoundException {
        return this.mResources.openRawResource(i10);
    }

    @Override
    public AssetFileDescriptor openRawResourceFd(int i10) throws Resources.NotFoundException {
        return this.mResources.openRawResourceFd(i10);
    }

    @Override
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.mResources.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.mResources.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.mResources;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override
    public Drawable getDrawable(int i10, Resources.Theme theme) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawable(this.mResources, i10, theme);
    }

    @Override
    public Drawable getDrawableForDensity(int i10, int i11, Resources.Theme theme) {
        return ResourcesCompat.getDrawableForDensity(this.mResources, i10, i11, theme);
    }

    @Override
    public String getQuantityString(int i10, int i11) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(i10, i11);
    }

    @Override
    public String getString(int i10, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getString(i10, objArr);
    }

    @Override
    public CharSequence getText(int i10, CharSequence charSequence) {
        return this.mResources.getText(i10, charSequence);
    }

    @Override
    public void getValue(String str, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        this.mResources.getValue(str, typedValue, z10);
    }

    @Override
    public InputStream openRawResource(int i10, TypedValue typedValue) throws Resources.NotFoundException {
        return this.mResources.openRawResource(i10, typedValue);
    }
}
