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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/GradientDrawable.class
 */
public class GradientDrawable extends Drawable {
    public static final int LINE = 2;
    public static final int LINEAR_GRADIENT = 0;
    public static final int OVAL = 1;
    public static final int RADIAL_GRADIENT = 1;
    public static final int RECTANGLE = 0;
    public static final int RING = 3;
    public static final int SWEEP_GRADIENT = 2;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/GradientDrawable$Orientation.class
 */
    public enum Orientation {
        BL_TR,
        BOTTOM_TOP,
        BR_TL,
        LEFT_RIGHT,
        RIGHT_LEFT,
        TL_BR,
        TOP_BOTTOM,
        TR_BL
    }

    public GradientDrawable() {
        throw new RuntimeException("Stub!");
    }

    public GradientDrawable(Orientation orientation, int[] colors) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getPadding(Rect padding) {
        throw new RuntimeException("Stub!");
    }

    public void setCornerRadii(float[] radii) {
        throw new RuntimeException("Stub!");
    }

    public float[] getCornerRadii() {
        throw new RuntimeException("Stub!");
    }

    public void setCornerRadius(float radius) {
        throw new RuntimeException("Stub!");
    }

    public float getCornerRadius() {
        throw new RuntimeException("Stub!");
    }

    public void setStroke(int width, int color) {
        throw new RuntimeException("Stub!");
    }

    public void setStroke(int width, ColorStateList colorStateList) {
        throw new RuntimeException("Stub!");
    }

    public void setStroke(int width, int color, float dashWidth, float dashGap) {
        throw new RuntimeException("Stub!");
    }

    public void setStroke(int width, ColorStateList colorStateList, float dashWidth, float dashGap) {
        throw new RuntimeException("Stub!");
    }

    public void setSize(int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public void setShape(int shape) {
        throw new RuntimeException("Stub!");
    }

    public int getShape() {
        throw new RuntimeException("Stub!");
    }

    public void setGradientType(int gradient) {
        throw new RuntimeException("Stub!");
    }

    public int getGradientType() {
        throw new RuntimeException("Stub!");
    }

    public void setGradientCenter(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public float getGradientCenterX() {
        throw new RuntimeException("Stub!");
    }

    public float getGradientCenterY() {
        throw new RuntimeException("Stub!");
    }

    public void setGradientRadius(float gradientRadius) {
        throw new RuntimeException("Stub!");
    }

    public float getGradientRadius() {
        throw new RuntimeException("Stub!");
    }

    public void setUseLevel(boolean useLevel) {
        throw new RuntimeException("Stub!");
    }

    public boolean getUseLevel() {
        throw new RuntimeException("Stub!");
    }

    public Orientation getOrientation() {
        throw new RuntimeException("Stub!");
    }

    public void setOrientation(Orientation orientation) {
        throw new RuntimeException("Stub!");
    }

    public void setColors(int[] colors) {
        throw new RuntimeException("Stub!");
    }

    public int[] getColors() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public void setColor(int argb) {
        throw new RuntimeException("Stub!");
    }

    public void setColor(ColorStateList colorStateList) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getColor() {
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
    public int getChangingConfigurations() {
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
    public void setDither(boolean dither) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public ColorFilter getColorFilter() {
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
    public int getOpacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBoundsChange(Rect r10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onLevelChange(int level) {
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
    public Drawable.ConstantState getConstantState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getOutline(Outline outline) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable mutate() {
        throw new RuntimeException("Stub!");
    }
}
