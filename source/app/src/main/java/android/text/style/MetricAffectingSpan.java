package android.text.style;

import android.text.TextPaint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/MetricAffectingSpan.class
 */
public abstract class MetricAffectingSpan extends CharacterStyle implements UpdateLayout {
    public abstract void updateMeasureState(TextPaint textPaint);

    public MetricAffectingSpan() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public MetricAffectingSpan getUnderlying() {
        throw new RuntimeException("Stub!");
    }
}
