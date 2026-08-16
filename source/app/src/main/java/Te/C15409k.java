package te;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.LeadingMarginSpan;
import android.widget.TextView;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15409k implements LeadingMarginSpan {

    public final C15173c f117358b;

    public final String f117359c;

    public final Paint f117360d = AbstractC15408j.a();

    public int f117361e;

    public C15409k(@NonNull C15173c c15173c, @NonNull String str) {
        this.f117358b = c15173c;
        this.f117359c = str;
    }

    public static void a(@NonNull TextView textView, @NonNull CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            C15409k[] c15409kArr = (C15409k[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), C15409k.class);
            if (c15409kArr != null) {
                TextPaint paint = textView.getPaint();
                for (C15409k c15409k : c15409kArr) {
                    c15409k.f117361e = (int) (paint.measureText(c15409k.f117359c) + 0.5f);
                }
            }
        }
    }

    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        if (z10 && Ae.f.b(i15, charSequence, this)) {
            this.f117360d.set(paint);
            this.f117358b.h(this.f117360d);
            int measureText = (int) (this.f117360d.measureText(this.f117359c) + 0.5f);
            int n10 = this.f117358b.n();
            if (measureText > n10) {
                this.f117361e = measureText;
                n10 = measureText;
            } else {
                this.f117361e = 0;
            }
            canvas.drawText(this.f117359c, i11 > 0 ? (i10 + (n10 * i11)) - measureText : i10 + (i11 * n10) + (n10 - measureText), i13, this.f117360d);
        }
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return Math.max(this.f117361e, this.f117358b.n());
    }
}
