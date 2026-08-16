package android.text.style;

import android.graphics.Paint;
import android.text.TextPaint;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/LineHeightSpan.class
 */
public interface LineHeightSpan extends ParagraphStyle, WrapTogetherSpan {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/text/style/LineHeightSpan$WithDensity.class
 */
    public interface WithDensity extends LineHeightSpan {
        void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt, TextPaint textPaint);
    }

    void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt);
}
