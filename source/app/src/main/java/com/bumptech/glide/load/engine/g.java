package com.bumptech.glide.load.engine;

import Z.a;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.engine.e;
import com.bumptech.glide.load.engine.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class g<R> implements e.a, Runnable, Comparable<g<?>>, a.f {

    public static final String f59136G = "DecodeJob";

    public Object f59137A;

    public C.a f59138B;

    public D.d<?> f59139C;

    public volatile com.bumptech.glide.load.engine.e f59140D;

    public volatile boolean f59141E;

    public volatile boolean f59142F;

    public final e f59146e;

    public final Pools.Pool<g<?>> f59147f;

    public com.bumptech.glide.d f59150i;

    public C.e f59151j;

    public com.bumptech.glide.h f59152k;

    public m f59153l;

    public int f59154m;

    public int f59155n;

    public i f59156o;

    public C.h f59157p;

    public b<R> f59158q;

    public int f59159r;

    public h f59160s;

    public EnumC0923g f59161t;

    public long f59162u;

    public boolean f59163v;

    public Object f59164w;

    public Thread f59165x;

    public C.e f59166y;

    public C.e f59167z;

    public final com.bumptech.glide.load.engine.f<R> f59143b = new com.bumptech.glide.load.engine.f<>();

    public final List<Throwable> f59144c = new ArrayList();

    public final Z.c f59145d = Z.c.a();

    public final d<?> f59148g = new d<>();

    public final f f59149h = new f();

    public static class a {

        public static final int[] f59168a;

        public static final int[] f59169b;

        public static final int[] f59170c;

        static {
            int[] iArr = new int[C.c.values().length];
            f59170c = iArr;
            try {
                iArr[C.c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f59170c[C.c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[h.values().length];
            f59169b = iArr2;
            try {
                iArr2[h.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f59169b[h.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f59169b[h.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f59169b[h.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f59169b[h.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[EnumC0923g.values().length];
            f59168a = iArr3;
            try {
                iArr3[EnumC0923g.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f59168a[EnumC0923g.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f59168a[EnumC0923g.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public interface b<R> {
        void a(g<?> gVar);

        void b(t<R> tVar, C.a aVar);

        void c(GlideException glideException);
    }

    public final class c<Z> implements h.a<Z> {

        public final C.a f59171a;

        public c(C.a aVar) {
            this.f59171a = aVar;
        }

        @Override
        @NonNull
        public t<Z> a(@NonNull t<Z> tVar) {
            return g.this.B(this.f59171a, tVar);
        }
    }

    public static class d<Z> {

        public C.e f59173a;

        public C.k<Z> f59174b;

        public s<Z> f59175c;

        public void a() {
            this.f59173a = null;
            this.f59174b = null;
            this.f59175c = null;
        }

        public void b(e eVar, C.h hVar) {
            Z.b.a("DecodeJob.encode");
            try {
                eVar.a().c(this.f59173a, new com.bumptech.glide.load.engine.d(this.f59174b, this.f59175c, hVar));
            } finally {
                this.f59175c.f();
                Z.b.e();
            }
        }

        public boolean c() {
            return this.f59175c != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <X> void d(C.e eVar, C.k<X> kVar, s<X> sVar) {
            this.f59173a = eVar;
            this.f59174b = kVar;
            this.f59175c = sVar;
        }
    }

    public interface e {
        G.a a();
    }

    public static class f {

        public boolean f59176a;

        public boolean f59177b;

        public boolean f59178c;

        public final boolean a(boolean z10) {
            return (this.f59178c || z10 || this.f59177b) && this.f59176a;
        }

        public synchronized boolean b() {
            this.f59177b = true;
            return a(false);
        }

        public synchronized boolean c() {
            this.f59178c = true;
            return a(false);
        }

        public synchronized boolean d(boolean z10) {
            this.f59176a = true;
            return a(z10);
        }

        public synchronized void e() {
            this.f59177b = false;
            this.f59176a = false;
            this.f59178c = false;
        }
    }

    public enum EnumC0923g {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    public enum h {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    public g(e eVar, Pools.Pool<g<?>> pool) {
        this.f59146e = eVar;
        this.f59147f = pool;
    }

    public final void A() {
        if (this.f59149h.c()) {
            D();
        }
    }

    @NonNull
    public <Z> t<Z> B(C.a aVar, @NonNull t<Z> tVar) {
        t<Z> tVar2;
        C.l<Z> lVar;
        C.c cVar;
        C.e cVar2;
        Class<?> cls = tVar.get().getClass();
        C.k<Z> kVar = null;
        if (aVar != C.a.RESOURCE_DISK_CACHE) {
            C.l<Z> r10 = this.f59143b.r(cls);
            lVar = r10;
            tVar2 = r10.transform(this.f59150i, tVar, this.f59154m, this.f59155n);
        } else {
            tVar2 = tVar;
            lVar = null;
        }
        if (!tVar.equals(tVar2)) {
            tVar.recycle();
        }
        if (this.f59143b.v(tVar2)) {
            kVar = this.f59143b.n(tVar2);
            cVar = kVar.a(this.f59157p);
        } else {
            cVar = C.c.NONE;
        }
        C.k kVar2 = kVar;
        if (!this.f59156o.d(!this.f59143b.x(this.f59166y), aVar, cVar)) {
            return tVar2;
        }
        if (kVar2 == null) {
            throw new Registry.NoResultEncoderAvailableException(tVar2.get().getClass());
        }
        int i10 = a.f59170c[cVar.ordinal()];
        if (i10 == 1) {
            cVar2 = new com.bumptech.glide.load.engine.c(this.f59166y, this.f59151j);
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException("Unknown strategy: " + ((Object) cVar));
            }
            cVar2 = new v(this.f59143b.b(), this.f59166y, this.f59151j, this.f59154m, this.f59155n, lVar, cls, this.f59157p);
        }
        s c10 = s.c(tVar2);
        this.f59148g.d(cVar2, kVar2, c10);
        return c10;
    }

    public void C(boolean z10) {
        if (this.f59149h.d(z10)) {
            D();
        }
    }

    public final void D() {
        this.f59149h.e();
        this.f59148g.a();
        this.f59143b.a();
        this.f59141E = false;
        this.f59150i = null;
        this.f59151j = null;
        this.f59157p = null;
        this.f59152k = null;
        this.f59153l = null;
        this.f59158q = null;
        this.f59160s = null;
        this.f59140D = null;
        this.f59165x = null;
        this.f59166y = null;
        this.f59137A = null;
        this.f59138B = null;
        this.f59139C = null;
        this.f59162u = 0L;
        this.f59142F = false;
        this.f59164w = null;
        this.f59144c.clear();
        this.f59147f.release(this);
    }

    public final void F() {
        this.f59165x = Thread.currentThread();
        this.f59162u = Y.g.b();
        boolean z10 = false;
        while (!this.f59142F && this.f59140D != null && !(z10 = this.f59140D.b())) {
            this.f59160s = q(this.f59160s);
            this.f59140D = o();
            if (this.f59160s == h.SOURCE) {
                e();
                return;
            }
        }
        if ((this.f59160s == h.FINISHED || this.f59142F) && !z10) {
            y();
        }
    }

    public final <Data, ResourceType> t<R> G(Data data, C.a aVar, r<Data, ResourceType, R> rVar) throws GlideException {
        C.h r10 = r(aVar);
        D.e<Data> l10 = this.f59150i.h().l(data);
        try {
            return rVar.b(l10, r10, this.f59154m, this.f59155n, new c(aVar));
        } finally {
            l10.cleanup();
        }
    }

    public final void H() {
        int i10 = a.f59168a[this.f59161t.ordinal()];
        if (i10 == 1) {
            this.f59160s = q(h.INITIALIZE);
            this.f59140D = o();
            F();
        } else if (i10 == 2) {
            F();
        } else {
            if (i10 == 3) {
                k();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + ((Object) this.f59161t));
        }
    }

    public final void I() {
        Throwable th2;
        this.f59145d.c();
        if (!this.f59141E) {
            this.f59141E = true;
            return;
        }
        if (this.f59144c.isEmpty()) {
            th2 = null;
        } else {
            List<Throwable> list = this.f59144c;
            th2 = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th2);
    }

    public boolean J() {
        h q10 = q(h.INITIALIZE);
        return q10 == h.RESOURCE_CACHE || q10 == h.DATA_CACHE;
    }

    @Override
    public void a(C.e eVar, Object obj, D.d<?> dVar, C.a aVar, C.e eVar2) {
        this.f59166y = eVar;
        this.f59137A = obj;
        this.f59139C = dVar;
        this.f59138B = aVar;
        this.f59167z = eVar2;
        if (Thread.currentThread() != this.f59165x) {
            this.f59161t = EnumC0923g.DECODE_DATA;
            this.f59158q.a(this);
        } else {
            Z.b.a("DecodeJob.decodeFromRetrievedData");
            try {
                k();
            } finally {
                Z.b.e();
            }
        }
    }

    public void b() {
        this.f59142F = true;
        com.bumptech.glide.load.engine.e eVar = this.f59140D;
        if (eVar != null) {
            eVar.cancel();
        }
    }

    @Override
    public void c(C.e eVar, Exception exc, D.d<?> dVar, C.a aVar) {
        dVar.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(eVar, aVar, dVar.a());
        this.f59144c.add(glideException);
        if (Thread.currentThread() == this.f59165x) {
            F();
        } else {
            this.f59161t = EnumC0923g.SWITCH_TO_SOURCE_SERVICE;
            this.f59158q.a(this);
        }
    }

    @Override
    @NonNull
    public Z.c d() {
        return this.f59145d;
    }

    @Override
    public void e() {
        this.f59161t = EnumC0923g.SWITCH_TO_SOURCE_SERVICE;
        this.f59158q.a(this);
    }

    @Override
    public int compareTo(@NonNull g<?> gVar) {
        int s10 = s() - gVar.s();
        return s10 == 0 ? this.f59159r - gVar.f59159r : s10;
    }

    public final <Data> t<R> i(D.d<?> dVar, Data data, C.a aVar) throws GlideException {
        if (data == null) {
            dVar.cleanup();
            return null;
        }
        try {
            long b10 = Y.g.b();
            t<R> j10 = j(data, aVar);
            if (Log.isLoggable(f59136G, 2)) {
                u("Decoded result " + ((Object) j10), b10);
            }
            return j10;
        } finally {
            dVar.cleanup();
        }
    }

    public final <Data> t<R> j(Data data, C.a aVar) throws GlideException {
        return G(data, aVar, this.f59143b.h(data.getClass()));
    }

    public final void k() {
        t<R> tVar;
        if (Log.isLoggable(f59136G, 2)) {
            v("Retrieved data", this.f59162u, "data: " + this.f59137A + ", cache key: " + ((Object) this.f59166y) + ", fetcher: " + ((Object) this.f59139C));
        }
        try {
            tVar = i(this.f59139C, this.f59137A, this.f59138B);
        } catch (GlideException e10) {
            e10.setLoggingDetails(this.f59167z, this.f59138B);
            this.f59144c.add(e10);
            tVar = null;
        }
        if (tVar != null) {
            x(tVar, this.f59138B);
        } else {
            F();
        }
    }

    public final com.bumptech.glide.load.engine.e o() {
        int i10 = a.f59169b[this.f59160s.ordinal()];
        if (i10 == 1) {
            return new u(this.f59143b, this);
        }
        if (i10 == 2) {
            return new com.bumptech.glide.load.engine.b(this.f59143b, this);
        }
        if (i10 == 3) {
            return new x(this.f59143b, this);
        }
        if (i10 == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + ((Object) this.f59160s));
    }

    public final h q(h hVar) {
        int i10 = a.f59169b[hVar.ordinal()];
        if (i10 == 1) {
            return this.f59156o.a() ? h.DATA_CACHE : q(h.DATA_CACHE);
        }
        if (i10 == 2) {
            return this.f59163v ? h.FINISHED : h.SOURCE;
        }
        if (i10 == 3 || i10 == 4) {
            return h.FINISHED;
        }
        if (i10 == 5) {
            return this.f59156o.b() ? h.RESOURCE_CACHE : q(h.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + ((Object) hVar));
    }

    @NonNull
    public final C.h r(C.a aVar) {
        C.h hVar = this.f59157p;
        boolean z10 = aVar == C.a.RESOURCE_DISK_CACHE || this.f59143b.w();
        C.g<Boolean> gVar = com.bumptech.glide.load.resource.bitmap.q.f59418k;
        Boolean bool = (Boolean) hVar.a(gVar);
        if (bool != null && (!bool.booleanValue() || z10)) {
            return hVar;
        }
        C.h hVar2 = new C.h();
        hVar2.b(this.f59157p);
        hVar2.c(gVar, Boolean.valueOf(z10));
        return hVar2;
    }

    @Override
    public void run() {
        Z.b.b("DecodeJob#run(model=%s)", this.f59164w);
        D.d<?> dVar = this.f59139C;
        try {
            try {
                try {
                    if (this.f59142F) {
                        y();
                        if (dVar != null) {
                            dVar.cleanup();
                        }
                        Z.b.e();
                        return;
                    }
                    H();
                    if (dVar != null) {
                        dVar.cleanup();
                    }
                    Z.b.e();
                } catch (Throwable th2) {
                    if (Log.isLoggable(f59136G, 3)) {
                        Log.d(f59136G, "DecodeJob threw unexpectedly, isCancelled: " + this.f59142F + ", stage: " + ((Object) this.f59160s), th2);
                    }
                    if (this.f59160s != h.ENCODE) {
                        this.f59144c.add(th2);
                        y();
                    }
                    if (!this.f59142F) {
                        throw th2;
                    }
                    throw th2;
                }
            } catch (CallbackException e10) {
                throw e10;
            }
        } catch (Throwable th3) {
            if (dVar != null) {
                dVar.cleanup();
            }
            Z.b.e();
            throw th3;
        }
    }

    public final int s() {
        return this.f59152k.ordinal();
    }

    public g<R> t(com.bumptech.glide.d dVar, Object obj, m mVar, C.e eVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.h hVar, i iVar, Map<Class<?>, C.l<?>> map, boolean z10, boolean z11, boolean z12, C.h hVar2, b<R> bVar, int i12) {
        this.f59143b.u(dVar, obj, eVar, i10, i11, iVar, cls, cls2, hVar, hVar2, map, z10, z11, this.f59146e);
        this.f59150i = dVar;
        this.f59151j = eVar;
        this.f59152k = hVar;
        this.f59153l = mVar;
        this.f59154m = i10;
        this.f59155n = i11;
        this.f59156o = iVar;
        this.f59163v = z12;
        this.f59157p = hVar2;
        this.f59158q = bVar;
        this.f59159r = i12;
        this.f59161t = EnumC0923g.INITIALIZE;
        this.f59164w = obj;
        return this;
    }

    public final void u(String str, long j10) {
        v(str, j10, null);
    }

    public final void v(String str, long j10, String str2) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(" in ");
        sb2.append(Y.g.a(j10));
        sb2.append(", load key: ");
        sb2.append((Object) this.f59153l);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb2.append(str3);
        sb2.append(", thread: ");
        sb2.append(Thread.currentThread().getName());
        Log.v(f59136G, sb2.toString());
    }

    public final void w(t<R> tVar, C.a aVar) {
        I();
        this.f59158q.b(tVar, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void x(t<R> tVar, C.a aVar) {
        s sVar;
        if (tVar instanceof p) {
            ((p) tVar).initialize();
        }
        if (this.f59148g.c()) {
            tVar = s.c(tVar);
            sVar = tVar;
        } else {
            sVar = 0;
        }
        w(tVar, aVar);
        this.f59160s = h.ENCODE;
        try {
            if (this.f59148g.c()) {
                this.f59148g.b(this.f59146e, this.f59157p);
            }
            z();
        } finally {
            if (sVar != 0) {
                sVar.f();
            }
        }
    }

    public final void y() {
        I();
        this.f59158q.c(new GlideException("Failed to load resource", new ArrayList(this.f59144c)));
        A();
    }

    public final void z() {
        if (this.f59149h.b()) {
            D();
        }
    }
}
