package S0;

import G0.A;
import G0.W0;
import T0.v;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

@C0.a
public class b {

    public static final Object f22965b = new Object();

    @Nullable
    public static volatile b f22966c;

    @NonNull
    @VisibleForTesting
    public final ConcurrentHashMap f22967a = new ConcurrentHashMap();

    @NonNull
    @C0.a
    public static b b() {
        if (f22966c == null) {
            synchronized (f22965b) {
                try {
                    if (f22966c == null) {
                        f22966c = new b();
                    }
                } finally {
                }
            }
        }
        b bVar = f22966c;
        A.r(bVar);
        return bVar;
    }

    public static void f(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
        }
    }

    public static boolean h(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof W0);
    }

    public static final boolean i(Context context, Intent intent, ServiceConnection serviceConnection, int i10, @Nullable Executor executor) {
        boolean bindService;
        if (executor == null) {
            executor = null;
        }
        if (!v.p() || executor == null) {
            return context.bindService(intent, serviceConnection, i10);
        }
        bindService = context.bindService(intent, i10, executor, serviceConnection);
        return bindService;
    }

    @C0.a
    public boolean a(@NonNull Context context, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i10) {
        return g(context, context.getClass().getName(), intent, serviceConnection, i10, true, null);
    }

    @C0.a
    public void c(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        if (!h(serviceConnection) || !this.f22967a.containsKey(serviceConnection)) {
            f(context, serviceConnection);
            return;
        }
        try {
            f(context, (ServiceConnection) this.f22967a.get(serviceConnection));
        } finally {
            this.f22967a.remove(serviceConnection);
        }
    }

    @C0.a
    public void d(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        try {
            c(context, serviceConnection);
        } catch (IllegalArgumentException unused) {
        }
    }

    public final boolean e(@NonNull Context context, @NonNull String str, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int i10, @Nullable Executor executor) {
        return g(context, str, intent, serviceConnection, 4225, true, executor);
    }

    public final boolean g(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i10, boolean z10, @Nullable Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((V0.d.a(context).c(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        if (!h(serviceConnection)) {
            return i(context, intent, serviceConnection, i10, executor);
        }
        ServiceConnection serviceConnection2 = (ServiceConnection) this.f22967a.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
        }
        try {
            boolean i11 = i(context, intent, serviceConnection, i10, executor);
            if (i11) {
                return i11;
            }
            return false;
        } finally {
            this.f22967a.remove(serviceConnection, serviceConnection);
        }
    }
}
