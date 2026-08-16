package android.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.text.Layout;
import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/BoringLayout.class
 */
public class BoringLayout extends Layout implements TextUtils.EllipsizeCallback {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/BoringLayout$Metrics.class
 */
    public static class Metrics extends Paint.FontMetricsInt {
        public int width;

        public Metrics() {
            throw new RuntimeException("Stub!");
        }

        @Override
        public String toString() {
            throw new RuntimeException("Stub!");
        }
    }

    public BoringLayout(CharSequence source, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, Metrics metrics, boolean includepad) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    public BoringLayout(CharSequence source, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, Metrics metrics, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        super((CharSequence) null, (TextPaint) null, 0, (Layout.Alignment) null, 0.0f, 0.0f);
        throw new RuntimeException("Stub!");
    }

    public static BoringLayout make(CharSequence source, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, Metrics metrics, boolean includepad) {
        throw new RuntimeException("Stub!");
    }

    public static BoringLayout make(CharSequence source, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, Metrics metrics, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        throw new RuntimeException("Stub!");
    }

    public BoringLayout replaceOrMake(CharSequence source, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, Metrics metrics, boolean includepad) {
        throw new RuntimeException("Stub!");
    }

    public BoringLayout replaceOrMake(CharSequence source, TextPaint paint, int outerwidth, Layout.Alignment align, float spacingmult, float spacingadd, Metrics metrics, boolean includepad, TextUtils.TruncateAt ellipsize, int ellipsizedWidth) {
        throw new RuntimeException("Stub!");
    }

    public static Metrics isBoring(CharSequence text, TextPaint paint) {
        throw new RuntimeException("Stub!");
    }

    public static Metrics isBoring(CharSequence text, TextPaint paint, Metrics metrics) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getHeight() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineTop(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineDescent(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLineStart(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getParagraphDirection(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean getLineContainsTab(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getLineMax(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getLineWidth(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Layout.Directions getLineDirections(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getTopPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getBottomPadding() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsisCount(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsisStart(int line) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getEllipsizedWidth() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas c10, Path highlight, Paint highlightpaint, int cursorOffset) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void ellipsized(int start, int end) {
        throw new RuntimeException("Stub!");
    }
}
