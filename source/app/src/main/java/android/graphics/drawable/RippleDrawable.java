package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/RippleDrawable.class
 */
public class RippleDrawable extends LayerDrawable {
    public static final int RADIUS_AUTO = -1;

    public RippleDrawable(ColorStateList color, Drawable content, Drawable mask) {
        super((Drawable[]) null);
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOpacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onStateChange(int[] stateSet) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBoundsChange(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setVisible(boolean visible, boolean restart) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isStateful() {
        throw new RuntimeException("Stub!");
    }

    public void setColor(ColorStateList color) {
        throw new RuntimeException("Stub!");
    }

    public void setRadius(int radius) {
        throw new RuntimeException("Stub!");
    }

    public int getRadius() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void inflate(Resources r10, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean setDrawableByLayerId(int id2, Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setPaddingMode(int mode) {
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
    public void getOutline(Outline outline) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void invalidateSelf() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Rect getDirtyBounds() {
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
