package te;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class C15404f extends MetricAffectingSpan {
    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setTextSkewX(-0.25f);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setTextSkewX(-0.25f);
    }
}
