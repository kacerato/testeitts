package android.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.util.AttributeSet;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Drawable.class
 */
public abstract class Drawable {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Drawable$Callback.class
 */
    public interface Callback {
        void invalidateDrawable(Drawable drawable);

        void scheduleDrawable(Drawable drawable, Runnable runnable, long j10);

        void unscheduleDrawable(Drawable drawable, Runnable runnable);
    }

    public abstract void draw(Canvas canvas);

    public abstract void setAlpha(int i10);

    public abstract void setColorFilter(ColorFilter colorFilter);

    public abstract int getOpacity();

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/Drawable$ConstantState.class
 */
    public static abstract class ConstantState {
        public abstract Drawable newDrawable();

        public abstract int getChangingConfigurations();

        public ConstantState() {
            throw new RuntimeException("Stub!");
        }

        public Drawable newDrawable(Resources res) {
            throw new RuntimeException("Stub!");
        }

        public Drawable newDrawable(Resources res, Resources.Theme theme) {
            throw new RuntimeException("Stub!");
        }

        public boolean canApplyTheme() {
            throw new RuntimeException("Stub!");
        }
    }

    public Drawable() {
        throw new RuntimeException("Stub!");
    }

    public void setBounds(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void setBounds(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    public final void copyBounds(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    public final Rect copyBounds() {
        throw new RuntimeException("Stub!");
    }

    public final Rect getBounds() {
        throw new RuntimeException("Stub!");
    }

    public Rect getDirtyBounds() {
        throw new RuntimeException("Stub!");
    }

    public void setChangingConfigurations(int configs) {
        throw new RuntimeException("Stub!");
    }

    public int getChangingConfigurations() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setDither(boolean dither) {
        throw new RuntimeException("Stub!");
    }

    public void setFilterBitmap(boolean filter) {
        throw new RuntimeException("Stub!");
    }

    public boolean isFilterBitmap() {
        throw new RuntimeException("Stub!");
    }

    public final void setCallback(Callback cb2) {
        throw new RuntimeException("Stub!");
    }

    public Callback getCallback() {
        throw new RuntimeException("Stub!");
    }

    public void invalidateSelf() {
        throw new RuntimeException("Stub!");
    }

    public void scheduleSelf(Runnable what, long when) {
        throw new RuntimeException("Stub!");
    }

    public void unscheduleSelf(Runnable what) {
        throw new RuntimeException("Stub!");
    }

    public int getLayoutDirection() {
        throw new RuntimeException("Stub!");
    }

    public final boolean setLayoutDirection(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    public boolean onLayoutDirectionChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    public int getAlpha() {
        throw new RuntimeException("Stub!");
    }

    public void setColorFilter(int color, PorterDuff.Mode mode) {
        throw new RuntimeException("Stub!");
    }

    public void setTint(int tintColor) {
        throw new RuntimeException("Stub!");
    }

    public void setTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public void setTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public ColorFilter getColorFilter() {
        throw new RuntimeException("Stub!");
    }

    public void clearColorFilter() {
        throw new RuntimeException("Stub!");
    }

    public void setHotspot(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public void setHotspotBounds(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void getHotspotBounds(Rect outRect) {
        throw new RuntimeException("Stub!");
    }

    public boolean isStateful() {
        throw new RuntimeException("Stub!");
    }

    public boolean setState(int[] stateSet) {
        throw new RuntimeException("Stub!");
    }

    public int[] getState() {
        throw new RuntimeException("Stub!");
    }

    public void jumpToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    public Drawable getCurrent() {
        throw new RuntimeException("Stub!");
    }

    public final boolean setLevel(int level) {
        throw new RuntimeException("Stub!");
    }

    public final int getLevel() {
        throw new RuntimeException("Stub!");
    }

    public boolean setVisible(boolean visible, boolean restart) {
        throw new RuntimeException("Stub!");
    }

    public final boolean isVisible() {
        throw new RuntimeException("Stub!");
    }

    public void setAutoMirrored(boolean mirrored) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAutoMirrored() {
        throw new RuntimeException("Stub!");
    }

    public void applyTheme(Resources.Theme t10) {
        throw new RuntimeException("Stub!");
    }

    public boolean canApplyTheme() {
        throw new RuntimeException("Stub!");
    }

    public static int resolveOpacity(int op1, int op2) {
        throw new RuntimeException("Stub!");
    }

    public Region getTransparentRegion() {
        throw new RuntimeException("Stub!");
    }

    public boolean onStateChange(int[] state) {
        throw new RuntimeException("Stub!");
    }

    public boolean onLevelChange(int level) {
        throw new RuntimeException("Stub!");
    }

    public void onBoundsChange(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    public int getIntrinsicWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getIntrinsicHeight() {
        throw new RuntimeException("Stub!");
    }

    public int getMinimumWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getMinimumHeight() {
        throw new RuntimeException("Stub!");
    }

    public boolean getPadding(Rect padding) {
        throw new RuntimeException("Stub!");
    }

    public void getOutline(Outline outline) {
        throw new RuntimeException("Stub!");
    }

    public Drawable mutate() {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromStream(InputStream is, String srcName) {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromResourceStream(Resources res, TypedValue value, InputStream is, String srcName) {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromResourceStream(Resources res, TypedValue value, InputStream is, String srcName, BitmapFactory.Options opts) {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromXml(Resources r10, XmlPullParser parser) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromXml(Resources r10, XmlPullParser parser, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromXmlInner(Resources r10, XmlPullParser parser, AttributeSet attrs) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromXmlInner(Resources r10, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public static Drawable createFromPath(String pathName) {
        throw new RuntimeException("Stub!");
    }

    public void inflate(Resources r10, XmlPullParser parser, AttributeSet attrs) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public void inflate(Resources r10, XmlPullParser parser, AttributeSet attrs, Resources.Theme theme) throws XmlPullParserException, IOException {
        throw new RuntimeException("Stub!");
    }

    public ConstantState getConstantState() {
        throw new RuntimeException("Stub!");
    }
}
