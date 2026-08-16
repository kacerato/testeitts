package android.graphics;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Path.class
 */
public class Path {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Path$Direction.class
 */
    public enum Direction {
        CCW,
        CW
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Path$FillType.class
 */
    public enum FillType {
        EVEN_ODD,
        INVERSE_EVEN_ODD,
        INVERSE_WINDING,
        WINDING
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/Path$Op.class
 */
    public enum Op {
        DIFFERENCE,
        INTERSECT,
        REVERSE_DIFFERENCE,
        UNION,
        XOR
    }

    public Path() {
        throw new RuntimeException("Stub!");
    }

    public Path(Path src) {
        throw new RuntimeException("Stub!");
    }

    public void reset() {
        throw new RuntimeException("Stub!");
    }

    public void rewind() {
        throw new RuntimeException("Stub!");
    }

    public void set(Path src) {
        throw new RuntimeException("Stub!");
    }

    public boolean op(Path path, Op op) {
        throw new RuntimeException("Stub!");
    }

    public boolean op(Path path1, Path path2, Op op) {
        throw new RuntimeException("Stub!");
    }

    public boolean isConvex() {
        throw new RuntimeException("Stub!");
    }

    public FillType getFillType() {
        throw new RuntimeException("Stub!");
    }

    public void setFillType(FillType ft) {
        throw new RuntimeException("Stub!");
    }

    public boolean isInverseFillType() {
        throw new RuntimeException("Stub!");
    }

    public void toggleInverseFillType() {
        throw new RuntimeException("Stub!");
    }

    public boolean isEmpty() {
        throw new RuntimeException("Stub!");
    }

    public boolean isRect(RectF rect) {
        throw new RuntimeException("Stub!");
    }

    public void computeBounds(RectF bounds, boolean exact) {
        throw new RuntimeException("Stub!");
    }

    public void incReserve(int extraPtCount) {
        throw new RuntimeException("Stub!");
    }

    public void moveTo(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public void rMoveTo(float dx, float dy) {
        throw new RuntimeException("Stub!");
    }

    public void lineTo(float x10, float y10) {
        throw new RuntimeException("Stub!");
    }

    public void rLineTo(float dx, float dy) {
        throw new RuntimeException("Stub!");
    }

    public void quadTo(float x12, float y12, float x22, float y22) {
        throw new RuntimeException("Stub!");
    }

    public void rQuadTo(float dx1, float dy1, float dx2, float dy2) {
        throw new RuntimeException("Stub!");
    }

    public void cubicTo(float x12, float y12, float x22, float y22, float x32, float y32) {
        throw new RuntimeException("Stub!");
    }

    public void rCubicTo(float x12, float y12, float x22, float y22, float x32, float y32) {
        throw new RuntimeException("Stub!");
    }

    public void arcTo(RectF oval, float startAngle, float sweepAngle, boolean forceMoveTo) {
        throw new RuntimeException("Stub!");
    }

    public void arcTo(RectF oval, float startAngle, float sweepAngle) {
        throw new RuntimeException("Stub!");
    }

    public void arcTo(float left, float top, float right, float bottom, float startAngle, float sweepAngle, boolean forceMoveTo) {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    public void addRect(RectF rect, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addRect(float left, float top, float right, float bottom, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addOval(RectF oval, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addOval(float left, float top, float right, float bottom, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addCircle(float x10, float y10, float radius, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addArc(RectF oval, float startAngle, float sweepAngle) {
        throw new RuntimeException("Stub!");
    }

    public void addArc(float left, float top, float right, float bottom, float startAngle, float sweepAngle) {
        throw new RuntimeException("Stub!");
    }

    public void addRoundRect(RectF rect, float rx, float ry, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addRoundRect(float left, float top, float right, float bottom, float rx, float ry, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addRoundRect(RectF rect, float[] radii, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addRoundRect(float left, float top, float right, float bottom, float[] radii, Direction dir) {
        throw new RuntimeException("Stub!");
    }

    public void addPath(Path src, float dx, float dy) {
        throw new RuntimeException("Stub!");
    }

    public void addPath(Path src) {
        throw new RuntimeException("Stub!");
    }

    public void addPath(Path src, Matrix matrix) {
        throw new RuntimeException("Stub!");
    }

    public void offset(float dx, float dy, Path dst) {
        throw new RuntimeException("Stub!");
    }

    public void offset(float dx, float dy) {
        throw new RuntimeException("Stub!");
    }

    public void setLastPoint(float dx, float dy) {
        throw new RuntimeException("Stub!");
    }

    public void transform(Matrix matrix, Path dst) {
        throw new RuntimeException("Stub!");
    }

    public void transform(Matrix matrix) {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    public float[] approximate(float acceptableError) {
        throw new RuntimeException("Stub!");
    }
}
