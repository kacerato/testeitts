package androidx.core.text;

import android.text.Spanned;
import android.text.SpannedString;
import androidx.exifinterface.media.ExifInterface;
import kotlin.jvm.internal.M;

public final class SpannedStringKt {
    public static final <T> T[] getSpans(Spanned spanned, int i10, int i11) {
        M.p(spanned, "<this>");
        M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        T[] tArr = (T[]) spanned.getSpans(i10, i11, Object.class);
        M.o(tArr, "getSpans(start, end, T::class.java)");
        return tArr;
    }

    public static Object[] getSpans$default(Spanned spanned, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i10 = 0;
        }
        if ((i12 & 2) != 0) {
            i11 = spanned.length();
        }
        M.p(spanned, "<this>");
        M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        Object[] spans = spanned.getSpans(i10, i11, Object.class);
        M.o(spans, "getSpans(start, end, T::class.java)");
        return spans;
    }

    public static final Spanned toSpanned(CharSequence charSequence) {
        M.p(charSequence, "<this>");
        SpannedString valueOf = SpannedString.valueOf(charSequence);
        M.o(valueOf, "valueOf(this)");
        return valueOf;
    }
}
