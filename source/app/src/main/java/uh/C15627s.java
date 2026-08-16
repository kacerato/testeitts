package uh;

import hi.C13486b;
import java.io.IOException;
import oh.C14549x;
import oh.InterfaceC14516g;

public class C15627s {

    public C14549x f120737a;

    public C13486b f120738b;

    public oh.N f120739c;

    public C15627s(oh.F f10) throws IOException {
        this.f120737a = (C14549x) f10.readObject();
        this.f120738b = C13486b.v(f10.readObject().r());
        this.f120739c = (oh.N) f10.readObject();
    }

    public C13486b a() {
        return this.f120738b;
    }

    public C14549x b() {
        return this.f120737a;
    }

    public InterfaceC14516g c(int i10) throws IOException {
        return oh.V.B(this.f120739c, 0, false, i10);
    }
}
