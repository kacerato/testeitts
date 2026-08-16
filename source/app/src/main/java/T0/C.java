package T0;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;

@C0.a
public class C {
    @C0.a
    @Deprecated
    public static void a(@NonNull Context context, @NonNull SharedPreferences.Editor editor, @NonNull String str) {
        throw new IllegalStateException("world-readable shared preferences should only be used by apk");
    }
}
