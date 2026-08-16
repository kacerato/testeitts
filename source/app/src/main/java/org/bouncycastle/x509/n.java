package org.bouncycastle.x509;

public class n implements org.bouncycastle.util.r {

    public o f102412b;

    public o f102413c;

    public p f102414d;

    @Override
    public boolean Z2(Object obj) {
        try {
            if (!(obj instanceof p)) {
                return false;
            }
            p pVar = (p) obj;
            o oVar = this.f102412b;
            if (oVar != null && !oVar.Z2(pVar.b())) {
                return false;
            }
            o oVar2 = this.f102413c;
            if (oVar2 != null && !oVar2.Z2(pVar.c())) {
                return false;
            }
            p pVar2 = this.f102414d;
            if (pVar2 != null) {
                return pVar2.equals(obj);
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public p a() {
        return this.f102414d;
    }

    public o b() {
        return this.f102412b;
    }

    public o c() {
        return this.f102413c;
    }

    @Override
    public Object clone() {
        n nVar = new n();
        nVar.f102414d = this.f102414d;
        o oVar = this.f102412b;
        if (oVar != null) {
            nVar.e((o) oVar.clone());
        }
        o oVar2 = this.f102413c;
        if (oVar2 != null) {
            nVar.f((o) oVar2.clone());
        }
        return nVar;
    }

    public void d(p pVar) {
        this.f102414d = pVar;
    }

    public void e(o oVar) {
        this.f102412b = oVar;
    }

    public void f(o oVar) {
        this.f102413c = oVar;
    }
}
