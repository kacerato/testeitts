package Um;

import org.apache.commons.math3.geometry.VectorFormat;

public abstract class v {

    public v f26354a = null;

    public v f26355b = null;

    public v f26356c = null;

    public v f26357d = null;

    public v f26358e = null;

    public abstract void c(C c10);

    public void d(v vVar) {
        vVar.o();
        vVar.m(this);
        v vVar2 = this.f26356c;
        if (vVar2 == null) {
            this.f26355b = vVar;
            this.f26356c = vVar;
        } else {
            vVar2.f26358e = vVar;
            vVar.f26357d = vVar2;
            this.f26356c = vVar;
        }
    }

    public v e() {
        return this.f26355b;
    }

    public v f() {
        return this.f26356c;
    }

    public v g() {
        return this.f26358e;
    }

    public v h() {
        return this.f26354a;
    }

    public v i() {
        return this.f26357d;
    }

    public void j(v vVar) {
        vVar.o();
        v vVar2 = this.f26358e;
        vVar.f26358e = vVar2;
        if (vVar2 != null) {
            vVar2.f26357d = vVar;
        }
        vVar.f26357d = this;
        this.f26358e = vVar;
        v vVar3 = this.f26354a;
        vVar.f26354a = vVar3;
        if (vVar.f26358e == null) {
            vVar3.f26356c = vVar;
        }
    }

    public void k(v vVar) {
        vVar.o();
        v vVar2 = this.f26357d;
        vVar.f26357d = vVar2;
        if (vVar2 != null) {
            vVar2.f26358e = vVar;
        }
        vVar.f26358e = this;
        this.f26357d = vVar;
        v vVar3 = this.f26354a;
        vVar.f26354a = vVar3;
        if (vVar.f26357d == null) {
            vVar3.f26355b = vVar;
        }
    }

    public void l(v vVar) {
        vVar.o();
        vVar.m(this);
        v vVar2 = this.f26355b;
        if (vVar2 == null) {
            this.f26355b = vVar;
            this.f26356c = vVar;
        } else {
            vVar2.f26357d = vVar;
            vVar.f26358e = vVar2;
            this.f26355b = vVar;
        }
    }

    public void m(v vVar) {
        this.f26354a = vVar;
    }

    public String n() {
        return "";
    }

    public void o() {
        v vVar = this.f26357d;
        if (vVar != null) {
            vVar.f26358e = this.f26358e;
        } else {
            v vVar2 = this.f26354a;
            if (vVar2 != null) {
                vVar2.f26355b = this.f26358e;
            }
        }
        v vVar3 = this.f26358e;
        if (vVar3 != null) {
            vVar3.f26357d = vVar;
        } else {
            v vVar4 = this.f26354a;
            if (vVar4 != null) {
                vVar4.f26356c = vVar;
            }
        }
        this.f26354a = null;
        this.f26358e = null;
        this.f26357d = null;
    }

    public String toString() {
        return getClass().getSimpleName() + "{" + n() + VectorFormat.DEFAULT_SUFFIX;
    }
}
