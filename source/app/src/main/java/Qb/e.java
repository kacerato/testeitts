package Qb;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;

public final class e {

    public static final Object f22056a = new Object();

    public static HandlerThread f22057b;

    public static Handler f22058c;

    public static Handler a() {
        Handler createAsync;
        synchronized (f22056a) {
            try {
                if (f22057b == null) {
                    HandlerThread handlerThread = new HandlerThread("FilamentUploadCallbacks");
                    f22057b = handlerThread;
                    handlerThread.start();
                    if (Build.VERSION.SDK_INT >= 28) {
                        createAsync = Handler.createAsync(f22057b.getLooper());
                        f22058c = createAsync;
                    } else {
                        f22058c = new Handler(f22057b.getLooper());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f22058c;
    }
}
