package android.graphics;

import android.graphics.PorterDuff;
import android.graphics.Region;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Canvas.class
 */
public class Canvas {
    public static final int ALL_SAVE_FLAG = 31;

    @Deprecated
    public static final int CLIP_SAVE_FLAG = 2;

    @Deprecated
    public static final int CLIP_TO_LAYER_SAVE_FLAG = 16;

    @Deprecated
    public static final int FULL_COLOR_LAYER_SAVE_FLAG = 8;

    @Deprecated
    public static final int HAS_ALPHA_LAYER_SAVE_FLAG = 4;

    @Deprecated
    public static final int MATRIX_SAVE_FLAG = 1;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Canvas$EdgeType.class
 */
    public enum EdgeType {
        AA,
        BW
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Canvas$VertexMode.class
 */
    public enum VertexMode {
        TRIANGLES,
        TRIANGLE_FAN,
        TRIANGLE_STRIP
    }

    public Canvas() {
        throw new RuntimeException("Stub!");
    }

    public Canvas(Bitmap bitmap) {
        throw new RuntimeException("Stub!");
    }

    public boolean isHardwareAccelerated() {
        throw new RuntimeException("Stub!");
    }

    public void setBitmap(Bitmap bitmap) {
        throw new RuntimeException("Stub!");
    }

    public boolean isOpaque() {
        throw new RuntimeException("Stub!");
    }

    public int getWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getHeight() {
        throw new RuntimeException("Stub!");
    }

    public int getDensity() {
        throw new RuntimeException("Stub!");
    }

    public void setDensity(int density) {
        throw new RuntimeException("Stub!");
    }

    public int getMaximumBitmapWidth() {
        throw new RuntimeException("Stub!");
    }

    public int getMaximumBitmapHeight() {
        throw new RuntimeException("Stub!");
    }

    public int save() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int save(int saveFlags) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int saveLayer(RectF bounds, Paint paint, int saveFlags) {
        throw new RuntimeException("Stub!");
    }

