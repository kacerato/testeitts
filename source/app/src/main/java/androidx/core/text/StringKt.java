package androidx.core.text;

import android.text.TextUtils;
import kotlin.jvm.internal.M;

public final class StringKt {
    public static final String htmlEncode(String str) {
        M.p(str, "<this>");
        String htmlEncode = TextUtils.htmlEncode(str);
        M.o(htmlEncode, "htmlEncode(this)");
        return htmlEncode;
    }
}
