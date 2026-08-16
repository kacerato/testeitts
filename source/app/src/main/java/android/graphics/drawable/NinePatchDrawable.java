package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.NinePatch;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/NinePatchDrawable.class
 */
public class NinePatchDrawable extends Drawable {
    @Deprecated
    public NinePatchDrawable(Bitmap bitmap, byte[] chunk, Rect padding, String srcName) {
        throw new RuntimeException("Stub!");
    }

    public NinePatchDrawable(Resources res, Bitmap bitmap, byte[] chunk, Rect padding, String srcName) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public NinePatchDrawable(NinePatch patch) {
        throw new RuntimeException("Stub!");
    }

    public NinePatchDrawable(Resources res, NinePatch patch) {
        throw new RuntimeException("Stub!");
    }

    public void setTargetDensity(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void setTargetDensity(DisplayMetrics metrics) {
        throw new RuntimeException("Stub!");
    }

    public void setTargetDensity(int density) {
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

    @Override
    public void setDither(boolean dither) {
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
    public void setFilterBitmap(boolean filter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isFilterBitmap() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void inflate(Resources r10, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void applyTheme(Resources.Theme t10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean canApplyTheme() {
        throw new RuntimeException("Stub!");
    }

    public Paint getPaint() {
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
    public int getOpacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Region getTransparentRegion() {
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

    @Override
    public boolean onStateChange(int[] stateSet) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStateful() {
        throw new RuntimeException("Stub!");
    }
}
