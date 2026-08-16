package sd;

import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import qd.C15060c;
import qd.InterfaceC15056A;
import qd.InterfaceC15065h;
import qd.InterfaceC15066i;
import qd.InterfaceC15068k;
import qd.InterfaceRunnableC15067j;
import qd.J;
import qd.K;
import qd.M;
import qd.p;
import qd.y;
import qd.z;
import td.C15398d;

public class C15274c<T> {

    public final y<T> f109433a;

    public final Executor f109434b;

    public final C15273b<T> f109435c;

    public final AtomicBoolean f109436d;

    public p f109437e;

    public C15274c(InterfaceC15065h<T> interfaceC15065h, int i10, Executor executor) {
        this(y.q(interfaceC15065h, i10), executor);
    }

    public C15275d<T> a(InterfaceC15066i<T>... interfaceC15066iArr) {
        z[] zVarArr = new z[interfaceC15066iArr.length];
        int length = interfaceC15066iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            zVarArr[i10] = this.f109435c.i(interfaceC15066iArr[i10]);
        }
        return new C15275d<>(this, this.f109435c, zVarArr);
    }

    public C15275d<T> b(InterfaceRunnableC15067j... interfaceRunnableC15067jArr) {
        for (InterfaceRunnableC15067j interfaceRunnableC15067j : interfaceRunnableC15067jArr) {
            this.f109435c.a(interfaceRunnableC15067j);
        }
        return new C15275d<>(this, this.f109435c, C15398d.e(interfaceRunnableC15067jArr));
    }

    public final void c() {
        if (this.f109436d.get()) {
            throw new IllegalStateException("All event handlers must be added before calling starts.");
        }
    }

    public final void d() {
        if (!this.f109436d.compareAndSet(false, true)) {
            throw new IllegalStateException("Disruptor.start() must only be called once.");
        }
    }

    public C15275d<T> e(z[] zVarArr, InterfaceC15066i<T>[] interfaceC15066iArr) {
        c();
        int length = interfaceC15066iArr.length;
        z[] zVarArr2 = new z[length];
        InterfaceC15056A i10 = this.f109433a.i(zVarArr);
        int length2 = interfaceC15066iArr.length;
        for (int i11 = 0; i11 < length2; i11++) {
            InterfaceC15066i<T> interfaceC15066i = interfaceC15066iArr[i11];
            C15060c c15060c = new C15060c(this.f109433a, i10, interfaceC15066i);
            p pVar = this.f109437e;
            if (pVar != null) {
                c15060c.d(pVar);
            }
            this.f109435c.b(c15060c, interfaceC15066i, i10);
            zVarArr2[i11] = c15060c.R();
        }
        if (length > 0) {
            this.f109435c.j(zVarArr);
        }
        return new C15275d<>(this, this.f109435c, zVarArr2);
    }

    public C15275d<T> f(z[] zVarArr, K<T>[] kArr) {
        InterfaceC15056A i10 = this.f109433a.i(zVarArr);
        M<T> m10 = new M<>(this.f109433a, i10, this.f109437e, kArr);
        this.f109435c.c(m10, i10);
        return new C15275d<>(this, this.f109435c, m10.b());
    }

    public T g(long j10) {
        return this.f109433a.u(j10);
    }

    public InterfaceC15056A h(InterfaceC15066i<T> interfaceC15066i) {
        return this.f109435c.d(interfaceC15066i);
    }

    public long i() {
        return this.f109433a.m();
    }

    public long j() {
        return this.f109433a.getCursor();
    }

    public y<T> k() {
        return this.f109433a;
    }

    public void l() {
        Iterator<InterfaceC15272a> it = this.f109435c.iterator();
        while (it.hasNext()) {
            it.next().g();
        }
    }

    public C15275d<T> m(InterfaceC15066i<T>... interfaceC15066iArr) {
        return e(new z[0], interfaceC15066iArr);
    }

    public C15275d<T> n(InterfaceRunnableC15067j... interfaceRunnableC15067jArr) {
        for (InterfaceRunnableC15067j interfaceRunnableC15067j : interfaceRunnableC15067jArr) {
            this.f109435c.a(interfaceRunnableC15067j);
        }
        return new C15275d<>(this, this.f109435c, C15398d.e(interfaceRunnableC15067jArr));
    }

    public C15275d<T> o(K<T>... kArr) {
        return f(new z[0], kArr);
    }

    public C15277f<?> p(InterfaceC15066i<T> interfaceC15066i) {
        return new C15277f<>(interfaceC15066i, this.f109435c);
    }

    public void q(p pVar) {
        this.f109437e = pVar;
    }

    public final boolean r() {
        long cursor = this.f109433a.getCursor();
        for (z zVar : this.f109435c.h()) {
            if (cursor > zVar.c()) {
                return true;
            }
        }
        return false;
    }

    public void s(InterfaceC15068k<T> interfaceC15068k) {
        this.f109433a.A(interfaceC15068k);
    }

    public void t() {
        do {
        } while (r());
        l();
    }

    public y<T> u() {
        this.f109433a.k(this.f109435c.h());
        d();
        Iterator<InterfaceC15272a> it = this.f109435c.iterator();
        while (it.hasNext()) {
            it.next().b(this.f109434b);
        }
        return this.f109433a;
    }

    public C15274c(InterfaceC15065h<T> interfaceC15065h, int i10, Executor executor, EnumC15278g enumC15278g, J j10) {
        this(y.p(enumC15278g, interfaceC15065h, i10, j10), executor);
    }

    public C15274c(y<T> yVar, Executor executor) {
        this.f109435c = new C15273b<>();
        this.f109436d = new AtomicBoolean(false);
        this.f109433a = yVar;
        this.f109434b = executor;
    }
}
