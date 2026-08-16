package G0;

import B0.C2318c;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.Executor;

@C0.a
public abstract class AbstractC2582o {

    public static final Object f7466a = new Object();

    public static int f7467b = 9;

    @Nullable
    public static V0 f7468c = null;

    @Nullable
    @VisibleForTesting
    public static HandlerThread f7469d = null;

    @Nullable
    public static Executor f7470e = null;

    public static boolean f7471f = false;

    @C0.a
    public static int d() {
        return 4225;
    }

    @NonNull
    @C0.a
    public static AbstractC2582o e(@NonNull Context context) {
        synchronized (f7466a) {
            try {
                if (f7468c == null) {
                    f7468c = new V0(context.getApplicationContext(), f7471f ? f().getLooper() : context.getMainLooper(), f7470e);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f7468c;
    }

    @NonNull
    @C0.a
    public static HandlerThread f() {
        synchronized (f7466a) {
            try {
                HandlerThread handlerThread = f7469d;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", f7467b);
                f7469d = handlerThread2;
                handlerThread2.start();
                return f7469d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    @C0.a
    public static HandlerThread g(int i10) {
        synchronized (f7466a) {
            try {
                HandlerThread handlerThread = f7469d;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", i10);
                f7469d = handlerThread2;
                handlerThread2.start();
                return f7469d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public static void h(@Nullable Executor executor) {
        synchronized (f7466a) {
            try {
                V0 v02 = f7468c;
                if (v02 != null) {
                    v02.u(executor);
                }
                f7470e = executor;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public static boolean i(int i10) {
        synchronized (f7466a) {
            try {
                if (f7469d != null) {
                    return false;
                }
                f7467b = i10;
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public static void j() {
        synchronized (f7466a) {
            try {
                V0 v02 = f7468c;
                if (v02 != null && !f7471f) {
                    v02.v(f().getLooper());
                }
                f7471f = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public boolean a(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str) {
        return m(new R0(componentName, 4225), serviceConnection, str, null).u0();
    }

    @C0.a
    public boolean b(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str, @Nullable Executor executor) {
        return m(new R0(componentName, 4225), serviceConnection, str, executor).u0();
    }

    @C0.a
    public boolean c(@NonNull String str, @NonNull ServiceConnection serviceConnection, @NonNull String str2) {
        return m(new R0(str, 4225, false), serviceConnection, str2, null).u0();
    }

    @C0.a
    public void k(@NonNull ComponentName componentName, @NonNull ServiceConnection serviceConnection, @NonNull String str) {
        n(new R0(componentName, 4225), serviceConnection, str);
    }

    @C0.a
    public void l(@NonNull String str, @NonNull ServiceConnection serviceConnection, @NonNull String str2) {
        n(new R0(str, 4225, false), serviceConnection, str2);
    }

    public abstract C2318c m(R0 r02, ServiceConnection serviceConnection, String str, @Nullable Executor executor);

    public abstract void n(R0 r02, ServiceConnection serviceConnection, String str);

    public final void o(@NonNull String str, @NonNull String str2, int i10, @NonNull ServiceConnection serviceConnection, @NonNull String str3, boolean z10) {
        n(new R0(str, str2, 4225, z10), serviceConnection, str3);
    }
}
