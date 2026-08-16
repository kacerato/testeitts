package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/DynamicDrawableSpan.class
 */
public abstract class DynamicDrawableSpan extends ReplacementSpan {
    public static final int ALIGN_BASELINE = 1;
    public static final int ALIGN_BOTTOM = 0;
    protected final int mVerticalAlignment;

    public abstract Drawable getDrawable();

    public DynamicDrawableSpan() {
        throw new RuntimeException("Stub!");
    }

    protected DynamicDrawableSpan(int verticalAlignment) {
        throw new RuntimeException("Stub!");
    }

    public int getVerticalAlignment() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getSize(Paint paint, CharSequence text, int start, int end, Paint.FontMetricsInt fm2) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x10, int top, int y10, int bottom, Paint paint) {
        throw new RuntimeException("Stub!");
    }
}
