package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.Layout;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/DrawableMarginSpan.class
 */
public class DrawableMarginSpan implements LeadingMarginSpan, LineHeightSpan {
    public DrawableMarginSpan(Drawable b10) {
        throw new RuntimeException("Stub!");
    }

    public DrawableMarginSpan(Drawable b10, int pad) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getLeadingMargin(boolean first) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void drawLeadingMargin(Canvas c10, Paint p10, int x10, int dir, int top, int baseline, int bottom, CharSequence text, int start, int end, boolean first, Layout layout) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void chooseHeight(CharSequence text, int start, int end, int istartv, int v10, Paint.FontMetricsInt fm2) {
        throw new RuntimeException("Stub!");
    }
}
