package qd;

import com.lmax.disruptor.InsufficientCapacityException;
import sd.EnumC15278g;

public final class y<E> implements InterfaceC15063f, InterfaceC15064g<E> {

    public static final long f106124f = -1;

    public final int f106125b;

    public final Object[] f106126c;

    public final int f106127d;

    public final E f106128e;

    public static class a {

        public static final int[] f106129a;

        static {
            int[] iArr = new int[EnumC15278g.values().length];
            f106129a = iArr;
            try {
                iArr[EnumC15278g.SINGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f106129a[EnumC15278g.MULTI.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public y(InterfaceC15065h<E> interfaceC15065h, E e10) {
        this.f106128e = e10;
        int m10 = e10.m();
        this.f106127d = m10;
        if (m10 < 1) {
            throw new IllegalArgumentException("bufferSize must not be less than 1");
        }
        if (Integer.bitCount(m10) != 1) {
            throw new IllegalArgumentException("bufferSize must be a power of 2");
        }
        this.f106125b = m10 - 1;
        this.f106126c = new Object[e10.m()];
        v(interfaceC15065h);
    }

    public static <E> y<E> p(EnumC15278g enumC15278g, InterfaceC15065h<E> interfaceC15065h, int i10, J j10) {
        int i11 = a.f106129a[enumC15278g.ordinal()];
        if (i11 == 1) {
            return t(interfaceC15065h, i10, j10);
        }
        if (i11 == 2) {
            return r(interfaceC15065h, i10, j10);
        }
        throw new IllegalStateException(enumC15278g.toString());
    }

    public static <E> y<E> q(InterfaceC15065h<E> interfaceC15065h, int i10) {
        return r(interfaceC15065h, i10, new C15061d());
    }

    public static <E> y<E> r(InterfaceC15065h<E> interfaceC15065h, int i10, J j10) {
        return new y<>(interfaceC15065h, new u(i10, j10));
    }

    public static <E> y<E> s(InterfaceC15065h<E> interfaceC15065h, int i10) {
        return t(interfaceC15065h, i10, new C15061d());
    }

    public static <E> y<E> t(InterfaceC15065h<E> interfaceC15065h, int i10, J j10) {
        return new y<>(interfaceC15065h, new F(i10, j10));
    }

    public void A(InterfaceC15068k<E> interfaceC15068k) {
        G(interfaceC15068k, this.f106128e.next());
    }

    public <A> void B(InterfaceC15069l<E, A> interfaceC15069l, A a10) {
        H(interfaceC15069l, this.f106128e.next(), a10);
    }

    public <A, B, C> void C(InterfaceC15070m<E, A, B, C> interfaceC15070m, A a10, B b10, C c10) {
        I(interfaceC15070m, this.f106128e.next(), a10, b10, c10);
    }

    public <A, B> void D(InterfaceC15071n<E, A, B> interfaceC15071n, A a10, B b10) {
        J(interfaceC15071n, this.f106128e.next(), a10, b10);
    }

    public void E(o<E> oVar, Object... objArr) {
        K(oVar, this.f106128e.next(), objArr);
    }

    public void F(long j10) {
        this.f106128e.l(j10);
        this.f106128e.j(j10);
    }

    public final void G(InterfaceC15068k<E> interfaceC15068k, long j10) {
        try {
            interfaceC15068k.a(u(j10), j10);
        } finally {
            this.f106128e.j(j10);
        }
    }

    public final <A> void H(InterfaceC15069l<E, A> interfaceC15069l, long j10, A a10) {
        try {
            interfaceC15069l.a(u(j10), j10, a10);
        } finally {
            this.f106128e.j(j10);
        }
    }

    public final <A, B, C> void I(InterfaceC15070m<E, A, B, C> interfaceC15070m, long j10, A a10, B b10, C c10) {
        try {
            interfaceC15070m.a(u(j10), j10, a10, b10, c10);
        } finally {
            this.f106128e.j(j10);
        }
    }

    public final <A, B> void J(InterfaceC15071n<E, A, B> interfaceC15071n, long j10, A a10, B b10) {
        try {
            interfaceC15071n.a(u(j10), j10, a10, b10);
        } finally {
            this.f106128e.j(j10);
        }
    }

    public final <A> void K(o<E> oVar, long j10, Object... objArr) {
        try {
            oVar.a(u(j10), j10, objArr);
        } finally {
            this.f106128e.j(j10);
        }
    }

    public boolean L(InterfaceC15068k<E> interfaceC15068k) {
        try {
            G(interfaceC15068k, this.f106128e.g());
            return true;
        } catch (InsufficientCapacityException unused) {
            return false;
        }
    }

    public <A> boolean M(InterfaceC15069l<E, A> interfaceC15069l, A a10) {
        try {
            H(interfaceC15069l, this.f106128e.g(), a10);
            return true;
        } catch (InsufficientCapacityException unused) {
            return false;
        }
    }

    public <A, B, C> boolean N(InterfaceC15070m<E, A, B, C> interfaceC15070m, A a10, B b10, C c10) {
        try {
            I(interfaceC15070m, this.f106128e.g(), a10, b10, c10);
            return true;
        } catch (InsufficientCapacityException unused) {
            return false;
        }
    }

    public <A, B> boolean O(InterfaceC15071n<E, A, B> interfaceC15071n, A a10, B b10) {
        try {
            J(interfaceC15071n, this.f106128e.g(), a10, b10);
            return true;
        } catch (InsufficientCapacityException unused) {
            return false;
        }
    }

    public boolean P(o<E> oVar, Object... objArr) {
        try {
            K(oVar, this.f106128e.g(), objArr);
            return true;
        } catch (InsufficientCapacityException unused) {
            return false;
        }
    }

    public boolean a(z zVar) {
        return this.f106128e.a(zVar);
    }

    public boolean b(int i10) {
        return this.f106128e.b(i10);
    }

    public long g() throws InsufficientCapacityException {
        return this.f106128e.g();
    }

    @Override
    public final long getCursor() {
        return this.f106128e.getCursor();
    }

    public InterfaceC15056A i(z... zVarArr) {
        return this.f106128e.i(zVarArr);
    }

    public void j(long j10) {
        this.f106128e.j(j10);
    }

    public void k(z... zVarArr) {
        this.f106128e.k(zVarArr);
    }

    public int m() {
        return this.f106127d;
    }

    public long next() {
        return this.f106128e.next();
    }

    public E o(long j10) {
        this.f106128e.l(j10);
        return u(j10);
    }

    public long remainingCapacity() {
        return this.f106128e.remainingCapacity();
    }

    @Override
    public E u(long j10) {
        return (E) this.f106126c[((int) j10) & this.f106125b];
    }

    public final void v(InterfaceC15065h<E> interfaceC15065h) {
        int i10 = 0;
        while (true) {
            Object[] objArr = this.f106126c;
            if (i10 >= objArr.length) {
                return;
            }
            objArr[i10] = interfaceC15065h.a();
            i10++;
        }
    }

    public long w() {
        return this.f106128e.e();
    }

    @Deprecated
    public E x(long j10) {
        return u(j10);
    }

    @Deprecated
    public E y(long j10) {
        return u(j10);
    }

    public boolean z(long j10) {
        return this.f106128e.f(j10);
    }
}
