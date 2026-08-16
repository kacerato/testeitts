package com.google.android.gms.internal.measurement;

import T0.C3041k;
import T0.InterfaceC3037g;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.internal.C12274d3;
import com.google.android.gms.measurement.internal.C12340l5;
import com.google.android.gms.measurement.internal.InterfaceC12275d4;
import com.google.android.gms.measurement.internal.InterfaceC12283e4;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import n1.C14345a;

public final class I1 {

    public static volatile I1 f61946j;

    public final String f61947a = "FA";

    public final InterfaceC3037g f61948b = C3041k.e();

    public final ExecutorService f61949c;

    public final C14345a f61950d;

    @GuardedBy("listenerList")
    public final List f61951e;

    public int f61952f;

    public boolean f61953g;

    public final String f61954h;

    public volatile InterfaceC12211w0 f61955i;

    public I1(Context context, Bundle bundle) {
        C12166r0.a();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC12096j1(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f61949c = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f61950d = new C14345a(this);
        this.f61951e = new ArrayList();
        try {
            if (C12340l5.a(context, K2.p.f10763i, C12274d3.a(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, I1.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.f61954h = null;
                    this.f61953g = true;
                    Log.w(this.f61947a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection.");
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        this.f61954h = "fa";
        m(new W0(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f61947a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new H1(this));
        }
    }

    public static I1 v(Context context, Bundle bundle) {
        G0.A.r(context);
        if (f61946j == null) {
            synchronized (I1.class) {
                try {
                    if (f61946j == null) {
                        f61946j = new I1(context, bundle);
                    }
                } finally {
                }
            }
        }
        return f61946j;
    }

    public final void A(InterfaceC12283e4 interfaceC12283e4) {
        G0.A.r(interfaceC12283e4);
        List list = this.f61951e;
        synchronized (list) {
            for (int i10 = 0; i10 < list.size(); i10++) {
                try {
                    if (interfaceC12283e4.equals(((Pair) list.get(i10)).first)) {
                        Log.w(this.f61947a, "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            BinderC12230y1 binderC12230y1 = new BinderC12230y1(interfaceC12283e4);
            list.add(new Pair(interfaceC12283e4, binderC12230y1));
            if (this.f61955i != null) {
                try {
                    this.f61955i.registerOnMeasurementEventListener(binderC12230y1);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f61947a, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m(new C12185t1(this, binderC12230y1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B(InterfaceC12283e4 interfaceC12283e4) {
        Pair pair;
        G0.A.r(interfaceC12283e4);
        List list = this.f61951e;
        synchronized (list) {
            int i10 = 0;
            while (true) {
                try {
                    if (i10 >= list.size()) {
                        pair = null;
                        break;
                    } else {
                        if (interfaceC12283e4.equals(((Pair) list.get(i10)).first)) {
                            pair = (Pair) list.get(i10);
                            break;
                        }
                        i10++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (pair == null) {
                Log.w(this.f61947a, "OnEventListener had not been registered.");
                return;
            }
            list.remove(pair);
            BinderC12230y1 binderC12230y1 = (BinderC12230y1) pair.second;
            if (this.f61955i != null) {
                try {
                    this.f61955i.unregisterOnMeasurementEventListener(binderC12230y1);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.f61947a, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            m(new C12194u1(this, binderC12230y1));
        }
    }

    public final void C(@NonNull String str, Bundle bundle) {
        u(null, str, bundle, false, true, null);
    }

    public final void D(String str, String str2, Bundle bundle) {
        u(str, str2, bundle, true, true, null);
    }

    public final void E(String str, String str2, Bundle bundle, long j10) {
        u(str, str2, bundle, true, false, Long.valueOf(j10));
    }

    public final void F(String str, String str2, Object obj, boolean z10) {
        m(new M0(this, str, str2, obj, z10));
    }

    public final void G(Bundle bundle) {
        m(new N0(this, bundle));
    }

    public final void H(String str, String str2, Bundle bundle) {
        m(new O0(this, str, str2, bundle));
    }

    public final List I(String str, String str2) {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new P0(this, str, str2, binderC12184t0));
        List list = (List) BinderC12184t0.e1(binderC12184t0.l0(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final void J(String str) {
        m(new Q0(this, str));
    }

    public final void K(K0 k02, String str, String str2) {
        m(new R0(this, k02, str, str2));
    }

    public final void L(Boolean bool) {
        m(new S0(this, bool));
    }

    public final void M(Bundle bundle) {
        m(new T0(this, bundle));
    }

    public final void N() {
        m(new U0(this));
    }

    public final void O(long j10) {
        m(new V0(this, j10));
    }

    public final void P(String str) {
        m(new X0(this, str));
    }

    public final void Q(String str) {
        m(new Y0(this, str));
    }

    public final void R(Runnable runnable) {
        m(new C12015a1(this, runnable));
    }

    public final String S() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12024b1(this, binderC12184t0));
        return binderC12184t0.k(500L);
    }

    public final String T() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12033c1(this, binderC12184t0));
        return binderC12184t0.k(50L);
    }

    public final long U() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12042d1(this, binderC12184t0));
        Long t10 = binderC12184t0.t(500L);
        if (t10 != null) {
            return t10.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.f61948b.a()).nextLong();
        int i10 = this.f61952f + 1;
        this.f61952f = i10;
        return nextLong + i10;
    }

    public final String a() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12051e1(this, binderC12184t0));
        return binderC12184t0.k(500L);
    }

    public final String b() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12069g1(this, binderC12184t0));
        return binderC12184t0.k(500L);
    }

    public final Map c(String str, String str2, boolean z10) {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12078h1(this, str, str2, z10, binderC12184t0));
        Bundle l02 = binderC12184t0.l0(5000L);
        if (l02 == null || l02.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(l02.size());
        for (String str3 : l02.keySet()) {
            Object obj = l02.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void d(int i10, String str, Object obj, Object obj2, Object obj3) {
        m(new C12087i1(this, false, 5, str, obj, null, null));
    }

    public final Bundle e(Bundle bundle, boolean z10) {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12105k1(this, bundle, binderC12184t0));
        if (z10) {
            return binderC12184t0.l0(5000L);
        }
        return null;
    }

    public final int f(String str) {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12114l1(this, str, binderC12184t0));
        Integer num = (Integer) BinderC12184t0.e1(binderC12184t0.l0(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    @WorkerThread
    public final String g() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12123m1(this, binderC12184t0));
        return binderC12184t0.k(120000L);
    }

    @WorkerThread
    public final Long h() {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12132n1(this, binderC12184t0));
        return binderC12184t0.t(120000L);
    }

    public final String i() {
        return this.f61954h;
    }

    public final Object j(int i10) {
        BinderC12184t0 binderC12184t0 = new BinderC12184t0();
        m(new C12141o1(this, binderC12184t0, i10));
        return BinderC12184t0.e1(binderC12184t0.l0(15000L), Object.class);
    }

    public final void k(boolean z10) {
        m(new C12150p1(this, z10));
    }

    public final void l(Bundle bundle) {
        m(new C12159q1(this, bundle));
    }

    public final String o() {
        return this.f61947a;
    }

    public final boolean p() {
        return this.f61953g;
    }

    public final InterfaceC12211w0 q() {
        return this.f61955i;
    }

    public final void r(InterfaceC12211w0 interfaceC12211w0) {
        this.f61955i = interfaceC12211w0;
    }

    public final void m(AbstractRunnableC12212w1 abstractRunnableC12212w1) {
        this.f61949c.execute(abstractRunnableC12212w1);
    }

    public final void n(Exception exc, boolean z10, boolean z11) {
        this.f61953g |= z10;
        if (z10) {
            Log.w(this.f61947a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z11) {
            d(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f61947a, "Error with data collection. Data lost.", exc);
    }

    public final void u(String str, String str2, Bundle bundle, boolean z10, boolean z11, Long l10) {
        m(new C12203v1(this, l10, str, str2, bundle, z10, z11));
    }

    public final C14345a w() {
        return this.f61950d;
    }

    public final InterfaceC12211w0 x(Context context, boolean z10) {
        try {
            return AbstractBinderC12202v0.asInterface(DynamiteModule.e(context, z10 ? DynamiteModule.f61440i : DynamiteModule.f61438g, ModuleDescriptor.MODULE_ID).d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e10) {
            n(e10, true, false);
            return null;
        }
    }

    public final void y(InterfaceC12275d4 interfaceC12275d4) {
        BinderC12221x1 binderC12221x1 = new BinderC12221x1(interfaceC12275d4);
        if (this.f61955i != null) {
            try {
                this.f61955i.setEventInterceptor(binderC12221x1);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                Log.w(this.f61947a, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
            }
        }
        m(new C12167r1(this, binderC12221x1));
    }

    public final void z(Intent intent) {
        m(new C12176s1(this, intent));
    }
}
