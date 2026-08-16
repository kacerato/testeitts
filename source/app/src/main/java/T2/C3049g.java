package T2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C3049g<T> {

    public final String f23982a;

    public final Set<F<? super T>> f23983b;

    public final Set<v> f23984c;

    public final int f23985d;

    public final int f23986e;

    public final k<T> f23987f;

    public final Set<Class<?>> f23988g;

    public static Object A(Object obj, InterfaceC3050h interfaceC3050h) {
        return obj;
    }

    @Deprecated
    public static <T> C3049g<T> B(Class<T> cls, final T t10) {
        return h(cls).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                Object y10;
                y10 = C3049g.y(Object.this, interfaceC3050h);
                return y10;
            }
        }).d();
    }

    @SafeVarargs
    public static <T> C3049g<T> C(final T t10, F<T> f10, F<? super T>... fArr) {
        return g(f10, fArr).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                Object A10;
                A10 = C3049g.A(Object.this, interfaceC3050h);
                return A10;
            }
        }).d();
    }

    @SafeVarargs
    public static <T> C3049g<T> D(final T t10, Class<T> cls, Class<? super T>... clsArr) {
        return i(cls, clsArr).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                Object z10;
                z10 = C3049g.z(Object.this, interfaceC3050h);
                return z10;
            }
        }).d();
    }

    public static <T> b<T> f(F<T> f10) {
        return new b<>(f10, new F[0]);
    }

    @SafeVarargs
    public static <T> b<T> g(F<T> f10, F<? super T>... fArr) {
        return new b<>(f10, fArr);
    }

    public static <T> b<T> h(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> b<T> i(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    public static <T> C3049g<T> o(final T t10, F<T> f10) {
        return q(f10).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                Object x10;
                x10 = C3049g.x(Object.this, interfaceC3050h);
                return x10;
            }
        }).d();
    }

    public static <T> C3049g<T> p(final T t10, Class<T> cls) {
        return r(cls).f(new k() {
            @Override
            public final Object a(InterfaceC3050h interfaceC3050h) {
                Object w10;
                w10 = C3049g.w(Object.this, interfaceC3050h);
                return w10;
            }
        }).d();
    }

    public static <T> b<T> q(F<T> f10) {
        return f(f10).g();
    }

    public static <T> b<T> r(Class<T> cls) {
        return h(cls).g();
    }

    public static Object w(Object obj, InterfaceC3050h interfaceC3050h) {
        return obj;
    }

    public static Object x(Object obj, InterfaceC3050h interfaceC3050h) {
        return obj;
    }

    public static Object y(Object obj, InterfaceC3050h interfaceC3050h) {
        return obj;
    }

    public static Object z(Object obj, InterfaceC3050h interfaceC3050h) {
        return obj;
    }

    public C3049g<T> E(k<T> kVar) {
        return new C3049g<>(this.f23982a, this.f23983b, this.f23984c, this.f23985d, this.f23986e, kVar, this.f23988g);
    }

    public Set<v> j() {
        return this.f23984c;
    }

    public k<T> k() {
        return this.f23987f;
    }

    @Nullable
    public String l() {
        return this.f23982a;
    }

    public Set<F<? super T>> m() {
        return this.f23983b;
    }

    public Set<Class<?>> n() {
        return this.f23988g;
    }

    public boolean s() {
        return this.f23985d == 1;
    }

    public boolean t() {
        return this.f23985d == 2;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f23983b.toArray()) + ">{" + this.f23985d + ", type=" + this.f23986e + ", deps=" + Arrays.toString(this.f23984c.toArray()) + VectorFormat.DEFAULT_SUFFIX;
    }

    public boolean u() {
        return this.f23985d == 0;
    }

    public boolean v() {
        return this.f23986e == 0;
    }

    public static class b<T> {

        public String f23989a;

        public final Set<F<? super T>> f23990b;

        public final Set<v> f23991c;

        public int f23992d;

        public int f23993e;

        public k<T> f23994f;

        public final Set<Class<?>> f23995g;

        @I2.a
        public b<T> b(v vVar) {
            E.c(vVar, "Null dependency");
            k(vVar.d());
            this.f23991c.add(vVar);
            return this;
        }

        @I2.a
        public b<T> c() {
            return j(1);
        }

        public C3049g<T> d() {
            E.d(this.f23994f != null, "Missing required property: factory.");
            return new C3049g<>(this.f23989a, new HashSet(this.f23990b), new HashSet(this.f23991c), this.f23992d, this.f23993e, this.f23994f, this.f23995g);
        }

        @I2.a
        public b<T> e() {
            return j(2);
        }

        @I2.a
        public b<T> f(k<T> kVar) {
            this.f23994f = (k) E.c(kVar, "Null factory");
            return this;
        }

        @I2.a
        public final b<T> g() {
            this.f23993e = 1;
            return this;
        }

        public b<T> h(@NonNull String str) {
            this.f23989a = str;
            return this;
        }

        @I2.a
        public b<T> i(Class<?> cls) {
            this.f23995g.add(cls);
            return this;
        }

        @I2.a
        public final b<T> j(int i10) {
            E.d(this.f23992d == 0, "Instantiation type has already been set.");
            this.f23992d = i10;
            return this;
        }

        public final void k(F<?> f10) {
            E.a(!this.f23990b.contains(f10), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        @SafeVarargs
        public b(Class<T> cls, Class<? super T>... clsArr) {
            this.f23989a = null;
            HashSet hashSet = new HashSet();
            this.f23990b = hashSet;
            this.f23991c = new HashSet();
            this.f23992d = 0;
            this.f23993e = 0;
            this.f23995g = new HashSet();
            E.c(cls, "Null interface");
            hashSet.add(F.b(cls));
            for (Class<? super T> cls2 : clsArr) {
                E.c(cls2, "Null interface");
                this.f23990b.add(F.b(cls2));
            }
        }

        @SafeVarargs
        public b(F<T> f10, F<? super T>... fArr) {
            this.f23989a = null;
            HashSet hashSet = new HashSet();
            this.f23990b = hashSet;
            this.f23991c = new HashSet();
            this.f23992d = 0;
            this.f23993e = 0;
            this.f23995g = new HashSet();
            E.c(f10, "Null interface");
            hashSet.add(f10);
            for (F<? super T> f11 : fArr) {
                E.c(f11, "Null interface");
            }
            Collections.addAll(this.f23990b, fArr);
        }
    }

    public C3049g(@Nullable String str, Set<F<? super T>> set, Set<v> set2, int i10, int i11, k<T> kVar, Set<Class<?>> set3) {
        this.f23982a = str;
        this.f23983b = Collections.unmodifiableSet(set);
        this.f23984c = Collections.unmodifiableSet(set2);
        this.f23985d = i10;
        this.f23986e = i11;
        this.f23987f = kVar;
        this.f23988g = Collections.unmodifiableSet(set3);
    }
}
