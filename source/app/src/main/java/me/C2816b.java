package Me;

import Be.AbstractC2368s;
import java.util.concurrent.atomic.AtomicBoolean;

public final class C2816b<T> extends AbstractC2368s<T> {

    public final Be.y<? extends T>[] f14983b;

    public final Iterable<? extends Be.y<? extends T>> f14984c;

    public static final class a<T> implements Be.v<T> {

        public final Be.v<? super T> f14985b;

        public final AtomicBoolean f14986c;

        public final De.b f14987d;

        public De.c f14988e;

        public a(Be.v<? super T> vVar, De.b bVar, AtomicBoolean atomicBoolean) {
            this.f14985b = vVar;
            this.f14987d = bVar;
            this.f14986c = atomicBoolean;
        }

        @Override
        public void a() {
            if (this.f14986c.compareAndSet(false, true)) {
                this.f14987d.b(this.f14988e);
                this.f14987d.dispose();
                this.f14985b.a();
            }
        }

        @Override
        public void b(T t10) {
            if (this.f14986c.compareAndSet(false, true)) {
                this.f14987d.b(this.f14988e);
                this.f14987d.dispose();
                this.f14985b.b(t10);
            }
        }

        @Override
        public void e(De.c cVar) {
            this.f14988e = cVar;
            this.f14987d.a(cVar);
        }

        @Override
        public void onError(Throwable th2) {
            if (!this.f14986c.compareAndSet(false, true)) {
                Ye.a.Y(th2);
                return;
            }
            this.f14987d.b(this.f14988e);
            this.f14987d.dispose();
            this.f14985b.onError(th2);
        }
    }

    public C2816b(Be.y<? extends T>[] yVarArr, Iterable<? extends Be.y<? extends T>> iterable) {
        this.f14983b = yVarArr;
        this.f14984c = iterable;
    }

    @Override
    public void t1(Be.v<? super T> vVar) {
        int length;
        Be.y<? extends T>[] yVarArr = this.f14983b;
        if (yVarArr == null) {
            yVarArr = new Be.y[8];
            try {
                length = 0;
                for (Be.y<? extends T> yVar : this.f14984c) {
                    if (yVar == null) {
                        Ge.e.g(new NullPointerException("One of the sources is null"), vVar);
                        return;
                    }
                    if (length == yVarArr.length) {
                        Be.y<? extends T>[] yVarArr2 = new Be.y[(length >> 2) + length];
                        System.arraycopy(yVarArr, 0, yVarArr2, 0, length);
                        yVarArr = yVarArr2;
                    }
                    int i10 = length + 1;
                    yVarArr[length] = yVar;
                    length = i10;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                Ge.e.g(th2, vVar);
                return;
            }
        } else {
            length = yVarArr.length;
        }
        De.b bVar = new De.b();
        vVar.e(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i11 = 0; i11 < length; i11++) {
            Be.y<? extends T> yVar2 = yVarArr[i11];
            if (bVar.d()) {
                return;
            }
            if (yVar2 == null) {
                bVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    vVar.onError(nullPointerException);
                    return;
                } else {
                    Ye.a.Y(nullPointerException);
                    return;
                }
            }
            yVar2.d(new a(vVar, bVar, atomicBoolean));
        }
        if (length == 0) {
            vVar.a();
        }
    }
}
