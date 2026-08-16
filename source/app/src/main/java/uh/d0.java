package uh;

import java.io.IOException;
import oh.AbstractC14536q;
import oh.C14539s;
import oh.C14554z0;
import oh.InterfaceC14516g;
import oh.InterfaceC14553z;

public class d0 {

    public C14539s f120656a;

    public AbstractC14536q f120657b;

    public G f120658c;

    public InterfaceC14553z f120659d;

    public C15631w f120660e;

    public oh.F f120661f;

    public d0(oh.F f10) throws IOException {
        this.f120661f = f10;
        this.f120656a = C14539s.F(f10.readObject());
        InterfaceC14516g readObject = f10.readObject();
        if (readObject instanceof AbstractC14536q) {
            this.f120657b = AbstractC14536q.F(readObject);
            readObject = f10.readObject();
        }
        if ((readObject instanceof G) || (readObject instanceof oh.F)) {
            this.f120658c = G.w(readObject.r());
            readObject = f10.readObject();
        }
        if (readObject instanceof InterfaceC14553z) {
            this.f120659d = (InterfaceC14553z) readObject;
        }
    }

    public static d0 d(Object obj) throws IOException {
        if (obj instanceof oh.E) {
            return new d0(((oh.E) obj).L());
        }
        if (obj instanceof oh.F) {
            return new d0((oh.F) obj);
        }
        return null;
    }

    public InterfaceC14553z a() {
        return this.f120659d;
    }

    public C14554z0 b() {
        AbstractC14536q abstractC14536q = this.f120657b;
        return (abstractC14536q == null || (abstractC14536q instanceof C14554z0)) ? (C14554z0) abstractC14536q : new C14554z0(this.f120657b.getString(), false);
    }

    public AbstractC14536q c() {
        return this.f120657b;
    }

    public G e() {
        return this.f120658c;
    }

    public C15631w f() throws IOException {
        if (this.f120660e == null) {
            this.f120660e = C15631w.v(this.f120661f.readObject().r());
        }
        return this.f120660e;
    }

    public int g() {
        return this.f120656a.I().intValue();
    }
}
