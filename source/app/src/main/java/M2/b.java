package M2;

import G0.A;
import K2.g;
import M2.a;
import android.Manifest;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.I1;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.C12340l5;
import com.google.android.gms.measurement.internal.V3;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import n1.C14345a;

public class b implements M2.a {

    public static volatile M2.a f14506c;

    @VisibleForTesting
    public final C14345a f14507a;

    @VisibleForTesting
    public final Map f14508b;

    public class a implements a.InterfaceC0406a {

        public final String f14509a;

        public final b f14510b;

        public a(b bVar, String str) {
            this.f14509a = str;
            Objects.requireNonNull(bVar);
            this.f14510b = bVar;
        }

        @Override
        public final void a() {
            b bVar = this.f14510b;
            String str = this.f14509a;
            if (bVar.l(str)) {
                Map map = bVar.f14508b;
                a.b N12 = ((N2.a) map.get(str)).N1();
                if (N12 != null) {
                    N12.a(0, null);
                }
                map.remove(str);
            }
        }

        @Override
        @C0.a
        public void b() {
            b bVar = this.f14510b;
            String str = this.f14509a;
            if (bVar.l(str) && str.equals(AppMeasurement.f62515d)) {
                ((N2.a) bVar.f14508b.get(str)).P1();
            }
        }

        @Override
        @C0.a
        public void c(Set<String> set) {
            b bVar = this.f14510b;
            String str = this.f14509a;
            if (!bVar.l(str) || !str.equals(AppMeasurement.f62515d) || set == null || set.isEmpty()) {
                return;
            }
            ((N2.a) bVar.f14508b.get(str)).a(set);
        }
    }

    public b(C14345a c14345a) {
        A.r(c14345a);
        this.f14507a = c14345a;
        this.f14508b = new ConcurrentHashMap();
    }

    @NonNull
    @C0.a
    public static M2.a h() {
        return i(g.p());
    }

    @NonNull
    @C0.a
    public static M2.a i(@NonNull g gVar) {
        return (M2.a) gVar.l(M2.a.class);
    }

    @NonNull
    @RequiresPermission(allOf = {Manifest.permission.INTERNET, "android.permission.ACCESS_NETWORK_STATE", Manifest.permission.WAKE_LOCK})
    @C0.a
    public static M2.a j(@NonNull g gVar, @NonNull Context context, @NonNull X2.d dVar) {
        A.r(gVar);
        A.r(context);
        A.r(dVar);
        A.r(context.getApplicationContext());
        if (f14506c == null) {
            synchronized (b.class) {
                try {
                    if (f14506c == null) {
                        Bundle bundle = new Bundle(1);
                        if (gVar.B()) {
                            dVar.b(K2.c.class, new Executor() {
                                @Override
                                public final void execute(Runnable runnable) {
                                    runnable.run();
                                }
                            }, new X2.b() {
                                @Override
                                public final void a(X2.a aVar) {
                                    b.k(aVar);
                                }
                            });
                            bundle.putBoolean("dataCollectionDefaultEnabled", gVar.A());
                        }
                        f14506c = new b(I1.v(context, bundle).w());
                    }
                } finally {
                }
            }
        }
        return f14506c;
    }

    public static void k(X2.a aVar) {
        boolean z10 = ((K2.c) aVar.a()).f10714a;
        synchronized (b.class) {
            ((b) A.r(f14506c)).f14507a.B(z10);
        }
    }

    @Override
    @C0.a
    public void a(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (N2.c.a(str) && N2.c.b(str2, bundle) && N2.c.e(str, str2, bundle)) {
            if ("clx".equals(str) && "_ae".equals(str2)) {
                bundle.putLong("_r", 1L);
            }
            this.f14507a.o(str, str2, bundle);
        }
    }

    @Override
    @C0.a
    public void b(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        if (N2.c.a(str) && N2.c.d(str, str2)) {
            this.f14507a.z(str, str2, obj);
        }
    }

    @Override
    @C0.a
    @WorkerThread
    public int c(@NonNull @Size(min = 1) String str) {
        return this.f14507a.m(str);
    }

