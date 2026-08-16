package te;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;

public class C15410l extends MetricAffectingSpan {
    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setFakeBoldText(true);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        textPaint.setFakeBoldText(true);
    }
}
