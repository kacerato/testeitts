package android.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/TextureView.class
 */
public class TextureView extends View {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/view/TextureView$SurfaceTextureListener.class
 */
    public interface SurfaceTextureListener {
        void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11);

        void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11);

        boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture);

        void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture);
    }

    public TextureView(Context context) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TextureView(Context context, AttributeSet attrs) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TextureView(Context context, AttributeSet attrs, int defStyleAttr) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    public TextureView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super((Context) null, (AttributeSet) null, 0, 0);
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isOpaque() {
        throw new RuntimeException("Stub!");
    }

    public void setOpaque(boolean opaque) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onAttachedToWindow() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setLayerType(int layerType, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setLayerPaint(Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLayerType() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void buildLayer() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setForeground(Drawable foreground) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setBackgroundDrawable(Drawable background) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void draw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void onDraw(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onSizeChanged(int w10, int h10, int oldw, int oldh) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        throw new RuntimeException("Stub!");
    }

    public void setTransform(Matrix transform) {
        throw new RuntimeException("Stub!");
    }

    public Matrix getTransform(Matrix transform) {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getBitmap() {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getBitmap(int width, int height) {
        throw new RuntimeException("Stub!");
    }

    public Bitmap getBitmap(Bitmap bitmap) {
        throw new RuntimeException("Stub!");
    }

    public boolean isAvailable() {
        throw new RuntimeException("Stub!");
    }

    public Canvas lockCanvas() {
        throw new RuntimeException("Stub!");
    }

    public Canvas lockCanvas(Rect dirty) {
        throw new RuntimeException("Stub!");
    }

    public void unlockCanvasAndPost(Canvas canvas) {
        throw new RuntimeException("Stub!");
    }

    public SurfaceTexture getSurfaceTexture() {
        throw new RuntimeException("Stub!");
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        throw new RuntimeException("Stub!");
    }

    public SurfaceTextureListener getSurfaceTextureListener() {
        throw new RuntimeException("Stub!");
    }

    public void setSurfaceTextureListener(SurfaceTextureListener listener) {
        throw new RuntimeException("Stub!");
    }
}
