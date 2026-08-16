package Re;

import Ce.g;
import Ie.n;
import io.reactivex.internal.util.s;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class c<T> implements n<T> {

    public static final int f22764j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    public static final Object f22765k = new Object();

    public int f22767c;

    public long f22768d;

    public final int f22769e;

    public AtomicReferenceArray<Object> f22770f;

    public final int f22771g;

    public AtomicReferenceArray<Object> f22772h;

    public final AtomicLong f22766b = new AtomicLong();

    public final AtomicLong f22773i = new AtomicLong();

    public c(int i10) {
        int b10 = s.b(Math.max(8, i10));
        int i11 = b10 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(b10 + 1);
        this.f22770f = atomicReferenceArray;
        this.f22769e = i11;
        a(b10);
        this.f22772h = atomicReferenceArray;
        this.f22771g = i11;
        this.f22768d = b10 - 2;
        v(0L);
    }

    public static int b(int i10) {
        return i10;
    }

    public static int c(long j10, int i10) {
        return b(((int) j10) & i10);
    }

    public static <E> Object g(AtomicReferenceArray<Object> atomicReferenceArray, int i10) {
        return atomicReferenceArray.get(i10);
    }

    private void q(long j10) {
        this.f22773i.lazySet(j10);
    }

    public static void t(AtomicReferenceArray<Object> atomicReferenceArray, int i10, Object obj) {
        atomicReferenceArray.lazySet(i10, obj);
    }

    private void v(long j10) {
        this.f22766b.lazySet(j10);
    }

    public final void a(int i10) {
        this.f22767c = Math.min(i10 / 4, f22764j);
    }

    @Override
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    public final long d() {
        return this.f22773i.get();
    }

    public final long e() {
        return this.f22766b.get();
    }

    public final long f() {
        return this.f22773i.get();
    }

    public final AtomicReferenceArray<Object> h(AtomicReferenceArray<Object> atomicReferenceArray, int i10) {
        int b10 = b(i10);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) g(atomicReferenceArray, b10);
        t(atomicReferenceArray, b10, null);
        return atomicReferenceArray2;
    }

    public final long i() {
        return this.f22766b.get();
    }

    @Override
    public boolean isEmpty() {
        return i() == f();
    }

    public final T j(AtomicReferenceArray<Object> atomicReferenceArray, long j10, int i10) {
        this.f22772h = atomicReferenceArray;
        return (T) g(atomicReferenceArray, c(j10, i10));
    }

    public final T l(AtomicReferenceArray<Object> atomicReferenceArray, long j10, int i10) {
        this.f22772h = atomicReferenceArray;
        int c10 = c(j10, i10);
        T t10 = (T) g(atomicReferenceArray, c10);
        if (t10 != null) {
            t(atomicReferenceArray, c10, null);
            q(j10 + 1);
        }
        return t10;
    }

    public final void n(AtomicReferenceArray<Object> atomicReferenceArray, long j10, int i10, T t10, long j11) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f22770f = atomicReferenceArray2;
        this.f22768d = (j11 + j10) - 1;
        t(atomicReferenceArray2, i10, t10);
        u(atomicReferenceArray, atomicReferenceArray2);
        t(atomicReferenceArray, i10, f22765k);
        v(j10 + 1);
    }

    @Override
    public boolean o(T t10, T t11) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f22770f;
        long i10 = i();
        int i11 = this.f22769e;
        long j10 = 2 + i10;
        if (g(atomicReferenceArray, c(j10, i11)) == null) {
            int c10 = c(i10, i11);
            t(atomicReferenceArray, c10 + 1, t11);
            t(atomicReferenceArray, c10, t10);
            v(j10);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f22770f = atomicReferenceArray2;
        int c11 = c(i10, i11);
        t(atomicReferenceArray2, c11 + 1, t11);
        t(atomicReferenceArray2, c11, t10);
        u(atomicReferenceArray, atomicReferenceArray2);
        t(atomicReferenceArray, c11, f22765k);
        v(j10);
        return true;
    }

    @Override
    public boolean offer(T t10) {
        if (t10 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray<Object> atomicReferenceArray = this.f22770f;
        long e10 = e();
        int i10 = this.f22769e;
        int c10 = c(e10, i10);
        if (e10 < this.f22768d) {
            return w(atomicReferenceArray, t10, e10, c10);
        }
        long j10 = this.f22767c + e10;
        if (g(atomicReferenceArray, c(j10, i10)) == null) {
            this.f22768d = j10 - 1;
            return w(atomicReferenceArray, t10, e10, c10);
        }
        if (g(atomicReferenceArray, c(1 + e10, i10)) == null) {
            return w(atomicReferenceArray, t10, e10, c10);
        }
        n(atomicReferenceArray, e10, c10, t10, i10);
        return true;
    }

    public int p() {
        long f10 = f();
        while (true) {
            long i10 = i();
            long f11 = f();
            if (f10 == f11) {
                return (int) (i10 - f11);
            }
            f10 = f11;
        }
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f22772h;
        long d10 = d();
        int i10 = this.f22771g;
        T t10 = (T) g(atomicReferenceArray, c(d10, i10));
        return t10 == f22765k ? j(h(atomicReferenceArray, i10 + 1), d10, i10) : t10;
    }

    @Override
    @g
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f22772h;
        long d10 = d();
        int i10 = this.f22771g;
        int c10 = c(d10, i10);
        T t10 = (T) g(atomicReferenceArray, c10);
        boolean z10 = t10 == f22765k;
        if (t10 == null || z10) {
            if (z10) {
                return l(h(atomicReferenceArray, i10 + 1), d10, i10);
            }
            return null;
        }
        t(atomicReferenceArray, c10, null);
        q(d10 + 1);
        return t10;
    }

    public final void u(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        t(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    public final boolean w(AtomicReferenceArray<Object> atomicReferenceArray, T t10, long j10, int i10) {
        t(atomicReferenceArray, i10, t10);
        v(j10 + 1);
        return true;
    }
}
