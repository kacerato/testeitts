package androidx.core.text;

import android.text.TextUtils;
import kotlin.jvm.internal.M;

public final class CharSequenceKt {
    public static final boolean isDigitsOnly(CharSequence charSequence) {
        M.p(charSequence, "<this>");
        return TextUtils.isDigitsOnly(charSequence);
    }

    public static final int trimmedLength(CharSequence charSequence) {
        M.p(charSequence, "<this>");
        return TextUtils.getTrimmedLength(charSequence);
    }
}
