package androidx.core.text;

import android.text.Spannable;
import android.text.SpannableString;
import kotlin.jvm.internal.M;

public final class SpannableStringKt {
    public static final void clearSpans(Spannable spannable) {
        M.p(spannable, "<this>");
        Object[] spans = spannable.getSpans(0, spannable.length(), Object.class);
        M.o(spans, "getSpans(start, end, T::class.java)");
        for (Object obj : spans) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(Spannable spannable, int i10, int i11, Object span) {
        M.p(spannable, "<this>");
        M.p(span, "span");
        spannable.setSpan(span, i10, i11, 17);
    }

    public static final Spannable toSpannable(CharSequence charSequence) {
        M.p(charSequence, "<this>");
        SpannableString valueOf = SpannableString.valueOf(charSequence);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }

    public static final void set(Spannable spannable, Vf.l range, Object span) {
        M.p(spannable, "<this>");
        M.p(range, "range");
        M.p(span, "span");
        spannable.setSpan(span, range.getStart().intValue(), range.getEndInclusive().intValue(), 17);
    }
}
