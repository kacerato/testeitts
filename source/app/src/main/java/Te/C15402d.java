package te;

import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15402d extends MetricAffectingSpan {

    public final C15173c f117344b;

    public C15402d(@NonNull C15173c c15173c) {
        this.f117344b = c15173c;
    }

    public final void a(TextPaint textPaint) {
        this.f117344b.c(textPaint);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        a(textPaint);
        textPaint.bgColor = this.f117344b.q(textPaint);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        a(textPaint);
    }
}
