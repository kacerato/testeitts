package te;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.style.LeadingMarginSpan;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import re.C15173c;

public class C15400b implements LeadingMarginSpan {

    public static final boolean f117335g = false;

    public C15173c f117336b;

    public final Paint f117337c = AbstractC15408j.a();

    public final RectF f117338d = AbstractC15408j.c();

    public final Rect f117339e = AbstractC15408j.b();

    public final int f117340f;

    public C15400b(@NonNull C15173c c15173c, @IntRange(from = 0) int i10) {
        this.f117336b = c15173c;
        this.f117340f = i10;
    }

    @Override
    public void drawLeadingMargin(Canvas canvas, Paint paint, int i10, int i11, int i12, int i13, int i14, CharSequence charSequence, int i15, int i16, boolean z10, Layout layout) {
        int i17;
        int i18;
        if (z10 && Ae.f.b(i15, charSequence, this)) {
            this.f117337c.set(paint);
            this.f117336b.h(this.f117337c);
            int save = canvas.save();
            try {
                int n10 = this.f117336b.n();
                int p10 = this.f117336b.p((int) ((this.f117337c.descent() - this.f117337c.ascent()) + 0.5f));
                int i19 = (n10 - p10) / 2;
                if (f117335g) {
                    int width = i11 < 0 ? i10 - (layout.getWidth() - (n10 * this.f117340f)) : (n10 * this.f117340f) - i10;
                    int i20 = i10 + (i19 * i11);
                    int i21 = (i11 * p10) + i20;
                    int i22 = i11 * width;
                    i17 = Math.min(i20, i21) + i22;
                    i18 = Math.max(i20, i21) + i22;
                } else {
                    if (i11 <= 0) {
                        i10 -= n10;
                    }
                    i17 = i10 + i19;
                    i18 = i17 + p10;
                }
                int descent = (i13 + ((int) (((this.f117337c.descent() + this.f117337c.ascent()) / 2.0f) + 0.5f))) - (p10 / 2);
                int i23 = p10 + descent;
                int i24 = this.f117340f;
                if (i24 != 0 && i24 != 1) {
                    this.f117339e.set(i17, descent, i18, i23);
                    this.f117337c.setStyle(Paint.Style.FILL);
                    canvas.drawRect(this.f117339e, this.f117337c);
                    canvas.restoreToCount(save);
                }
                this.f117338d.set(i17, descent, i18, i23);
                this.f117337c.setStyle(this.f117340f == 0 ? Paint.Style.FILL : Paint.Style.STROKE);
                canvas.drawOval(this.f117338d, this.f117337c);
                canvas.restoreToCount(save);
            } catch (Throwable th2) {
                canvas.restoreToCount(save);
                throw th2;
            }
        }
    }

    @Override
    public int getLeadingMargin(boolean z10) {
        return this.f117336b.n();
    }
}
