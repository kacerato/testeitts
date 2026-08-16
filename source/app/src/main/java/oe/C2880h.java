package Oe;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class C2880h<T> extends Be.B<T> {

    public final Be.G<? extends T>[] f19493b;

    public final Iterable<? extends Be.G<? extends T>> f19494c;

    public static final class a<T> implements De.c {

        public final Be.I<? super T> f19495b;

        public final b<T>[] f19496c;

        public final AtomicInteger f19497d = new AtomicInteger();

        public a(Be.I<? super T> i10, int i11) {
            this.f19495b = i10;
            this.f19496c = new b[i11];
        }

        public void a(Be.G<? extends T>[] gArr) {
            b<T>[] bVarArr = this.f19496c;
            int length = bVarArr.length;
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                bVarArr[i10] = new b<>(this, i11, this.f19495b);
                i10 = i11;
            }
            this.f19497d.lazySet(0);
            this.f19495b.e(this);
            for (int i12 = 0; i12 < length && this.f19497d.get() == 0; i12++) {
                gArr[i12].c(bVarArr[i12]);
            }
        }

        public boolean b(int i10) {
            int i11 = this.f19497d.get();
            int i12 = 0;
            if (i11 != 0) {
                return i11 == i10;
            }
            if (!this.f19497d.compareAndSet(0, i10)) {
                return false;
            }
            b<T>[] bVarArr = this.f19496c;
            int length = bVarArr.length;
            while (i12 < length) {
                int i13 = i12 + 1;
                if (i13 != i10) {
                    bVarArr[i12].b();
                }
                i12 = i13;
            }
            return true;
        }

        @Override
        public boolean d() {
            return this.f19497d.get() == -1;
        }

        @Override
        public void dispose() {
            if (this.f19497d.get() != -1) {
                this.f19497d.lazySet(-1);
                for (b<T> bVar : this.f19496c) {
                    bVar.b();
                }
            }
        }
    }

    public static final class b<T> extends AtomicReference<De.c> implements Be.I<T> {

        public static final long f19498f = -1185974347409665484L;

        public final a<T> f19499b;

        public final int f19500c;

        public final Be.I<? super T> f19501d;

        public boolean f19502e;

        public b(a<T> aVar, int i10, Be.I<? super T> i11) {
            this.f19499b = aVar;
            this.f19500c = i10;
            this.f19501d = i11;
        }

        @Override
        public void a() {
            if (this.f19502e) {
                this.f19501d.a();
            } else if (this.f19499b.b(this.f19500c)) {
                this.f19502e = true;
                this.f19501d.a();
            }
        }

        public void b() {
            Ge.d.a(this);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this, cVar);
        }

        @Override
        public void h(T t10) {
            if (this.f19502e) {
                this.f19501d.h(t10);
            } else if (!this.f19499b.b(this.f19500c)) {
                get().dispose();
            } else {
                this.f19502e = true;
                this.f19501d.h(t10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f19502e) {
                this.f19501d.onError(th2);
            } else if (!this.f19499b.b(this.f19500c)) {
                Ye.a.Y(th2);
            } else {
                this.f19502e = true;
                this.f19501d.onError(th2);
            }
        }
    }

    public C2880h(Be.G<? extends T>[] gArr, Iterable<? extends Be.G<? extends T>> iterable) {
        this.f19493b = gArr;
        this.f19494c = iterable;
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        int length;
        Be.G<? extends T>[] gArr = this.f19493b;
        if (gArr == null) {
            gArr = new Be.B[8];
            try {
                length = 0;
                for (Be.G<? extends T> g10 : this.f19494c) {
                    if (g10 == null) {
                        Ge.e.h(new NullPointerException("One of the sources is null"), i10);
                        return;
                    }
                    if (length == gArr.length) {
                        Be.G<? extends T>[] gArr2 = new Be.G[(length >> 2) + length];
                        System.arraycopy(gArr, 0, gArr2, 0, length);
                        gArr = gArr2;
                    }
                    int i11 = length + 1;
                    gArr[length] = g10;
                    length = i11;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.h(th2, i10);
                return;
            }
        } else {
            length = gArr.length;
        }
        if (length == 0) {
            Ge.e.c(i10);
        } else if (length == 1) {
            gArr[0].c(i10);
        } else {
            new a(i10, length).a(gArr);
        }
    }
}
