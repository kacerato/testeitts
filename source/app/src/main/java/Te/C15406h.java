package te;

import android.graphics.Paint;
import android.text.Spanned;
import android.text.style.LineHeightSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Px;

public class C15406h implements LineHeightSpan {

    public final int f117351b;

    public C15406h(@Px int i10) {
        this.f117351b = i10;
    }

    @NonNull
    public static C15406h a(@Px int i10) {
        return new C15406h(i10);
    }

    public static boolean b(int i10, CharSequence charSequence, Object obj) {
        int spanEnd = ((Spanned) charSequence).getSpanEnd(obj);
        return spanEnd == i10 || spanEnd == i10 - 1;
    }

    @Override
    public void chooseHeight(CharSequence charSequence, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt) {
        if (b(i11, charSequence, this)) {
            int i14 = fontMetricsInt.descent;
            int i15 = this.f117351b;
            fontMetricsInt.descent = i14 + i15;
            fontMetricsInt.bottom += i15;
        }
    }
}
