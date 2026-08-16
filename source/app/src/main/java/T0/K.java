package T0;

import android.os.Looper;

public final class K {
    public static boolean a() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}
