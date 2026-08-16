package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/ShapeDrawable.class
 */
public class ShapeDrawable extends Drawable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/ShapeDrawable$ShaderFactory.class
 */
    public static abstract class ShaderFactory {
        public abstract Shader resize(int i10, int i11);

        public ShaderFactory() {
            throw new RuntimeException("Stub!");
        }
    }

    public ShapeDrawable() {
        throw new RuntimeException("Stub!");
    }

    public ShapeDrawable(Shape s10) {
        throw new RuntimeException("Stub!");
    }

    public Shape getShape() {
        throw new RuntimeException("Stub!");
    }

    public void setShape(Shape s10) {
        throw new RuntimeException("Stub!");
    }

    public void setShaderFactory(ShaderFactory fact) {
        throw new RuntimeException("Stub!");
    }

    public ShaderFactory getShaderFactory() {
        throw new RuntimeException("Stub!");
    }

    public Paint getPaint() {
        throw new RuntimeException("Stub!");
    }

    public void setPadding(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void setPadding(Rect padding) {
        throw new RuntimeException("Stub!");
    }

    public void setIntrinsicWidth(int width) {
        throw new RuntimeException("Stub!");
    }

    public void setIntrinsicHeight(int height) {
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
    public boolean getPadding(Rect padding) {
        throw new RuntimeException("Stub!");
    }

    protected void onDraw(Shape shape, Canvas canvas, Paint paint) {
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
    public void setAlpha(int alpha) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getAlpha() {
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
    public void setColorFilter(ColorFilter colorFilter) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOpacity() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setDither(boolean dither) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onBoundsChange(Rect bounds) {
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

    protected boolean inflateTag(String name, Resources r10, XmlPullParser parser, AttributeSet attrs) {
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
