package Oe;

import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public final class H0<T> extends Ve.a<T> implements Ie.g<T> {

    public final Be.G<T> f18888b;

    public final AtomicReference<b<T>> f18889c;

    public final Be.G<T> f18890d;

    public static final class a<T> extends AtomicReference<Object> implements De.c {

        public static final long f18891c = -1100270633763673112L;

        public final Be.I<? super T> f18892b;

        public a(Be.I<? super T> i10) {
            this.f18892b = i10;
        }

        public void a(b<T> bVar) {
            if (compareAndSet(null, bVar)) {
                return;
            }
            bVar.c(this);
        }

        @Override
        public boolean d() {
            return get() == this;
        }

        @Override
        public void dispose() {
            Object andSet = getAndSet(this);
            if (andSet == null || andSet == this) {
                return;
            }
            ((b) andSet).c(this);
        }
    }

    public static final class b<T> implements Be.I<T>, De.c {

        public static final a[] f18893f = new a[0];

        public static final a[] f18894g = new a[0];

        public final AtomicReference<b<T>> f18895b;

        public final AtomicReference<De.c> f18898e = new AtomicReference<>();

        public final AtomicReference<a<T>[]> f18896c = new AtomicReference<>(f18893f);

        public final AtomicBoolean f18897d = new AtomicBoolean();

        public b(AtomicReference<b<T>> atomicReference) {
            this.f18895b = atomicReference;
        }

        @Override
        public void a() {
            androidx.lifecycle.c.a(this.f18895b, this, null);
            for (a<T> aVar : this.f18896c.getAndSet(f18894g)) {
                aVar.f18892b.a();
            }
        }

        public boolean b(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f18896c.get();
                if (aVarArr == f18894g) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!androidx.lifecycle.c.a(this.f18896c, aVarArr, aVarArr2));
            return true;
        }

        public void c(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f18896c.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    } else if (aVarArr[i10].equals(aVar)) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr2 = f18893f;
                } else {
                    a[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i10);
                    System.arraycopy(aVarArr, i10 + 1, aVarArr3, i10, (length - i10) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!androidx.lifecycle.c.a(this.f18896c, aVarArr, aVarArr2));
        }

        @Override
        public boolean d() {
            return this.f18896c.get() == f18894g;
        }

        @Override
        public void dispose() {
            AtomicReference<a<T>[]> atomicReference = this.f18896c;
            a<T>[] aVarArr = f18894g;
            if (atomicReference.getAndSet(aVarArr) != aVarArr) {
                androidx.lifecycle.c.a(this.f18895b, this, null);
                Ge.d.a(this.f18898e);
            }
        }

        @Override
        public void e(De.c cVar) {
            Ge.d.h(this.f18898e, cVar);
        }

        @Override
        public void h(T t10) {
            for (a<T> aVar : this.f18896c.get()) {
                aVar.f18892b.h(t10);
            }
        }

        @Override
        public void onError(Throwable th2) {
            androidx.lifecycle.c.a(this.f18895b, this, null);
            a<T>[] andSet = this.f18896c.getAndSet(f18894g);
            if (andSet.length == 0) {
                Ye.a.Y(th2);
                return;
            }
            for (a<T> aVar : andSet) {
                aVar.f18892b.onError(th2);
            }
        }
    }

    public static final class c<T> implements Be.G<T> {

        public final AtomicReference<b<T>> f18899b;

        public c(AtomicReference<b<T>> atomicReference) {
            this.f18899b = atomicReference;
        }

        @Override
        public void c(Be.I<? super T> i10) {
            a aVar = new a(i10);
            i10.e(aVar);
            while (true) {
                b<T> bVar = this.f18899b.get();
                if (bVar == null || bVar.d()) {
                    b<T> bVar2 = new b<>(this.f18899b);
                    if (androidx.lifecycle.c.a(this.f18899b, bVar, bVar2)) {
                        bVar = bVar2;
                    } else {
                        continue;
                    }
                }
                if (bVar.b(aVar)) {
                    aVar.a(bVar);
                    return;
                }
            }
        }
    }

    public H0(Be.G<T> g10, Be.G<T> g11, AtomicReference<b<T>> atomicReference) {
        this.f18890d = g10;
        this.f18888b = g11;
        this.f18889c = atomicReference;
    }

    public static <T> Ve.a<T> u8(Be.G<T> g10) {
        AtomicReference atomicReference = new AtomicReference();
        return Ye.a.U(new H0(new c(atomicReference), g10, atomicReference));
    }

    @Override
    public void J5(Be.I<? super T> i10) {
        this.f18890d.c(i10);
    }

    @Override
    public void n8(Fe.g<? super De.c> gVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f18889c.get();
            if (bVar != null && !bVar.d()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f18889c);
            if (androidx.lifecycle.c.a(this.f18889c, bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z10 = false;
        if (!bVar.f18897d.get() && bVar.f18897d.compareAndSet(false, true)) {
            z10 = true;
        }
        try {
            gVar.accept(bVar);
            if (z10) {
                this.f18888b.c(bVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            throw ExceptionHelper.f(th2);
        }
    }

    @Override
    public Be.G<T> source() {
        return this.f18888b;
    }
}
