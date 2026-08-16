package te;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
import androidx.annotation.NonNull;

public class C15403e extends MetricAffectingSpan {

    public final Typeface f117345b;

    public final boolean f117346c;

    @Deprecated
    public C15403e(@NonNull Typeface typeface) {
        this(typeface, false);
    }

    @NonNull
    public static C15403e a(@NonNull Typeface typeface) {
        return b(typeface, false);
    }

    @NonNull
    public static C15403e b(@NonNull Typeface typeface, boolean z10) {
        return new C15403e(typeface, z10);
    }

    public final void c(@NonNull TextPaint textPaint) {
        Typeface typeface = textPaint.getTypeface();
        if (!this.f117346c || typeface == null || typeface.getStyle() == 0) {
            textPaint.setTypeface(this.f117345b);
        } else {
            textPaint.setTypeface(Typeface.create(this.f117345b, typeface.getStyle() | this.f117345b.getStyle()));
        }
    }

    @Override
    public void updateDrawState(@NonNull TextPaint textPaint) {
        c(textPaint);
    }

    @Override
    public void updateMeasureState(@NonNull TextPaint textPaint) {
        c(textPaint);
    }

    public C15403e(@NonNull Typeface typeface, boolean z10) {
        this.f117345b = typeface;
        this.f117346c = z10;
    }
}
