package androidx.core.app;

import android.app.Service;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class ServiceCompat {
    public static final int START_STICKY = 1;
    public static final int STOP_FOREGROUND_DETACH = 2;
    public static final int STOP_FOREGROUND_REMOVE = 1;

    public static class Api24Impl {
        private Api24Impl() {
        }

        public static void stopForeground(Service service, int i10) {
            service.stopForeground(i10);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StopForegroundFlags {
    }

    private ServiceCompat() {
    }

    public static void stopForeground(Service service, int i10) {
        Api24Impl.stopForeground(service, i10);
    }
}
