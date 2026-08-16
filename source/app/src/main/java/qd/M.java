package qd;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import td.C15398d;

public final class M<T> {

    public final AtomicBoolean f106078a = new AtomicBoolean(false);

    public final z f106079b = new z(-1);

    public final y<T> f106080c;

    public final L<?>[] f106081d;

    public M(y<T> yVar, InterfaceC15056A interfaceC15056A, p pVar, K<T>... kArr) {
        this.f106080c = yVar;
        int length = kArr.length;
        this.f106081d = new L[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.f106081d[i10] = new L<>(yVar, interfaceC15056A, kArr[i10], pVar, this.f106079b);
        }
    }

    public void a() {
        z[] b10 = b();
        while (this.f106080c.getCursor() > C15398d.c(b10)) {
            Thread.yield();
        }
        for (L<?> l10 : this.f106081d) {
            l10.g();
        }
        this.f106078a.set(false);
    }

    public z[] b() {
        L<?>[] lArr = this.f106081d;
        z[] zVarArr = new z[lArr.length];
        int length = lArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            zVarArr[i10] = this.f106081d[i10].R();
        }
        return zVarArr;
    }

    public void c() {
        for (L<?> l10 : this.f106081d) {
            l10.g();
        }
        this.f106078a.set(false);
    }

    public y<T> d(Executor executor) {
        if (!this.f106078a.compareAndSet(false, true)) {
            throw new IllegalStateException("WorkerPool has already been started and cannot be restarted until halted.");
        }
        long cursor = this.f106080c.getCursor();
        this.f106079b.e(cursor);
        for (L<?> l10 : this.f106081d) {
            l10.R().e(cursor);
            executor.execute(l10);
        }
        return this.f106080c;
    }

    public M(InterfaceC15065h<T> interfaceC15065h, p pVar, K<T>... kArr) {
        y<T> r10 = y.r(interfaceC15065h, 1024, new C15061d());
        this.f106080c = r10;
        InterfaceC15056A i10 = r10.i(new z[0]);
        int length = kArr.length;
        this.f106081d = new L[length];
        for (int i11 = 0; i11 < length; i11++) {
            this.f106081d[i11] = new L<>(this.f106080c, i10, kArr[i11], pVar, this.f106079b);
        }
        this.f106080c.k(b());
    }
}
