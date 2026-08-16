package S0;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.NonNull;

@C0.a
@Deprecated
public class d {
    @NonNull
    @C0.a
    public static String a(@NonNull PowerManager.WakeLock wakeLock, @NonNull String str) {
        String valueOf = String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock));
        if (true == TextUtils.isEmpty(str)) {
            str = "";
        }
        return String.valueOf(valueOf).concat(String.valueOf(str));
    }
}
