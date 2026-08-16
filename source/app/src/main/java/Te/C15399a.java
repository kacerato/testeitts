package te;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15399a implements LeadingMarginSpan {

    public final C15173c f117332b;

    public final Rect f117333c = AbstractC15408j.b();

    public final Paint f117334d = AbstractC15408j.a();

    public C15399a(@NonNull C15173c c15173c) {
        this.f117332b = c15173c;
    }

    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        int o10 = this.f117332b.o();
        this.f117334d.set(paint);
        this.f117332b.a(this.f117334d);
        int i17 = i11 * o10;
        int i18 = i10 + i17;
        int i19 = i17 + i18;
        this.f117333c.set(Math.min(i18, i19), i12, Math.max(i18, i19), i14);
        canvas.drawRect(this.f117333c, this.f117334d);
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return this.f117332b.n();
    }
}
