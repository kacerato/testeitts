package com.google.common.cache;

import com.google.common.cache.a;
import com.google.common.cache.k;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import w2.AbstractC15896m;
import w2.C15883c;
import w2.H;
import w2.Q;
import w2.S;
import w2.U;
import w2.z;

@v2.b(emulated = true)
@g
public final class d<K, V> {

    public static final int f65382q = 16;

    public static final int f65383r = 4;

    public static final int f65384s = 0;

    public static final int f65385t = 0;

    public static final Q<? extends a.b> f65386u = S.d(new a());

    public static final f f65387v = new f(0, 0, 0, 0, 0, 0);

    public static final Q<a.b> f65388w = new b();

    public static final U f65389x = new c();

    public static final Logger f65390y = Logger.getLogger(d.class.getName());

    public static final int f65391z = -1;

    public x<? super K, ? super V> f65397f;

    public k.t f65398g;

    public k.t f65399h;

    public AbstractC15896m<Object> f65403l;

    public AbstractC15896m<Object> f65404m;

    public r<? super K, ? super V> f65405n;

    public U f65406o;

    public boolean f65392a = true;

    public int f65393b = -1;

    public int f65394c = -1;

    public long f65395d = -1;

    public long f65396e = -1;

    public long f65400i = -1;

    public long f65401j = -1;

    public long f65402k = -1;

    public Q<? extends a.b> f65407p = f65386u;

    public class a implements a.b {
        @Override
        public void a(int i10) {
        }

        @Override
        public void b() {
        }

        @Override
        public void c(long j10) {
        }

        @Override
        public void d(int i10) {
        }

        @Override
        public void e(long j10) {
        }

        @Override
        public f f() {
            return d.f65387v;
        }
    }

    public class b implements Q<a.b> {
        @Override
        public a.b get() {
            return new a.C0976a();
        }
    }

    public class c extends U {
        @Override
        public long a() {
            return 0L;
        }
    }

    public enum EnumC0977d implements r<Object, Object> {
        INSTANCE;

        @Override
        public void a(v<Object, Object> vVar) {
        }
    }

    public enum e implements x<Object, Object> {
        INSTANCE;

        @Override
        public int a(Object obj, Object obj2) {
            return 1;
        }
    }

    @I2.b
    public static d<Object, Object> D() {
        return new d<>();
    }

    @v2.c
    @I2.b
    public static d<Object, Object> h(com.google.common.cache.e eVar) {
        return eVar.f().A();
    }

    @v2.c
    @I2.b
    public static d<Object, Object> i(String str) {
        return h(com.google.common.cache.e.e(str));
    }

    @v2.c
    public d<K, V> A() {
        this.f65392a = false;
        return this;
    }

    public d<K, V> B(long j10) {
        long j11 = this.f65395d;
        H.s0(j11 == -1, "maximum size was already set to %s", j11);
        long j12 = this.f65396e;
        H.s0(j12 == -1, "maximum weight was already set to %s", j12);
        H.h0(this.f65397f == null, "maximum size can not be combined with weigher");
        H.e(j10 >= 0, "maximum size must not be negative");
        this.f65395d = j10;
        return this;
    }

    @v2.c
    public d<K, V> C(long j10) {
        long j11 = this.f65396e;
        H.s0(j11 == -1, "maximum weight was already set to %s", j11);
        long j12 = this.f65395d;
        H.s0(j12 == -1, "maximum size was already set to %s", j12);
        H.e(j10 >= 0, "maximum weight must not be negative");
        this.f65396e = j10;
        return this;
    }

    public d<K, V> E() {
        this.f65407p = f65388w;
        return this;
    }

