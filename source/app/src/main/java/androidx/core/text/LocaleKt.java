package androidx.core.text;

import android.text.TextUtils;
import java.util.Locale;
import kotlin.jvm.internal.M;

public final class LocaleKt {
    public static final int getLayoutDirection(Locale locale) {
        M.p(locale, "<this>");
        return TextUtils.getLayoutDirectionFromLocale(locale);
    }
}
