package te;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15413o implements LeadingMarginSpan {

    public final C15173c f117364b;

    public final Rect f117365c = AbstractC15408j.b();

    public final Paint f117366d = AbstractC15408j.a();

    public C15413o(@NonNull C15173c c15173c) {
        this.f117364b = c15173c;
    }

    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        int i17;
        int i18 = i12 + ((i14 - i12) / 2);
        this.f117366d.set(paint);
        this.f117364b.i(this.f117366d);
        int strokeWidth = (int) ((((int) (this.f117366d.getStrokeWidth() + 0.5f)) / 2.0f) + 0.5f);
        if (i11 > 0) {
            i17 = canvas.getWidth();
        } else {
            i17 = i10;
            i10 -= canvas.getWidth();
        }
        this.f117365c.set(i10, i18 - strokeWidth, i17, i18 + strokeWidth);
        canvas.drawRect(this.f117365c, this.f117366d);
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return 0;
    }
}
