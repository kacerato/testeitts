package te;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15401c extends MetricAffectingSpan implements LeadingMarginSpan {

    public final C15173c f117341b;

    public final Rect f117342c = AbstractC15408j.b();

    public final Paint f117343d = AbstractC15408j.a();

    public C15401c(@NonNull C15173c c15173c) {
        this.f117341b = c15173c;
    }

    public final void a(TextPaint textPaint) {
        this.f117341b.b(textPaint);
    }

    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        int i17;
        this.f117343d.setStyle(Paint.Style.FILL);
        this.f117343d.setColor(this.f117341b.r(paint));
        if (i11 > 0) {
            i17 = canvas.getWidth();
        } else {
            i10 -= canvas.getWidth();
            i17 = i10;
        }
        this.f117342c.set(i10, i12, i17, i14);
        canvas.drawRect(this.f117342c, this.f117343d);
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return this.f117341b.s();
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
