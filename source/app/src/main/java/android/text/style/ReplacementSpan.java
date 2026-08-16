package android.text.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/ReplacementSpan.class
 */
public abstract class ReplacementSpan extends MetricAffectingSpan {
    public abstract int getSize(Paint paint, CharSequence charSequence, int i10, int i11, Paint.FontMetricsInt fontMetricsInt);

    public abstract void draw(Canvas canvas, CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, Paint paint);

    public ReplacementSpan() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateMeasureState(TextPaint p10) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void updateDrawState(TextPaint ds) {
        throw new RuntimeException("Stub!");
    }
}
