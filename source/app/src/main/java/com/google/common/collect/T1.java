package com.google.common.collect;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

@X
@v2.b
public abstract class T1<K0, V0> {

    public static final int f66202a = 8;

    public class a extends k<Object> {

        public final int f66203b;

        public a(int i10) {
            this.f66203b = i10;
        }

        @Override
        public <K, V> Map<K, Collection<V>> c() {
            return C12526h2.d(this.f66203b);
        }
    }

    public class b extends k<Object> {

        public final int f66204b;

        public b(int i10) {
            this.f66204b = i10;
        }

        @Override
        public <K, V> Map<K, Collection<V>> c() {
            return C12526h2.f(this.f66204b);
        }
    }

    public class c extends k<K0> {

        public final Comparator f66205b;

        public c(Comparator comparator) {
            this.f66205b = comparator;
        }

        @Override
        public <K extends K0, V> Map<K, Collection<V>> c() {
            return new TreeMap(this.f66205b);
        }
    }

    public class d extends k<K0> {

        public final Class f66206b;

        public d(Class cls) {
            this.f66206b = cls;
        }

        @Override
        public <K extends K0, V> Map<K, Collection<V>> c() {
            return new EnumMap(this.f66206b);
        }
    }

    public static final class e<V> implements w2.Q<List<V>>, Serializable {

        public final int f66207b;

        public e(int i10) {
            this.f66207b = B.b(i10, "expectedValuesPerKey");
        }

        @Override
        public List<V> get() {
            return new ArrayList(this.f66207b);
        }
    }

    public static final class f<V extends Enum<V>> implements w2.Q<Set<V>>, Serializable {

        public final Class<V> f66208b;

        public f(Class<V> cls) {
            this.f66208b = (Class) w2.H.E(cls);
        }

        @Override
        public Set<V> get() {
            return EnumSet.noneOf(this.f66208b);
        }
    }

    public static final class g<V> implements w2.Q<Set<V>>, Serializable {

        public final int f66209b;

        public g(int i10) {
            this.f66209b = B.b(i10, "expectedValuesPerKey");
        }

        @Override
        public Set<V> get() {
            return C12526h2.e(this.f66209b);
        }
    }

    public static final class h<V> implements w2.Q<Set<V>>, Serializable {

        public final int f66210b;

        public h(int i10) {
            this.f66210b = B.b(i10, "expectedValuesPerKey");
        }

        @Override
        public Set<V> get() {
            return C12526h2.g(this.f66210b);
        }
    }

    public enum i implements w2.Q<List<?>> {
        INSTANCE;

        public static <V> w2.Q<List<V>> c() {
            return INSTANCE;
        }

        @Override
        public List<?> get() {
            return new LinkedList();
        }
    }

    public static abstract class j<K0, V0> extends T1<K0, V0> {
        public j() {
            super(null);
        }

        @Override
        public abstract <K extends K0, V extends V0> L1<K, V> a();

        @Override
        public <K extends K0, V extends V0> L1<K, V> b(S1<? extends K, ? extends V> s12) {
            return (L1) super.b(s12);
        }
    }

    public static abstract class k<K0> {

        public static final int f66211a = 2;

        public class a extends j<K0, Object> {

            public final int f66212b;

            public a(int i10) {
                this.f66212b = i10;
            }

            @Override
            public <K extends K0, V> L1<K, V> a() {
                return U1.u(k.this.c(), new e(this.f66212b));
            }
        }

        public class b extends j<K0, Object> {
            public b() {
            }

            @Override
            public <K extends K0, V> L1<K, V> a() {
                return U1.u(k.this.c(), i.c());
            }
        }

        public class c extends l<K0, Object> {

            public final int f66215b;

            public c(int i10) {
                this.f66215b = i10;
            }

            @Override
            public <K extends K0, V> C2<K, V> a() {
                return U1.w(k.this.c(), new g(this.f66215b));
            }
        }

        public class d extends l<K0, Object> {

            public final int f66217b;

