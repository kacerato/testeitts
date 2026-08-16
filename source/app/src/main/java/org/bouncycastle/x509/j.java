package org.bouncycastle.x509;

import hi.C13495g;
import oh.AbstractC14545v;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.G;
import oh.I0;
import oh.InterfaceC14516g;

public class j extends AbstractC14545v {

    public C13495g f102398b;

    public j(String str, InterfaceC14516g interfaceC14516g) {
        this.f102398b = new C13495g(new C14549x(str), new I0(interfaceC14516g));
    }

    @Override
    public B r() {
        return this.f102398b.r();
    }

    public String u() {
        return this.f102398b.u().J();
    }

    public InterfaceC14516g[] v() {
        G v10 = this.f102398b.v();
        InterfaceC14516g[] interfaceC14516gArr = new InterfaceC14516g[v10.size()];
        for (int i10 = 0; i10 != v10.size(); i10++) {
            interfaceC14516gArr[i10] = v10.H(i10);
        }
        return interfaceC14516gArr;
    }

    public j(String str, C14518h c14518h) {
        this.f102398b = new C13495g(new C14549x(str), new I0(c14518h));
    }

    public j(InterfaceC14516g interfaceC14516g) {
        this.f102398b = C13495g.y(interfaceC14516g);
    }
}
