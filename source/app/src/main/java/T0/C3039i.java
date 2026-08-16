package T0;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;

@C0.a
public final class C3039i {

    public static final String[] f23821a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    @C0.a
    public static boolean a(@NonNull Context context, @NonNull Throwable th2) {
        try {
            G0.A.r(context);
            G0.A.r(th2);
            return false;
        } catch (Exception e10) {
            Log.e("CrashUtils", "Error adding exception to DropBox!", e10);
            return false;
        }
    }
}