    @v2.c
    public d<K, V> F(long j10, TimeUnit timeUnit) {
        H.E(timeUnit);
        long j11 = this.f65402k;
        H.s0(j11 == -1, "refresh was already set to %s ns", j11);
        H.t(j10 > 0, "duration must be positive: %s %s", j10, timeUnit);
        this.f65402k = timeUnit.toNanos(j10);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @I2.b
    public <K1 extends K, V1 extends V> d<K1, V1> G(r<? super K1, ? super V1> rVar) {
        H.g0(this.f65405n == null);
        this.f65405n = (r) H.E(rVar);
        return this;
    }

    public d<K, V> H(k.t tVar) {
        k.t tVar2 = this.f65398g;
        H.x0(tVar2 == null, "Key strength was already set to %s", tVar2);
        this.f65398g = (k.t) H.E(tVar);
        return this;
    }

    public d<K, V> I(k.t tVar) {
        k.t tVar2 = this.f65399h;
        H.x0(tVar2 == null, "Value strength was already set to %s", tVar2);
        this.f65399h = (k.t) H.E(tVar);
        return this;
    }

    @v2.c
    public d<K, V> J() {
        return I(k.t.SOFT);
    }

    public d<K, V> K(U u10) {
        H.g0(this.f65406o == null);
        this.f65406o = (U) H.E(u10);
        return this;
    }

    @v2.c
    public d<K, V> L(AbstractC15896m<Object> abstractC15896m) {
        AbstractC15896m<Object> abstractC15896m2 = this.f65404m;
        H.x0(abstractC15896m2 == null, "value equivalence was already set to %s", abstractC15896m2);
        this.f65404m = (AbstractC15896m) H.E(abstractC15896m);
        return this;
    }

    @v2.c
    public d<K, V> M() {
        return H(k.t.WEAK);
    }

    @v2.c
    public d<K, V> N() {
        return I(k.t.WEAK);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @v2.c
    public <K1 extends K, V1 extends V> d<K1, V1> O(x<? super K1, ? super V1> xVar) {
        H.g0(this.f65397f == null);
        if (this.f65392a) {
            long j10 = this.f65395d;
            H.s0(j10 == -1, "weigher can not be combined with maximum size", j10);
        }
        this.f65397f = (x) H.E(xVar);
        return this;
    }

    @I2.b
    public <K1 extends K, V1 extends V> com.google.common.cache.c<K1, V1> a() {
        d();
        c();
        return new k.o(this);
    }

    @I2.b
    public <K1 extends K, V1 extends V> j<K1, V1> b(CacheLoader<? super K1, V1> cacheLoader) {
        d();
        return new k.n(this, cacheLoader);
    }

    public final void c() {
        H.h0(this.f65402k == -1, "refreshAfterWrite requires a LoadingCache");
    }

    public final void d() {
        if (this.f65397f == null) {
            H.h0(this.f65396e == -1, "maximumWeight requires weigher");
        } else if (this.f65392a) {
            H.h0(this.f65396e != -1, "weigher requires maximumWeight");
        } else if (this.f65396e == -1) {
            f65390y.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    public d<K, V> e(int i10) {
        int i11 = this.f65394c;
        H.n0(i11 == -1, "concurrency level was already set to %s", i11);
        H.d(i10 > 0);
        this.f65394c = i10;
        return this;
    }

    public d<K, V> f(long j10, TimeUnit timeUnit) {
        long j11 = this.f65401j;
        H.s0(j11 == -1, "expireAfterAccess was already set to %s ns", j11);
        H.t(j10 >= 0, "duration cannot be negative: %s %s", j10, timeUnit);
        this.f65401j = timeUnit.toNanos(j10);
        return this;
    }

    public d<K, V> g(long j10, TimeUnit timeUnit) {
        long j11 = this.f65400i;
        H.s0(j11 == -1, "expireAfterWrite was already set to %s ns", j11);
        H.t(j10 >= 0, "duration cannot be negative: %s %s", j10, timeUnit);
        this.f65400i = timeUnit.toNanos(j10);
        return this;
    }

    public int j() {
        int i10 = this.f65394c;
        if (i10 == -1) {
            return 4;
        }
        return i10;
    }

    public long k() {
        long j10 = this.f65401j;
        if (j10 == -1) {
            return 0L;
        }
        return j10;
    }

    public long l() {
        long j10 = this.f65400i;
        if (j10 == -1) {
            return 0L;
        }
        return j10;
    }

    public int m() {
        int i10 = this.f65393b;
        if (i10 == -1) {
            return 16;
        }
        return i10;
    }

    public AbstractC15896m<Object> n() {
        return (AbstractC15896m) z.a(this.f65403l, o().b());
    }

    public k.t o() {
        return (k.t) z.a(this.f65398g, k.t.STRONG);
    }

    public long p() {
        if (this.f65400i == 0 || this.f65401j == 0) {
            return 0L;
        }
        return this.f65397f == null ? this.f65395d : this.f65396e;
    }

    public long q() {
        long j10 = this.f65402k;
        if (j10 == -1) {
            return 0L;
        }
        return j10;
    }

    public <K1 extends K, V1 extends V> r<K1, V1> r() {
        return (r) z.a(this.f65405n, EnumC0977d.INSTANCE);
    }

    public Q<? extends a.b> s() {
        return this.f65407p;
    }

    public U t(boolean z10) {
        U u10 = this.f65406o;
        return u10 != null ? u10 : z10 ? U.b() : f65389x;
    }

    public String toString() {
        z.b c10 = z.c(this);
        int i10 = this.f65393b;
        if (i10 != -1) {
            c10.d("initialCapacity", i10);
        }
        int i11 = this.f65394c;
        if (i11 != -1) {
            c10.d("concurrencyLevel", i11);
        }
        long j10 = this.f65395d;
        if (j10 != -1) {
            c10.e("maximumSize", j10);
        }
        long j11 = this.f65396e;
        if (j11 != -1) {
            c10.e("maximumWeight", j11);
        }
        long j12 = this.f65400i;
        if (j12 != -1) {
            StringBuilder sb2 = new StringBuilder(22);
            sb2.append(j12);
            sb2.append("ns");
            c10.f("expireAfterWrite", sb2.toString());
        }
        long j13 = this.f65401j;
        if (j13 != -1) {
            StringBuilder sb3 = new StringBuilder(22);
            sb3.append(j13);
            sb3.append("ns");
            c10.f("expireAfterAccess", sb3.toString());
        }
        k.t tVar = this.f65398g;
        if (tVar != null) {
            c10.f("keyStrength", C15883c.g(tVar.toString()));
        }
        k.t tVar2 = this.f65399h;
        if (tVar2 != null) {
            c10.f("valueStrength", C15883c.g(tVar2.toString()));
        }
        if (this.f65403l != null) {
            c10.s("keyEquivalence");
        }
        if (this.f65404m != null) {
            c10.s("valueEquivalence");
        }
        if (this.f65405n != null) {
            c10.s("removalListener");
        }
        return c10.toString();
    }

    public AbstractC15896m<Object> u() {
        return (AbstractC15896m) z.a(this.f65404m, v().b());
    }

    public k.t v() {
        return (k.t) z.a(this.f65399h, k.t.STRONG);
    }

    public <K1 extends K, V1 extends V> x<K1, V1> w() {
        return (x) z.a(this.f65397f, e.INSTANCE);
    }

    public d<K, V> x(int i10) {
        int i11 = this.f65393b;
        H.n0(i11 == -1, "initial capacity was already set to %s", i11);
        H.d(i10 >= 0);
        this.f65393b = i10;
        return this;
    }

    public boolean y() {
        return this.f65407p == f65388w;
    }

    @v2.c
    public d<K, V> z(AbstractC15896m<Object> abstractC15896m) {
        AbstractC15896m<Object> abstractC15896m2 = this.f65403l;
        H.x0(abstractC15896m2 == null, "key equivalence was already set to %s", abstractC15896m2);
        this.f65403l = (AbstractC15896m) H.E(abstractC15896m);
        return this;
    }
}
