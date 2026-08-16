package com.google.common.collect;

import com.google.common.primitives.C12598a;
import java.util.Comparator;

@X
@v2.b
public abstract class K {

    public static final K f65811a = new a();

    public static final K f65812b = new b(-1);

    public static final K f65813c = new b(1);

    public class a extends K {
        public a() {
            super(null);
        }

        @Override
        public K d(double d10, double d11) {
            return o(Double.compare(d10, d11));
        }

        @Override
        public K e(float f10, float f11) {
            return o(Float.compare(f10, f11));
        }

        @Override
        public K f(int i10, int i11) {
            return o(com.google.common.primitives.l.e(i10, i11));
        }

        @Override
        public K g(long j10, long j11) {
            return o(com.google.common.primitives.n.d(j10, j11));
        }

        @Override
        public K i(Comparable<?> comparable, Comparable<?> comparable2) {
            return o(comparable.compareTo(comparable2));
        }

        @Override
        public <T> K j(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11, Comparator<T> comparator) {
            return o(comparator.compare(t10, t11));
        }

        @Override
        public K k(boolean z10, boolean z11) {
            return o(C12598a.d(z10, z11));
        }

        @Override
        public K l(boolean z10, boolean z11) {
            return o(C12598a.d(z11, z10));
        }

        @Override
        public int m() {
            return 0;
        }

        public K o(int i10) {
            return i10 < 0 ? K.f65812b : i10 > 0 ? K.f65813c : K.f65811a;
        }
    }

    public static final class b extends K {

        public final int f65814d;

        public b(int i10) {
            super(null);
            this.f65814d = i10;
        }

        @Override
        public K d(double d10, double d11) {
            return this;
        }

        @Override
        public K e(float f10, float f11) {
            return this;
        }

        @Override
        public K f(int i10, int i11) {
            return this;
        }

        @Override
        public K g(long j10, long j11) {
            return this;
        }

        @Override
        public K i(Comparable<?> comparable, Comparable<?> comparable2) {
            return this;
        }

        @Override
        public <T> K j(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11, Comparator<T> comparator) {
            return this;
        }

        @Override
        public K k(boolean z10, boolean z11) {
            return this;
        }

        @Override
        public K l(boolean z10, boolean z11) {
            return this;
        }

        @Override
        public int m() {
            return this.f65814d;
        }
    }

    public K(a aVar) {
        this();
    }

    public static K n() {
        return f65811a;
    }

    public abstract K d(double d10, double d11);

    public abstract K e(float f10, float f11);

    public abstract K f(int i10, int i11);

    public abstract K g(long j10, long j11);

    @Deprecated
    public final K h(Boolean bool, Boolean bool2) {
        return k(bool.booleanValue(), bool2.booleanValue());
    }

    public abstract K i(Comparable<?> comparable, Comparable<?> comparable2);

    public abstract <T> K j(@InterfaceC12518f2 T t10, @InterfaceC12518f2 T t11, Comparator<T> comparator);

    public abstract K k(boolean z10, boolean z11);

    public abstract K l(boolean z10, boolean z11);

    public abstract int m();

    public K() {
    }
}
