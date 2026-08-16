package i1;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.util.Set;

public final class C13547e0 {
    @Nullable
    public static C13541b0 a(Context context, String str) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("/", -1);
        int length = split.length;
        if (length != 1) {
            if (length == 2) {
                str2 = split[0];
                str3 = split[1];
            }
            return null;
        }
        str2 = String.valueOf(context.getPackageName()).concat("_preferences");
        str3 = split[0];
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            return new C13541b0(str2, str3);
        }
        return null;
    }

    public static void b(Context context, Set<String> set) {
        C13543c0 c13543c0 = new C13543c0(context);
        for (String str : set) {
            C13541b0 a10 = a(context, str);
            if (a10 == null) {
                String valueOf = String.valueOf(str);
                Log.d("UserMessagingPlatform", valueOf.length() != 0 ? "clearKeys: unable to process key: ".concat(valueOf) : new String("clearKeys: unable to process key: "));
            } else {
                C13543c0.a(c13543c0, a10.f91287a).remove(a10.f91288b);
            }
        }
        c13543c0.b();
    }
}
