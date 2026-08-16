package te;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15405g extends MetricAffectingSpan implements LeadingMarginSpan {

    public final C15173c f117347b;

    public final Rect f117348c = AbstractC15408j.b();

    public final Paint f117349d = AbstractC15408j.a();

    public final int f117350e;

    public C15405g(@NonNull C15173c c15173c, @IntRange(from = 1, to = 6) int i10) {
        this.f117347b = c15173c;
        this.f117350e = i10;
    }

    public final void a(TextPaint textPaint) {
        this.f117347b.e(textPaint, this.f117350e);
    }

    public int b() {
        return this.f117350e;
    }

    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        int i17;
        int i18 = this.f117350e;
        if ((i18 == 1 || i18 == 2) && Ae.f.a(i16, charSequence, this)) {
            this.f117349d.set(paint);
            this.f117347b.d(this.f117349d);
            float strokeWidth = this.f117349d.getStrokeWidth();
            if (strokeWidth > 0.0f) {
                int i19 = (int) ((i14 - strokeWidth) + 0.5f);
                if (i11 > 0) {
                    i17 = canvas.getWidth();
                } else {
                    i17 = i10;
                    i10 -= canvas.getWidth();
                }
                this.f117348c.set(i10, i19, i17, i14);
                canvas.drawRect(this.f117348c, this.f117349d);
            }
        }
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return 0;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        a(textPaint);
    }

    @Override
    public void updateMeasureState(TextPaint textPaint) {
        a(textPaint);
    }
}
