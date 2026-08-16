package G0;

import B0.C2318c;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.zzaj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;

public final class S0 implements ServiceConnection, W0 {

    public final Map f7316c = new HashMap();

    public int f7317d = 2;

    public boolean f7318e;

    @Nullable
    public IBinder f7319f;

    public final R0 f7320g;

    public ComponentName f7321h;

    public final V0 f7322i;

    public S0(V0 v02, R0 r02) {
        this.f7322i = v02;
        this.f7320g = r02;
    }

    public static C2318c d(S0 s02, String str, Executor executor) {
        C2318c c2318c;
        try {
            Intent b10 = s02.f7320g.b(V0.q(s02.f7322i));
            s02.f7317d = 3;
            StrictMode.VmPolicy a10 = T0.J.a();
            try {
                V0 v02 = s02.f7322i;
                boolean e10 = V0.s(v02).e(V0.q(v02), str, b10, s02, 4225, executor);
                s02.f7318e = e10;
                if (e10) {
                    V0.r(s02.f7322i).sendMessageDelayed(V0.r(s02.f7322i).obtainMessage(1, s02.f7320g), V0.p(s02.f7322i));
                    c2318c = C2318c.f1201E;
                } else {
                    s02.f7317d = 2;
                    try {
                        V0 v03 = s02.f7322i;
                        V0.s(v03).c(V0.q(v03), s02);
                    } catch (IllegalArgumentException unused) {
                    }
                    c2318c = new C2318c(16);
                }
                return c2318c;
            } finally {
                StrictMode.setVmPolicy(a10);
            }
        } catch (zzaj e11) {
            return e11.zza;
        }
    }

    public final int a() {
        return this.f7317d;
    }

    public final ComponentName b() {
        return this.f7321h;
    }

    @Nullable
    public final IBinder c() {
        return this.f7319f;
    }

    public final void e(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f7316c.put(serviceConnection, serviceConnection2);
    }

    public final void f(ServiceConnection serviceConnection, String str) {
        this.f7316c.remove(serviceConnection);
    }

    public final void g(String str) {
        V0.r(this.f7322i).removeMessages(1, this.f7320g);
        V0 v02 = this.f7322i;
        V0.s(v02).c(V0.q(v02), this);
        this.f7318e = false;
        this.f7317d = 2;
    }

    public final boolean h(ServiceConnection serviceConnection) {
        return this.f7316c.containsKey(serviceConnection);
    }

    public final boolean i() {
        return this.f7316c.isEmpty();
    }

    public final boolean j() {
        return this.f7318e;
    }

    @Override
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (V0.t(this.f7322i)) {
            try {
                V0.r(this.f7322i).removeMessages(1, this.f7320g);
                this.f7319f = iBinder;
                this.f7321h = componentName;
                Iterator it = this.f7316c.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f7317d = 1;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (V0.t(this.f7322i)) {
            try {
                V0.r(this.f7322i).removeMessages(1, this.f7320g);
                this.f7319f = null;
                this.f7321h = componentName;
                Iterator it = this.f7316c.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f7317d = 2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
