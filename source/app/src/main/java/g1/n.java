package g1;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;

public final class n {
    @ChecksSdkIntAtLeast(api = 33)
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 33;
    }
}
