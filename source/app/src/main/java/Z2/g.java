package Z2;

import T2.C3049g;
import T2.F;
import T2.InterfaceC3050h;
import T2.v;
import Z2.k;
import android.content.Context;
import android.util.Base64OutputStream;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.UserManagerCompat;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import v1.AbstractC15790k;
import v1.C15793n;

public class g implements j, k {

    public final a3.b<l> f30742a;

    public final Context f30743b;

    public final a3.b<n3.i> f30744c;

    public final Set<h> f30745d;

    public final Executor f30746e;

    public g(final Context context, final String str, Set<h> set, a3.b<n3.i> bVar, Executor executor) {
        this((a3.b<l>) new a3.b() {
            @Override
            public final Object get() {
                l j10;
                j10 = g.j(Context.this, str);
                return j10;
            }
        }, set, executor, bVar, context);
    }

    @NonNull
    public static C3049g<g> g() {
        final F a10 = F.a(S2.a.class, Executor.class);
        return C3049g.i(g.class, j.class, k.class).b(v.m(Context.class)).b(v.m(K2.g.class)).b(v.q(h.class)).b(v.o(n3.i.class)).b(v.l(a10)).f(new T2.k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                g h10;
                h10 = g.h(F.this, interfaceC3050h);
                return h10;
            }
        }).d();
    }

    public static g h(F f10, InterfaceC3050h interfaceC3050h) {
        return new g((Context) interfaceC3050h.a(Context.class), ((K2.g) interfaceC3050h.a(K2.g.class)).t(), (Set<h>) interfaceC3050h.d(h.class), (a3.b<n3.i>) interfaceC3050h.f(n3.i.class), (Executor) interfaceC3050h.j(f10));
    }

    public static l j(Context context, String str) {
        return new l(context, str);
    }

    @Override
    @NonNull
    public synchronized k.a a(@NonNull String str) {
        long currentTimeMillis = System.currentTimeMillis();
        l lVar = this.f30742a.get();
        if (!lVar.k(currentTimeMillis)) {
            return k.a.NONE;
        }
        lVar.i();
        return k.a.GLOBAL;
    }

    @Override
    public AbstractC15790k<String> b() {
        return !UserManagerCompat.isUserUnlocked(this.f30743b) ? C15793n.g("") : C15793n.d(this.f30746e, new Callable() {
            @Override
            public final Object call() {
                String i10;
                i10 = g.this.i();
                return i10;
            }
        });
    }

    public final String i() throws Exception {
        String byteArrayOutputStream;
        synchronized (this) {
            try {
                l lVar = this.f30742a.get();
                List<m> c10 = lVar.c();
                lVar.b();
                JSONArray jSONArray = new JSONArray();
                for (int i10 = 0; i10 < c10.size(); i10++) {
                    m mVar = c10.get(i10);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("agent", mVar.c());
                    jSONObject.put("dates", new JSONArray((Collection) mVar.b()));
                    jSONArray.put(jSONObject);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("heartbeats", jSONArray);
                jSONObject2.put("version", "2");
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
                    try {
                        gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                        gZIPOutputStream.close();
                        base64OutputStream.close();
                        byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
                    } finally {
                    }
                } catch (Throwable th2) {
                    try {
                        base64OutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        return byteArrayOutputStream;
    }

    public final Void k() throws Exception {
        synchronized (this) {
            this.f30742a.get().m(System.currentTimeMillis(), this.f30744c.get().a());
        }
        return null;
    }

    public AbstractC15790k<Void> l() {
        if (this.f30745d.size() > 0 && UserManagerCompat.isUserUnlocked(this.f30743b)) {
            return C15793n.d(this.f30746e, new Callable() {
                @Override
                public final Object call() {
                    Void k10;
                    k10 = g.this.k();
                    return k10;
                }
            });
        }
        return C15793n.g(null);
    }

    @VisibleForTesting
    public g(a3.b<l> bVar, Set<h> set, Executor executor, a3.b<n3.i> bVar2, Context context) {
        this.f30742a = bVar;
        this.f30745d = set;
        this.f30746e = executor;
        this.f30744c = bVar2;
        this.f30743b = context;
    }
}
