package T0;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.regex.Pattern;

@C0.a
public class D {

    public static final Pattern f23808a = Pattern.compile("\\$\\{(.*?)\\}");

    @Nullable
    @C0.a
    public static String a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    @C0.a
    public static boolean b(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}
