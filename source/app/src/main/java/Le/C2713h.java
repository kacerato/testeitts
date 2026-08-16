package Le;

import Be.AbstractC2362l;
import Be.InterfaceC2367q;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C2713h<T> extends AbstractC2362l<T> {

    public final hn.b<? extends T>[] f12807c;

    public final Iterable<? extends hn.b<? extends T>> f12808d;

    public static final class a<T> implements hn.d {

        public final hn.c<? super T> f12809b;

        public final b<T>[] f12810c;

        public final AtomicInteger f12811d = new AtomicInteger();

        public a(hn.c<? super T> cVar, int i10) {
            this.f12809b = cVar;
            this.f12810c = new b[i10];
        }

        public void a(hn.b<? extends T>[] bVarArr) {
            b<T>[] bVarArr2 = this.f12810c;
            int length = bVarArr2.length;
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                bVarArr2[i10] = new b<>(this, i11, this.f12809b);
                i10 = i11;
            }
            this.f12811d.lazySet(0);
            this.f12809b.j(this);
            for (int i12 = 0; i12 < length && this.f12811d.get() == 0; i12++) {
                bVarArr[i12].l(bVarArr2[i12]);
            }
        }

        public boolean b(int i10) {
            int i11 = 0;
            if (this.f12811d.get() != 0 || !this.f12811d.compareAndSet(0, i10)) {
                return false;
            }
            b<T>[] bVarArr = this.f12810c;
            int length = bVarArr.length;
            while (i11 < length) {
                int i12 = i11 + 1;
                if (i12 != i10) {
                    bVarArr[i11].cancel();
                }
                i11 = i12;
            }
            return true;
        }

        @Override
        public void cancel() {
            if (this.f12811d.get() != -1) {
                this.f12811d.lazySet(-1);
                for (b<T> bVar : this.f12810c) {
                    bVar.cancel();
                }
            }
        }

        @Override
        public void i(long j10) {
            if (Ue.j.m(j10)) {
                int i10 = this.f12811d.get();
                if (i10 > 0) {
                    this.f12810c[i10 - 1].i(j10);
                    return;
                }
                if (i10 == 0) {
                    for (b<T> bVar : this.f12810c) {
                        bVar.i(j10);
                    }
                }
            }
        }
    }

    public static final class b<T> extends AtomicReference<hn.d> implements InterfaceC2367q<T>, hn.d {

        public static final long f12812g = -1185974347409665484L;

        public final a<T> f12813b;

        public final int f12814c;

        public final hn.c<? super T> f12815d;

        public boolean f12816e;

        public final AtomicLong f12817f = new AtomicLong();

        public b(a<T> aVar, int i10, hn.c<? super T> cVar) {
            this.f12813b = aVar;
            this.f12814c = i10;
            this.f12815d = cVar;
        }

        @Override
        public void a() {
            if (this.f12816e) {
                this.f12815d.a();
            } else if (!this.f12813b.b(this.f12814c)) {
                get().cancel();
            } else {
                this.f12816e = true;
                this.f12815d.a();
            }
        }

        @Override
        public void cancel() {
            Ue.j.a(this);
        }

        @Override
        public void h(T t10) {
            if (this.f12816e) {
                this.f12815d.h(t10);
            } else if (!this.f12813b.b(this.f12814c)) {
                get().cancel();
            } else {
                this.f12816e = true;
                this.f12815d.h(t10);
            }
        }

        @Override
        public void i(long j10) {
            Ue.j.b(this, this.f12817f, j10);
        }

        @Override
        public void j(hn.d dVar) {
            Ue.j.c(this, this.f12817f, dVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (this.f12816e) {
                this.f12815d.onError(th2);
            } else if (this.f12813b.b(this.f12814c)) {
                this.f12816e = true;
                this.f12815d.onError(th2);
            } else {
                get().cancel();
                Ye.a.Y(th2);
            }
        }
    }

    public C2713h(hn.b<? extends T>[] bVarArr, Iterable<? extends hn.b<? extends T>> iterable) {
        this.f12807c = bVarArr;
        this.f12808d = iterable;
    }

    @Override
    public void m6(hn.c<? super T> cVar) {
        int length;
        hn.b<? extends T>[] bVarArr = this.f12807c;
        if (bVarArr == null) {
            bVarArr = new hn.b[8];
            try {
                length = 0;
                for (hn.b<? extends T> bVar : this.f12808d) {
                    if (bVar == null) {
                        Ue.g.b(new NullPointerException("One of the sources is null"), cVar);
                        return;
                    }
                    if (length == bVarArr.length) {
                        hn.b<? extends T>[] bVarArr2 = new hn.b[(length >> 2) + length];
                        System.arraycopy(bVarArr, 0, bVarArr2, 0, length);
                        bVarArr = bVarArr2;
                    }
                    int i10 = length + 1;
                    bVarArr[length] = bVar;
                    length = i10;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ue.g.b(th2, cVar);
                return;
            }
        } else {
            length = bVarArr.length;
        }
        if (length == 0) {
            Ue.g.a(cVar);
        } else if (length == 1) {
            bVarArr[0].l(cVar);
        } else {
            new a(cVar, length).a(bVarArr);
        }
    }
}
