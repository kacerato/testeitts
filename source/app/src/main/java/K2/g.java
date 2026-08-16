package K2;

import G0.A;
import G0.C2601y;
import T0.C3033c;
import T0.v;
import T0.z;
import T2.C3049g;
import T2.s;
import T2.y;
import U2.N;
import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C11903a;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.concurrent.ExecutorsRegistrar;
import com.google.firebase.provider.FirebaseInitProvider;
import i3.C13579a;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class g {

    public static final String f10719k = "FirebaseApp";

    @NonNull
    public static final String f10720l = "[DEFAULT]";

    public static final Object f10721m = new Object();

    @GuardedBy("LOCK")
    public static final Map<String, g> f10722n = new ArrayMap();

    public final Context f10723a;

    public final String f10724b;

    public final p f10725c;

    public final T2.s f10726d;

    public final y<C13579a> f10729g;

    public final a3.b<Z2.g> f10730h;

    public final AtomicBoolean f10727e = new AtomicBoolean(false);

    public final AtomicBoolean f10728f = new AtomicBoolean();

    public final List<a> f10731i = new CopyOnWriteArrayList();

    public final List<h> f10732j = new CopyOnWriteArrayList();

    @C0.a
    public interface a {
        @C0.a
        void a(boolean z10);
    }

    @TargetApi(14)
    public static class b implements ComponentCallbacks2C11903a.InterfaceC0951a {

        public static AtomicReference<b> f10733a = new AtomicReference<>();

        public static void c(Context context) {
            if (v.c() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f10733a.get() == null) {
                    b bVar = new b();
                    if (androidx.lifecycle.c.a(f10733a, null, bVar)) {
                        ComponentCallbacks2C11903a.c(application);
                        ComponentCallbacks2C11903a.b().a(bVar);
                    }
                }
            }
        }

        @Override
        public void a(boolean z10) {
            synchronized (g.f10721m) {
                try {
                    Iterator it = new ArrayList(g.f10722n.values()).iterator();
                    while (it.hasNext()) {
                        g gVar = (g) it.next();
                        if (gVar.f10727e.get()) {
                            gVar.F(z10);
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @TargetApi(24)
    public static class c extends BroadcastReceiver {

        public static AtomicReference<c> f10734b = new AtomicReference<>();

        public final Context f10735a;

        public c(Context context) {
            this.f10735a = context;
        }

        public static void b(Context context) {
            if (f10734b.get() == null) {
                c cVar = new c(context);
                if (androidx.lifecycle.c.a(f10734b, null, cVar)) {
                    context.registerReceiver(cVar, new IntentFilter(Intent.ACTION_USER_UNLOCKED));
                }
            }
        }

        public void c() {
            this.f10735a.unregisterReceiver(this);
        }

        @Override
        public void onReceive(Context context, Intent intent) {
            synchronized (g.f10721m) {
                try {
                    Iterator<g> it = g.f10722n.values().iterator();
                    while (it.hasNext()) {
                        it.next().v();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c();
        }
    }

    public g(final Context context, String str, p pVar) {
        this.f10723a = (Context) A.r(context);
        this.f10724b = A.l(str);
        this.f10725c = (p) A.r(pVar);
        r b10 = FirebaseInitProvider.b();
        o3.c.b("Firebase");
        o3.c.b(T2.j.f23997c);
        List<a3.b<ComponentRegistrar>> c10 = T2.j.d(context, ComponentDiscoveryService.class).c();
        o3.c.a();
        o3.c.b("Runtime");
        s.b g10 = T2.s.p(N.INSTANCE).d(c10).c(new FirebaseCommonRegistrar()).c(new ExecutorsRegistrar()).b(C3049g.D(context, Context.class, new Class[0])).b(C3049g.D(this, g.class, new Class[0])).b(C3049g.D(pVar, p.class, new Class[0])).g(new o3.b());
        if (UserManagerCompat.isUserUnlocked(context) && FirebaseInitProvider.c()) {
            g10.b(C3049g.D(b10, r.class, new Class[0]));
        }
        T2.s e10 = g10.e();
        this.f10726d = e10;
        o3.c.a();
        this.f10729g = new y<>(new a3.b() {
            @Override
            public final Object get() {
                C13579a C10;
                C10 = g.this.C(context);
                return C10;
            }
        });
        this.f10730h = e10.f(Z2.g.class);
        g(new a() {
            @Override
            public final void a(boolean z10) {
                g.this.D(z10);
            }
        });
        o3.c.a();
    }

    public static String E(@NonNull String str) {
        return str.trim();
    }

    @VisibleForTesting
    public static void j() {
        synchronized (f10721m) {
            f10722n.clear();
        }
    }

    public static List<String> m() {
        ArrayList arrayList = new ArrayList();
        synchronized (f10721m) {
            try {
                Iterator<g> it = f10722n.values().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().r());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    public static List<g> o(@NonNull Context context) {
        ArrayList arrayList;
        synchronized (f10721m) {
            arrayList = new ArrayList(f10722n.values());
        }
        return arrayList;
    }

    @NonNull
    public static g p() {
        g gVar;
        synchronized (f10721m) {
            try {
                gVar = f10722n.get(f10720l);
                if (gVar == null) {
                    throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + z.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
                }
                gVar.f10730h.get().l();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return gVar;
    }

    @NonNull
    public static g q(@NonNull String str) {
        g gVar;
        String str2;
        synchronized (f10721m) {
            try {
                gVar = f10722n.get(E(str));
                if (gVar == null) {
                    List<String> m10 = m();
                    if (m10.isEmpty()) {
                        str2 = "";
                    } else {
                        str2 = "Available app names: " + TextUtils.join(", ", m10);
                    }
                    throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
                }
                gVar.f10730h.get().l();
            } finally {
            }
        }
        return gVar;
    }

    @C0.a
    public static String u(String str, p pVar) {
        return C3033c.f(str.getBytes(Charset.defaultCharset())) + "+" + C3033c.f(pVar.j().getBytes(Charset.defaultCharset()));
    }

    @Nullable
    public static g x(@NonNull Context context) {
        synchronized (f10721m) {
            try {
                if (f10722n.containsKey(f10720l)) {
                    return p();
                }
                p h10 = p.h(context);
                if (h10 == null) {
                    Log.w(f10719k, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                    return null;
                }
                return y(context, h10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NonNull
    public static g y(@NonNull Context context, @NonNull p pVar) {
        return z(context, pVar, f10720l);
    }

    @NonNull
    public static g z(@NonNull Context context, @NonNull p pVar, @NonNull String str) {
        g gVar;
        b.c(context);
        String E10 = E(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f10721m) {
            Map<String, g> map = f10722n;
            A.y(!map.containsKey(E10), "FirebaseApp name " + E10 + " already exists!");
            A.s(context, "Application context cannot be null.");
            gVar = new g(context, E10, pVar);
            map.put(E10, gVar);
        }
        gVar.v();
        return gVar;
    }

    @C0.a
    public boolean A() {
        i();
        return this.f10729g.get().b();
    }

    @C0.a
    @VisibleForTesting
    public boolean B() {
        return f10720l.equals(r());
    }

    public final C13579a C(Context context) {
        return new C13579a(context, t(), (X2.c) this.f10726d.a(X2.c.class));
    }

    public final void D(boolean z10) {
        if (z10) {
            return;
        }
        this.f10730h.get().l();
    }

    public final void F(boolean z10) {
        Log.d(f10719k, "Notifying background state change listeners.");
        Iterator<a> it = this.f10731i.iterator();
        while (it.hasNext()) {
            it.next().a(z10);
        }
    }

    public final void G() {
        Iterator<h> it = this.f10732j.iterator();
        while (it.hasNext()) {
            it.next().a(this.f10724b, this.f10725c);
        }
    }

    @C0.a
    public void H(a aVar) {
        i();
        this.f10731i.remove(aVar);
    }

    @C0.a
    public void I(@NonNull h hVar) {
        i();
        A.r(hVar);
        this.f10732j.remove(hVar);
    }

    public void J(boolean z10) {
        i();
        if (this.f10727e.compareAndSet(!z10, z10)) {
            boolean d10 = ComponentCallbacks2C11903a.b().d();
            if (z10 && d10) {
                F(true);
            } else {
                if (z10 || !d10) {
                    return;
                }
                F(false);
            }
        }
    }

    @C0.a
    public void K(Boolean bool) {
        i();
        this.f10729g.get().e(bool);
    }

    @C0.a
    @Deprecated
    public void L(boolean z10) {
        K(Boolean.valueOf(z10));
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f10724b.equals(((g) obj).r());
        }
        return false;
    }

    @C0.a
    public void g(a aVar) {
        i();
        if (this.f10727e.get() && ComponentCallbacks2C11903a.b().d()) {
            aVar.a(true);
        }
        this.f10731i.add(aVar);
    }

    @C0.a
    public void h(@NonNull h hVar) {
        i();
        A.r(hVar);
        this.f10732j.add(hVar);
    }

    public int hashCode() {
        return this.f10724b.hashCode();
    }

    public final void i() {
        A.y(!this.f10728f.get(), "FirebaseApp was deleted");
    }

    public void k() {
        if (this.f10728f.compareAndSet(false, true)) {
            synchronized (f10721m) {
                f10722n.remove(this.f10724b);
            }
            G();
        }
    }

    @C0.a
    public <T> T l(Class<T> cls) {
        i();
        return (T) this.f10726d.a(cls);
    }

    @NonNull
    public Context n() {
        i();
        return this.f10723a;
    }

    @NonNull
    public String r() {
        i();
        return this.f10724b;
    }

    @NonNull
    public p s() {
        i();
        return this.f10725c;
    }

    @C0.a
    public String t() {
        return C3033c.f(r().getBytes(Charset.defaultCharset())) + "+" + C3033c.f(s().j().getBytes(Charset.defaultCharset()));
    }

    public String toString() {
        return C2601y.d(this).a("name", this.f10724b).a("options", this.f10725c).toString();
    }

    public final void v() {
        if (!UserManagerCompat.isUserUnlocked(this.f10723a)) {
            Log.i(f10719k, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + r());
            c.b(this.f10723a);
            return;
        }
        Log.i(f10719k, "Device unlocked: initializing all Firebase APIs for app " + r());
        this.f10726d.u(B());
        this.f10730h.get().l();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    @VisibleForTesting
    public void w() {
        this.f10726d.t();
    }
}
