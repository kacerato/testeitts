package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/BitmapDrawable.class
 */
public class BitmapDrawable extends Drawable {
    @Deprecated
    public BitmapDrawable() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public BitmapDrawable(Resources res) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public BitmapDrawable(Bitmap bitmap) {
        throw new RuntimeException("Stub!");
    }

    public BitmapDrawable(Resources res, Bitmap bitmap) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public BitmapDrawable(String filepath) {
        throw new RuntimeException("Stub!");
    }

    public BitmapDrawable(Resources res, String filepath) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public BitmapDrawable(InputStream is) {
        throw new RuntimeException("Stub!");
    }

    public BitmapDrawable(Resources res, InputStream is) {
        throw new RuntimeException("Stub!");
    }

    public final Paint getPaint() {
        throw new RuntimeException("Stub!");
    }

    public final Bitmap getBitmap() {
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

    public int getGravity() {
        throw new RuntimeException("Stub!");
    }

    public void setGravity(int gravity) {
        throw new RuntimeException("Stub!");
    }

    public void setMipMap(boolean mipMap) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasMipMap() {
        throw new RuntimeException("Stub!");
    }

    public void setAntiAlias(boolean aa2) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasAntiAlias() {
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
    public void setDither(boolean dither) {
        throw new RuntimeException("Stub!");
    }

    public Shader.TileMode getTileModeX() {
        throw new RuntimeException("Stub!");
    }

    public Shader.TileMode getTileModeY() {
        throw new RuntimeException("Stub!");
    }

    public void setTileModeX(Shader.TileMode mode) {
        throw new RuntimeException("Stub!");
    }

    public final void setTileModeY(Shader.TileMode mode) {
        throw new RuntimeException("Stub!");
    }

    public void setTileModeXY(Shader.TileMode xmode, Shader.TileMode ymode) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setAutoMirrored(boolean mirrored) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final boolean isAutoMirrored() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getChangingConfigurations() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBoundsChange(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
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
    public ColorFilter getColorFilter() {
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
    public final Drawable.ConstantState getConstantState() {
        throw new RuntimeException("Stub!");
    }
}
