package ve;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.style.ReplacementSpan;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import re.C15173c;

public class e extends ReplacementSpan {

    public static final int f121575f = 0;

    public static final int f121576g = 1;

    public static final int f121577h = 2;

    public final C15173c f121578b;

    public final C15835a f121579c;

    public final int f121580d;

    public final boolean f121581e;

    public e(@NonNull C15173c c15173c, @NonNull C15835a c15835a, int i10, boolean z10) {
        this.f121578b = c15173c;
        this.f121579c = c15835a;
        this.f121580d = i10;
        this.f121581e = z10;
    }

    public static float b(int i10, int i11, @NonNull Paint paint) {
        return (int) ((i10 + ((i11 - i10) / 2)) - (((paint.descent() + paint.ascent()) / 2.0f) + 0.5f));
    }

    @NonNull
    public C15835a a() {
        return this.f121579c;
    }

    @Override
    public void draw(@NonNull Canvas canvas, CharSequence charSequence, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, float f10, int i12, int i13, int i14, @NonNull Paint paint) {
        int i15;
        this.f121579c.k(Ae.i.a(canvas, charSequence), paint.getTextSize());
        C15835a c15835a = this.f121579c;
        if (!c15835a.i()) {
            float b10 = b(i12, i14, paint);
            if (this.f121581e) {
                this.f121578b.f(paint);
            }
            canvas.drawText(charSequence, i10, i11, f10, b10, paint);
            return;
        }
        int i16 = i14 - c15835a.getBounds().bottom;
        int save = canvas.save();
        try {
            int i17 = this.f121580d;
            if (2 != i17) {
                if (1 == i17) {
                    i15 = paint.getFontMetricsInt().descent;
                }
                canvas.translate(f10, i16);
                c15835a.draw(canvas);
                canvas.restoreToCount(save);
            }
            i15 = ((i14 - i12) - c15835a.getBounds().height()) / 2;
            i16 -= i15;
            canvas.translate(f10, i16);
            c15835a.draw(canvas);
            canvas.restoreToCount(save);
        } catch (Throwable th2) {
            canvas.restoreToCount(save);
            throw th2;
        }
    }

    @Override
    public int getSize(@NonNull Paint paint, CharSequence charSequence, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        if (!this.f121579c.i()) {
            if (this.f121581e) {
                this.f121578b.f(paint);
            }
            return (int) (paint.measureText(charSequence, i10, i11) + 0.5f);
        }
        Rect bounds = this.f121579c.getBounds();
        if (fontMetricsInt != null) {
            int i12 = -bounds.bottom;
            fontMetricsInt.ascent = i12;
            fontMetricsInt.descent = 0;
            fontMetricsInt.top = i12;
            fontMetricsInt.bottom = 0;
        }
        return bounds.right;
    }
}
