package uh;

import java.io.IOException;
import oh.C14549x;
import oh.InterfaceC14516g;

public class C15625p {

    public C14549x f120728a;

    public oh.N f120729b;

    public C15625p(oh.F f10) throws IOException {
        this.f120728a = (C14549x) f10.readObject();
        this.f120729b = (oh.N) f10.readObject();
    }

    public InterfaceC14516g a(int i10) throws IOException {
        oh.N n10 = this.f120729b;
        if (n10 != null) {
            return oh.V.F(n10, 0);
        }
        return null;
    }

    public C14549x b() {
        return this.f120728a;
    }
}
