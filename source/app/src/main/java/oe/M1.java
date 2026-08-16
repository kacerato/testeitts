package Oe;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class M1<T, R> extends Be.B<R> {

    public final Be.G<? extends T>[] f19057b;

    public final Iterable<? extends Be.G<? extends T>> f19058c;

    public final Fe.o<? super Object[], ? extends R> f19059d;

    public final int f19060e;

    public final boolean f19061f;

    public static final class a<T, R> extends AtomicInteger implements De.c {

        public static final long f19062h = 2983708048395377667L;

        public final Be.I<? super R> f19063b;

        public final Fe.o<? super Object[], ? extends R> f19064c;

        public final b<T, R>[] f19065d;

        public final T[] f19066e;

        public final boolean f19067f;

        public volatile boolean f19068g;

        public a(Be.I<? super R> i10, Fe.o<? super Object[], ? extends R> oVar, int i11, boolean z10) {
            this.f19063b = i10;
            this.f19064c = oVar;
            this.f19065d = new b[i11];
            this.f19066e = (T[]) new Object[i11];
            this.f19067f = z10;
        }

        public void a() {
            e();
            b();
        }

        public void b() {
            for (b<T, R> bVar : this.f19065d) {
                bVar.b();
            }
        }

        public boolean c(boolean z10, boolean z11, Be.I<? super R> i10, boolean z12, b<?, ?> bVar) {
            if (this.f19068g) {
                a();
                return true;
            }
            if (!z10) {
                return false;
            }
            if (z12) {
                if (!z11) {
                    return false;
                }
                Throwable th2 = bVar.f19072e;
                this.f19068g = true;
                a();
                if (th2 != null) {
                    i10.onError(th2);
                } else {
                    i10.a();
                }
                return true;
            }
            Throwable th3 = bVar.f19072e;
            if (th3 != null) {
                this.f19068g = true;
                a();
                i10.onError(th3);
                return true;
            }
            if (!z11) {
                return false;
            }
            this.f19068g = true;
            a();
            i10.a();
            return true;
        }

        @Override
        public boolean d() {
            return this.f19068g;
        }

        @Override
        public void dispose() {
            if (this.f19068g) {
                return;
            }
            this.f19068g = true;
            b();
            if (getAndIncrement() == 0) {
                e();
            }
        }

        public void e() {
            for (b<T, R> bVar : this.f19065d) {
                bVar.f19070c.clear();
            }
        }

        public void f() {
            Throwable th2;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T, R>[] bVarArr = this.f19065d;
            Be.I<? super R> i10 = this.f19063b;
            T[] tArr = this.f19066e;
            boolean z10 = this.f19067f;
            int i11 = 1;
            while (true) {
                int i12 = 0;
                int i13 = 0;
                for (b<T, R> bVar : bVarArr) {
                    if (tArr[i13] == null) {
                        boolean z11 = bVar.f19071d;
                        T poll = bVar.f19070c.poll();
                        boolean z12 = poll == null;
                        if (c(z11, z12, i10, z10, bVar)) {
                            return;
                        }
                        if (z12) {
                            i12++;
                        } else {
                            tArr[i13] = poll;
                        }
                    } else if (bVar.f19071d && !z10 && (th2 = bVar.f19072e) != null) {
                        this.f19068g = true;
                        a();
                        i10.onError(th2);
                        return;
                    }
                    i13++;
                }
                if (i12 != 0) {
                    i11 = addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                } else {
                    try {
                        i10.h((Object) He.b.g(this.f19064c.apply(tArr.clone()), "The zipper returned a null value"));
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th3) {
                        io.reactivex.exceptions.a.b(th3);
                        a();
                        i10.onError(th3);
                        return;
                    }
                }
            }
        }

        public void g(Be.G<? extends T>[] gArr, int i10) {
            b<T, R>[] bVarArr = this.f19065d;
            int length = bVarArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                bVarArr[i11] = new b<>(this, i10);
            }
            lazySet(0);
            this.f19063b.e(this);
            for (int i12 = 0; i12 < length && !this.f19068g; i12++) {
                gArr[i12].c(bVarArr[i12]);
            }
        }
    }

    public static final class b<T, R> implements Be.I<T> {

        public final a<T, R> f19069b;

        public final Re.c<T> f19070c;

        public volatile boolean f19071d;

        public Throwable f19072e;

        public final AtomicReference<De.c> f19073f = new AtomicReference<>();

        public b(a<T, R> aVar, int i10) {
            this.f19069b = aVar;
            this.f19070c = new Re.c<>(i10);
        }

        @Override
        public void a() {
            this.f19071d = true;
            this.f19069b.f();
        }

        public void b() {
            Ge.d.a(this.f19073f);
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f19073f, cVar);
        }

        @Override
        public void h(T t10) {
            this.f19070c.offer(t10);
            this.f19069b.f();
        }

        @Override
        public void onError(Throwable th2) {
            this.f19072e = th2;
            this.f19071d = true;
            this.f19069b.f();
        }
    }

    public M1(Be.G<? extends T>[] gArr, Iterable<? extends Be.G<? extends T>> iterable, Fe.o<? super Object[], ? extends R> oVar, int i10, boolean z10) {
        this.f19057b = gArr;
        this.f19058c = iterable;
        this.f19059d = oVar;
        this.f19060e = i10;
        this.f19061f = z10;
    }

    @Override
    public void J5(Be.I<? super R> i10) {
        int length;
        Be.G<? extends T>[] gArr = this.f19057b;
        if (gArr == null) {
            gArr = new Be.B[8];
            length = 0;
            for (Be.G<? extends T> g10 : this.f19058c) {
                if (length == gArr.length) {
                    Be.G<? extends T>[] gArr2 = new Be.G[(length >> 2) + length];
                    System.arraycopy(gArr, 0, gArr2, 0, length);
                    gArr = gArr2;
                }
                gArr[length] = g10;
                length++;
            }
        } else {
            length = gArr.length;
        }
        if (length == 0) {
            Ge.e.c(i10);
        } else {
            new a(i10, this.f19059d, length, this.f19061f).g(gArr, this.f19060e);
        }
    }
}
