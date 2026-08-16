package Ze;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public final class a<T> extends c<T> {

    public static final C0820a[] f31116f = new C0820a[0];

    public static final C0820a[] f31117g = new C0820a[0];

    public final AtomicReference<C0820a<T>[]> f31118c = new AtomicReference<>(f31116f);

    public Throwable f31119d;

    public T f31120e;

    public static final class C0820a<T> extends Ue.f<T> {

        public static final long f31121o = 5629876084736248016L;

        public final a<T> f31122n;

        public C0820a(hn.c<? super T> cVar, a<T> aVar) {
            super(cVar);
            this.f31122n = aVar;
        }

        public void a() {
            if (n()) {
                return;
            }
            this.f26033c.a();
        }

        @Override
        public void cancel() {
            if (super.p()) {
                this.f31122n.Z8(this);
            }
        }

        public void onError(Throwable th2) {
            if (n()) {
                Ye.a.Y(th2);
            } else {
                this.f26033c.onError(th2);
            }
        }
    }

    @Ce.f
    @Ce.d
    public static <T> a<T> U8() {
        return new a<>();
    }

    @Override
    @Ce.g
    public Throwable O8() {
        if (this.f31118c.get() == f31117g) {
            return this.f31119d;
        }
        return null;
    }

    @Override
    public boolean P8() {
        return this.f31118c.get() == f31117g && this.f31119d == null;
    }

    @Override
    public boolean Q8() {
        return this.f31118c.get().length != 0;
    }

    @Override
    public boolean R8() {
        return this.f31118c.get() == f31117g && this.f31119d != null;
    }

    public boolean T8(C0820a<T> c0820a) {
        C0820a<T>[] c0820aArr;
        C0820a[] c0820aArr2;
        do {
            c0820aArr = this.f31118c.get();
            if (c0820aArr == f31117g) {
                return false;
            }
            int length = c0820aArr.length;
            c0820aArr2 = new C0820a[length + 1];
            System.arraycopy(c0820aArr, 0, c0820aArr2, 0, length);
            c0820aArr2[length] = c0820a;
        } while (!androidx.lifecycle.c.a(this.f31118c, c0820aArr, c0820aArr2));
        return true;
    }

    @Ce.g
    public T V8() {
        if (this.f31118c.get() == f31117g) {
            return this.f31120e;
        }
        return null;
    }

    @Deprecated
    public Object[] W8() {
        T V82 = V8();
        return V82 != null ? new Object[]{V82} : new Object[0];
    }

    @Deprecated
    public T[] X8(T[] tArr) {
        T V82 = V8();
        if (V82 == null) {
            if (tArr.length != 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        if (tArr.length == 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 1);
        }
        tArr[0] = V82;
        if (tArr.length != 1) {
            tArr[1] = null;
        }
        return tArr;
    }

    public boolean Y8() {
        return this.f31118c.get() == f31117g && this.f31120e != null;
    }

    public void Z8(C0820a<T> c0820a) {
        C0820a<T>[] c0820aArr;
        C0820a[] c0820aArr2;
        do {
            c0820aArr = this.f31118c.get();
            int length = c0820aArr.length;
            if (length == 0) {
                return;
            }
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    i10 = -1;
                    break;
                } else if (c0820aArr[i10] == c0820a) {
                    break;
                } else {
                    i10++;
                }
            }
            if (i10 < 0) {
                return;
            }
            if (length == 1) {
                c0820aArr2 = f31116f;
            } else {
                C0820a[] c0820aArr3 = new C0820a[length - 1];
                System.arraycopy(c0820aArr, 0, c0820aArr3, 0, i10);
                System.arraycopy(c0820aArr, i10 + 1, c0820aArr3, i10, (length - i10) - 1);
                c0820aArr2 = c0820aArr3;
            }
        } while (!androidx.lifecycle.c.a(this.f31118c, c0820aArr, c0820aArr2));
    }

    @Override
    public void a() {
        C0820a<T>[] c0820aArr = this.f31118c.get();
        C0820a<T>[] c0820aArr2 = f31117g;
        if (c0820aArr == c0820aArr2) {
            return;
        }
        T t10 = this.f31120e;
        C0820a<T>[] andSet = this.f31118c.getAndSet(c0820aArr2);
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
            andSet[i10].d(t10);
            i10++;
        }
    }

    @Override
    public void h(T t10) {
        He.b.g(t10, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f31118c.get() == f31117g) {
            return;
        }
        this.f31120e = t10;
    }

    @Override
    public void j(hn.d dVar) {
        if (this.f31118c.get() == f31117g) {
            dVar.cancel();
        } else {
            dVar.i(Long.MAX_VALUE);
        }
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        C0820a<T> c0820a = new C0820a<>(cVar, this);
        cVar.j(c0820a);
        if (T8(c0820a)) {
            if (c0820a.n()) {
                Z8(c0820a);
                return;
            }
            return;
        }
        Throwable th2 = this.f31119d;
        if (th2 != null) {
            cVar.onError(th2);
            return;
        }
        T t10 = this.f31120e;
        if (t10 != null) {
            c0820a.d(t10);
        } else {
            c0820a.a();
        }
    }

    @Override
    public void onError(Throwable th2) {
        He.b.g(th2, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        C0820a<T>[] c0820aArr = this.f31118c.get();
        C0820a<T>[] c0820aArr2 = f31117g;
        if (c0820aArr == c0820aArr2) {
            Ye.a.Y(th2);
            return;
        }
        this.f31120e = null;
        this.f31119d = th2;
        for (C0820a<T> c0820a : this.f31118c.getAndSet(c0820aArr2)) {
            c0820a.onError(th2);
        }
    }
}
