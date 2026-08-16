package com.google.common.collect;

import com.google.common.collect.O1;
import javax.annotation.CheckForNull;
import w2.AbstractC15896m;
import w2.InterfaceC15902t;

@X
@v2.c
public final class C1 {

    public static class b {

        public final O1 f65620a;

        public boolean f65621b;

        public <E> B1<E> a() {
            if (!this.f65621b) {
                this.f65620a.l();
            }
            return new d(this.f65620a);
        }

        public b b(int i10) {
            this.f65620a.a(i10);
            return this;
        }

        public b c() {
            this.f65621b = true;
            return this;
        }

        @v2.c("java.lang.ref.WeakReference")
        public b d() {
            this.f65621b = false;
            return this;
        }

        public b() {
            this.f65620a = new O1();
            this.f65621b = true;
        }
    }

    public static class c<E> implements InterfaceC15902t<E, E> {

        public final B1<E> f65622b;

        public c(B1<E> b12) {
            this.f65622b = b12;
        }

        @Override
        public E apply(E e10) {
            return this.f65622b.a(e10);
        }

        @Override
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof c) {
                return this.f65622b.equals(((c) obj).f65622b);
            }
            return false;
        }

        public int hashCode() {
            return this.f65622b.hashCode();
        }
    }

    @v2.d
    public static final class d<E> implements B1<E> {

        @v2.d
        public final P1<E, O1.a, ?, ?> f65623a;

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.P1$j] */
        @Override
        public E a(E e10) {
            E e11;
            do {
                ?? f10 = this.f65623a.f(e10);
                if (f10 != 0 && (e11 = (E) f10.getKey()) != null) {
                    return e11;
                }
            } while (this.f65623a.putIfAbsent(e10, O1.a.VALUE) != null);
            return e10;
        }

        public d(O1 o12) {
            this.f65623a = P1.e(o12.h(AbstractC15896m.c()));
        }
    }

    public static <E> InterfaceC15902t<E, E> a(B1<E> b12) {
        return new c((B1) w2.H.E(b12));
    }

    public static b b() {
        return new b();
    }

    public static <E> B1<E> c() {
        return b().c().a();
    }

    @v2.c("java.lang.ref.WeakReference")
    public static <E> B1<E> d() {
        return b().d().a();
    }
}
