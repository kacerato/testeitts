package android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.widget.RemoteViews;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ImageView.class
 */
@RemoteViews.RemoteView
public class ImageView extends View {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/widget/ImageView$ScaleType.class
 */
    public enum ScaleType {
        CENTER,
        CENTER_CROP,
        CENTER_INSIDE,
        FIT_CENTER,
        FIT_END,
        FIT_START,
        FIT_XY,
        MATRIX
    }

    public ImageView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ImageView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public ImageView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean verifyDrawable(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void jumpDrawablesToCurrentState() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void invalidateDrawable(Drawable dr) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean hasOverlappingRendering() {
        throw new RuntimeException("Stub!");
    }

    public boolean getAdjustViewBounds() {
        throw new RuntimeException("Stub!");
    }

    public void setAdjustViewBounds(boolean adjustViewBounds) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxWidth() {
        throw new RuntimeException("Stub!");
    }

    public void setMaxWidth(int maxWidth) {
        throw new RuntimeException("Stub!");
    }

    public int getMaxHeight() {
        throw new RuntimeException("Stub!");
    }

    public void setMaxHeight(int maxHeight) {
        throw new RuntimeException("Stub!");
    }

    public Drawable getDrawable() {
        throw new RuntimeException("Stub!");
    }

    public void setImageResource(int resId) {
        throw new RuntimeException("Stub!");
    }

    public void setImageURI(Uri uri) {
        throw new RuntimeException("Stub!");
    }

    public void setImageDrawable(Drawable drawable) {
        throw new RuntimeException("Stub!");
    }

    public void setImageIcon(Icon icon) {
        throw new RuntimeException("Stub!");
    }

    public void setImageTintList(ColorStateList tint) {
        throw new RuntimeException("Stub!");
    }

    public ColorStateList getImageTintList() {
        throw new RuntimeException("Stub!");
    }

    public void setImageTintMode(PorterDuff.Mode tintMode) {
        throw new RuntimeException("Stub!");
    }

    public PorterDuff.Mode getImageTintMode() {
        throw new RuntimeException("Stub!");
    }

    public void setImageBitmap(Bitmap bm2) {
        throw new RuntimeException("Stub!");
    }

    public void setImageState(int[] state, boolean merge) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setSelected(boolean selected) {
        throw new RuntimeException("Stub!");
    }

    public void setImageLevel(int level) {
        throw new RuntimeException("Stub!");
    }

    public void setScaleType(ScaleType scaleType) {
        throw new RuntimeException("Stub!");
    }

    public ScaleType getScaleType() {
        throw new RuntimeException("Stub!");
    }

    public Matrix getImageMatrix() {
        throw new RuntimeException("Stub!");
    }

    public void setImageMatrix(Matrix matrix) {
        throw new RuntimeException("Stub!");
    }

    public boolean getCropToPadding() {
        throw new RuntimeException("Stub!");
    }

    public void setCropToPadding(boolean cropToPadding) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int[] onCreateDrawableState(int extraSpace) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onRtlPropertiesChanged(int layoutDirection) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        throw new RuntimeException("Stub!");
    }

    public boolean setFrame(int l10, int t10, int r10, int b10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableStateChanged() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawableHotspotChanged(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    @ViewDebug.ExportedProperty(category = "layout")
    public int getBaseline() {
        throw new RuntimeException("Stub!");
    }

    public void setBaseline(int baseline) {
        throw new RuntimeException("Stub!");
    }

    public void setBaselineAlignBottom(boolean aligned) {
        throw new RuntimeException("Stub!");
    }

    public boolean getBaselineAlignBottom() {
        throw new RuntimeException("Stub!");
    }

    public final void setColorFilter(int color, PorterDuff.Mode mode) {
        throw new RuntimeException("Stub!");
    }

    public final void setColorFilter(int color) {
        throw new RuntimeException("Stub!");
    }

    public final void clearColorFilter() {
        throw new RuntimeException("Stub!");
    }

    public ColorFilter getColorFilter() {
        throw new RuntimeException("Stub!");
    }

    public void setColorFilter(ColorFilter cf2) {
        throw new RuntimeException("Stub!");
    }

    public int getImageAlpha() {
        throw new RuntimeException("Stub!");
    }

    public void setImageAlpha(int alpha) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setAlpha(int alpha) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isOpaque() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onVisibilityAggregated(boolean isVisible) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setVisibility(int visibility) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onDetachedFromWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CharSequence getAccessibilityClassName() {
        throw new RuntimeException("Stub!");
    }
}
