package qe;

import Um.A;
import Um.B;
import Um.C3154c;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import qe.InterfaceC15084m;

public class C15086o implements InterfaceC15084m {

    public final C15078g f106168a;

    public final InterfaceC15093v f106169b;

    public final C15097z f106170c;

    public final Map<Class<? extends Um.v>, InterfaceC15084m.c<? extends Um.v>> f106171d;

    public final InterfaceC15084m.a f106172e;

    public static class a implements InterfaceC15084m.b {

        public final Map<Class<? extends Um.v>, InterfaceC15084m.c<? extends Um.v>> f106173a = new HashMap();

        public InterfaceC15084m.a f106174b;

        @Override
        @NonNull
        public InterfaceC15084m.b a(@NonNull InterfaceC15084m.a aVar) {
            this.f106174b = aVar;
            return this;
        }

        @Override
        @NonNull
        public <N extends Um.v> InterfaceC15084m.b b(@NonNull Class<N> cls, @Nullable InterfaceC15084m.c<? super N> cVar) {
            if (cVar == null) {
                this.f106173a.remove(cls);
            } else {
                this.f106173a.put(cls, cVar);
            }
            return this;
        }

        @Override
        @NonNull
        public InterfaceC15084m c(@NonNull C15078g c15078g, @NonNull InterfaceC15093v interfaceC15093v) {
            InterfaceC15084m.a aVar = this.f106174b;
            if (aVar == null) {
                aVar = new C15073b();
            }
            return new C15086o(c15078g, interfaceC15093v, new C15097z(), Collections.unmodifiableMap(this.f106173a), aVar);
        }
    }

    public C15086o(@NonNull C15078g c15078g, @NonNull InterfaceC15093v interfaceC15093v, @NonNull C15097z c15097z, @NonNull Map<Class<? extends Um.v>, InterfaceC15084m.c<? extends Um.v>> map, @NonNull InterfaceC15084m.a aVar) {
        this.f106168a = c15078g;
        this.f106169b = interfaceC15093v;
        this.f106170c = c15097z;
        this.f106171d = map;
        this.f106172e = aVar;
    }

    @Override
    public void A(Um.o oVar) {
        a(oVar);
    }

    @Override
    public void B(Um.z zVar) {
        a(zVar);
    }

    @Override
    public void C(@NonNull Um.v vVar) {
        this.f106172e.b(this, vVar);
    }

    @Override
    public void D(Um.m mVar) {
        a(mVar);
    }

    @Override
    public void F() {
        this.f106170c.append('\n');
    }

    @Override
    public <N extends Um.v> void G(@NonNull N n10, int i10) {
        m(n10.getClass(), i10);
    }

    @Override
    public void H(Um.n nVar) {
        a(nVar);
    }

    @Override
    public void I(Um.l lVar) {
        a(lVar);
    }

    @Override
    public void J(Um.g gVar) {
        a(gVar);
    }

    @Override
    public void K(Um.d dVar) {
        a(dVar);
    }

    @Override
    public void L(Um.q qVar) {
        a(qVar);
    }

    @Override
    public void M(B b10) {
        a(b10);
    }

    public final void a(@NonNull Um.v vVar) {
        InterfaceC15084m.c<? extends Um.v> cVar = this.f106171d.get(vVar.getClass());
        if (cVar != null) {
            cVar.a(this, vVar);
        } else {
            i(vVar);
        }
    }

    @Override
    public void b(int i10, @Nullable Object obj) {
        C15097z c15097z = this.f106170c;
        C15097z.o(c15097z, obj, i10, c15097z.length());
    }

    @Override
    public void c(Um.k kVar) {
        a(kVar);
    }

    @Override
    public void clear() {
        this.f106169b.e();
        this.f106170c.clear();
    }

    @Override
    public <N extends Um.v> void d(@NonNull Class<N> cls, int i10) {
        InterfaceC15096y a10 = this.f106168a.f().a(cls);
        if (a10 != null) {
            b(i10, a10.a(this.f106168a, this.f106169b));
        }
    }

    @Override
    public void e(Um.e eVar) {
        a(eVar);
    }

    @Override
    public void f(Um.p pVar) {
        a(pVar);
    }

    @Override
    public void g(Um.y yVar) {
        a(yVar);
    }

    @Override
    @NonNull
    public InterfaceC15093v h() {
        return this.f106169b;
    }

    @Override
    public void i(@NonNull Um.v vVar) {
        Um.v e10 = vVar.e();
        while (e10 != null) {
            Um.v g10 = e10.g();
            e10.c(this);
            e10 = g10;
        }
    }

    @Override
    public void j(Um.u uVar) {
        a(uVar);
    }

    @Override
    public void k(Um.i iVar) {
        a(iVar);
    }

    @Override
    public void l(Um.s sVar) {
        a(sVar);
    }

    @Override
    public int length() {
        return this.f106170c.length();
    }

    @Override
    public <N extends Um.v> void m(@NonNull Class<N> cls, int i10) {
        b(i10, this.f106168a.f().b(cls).a(this.f106168a, this.f106169b));
    }

    @Override
    public <N extends Um.v> void n(@NonNull N n10, int i10) {
        d(n10.getClass(), i10);
    }

    @Override
    @NonNull
    public C15078g o() {
        return this.f106168a;
    }

    @Override
    public void p() {
        if (this.f106170c.length() <= 0 || '\n' == this.f106170c.j()) {
            return;
        }
        this.f106170c.append('\n');
    }

    @Override
    public void q(@NonNull Um.v vVar) {
        this.f106172e.a(this, vVar);
    }

    @Override
    public void r(Um.x xVar) {
        a(xVar);
    }

    @Override
    public void s(C3154c c3154c) {
        a(c3154c);
    }

    @Override
    public void t(Um.j jVar) {
        a(jVar);
    }

    @Override
    public void u(Um.w wVar) {
        a(wVar);
    }

    @Override
    public void v(A a10) {
        a(a10);
    }

    @Override
    @NonNull
    public C15097z w() {
        return this.f106170c;
    }

    @Override
    public boolean x(@NonNull Um.v vVar) {
        return vVar.g() != null;
    }

    @Override
    public void y(Um.r rVar) {
        a(rVar);
    }

    @Override
    public void z(Um.f fVar) {
        a(fVar);
    }
}