            public d(int i10) {
                this.f66217b = i10;
            }

            @Override
            public <K extends K0, V> C2<K, V> a() {
                return U1.w(k.this.c(), new h(this.f66217b));
            }
        }

        public class e extends m<K0, V0> {

            public final Comparator f66219b;

            public e(Comparator comparator) {
                this.f66219b = comparator;
            }

            @Override
            public <K extends K0, V extends V0> N2<K, V> a() {
                return U1.x(k.this.c(), new n(this.f66219b));
            }
        }

        public class f extends l<K0, V0> {

            public final Class f66221b;

            public f(Class cls) {
                this.f66221b = cls;
            }

            @Override
            public <K extends K0, V extends V0> C2<K, V> a() {
                return U1.w(k.this.c(), new f(this.f66221b));
            }
        }

        public j<K0, Object> a() {
            return b(2);
        }

        public j<K0, Object> b(int i10) {
            B.b(i10, "expectedValuesPerKey");
            return new a(i10);
        }

        public abstract <K extends K0, V> Map<K, Collection<V>> c();

        public <V0 extends Enum<V0>> l<K0, V0> d(Class<V0> cls) {
            w2.H.F(cls, "valueClass");
            return new f(cls);
        }

        public l<K0, Object> e() {
            return f(2);
        }

        public l<K0, Object> f(int i10) {
            B.b(i10, "expectedValuesPerKey");
            return new c(i10);
        }

        public l<K0, Object> g() {
            return h(2);
        }

        public l<K0, Object> h(int i10) {
            B.b(i10, "expectedValuesPerKey");
            return new d(i10);
        }

        public j<K0, Object> i() {
            return new b();
        }

        public m<K0, Comparable> j() {
            return k(Ordering.A());
        }

        public <V0> m<K0, V0> k(Comparator<V0> comparator) {
            w2.H.F(comparator, "comparator");
            return new e(comparator);
        }
    }

    public static abstract class l<K0, V0> extends T1<K0, V0> {
        public l() {
            super(null);
        }

        @Override
        public abstract <K extends K0, V extends V0> C2<K, V> a();

        @Override
        public <K extends K0, V extends V0> C2<K, V> b(S1<? extends K, ? extends V> s12) {
            return (C2) super.b(s12);
        }
    }

    public static abstract class m<K0, V0> extends l<K0, V0> {
        @Override
        public abstract <K extends K0, V extends V0> N2<K, V> a();

        @Override
        public <K extends K0, V extends V0> N2<K, V> b(S1<? extends K, ? extends V> s12) {
            return (N2) super.b(s12);
        }
    }

    public static final class n<V> implements w2.Q<SortedSet<V>>, Serializable {

        public final Comparator<? super V> f66223b;

        public n(Comparator<? super V> comparator) {
            this.f66223b = (Comparator) w2.H.E(comparator);
        }

        @Override
        public SortedSet<V> get() {
            return new TreeSet(this.f66223b);
        }
    }

    public T1(a aVar) {
        this();
    }

    public static <K0 extends Enum<K0>> k<K0> c(Class<K0> cls) {
        w2.H.E(cls);
        return new d(cls);
    }

    public static k<Object> d() {
        return e(8);
    }

    public static k<Object> e(int i10) {
        B.b(i10, "expectedKeys");
        return new a(i10);
    }

    public static k<Object> f() {
        return g(8);
    }

    public static k<Object> g(int i10) {
        B.b(i10, "expectedKeys");
        return new b(i10);
    }

    public static k<Comparable> h() {
        return i(Ordering.A());
    }

    public static <K0> k<K0> i(Comparator<K0> comparator) {
        w2.H.E(comparator);
        return new c(comparator);
    }

    public abstract <K extends K0, V extends V0> S1<K, V> a();

    public <K extends K0, V extends V0> S1<K, V> b(S1<? extends K, ? extends V> s12) {
        S1<K, V> a10 = a();
        a10.w(s12);
        return a10;
    }

    public T1() {
    }
}
