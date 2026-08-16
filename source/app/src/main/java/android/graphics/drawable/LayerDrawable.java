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
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/drawable/LayerDrawable.class
 */
public class LayerDrawable extends Drawable implements Drawable.Callback {
    public static final int INSET_UNDEFINED = Integer.MIN_VALUE;
    public static final int PADDING_MODE_NEST = 0;
    public static final int PADDING_MODE_STACK = 1;

    public LayerDrawable(Drawable[] layers) {
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

    public int addLayer(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    public Drawable findDrawableByLayerId(int id2) {
        throw new RuntimeException("Stub!");
    }

    public void setId(int index, int id2) {
        throw new RuntimeException("Stub!");
    }

    public int getId(int index) {
        throw new RuntimeException("Stub!");
    }

    public int getNumberOfLayers() {
        throw new RuntimeException("Stub!");
    }

    public boolean setDrawableByLayerId(int id2, Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public int findIndexByLayerId(int id2) {
        throw new RuntimeException("Stub!");
    }

    public void setDrawable(int index, Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDrawable(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerSize(int index, int w10, int h10) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerWidth(int index, int w10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerWidth(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerHeight(int index, int h10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerHeight(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerGravity(int index, int gravity) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerGravity(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInset(int index, int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetRelative(int index, int s10, int t10, int e10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetLeft(int index, int l10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerInsetLeft(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetRight(int index, int r10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerInsetRight(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetTop(int index, int t10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerInsetTop(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetBottom(int index, int b10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerInsetBottom(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetStart(int index, int s10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerInsetStart(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setLayerInsetEnd(int index, int e10) {
        throw new RuntimeException("Stub!");
    }

    public int getLayerInsetEnd(int index) {
        throw new RuntimeException("Stub!");
    }

    public void setPaddingMode(int mode) {
        throw new RuntimeException("Stub!");
    }

    public int getPaddingMode() {
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

    public void setPadding(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public void setPaddingRelative(int start, int top, int end, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public int getLeftPadding() {
        throw new RuntimeException("Stub!");
    }

    public int getRightPadding() {
        throw new RuntimeException("Stub!");
    }

    public int getStartPadding() {
        throw new RuntimeException("Stub!");
    }

    public int getEndPadding() {
        throw new RuntimeException("Stub!");
    }

    public int getTopPadding() {
        throw new RuntimeException("Stub!");
    }

    public int getBottomPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void getOutline(Outline outline) {
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
    public void setDither(boolean dither) {
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

    public void setOpacity(int opacity) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getOpacity() {
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
    public void jumpToCurrentState() {
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
    public Drawable.ConstantState getConstantState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public Drawable mutate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onLayoutDirectionChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }
}
