package uh;

import hi.C13486b;
import java.io.IOException;
import oh.C14539s;

public class C15623n {

    public C14539s f120722a;

    public C13486b f120723b;

    public C15625p f120724c;

    public C15623n(oh.F f10) throws IOException {
        this.f120722a = (C14539s) f10.readObject();
        this.f120723b = C13486b.v(f10.readObject().r());
        this.f120724c = new C15625p((oh.F) f10.readObject());
    }

    public C13486b a() {
        return this.f120723b;
    }

    public C15625p b() {
        return this.f120724c;
    }

    public C14539s c() {
        return this.f120722a;
    }
}
