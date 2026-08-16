package bf;

import Be.I;
import Je.l;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class C3877a<T> extends AbstractC3885i<T> {

    public static final C0888a[] f33082e = new C0888a[0];

    public static final C0888a[] f33083f = new C0888a[0];

    public final AtomicReference<C0888a<T>[]> f33084b = new AtomicReference<>(f33082e);

    public Throwable f33085c;

    public T f33086d;

    public static final class C0888a<T> extends l<T> {

        public static final long f33087l = 5629876084736248016L;

        public final C3877a<T> f33088k;

        public C0888a(I<? super T> i10, C3877a<T> c3877a) {
            super(i10);
            this.f33088k = c3877a;
        }

        public void a() {
            if (d()) {
                return;
            }
            this.f10484c.a();
        }

        @Override
        public void dispose() {
            if (super.j()) {
                this.f33088k.u8(this);
            }
        }

        public void onError(Throwable th2) {
            if (d()) {
                Ye.a.Y(th2);
            } else {
                this.f10484c.onError(th2);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static <T> C3877a<T> p8() {
        return new C3877a<>();
    }

    @Override
    public void J5(I<? super T> i10) {
        C0888a<T> c0888a = new C0888a<>(i10, this);
        i10.e(c0888a);
        if (o8(c0888a)) {
            if (c0888a.d()) {
                u8(c0888a);
                return;
            }
            return;
        }
        Throwable th2 = this.f33085c;
        if (th2 != null) {
            i10.onError(th2);
            return;
        }
        T t10 = this.f33086d;
        if (t10 != null) {
            c0888a.f(t10);
        } else {
            c0888a.a();
        }
    }

    @Override
    public void a() {
        C0888a<T>[] c0888aArr = this.f33084b.get();
        C0888a<T>[] c0888aArr2 = f33083f;
        if (c0888aArr == c0888aArr2) {
            return;
        }
        T t10 = this.f33086d;
        C0888a<T>[] andSet = this.f33084b.getAndSet(c0888aArr2);
        int i10 = 0;
        if (t10 == null) {
            int length = andSet.length;
            while (i10 < length) {
                andSet[i10].a();
                i10++;
            }
            return;
        }
        int length2 = andSet.length;
        while (i10 < length2) {
            andSet[i10].f(t10);
            i10++;
        }
    }

    @Override
    public void e(De.c cVar) {
        if (this.f33084b.get() == f33083f) {
            cVar.dispose();
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f33084b.get() == f33083f) {
            return;
        }
        this.f33086d = t10;
    }

    @Override
    public Throwable j8() {
        if (this.f33084b.get() == f33083f) {
            return this.f33085c;
        }
        return null;
    }

    @Override
    public boolean k8() {
        return this.f33084b.get() == f33083f && this.f33085c == null;
    }

    @Override
    public boolean l8() {
        return this.f33084b.get().length != 0;
    }

    @Override
    public boolean m8() {
        return this.f33084b.get() == f33083f && this.f33085c != null;
    }

    public boolean o8(C0888a<T> c0888a) {
        C0888a<T>[] c0888aArr;
        C0888a[] c0888aArr2;
        do {
            c0888aArr = this.f33084b.get();
            if (c0888aArr == f33083f) {
                return false;
            }
            int length = c0888aArr.length;
            c0888aArr2 = new C0888a[length + 1];
            System.arraycopy(c0888aArr, 0, c0888aArr2, 0, length);
            c0888aArr2[length] = c0888a;
        } while (!androidx.lifecycle.c.a(this.f33084b, c0888aArr, c0888aArr2));
        return true;
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0888a<T>[] c0888aArr = this.f33084b.get();
        C0888a<T>[] c0888aArr2 = f33083f;
        if (c0888aArr == c0888aArr2) {
            Ye.a.Y(th2);
            return;
        }
        this.f33086d = null;
        this.f33085c = th2;
        for (C0888a<T> c0888a : this.f33084b.getAndSet(c0888aArr2)) {
            c0888a.onError(th2);
        }
    }

    @Ce.g
    public T q8() {
        if (this.f33084b.get() == f33083f) {
            return this.f33086d;
        }
        return null;
    }

    @Deprecated
    public Object[] r8() {
        T q82 = q8();
        return q82 != null ? new Object[]{q82} : new Object[0];
    }

    @Deprecated
    public T[] s8(T[] tArr) {
        T q82 = q8();
        if (q82 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = q82;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    public boolean t8() {
        return this.f33084b.get() == f33083f && this.f33086d != null;
    }

    public void u8(C0888a<T> c0888a) {
        C0888a<T>[] c0888aArr;
        C0888a[] c0888aArr2;
        do {
            c0888aArr = this.f33084b.get();
            int length = c0888aArr.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (c0888aArr[i10] == c0888a) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                c0888aArr2 = f33082e;
            } else {
                C0888a[] c0888aArr3 = new C0888a[length - 1];
                System.arraycopy(c0888aArr, 0, c0888aArr3, 0, i10);
                System.arraycopy(c0888aArr, i10 + 1, c0888aArr3, i10, (length - i10) - 1);
                c0888aArr2 = c0888aArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f33084b, c0888aArr, c0888aArr2));
    }
}