    public int saveLayer(RectF bounds, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int saveLayer(float left, float top, float right, float bottom, Paint paint, int saveFlags) {
        throw new RuntimeException("Stub!");
    }

    public int saveLayer(float left, float top, float right, float bottom, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int saveLayerAlpha(RectF bounds, int alpha, int saveFlags) {
        throw new RuntimeException("Stub!");
    }

    public int saveLayerAlpha(RectF bounds, int alpha) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public int saveLayerAlpha(float left, float top, float right, float bottom, int alpha, int saveFlags) {
        throw new RuntimeException("Stub!");
    }

    public int saveLayerAlpha(float left, float top, float right, float bottom, int alpha) {
        throw new RuntimeException("Stub!");
    }

    public void restore() {
        throw new RuntimeException("Stub!");
    }

    public int getSaveCount() {
        throw new RuntimeException("Stub!");
    }

    public void restoreToCount(int saveCount) {
        throw new RuntimeException("Stub!");
    }

    public void translate(float dx, float dy) {
        throw new RuntimeException("Stub!");
    }

    public void scale(float sx, float sy) {
        throw new RuntimeException("Stub!");
    }

    public final void scale(float sx, float sy, float px, float py) {
        throw new RuntimeException("Stub!");
    }

    public void rotate(float degrees) {
        throw new RuntimeException("Stub!");
    }

    public final void rotate(float degrees, float px, float py) {
        throw new RuntimeException("Stub!");
    }

    public void skew(float sx, float sy) {
        throw new RuntimeException("Stub!");
    }

    public void concat(Matrix matrix) {
        throw new RuntimeException("Stub!");
    }

    public void setMatrix(Matrix matrix) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void getMatrix(Matrix ctm) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final Matrix getMatrix() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean clipRect(RectF rect, Region.Op op) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean clipRect(Rect rect, Region.Op op) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipRect(RectF rect) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipOutRect(RectF rect) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipRect(Rect rect) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipOutRect(Rect rect) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean clipRect(float left, float top, float right, float bottom, Region.Op op) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipRect(float left, float top, float right, float bottom) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipOutRect(float left, float top, float right, float bottom) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipRect(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipOutRect(int left, int top, int right, int bottom) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean clipPath(Path path, Region.Op op) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipPath(Path path) {
        throw new RuntimeException("Stub!");
    }

    public boolean clipOutPath(Path path) {
        throw new RuntimeException("Stub!");
    }

    public DrawFilter getDrawFilter() {
        throw new RuntimeException("Stub!");
    }

    public void setDrawFilter(DrawFilter filter) {
        throw new RuntimeException("Stub!");
    }

    public boolean quickReject(RectF rect, EdgeType type) {
        throw new RuntimeException("Stub!");
    }

    public boolean quickReject(Path path, EdgeType type) {
        throw new RuntimeException("Stub!");
    }

    public boolean quickReject(float left, float top, float right, float bottom, EdgeType type) {
        throw new RuntimeException("Stub!");
    }

    public boolean getClipBounds(Rect bounds) {
        throw new RuntimeException("Stub!");
    }

    public final Rect getClipBounds() {
        throw new RuntimeException("Stub!");
    }

    public void drawPicture(Picture picture) {
        throw new RuntimeException("Stub!");
    }

    public void drawPicture(Picture picture, RectF dst) {
        throw new RuntimeException("Stub!");
    }

    public void drawPicture(Picture picture, Rect dst) {
        throw new RuntimeException("Stub!");
    }

    public void drawArc(RectF oval, float startAngle, float sweepAngle, boolean useCenter, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawArc(float left, float top, float right, float bottom, float startAngle, float sweepAngle, boolean useCenter, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawARGB(int a10, int r10, int g10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void drawBitmap(Bitmap bitmap, float left, float top, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawBitmap(Bitmap bitmap, Rect src, RectF dst, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void drawBitmap(int[] colors, int offset, int stride, float x10, float y10, int width, int height, boolean hasAlpha, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void drawBitmap(int[] colors, int offset, int stride, int x10, int y10, int width, int height, boolean hasAlpha, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawBitmapMesh(Bitmap bitmap, int meshWidth, int meshHeight, float[] verts, int vertOffset, int[] colors, int colorOffset, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawCircle(float cx, float cy, float radius, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawColor(int color) {
        throw new RuntimeException("Stub!");
    }

    public void drawColor(int color, PorterDuff.Mode mode) {
        throw new RuntimeException("Stub!");
    }

    public void drawLine(float startX, float startY, float stopX, float stopY, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawLines(float[] pts, int offset, int count, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawLines(float[] pts, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawOval(RectF oval, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawOval(float left, float top, float right, float bottom, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawPaint(Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawPath(Path path, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawPoint(float x10, float y10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawPoints(float[] pts, int offset, int count, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawPoints(float[] pts, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void drawPosText(char[] text, int index, int count, float[] pos, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void drawPosText(String text, float[] pos, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawRect(RectF rect, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawRect(Rect r10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawRect(float left, float top, float right, float bottom, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawRGB(int r10, int g10, int b10) {
        throw new RuntimeException("Stub!");
    }

    public void drawRoundRect(RectF rect, float rx, float ry, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawRoundRect(float left, float top, float right, float bottom, float rx, float ry, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawText(char[] text, int index, int count, float x10, float y10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawText(String text, float x10, float y10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawText(String text, int start, int end, float x10, float y10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawText(CharSequence text, int start, int end, float x10, float y10, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawTextOnPath(char[] text, int index, int count, Path path, float hOffset, float vOffset, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawTextOnPath(String text, Path path, float hOffset, float vOffset, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawTextRun(char[] text, int index, int count, int contextIndex, int contextCount, float x10, float y10, boolean isRtl, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawTextRun(CharSequence text, int start, int end, int contextStart, int contextEnd, float x10, float y10, boolean isRtl, Paint paint) {
        throw new RuntimeException("Stub!");
    }

    public void drawVertices(VertexMode mode, int vertexCount, float[] verts, int vertOffset, float[] texs, int texOffset, int[] colors, int colorOffset, short[] indices, int indexOffset, int indexCount, Paint paint) {
        throw new RuntimeException("Stub!");
    }
}