    @Override
    @C0.a
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @NonNull String str2, @NonNull Bundle bundle) {
        if (str2 == null || N2.c.b(str2, bundle)) {
            this.f14507a.b(str, str2, bundle);
        }
    }

    @Override
    @NonNull
    @C0.a
    @WorkerThread
    public List<a.c> d(@NonNull String str, @NonNull @Size(max = 23, min = 1) String str2) {
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : this.f14507a.g(str, str2)) {
            int i10 = N2.c.f15476g;
            A.r(bundle);
            a.c cVar = new a.c();
            cVar.f14491a = (String) A.r((String) V3.b(bundle, "origin", String.class, null));
            cVar.f14492b = (String) A.r((String) V3.b(bundle, "name", String.class, null));
            cVar.f14493c = V3.b(bundle, "value", Object.class, null);
            cVar.f14494d = (String) V3.b(bundle, C14345a.C1879a.f97704d, String.class, null);
            cVar.f14495e = ((Long) V3.b(bundle, C14345a.C1879a.f97705e, Long.class, 0L)).longValue();
            cVar.f14496f = (String) V3.b(bundle, C14345a.C1879a.f97706f, String.class, null);
            cVar.f14497g = (Bundle) V3.b(bundle, C14345a.C1879a.f97707g, Bundle.class, null);
            cVar.f14498h = (String) V3.b(bundle, C14345a.C1879a.f97708h, String.class, null);
            cVar.f14499i = (Bundle) V3.b(bundle, C14345a.C1879a.f97709i, Bundle.class, null);
            cVar.f14500j = ((Long) V3.b(bundle, C14345a.C1879a.f97710j, Long.class, 0L)).longValue();
            cVar.f14501k = (String) V3.b(bundle, C14345a.C1879a.f97711k, String.class, null);
            cVar.f14502l = (Bundle) V3.b(bundle, C14345a.C1879a.f97712l, Bundle.class, null);
            cVar.f14504n = ((Boolean) V3.b(bundle, C14345a.C1879a.f97714n, Boolean.class, Boolean.FALSE)).booleanValue();
            cVar.f14503m = ((Long) V3.b(bundle, C14345a.C1879a.f97713m, Long.class, 0L)).longValue();
            cVar.f14505o = ((Long) V3.b(bundle, C14345a.C1879a.f97715o, Long.class, 0L)).longValue();
            arrayList.add(cVar);
        }
        return arrayList;
    }

    @Override
    @NonNull
    @C0.a
    @WorkerThread
    public Map<String, Object> e(boolean z10) {
        return this.f14507a.n(null, null, z10);
    }

    @Override
    @C0.a
    public void f(@NonNull a.c cVar) {
        String str;
        int i10 = N2.c.f15476g;
        if (cVar == null || (str = cVar.f14491a) == null || str.isEmpty()) {
            return;
        }
        Object obj = cVar.f14493c;
        if ((obj == null || C12340l5.b(obj) != null) && N2.c.a(str) && N2.c.d(str, cVar.f14492b)) {
            String str2 = cVar.f14501k;
            if (str2 == null || (N2.c.b(str2, cVar.f14502l) && N2.c.e(str, cVar.f14501k, cVar.f14502l))) {
                String str3 = cVar.f14498h;
                if (str3 == null || (N2.c.b(str3, cVar.f14499i) && N2.c.e(str, cVar.f14498h, cVar.f14499i))) {
                    String str4 = cVar.f14496f;
                    if (str4 == null || (N2.c.b(str4, cVar.f14497g) && N2.c.e(str, cVar.f14496f, cVar.f14497g))) {
                        C14345a c14345a = this.f14507a;
                        Bundle bundle = new Bundle();
                        String str5 = cVar.f14491a;
                        if (str5 != null) {
                            bundle.putString("origin", str5);
                        }
                        String str6 = cVar.f14492b;
                        if (str6 != null) {
                            bundle.putString("name", str6);
                        }
                        Object obj2 = cVar.f14493c;
                        if (obj2 != null) {
                            V3.a(bundle, obj2);
                        }
                        String str7 = cVar.f14494d;
                        if (str7 != null) {
                            bundle.putString(C14345a.C1879a.f97704d, str7);
                        }
                        bundle.putLong(C14345a.C1879a.f97705e, cVar.f14495e);
                        String str8 = cVar.f14496f;
                        if (str8 != null) {
                            bundle.putString(C14345a.C1879a.f97706f, str8);
                        }
                        Bundle bundle2 = cVar.f14497g;
                        if (bundle2 != null) {
                            bundle.putBundle(C14345a.C1879a.f97707g, bundle2);
                        }
                        String str9 = cVar.f14498h;
                        if (str9 != null) {
                            bundle.putString(C14345a.C1879a.f97708h, str9);
                        }
                        Bundle bundle3 = cVar.f14499i;
                        if (bundle3 != null) {
                            bundle.putBundle(C14345a.C1879a.f97709i, bundle3);
                        }
                        bundle.putLong(C14345a.C1879a.f97710j, cVar.f14500j);
                        String str10 = cVar.f14501k;
                        if (str10 != null) {
                            bundle.putString(C14345a.C1879a.f97711k, str10);
                        }
                        Bundle bundle4 = cVar.f14502l;
                        if (bundle4 != null) {
                            bundle.putBundle(C14345a.C1879a.f97712l, bundle4);
                        }
                        bundle.putLong(C14345a.C1879a.f97713m, cVar.f14503m);
                        bundle.putBoolean(C14345a.C1879a.f97714n, cVar.f14504n);
                        bundle.putLong(C14345a.C1879a.f97715o, cVar.f14505o);
                        c14345a.t(bundle);
                    }
                }
            }
        }
    }

    @Override
    @NonNull
    @C0.a
    @WorkerThread
    public a.InterfaceC0406a g(@NonNull String str, @NonNull a.b bVar) {
        A.r(bVar);
        if (N2.c.a(str) && !l(str)) {
            C14345a c14345a = this.f14507a;
            N2.a eVar = AppMeasurement.f62515d.equals(str) ? new N2.e(c14345a, bVar) : "clx".equals(str) ? new N2.g(c14345a, bVar) : null;
            if (eVar != null) {
                this.f14508b.put(str, eVar);
                return new a(this, str);
            }
        }
        return null;
    }

    public final boolean l(@NonNull String str) {
        if (str.isEmpty()) {
            return false;
        }
        Map map = this.f14508b;
        return map.containsKey(str) && map.get(str) != null;
    }
}
