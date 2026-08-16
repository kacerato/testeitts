package Xf;

import java.util.Iterator;
import java.util.NoSuchElementException;
import nf.C14416i0;
import nf.C14418j0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class C3313n<T> extends AbstractC3314o<T> implements Iterator<T>, yf.f<P0>, Nf.a {

    public int f28790b;

    @Nullable
    public T f28791c;

    @Nullable
    public Iterator<? extends T> f28792d;

    @Nullable
    public yf.f<? super P0> f28793e;

    @Override
    @Nullable
    public Object a(T t10, @NotNull yf.f<? super P0> fVar) {
        this.f28791c = t10;
        this.f28790b = 3;
        this.f28793e = fVar;
        Object l10 = Af.d.l();
        if (l10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return l10 == Af.d.l() ? l10 : P0.f98194a;
    }

    @Override
    @Nullable
    public Object f(@NotNull Iterator<? extends T> it, @NotNull yf.f<? super P0> fVar) {
        if (!it.hasNext()) {
            return P0.f98194a;
        }
        this.f28792d = it;
        this.f28790b = 2;
        this.f28793e = fVar;
        Object l10 = Af.d.l();
        if (l10 == Af.d.l()) {
            Bf.h.c(fVar);
        }
        return l10 == Af.d.l() ? l10 : P0.f98194a;
    }

    public final Throwable g() {
        int i10 = this.f28790b;
        if (i10 == 4) {
            return new NoSuchElementException();
        }
        if (i10 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f28790b);
    }

    @Override
    @NotNull
    public yf.j getContext() {
        return yf.l.f130251b;
    }

    @Override
    public boolean hasNext() {
        while (true) {
            int i10 = this.f28790b;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2 || i10 == 3) {
                        return true;
                    }
                    if (i10 == 4) {
                        return false;
                    }
                    throw g();
                }
                Iterator<? extends T> it = this.f28792d;
                kotlin.jvm.internal.M.m(it);
                if (it.hasNext()) {
                    this.f28790b = 2;
                    return true;
                }
                this.f28792d = null;
            }
            this.f28790b = 5;
            yf.f<? super P0> fVar = this.f28793e;
            kotlin.jvm.internal.M.m(fVar);
            this.f28793e = null;
            P0 p02 = P0.f98194a;
            C14416i0.a aVar = C14416i0.f98201c;
            fVar.resumeWith(C14416i0.b(p02));
        }
    }

    @Nullable
    public final yf.f<P0> j() {
        return this.f28793e;
    }

    public final T m() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    public final void n(@Nullable yf.f<? super P0> fVar) {
        this.f28793e = fVar;
    }

    @Override
    public T next() {
        int i10 = this.f28790b;
        if (i10 == 0 || i10 == 1) {
            return m();
        }
        if (i10 == 2) {
            this.f28790b = 1;
            Iterator<? extends T> it = this.f28792d;
            kotlin.jvm.internal.M.m(it);
            return it.next();
        }
        if (i10 != 3) {
            throw g();
        }
        this.f28790b = 0;
        T t10 = this.f28791c;
        this.f28791c = null;
        return t10;
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void resumeWith(@NotNull Object obj) {
        C14418j0.n(obj);
        this.f28790b = 4;
    }
}
