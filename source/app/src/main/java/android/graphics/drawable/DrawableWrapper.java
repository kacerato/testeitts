package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/DrawableWrapper.class
 */
public abstract class DrawableWrapper extends Drawable implements Drawable.Callback {
    public DrawableWrapper(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    public void setDrawable(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDrawable() {
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
    public boolean setVisible(boolean visible, boolean restart) {
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
    public boolean onLayoutDirectionChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOpacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStateful() {
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
    public void onBoundsChange(Rect bounds) {
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
    public void getOutline(Outline outline) {
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
}
