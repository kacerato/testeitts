package s0;

import G0.A;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import qe.C15075d;

public final class C15224d {
    @NonNull
    public static String a(@NonNull String str, @Nullable Boolean bool) {
        A.l(str);
        return (true != c(bool) ? "http" : C15075d.f106134a) + "://" + str;
    }

    @NonNull
    public static String b(@Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Long l10) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb2 = new StringBuilder(str);
        sb2.append('=');
        if (!TextUtils.isEmpty(str2)) {
            sb2.append(str2);
        }
        if (c(bool)) {
            sb2.append(";HttpOnly");
        }
        if (c(bool2)) {
            sb2.append(";Secure");
        }
        if (!TextUtils.isEmpty(str3)) {
            sb2.append(";Domain=");
            sb2.append(str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            sb2.append(";Path=");
            sb2.append(str4);
        }
        if (l10 != null && l10.longValue() > 0) {
            sb2.append(";Max-Age=");
            sb2.append((Object) l10);
        }
        if (!TextUtils.isEmpty(null)) {
            sb2.append(";Priority=null");
        }
        if (!TextUtils.isEmpty(null)) {
            sb2.append(";SameSite=null");
        }
        if (c(null)) {
            sb2.append(";SameParty");
        }
        return sb2.toString();
    }

    public static boolean c(@Nullable Boolean bool) {
        return bool != null && bool.booleanValue();
    }
}
