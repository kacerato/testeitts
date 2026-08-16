package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@C0.a
public final class ComponentCallbacks2C11903a implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    public static final ComponentCallbacks2C11903a f61120f = new ComponentCallbacks2C11903a();

    public final AtomicBoolean f61121b = new AtomicBoolean();

    public final AtomicBoolean f61122c = new AtomicBoolean();

    public final ArrayList f61123d = new ArrayList();

    public boolean f61124e = false;

    @C0.a
    public interface InterfaceC0951a {
        @C0.a
        void a(boolean z10);
    }

    @C0.a
    public ComponentCallbacks2C11903a() {
    }

    @NonNull
    @C0.a
    public static ComponentCallbacks2C11903a b() {
        return f61120f;
    }

    @C0.a
    public static void c(@NonNull Application application) {
        ComponentCallbacks2C11903a componentCallbacks2C11903a = f61120f;
        synchronized (componentCallbacks2C11903a) {
            try {
                if (!componentCallbacks2C11903a.f61124e) {
                    application.registerActivityLifecycleCallbacks(componentCallbacks2C11903a);
                    application.registerComponentCallbacks(componentCallbacks2C11903a);
                    componentCallbacks2C11903a.f61124e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @C0.a
    public void a(@NonNull InterfaceC0951a interfaceC0951a) {
        synchronized (f61120f) {
            this.f61123d.add(interfaceC0951a);
        }
    }

    @C0.a
    public boolean d() {
        return this.f61121b.get();
    }

    @C0.a
    public boolean e(boolean z10) {
        if (!this.f61122c.get()) {
            if (T0.z.b()) {
                return z10;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f61122c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f61121b.set(true);
            }
        }
        return d();
    }

    public final void f(boolean z10) {
        synchronized (f61120f) {
            try {
                Iterator it = this.f61123d.iterator();
                while (it.hasNext()) {
                    ((InterfaceC0951a) it.next()).a(z10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        AtomicBoolean atomicBoolean = this.f61122c;
        boolean compareAndSet = this.f61121b.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override
    public final void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override
    public final void onActivityPaused(@NonNull Activity activity) {
    }

    @Override
    public final void onActivityResumed(@NonNull Activity activity) {
        AtomicBoolean atomicBoolean = this.f61122c;
        boolean compareAndSet = this.f61121b.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (compareAndSet) {
            f(false);
        }
    }

    @Override
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override
    public final void onActivityStarted(@NonNull Activity activity) {
    }

    @Override
    public final void onActivityStopped(@NonNull Activity activity) {
    }

    @Override
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override
    public final void onLowMemory() {
    }

    @Override
    public final void onTrimMemory(int i10) {
        if (i10 == 20 && this.f61121b.compareAndSet(false, true)) {
            this.f61122c.set(true);
            f(true);
        }
    }
}
