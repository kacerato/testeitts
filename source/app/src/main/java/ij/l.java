package ij;

import ij.s;
import java.net.URL;

public class l {

    public final String f92328a;

    public URL f92329b;

    public s.a f92330c;

    public j f92331d;

    public p f92332e;

    public InterfaceC13752g f92333f;

    public byte[] f92334g;

    public l(k kVar) {
        this.f92328a = kVar.f92321a;
        this.f92329b = kVar.f92322b;
        this.f92332e = kVar.f92327g;
        this.f92334g = kVar.f92324d;
        this.f92331d = kVar.f92325e;
        this.f92330c = (s.a) kVar.f92323c.clone();
        this.f92333f = kVar.a();
    }

    public l a(String str, String str2) {
        this.f92330c.b(str, str2);
        return this;
    }

    public k b() {
        return new k(this.f92328a, this.f92329b, this.f92334g, this.f92331d, this.f92332e, this.f92330c, this.f92333f);
    }

    public l c(String str, String str2) {
        this.f92330c.i(str, str2);
        return this;
    }

    public l d(InterfaceC13752g interfaceC13752g) {
        this.f92333f = interfaceC13752g;
        return this;
    }

    public l e(p pVar) {
        this.f92332e = pVar;
        return this;
    }

    public l f(byte[] bArr) {
        this.f92334g = org.bouncycastle.util.a.p(bArr);
        return this;
    }

    public l g(j jVar) {
        this.f92331d = jVar;
        return this;
    }

    public l h(URL url) {
        this.f92329b = url;
        return this;
    }

    public l(String str, URL url) {
        this.f92328a = str;
        this.f92329b = url;
        this.f92330c = new s.a();
    }
}
