package Lc;

import Lc.g;
import ee.V;
import ge.X;
import he.k0;
import java.util.function.Supplier;

public class g<V> extends X<V> {

    public final ThreadLocal<c<V>> f11687y;

    public final ThreadLocal<b<V>> f11688z;

    public static class b<V> {

        public final boolean[] f11689a;

        public final boolean[] f11690b;

        public Object f11691c;

        public Lc.b<V> f11692d;

        public final Lc.c<V> f11693e;

        public final k0<V> f11694f;

        public class a implements Lc.c<V> {
            public a() {
            }

            @Override
            public void a(boolean value) {
                b bVar = b.this;
                bVar.f11689a[0] = value;
                bVar.f11690b[0] = true;
            }
        }

        public class C0381b implements k0<V> {
            public C0381b() {
            }

            @Override
            public boolean a(V object) {
                b bVar = b.this;
                bVar.f11692d.a(bVar.f11691c, object, bVar.f11693e);
                return !b.this.f11690b[0];
            }
        }

        public b() {
            this.f11689a = new boolean[1];
            this.f11690b = new boolean[1];
            this.f11693e = new a();
            this.f11694f = new C0381b();
        }

        public void a() {
            this.f11691c = null;
            this.f11689a[0] = false;
            this.f11690b[0] = false;
            this.f11692d = null;
        }
    }

    public static class c<V> {

        public final Object[] f11697a;

        public Object f11698b;

        public d<V> f11699c;

        public final k0<V> f11700d;

        public class a implements k0<V> {
            public a() {
            }

            @Override
            public boolean a(V object) {
                c cVar = c.this;
                Object a10 = cVar.f11699c.a(cVar.f11698b, object);
                if (a10 == null) {
                    return true;
                }
                c.this.f11697a[0] = a10;
                return false;
            }
        }

        public c() {
            this.f11697a = new Object[1];
            this.f11700d = new a();
        }

        public void a() {
            this.f11698b = null;
            this.f11697a[0] = null;
            this.f11699c = null;
        }
    }

    public g() {
        this.f11687y = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.c yf2;
                yf2 = g.yf();
                return yf2;
            }
        });
        this.f11688z = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.b zf2;
                zf2 = g.zf();
                return zf2;
            }
        });
    }

    public static c yf() {
        return new c();
    }

    public static b zf() {
        return new b();
    }

    public boolean wf(Object bundle, Lc.b<V> procedure) {
        b<V> bVar = this.f11688z.get();
        bVar.a();
        bVar.f11691c = bundle;
        bVar.f11692d = procedure;
        super.S(bVar.f11694f);
        return bVar.f11689a[0];
    }

    public Object xf(Object bundle, d<V> procedure) {
        c<V> cVar = this.f11687y.get();
        cVar.a();
        cVar.f11698b = bundle;
        cVar.f11699c = procedure;
        super.S(cVar.f11700d);
        return cVar.f11697a[0];
    }

    public g(int initialCapacity) {
        super(initialCapacity);
        this.f11687y = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.c yf2;
                yf2 = g.yf();
                return yf2;
            }
        });
        this.f11688z = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.b zf2;
                zf2 = g.zf();
                return zf2;
            }
        });
    }

    public g(int initialCapacity, float loadFactor) {
        super(initialCapacity, loadFactor);
        this.f11687y = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.c yf2;
                yf2 = g.yf();
                return yf2;
            }
        });
        this.f11688z = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.b zf2;
                zf2 = g.zf();
                return zf2;
            }
        });
    }

    public g(int initialCapacity, float loadFactor, long noEntryKey) {
        super(initialCapacity, loadFactor, noEntryKey);
        this.f11687y = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.c yf2;
                yf2 = g.yf();
                return yf2;
            }
        });
        this.f11688z = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.b zf2;
                zf2 = g.zf();
                return zf2;
            }
        });
    }

    public g(V map) {
        super(map);
        this.f11687y = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.c yf2;
                yf2 = g.yf();
                return yf2;
            }
        });
        this.f11688z = ThreadLocal.withInitial(new Supplier() {
            @Override
            public final Object get() {
                g.b zf2;
                zf2 = g.zf();
                return zf2;
            }
        });
    }
}
