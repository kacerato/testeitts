package uh;

import hi.C13486b;
import oh.AbstractC14545v;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class C15620k extends AbstractC14545v {

    public final C13486b f120694b;

    public final int f120695c;

    public final byte[] f120696d;

    public C15620k(C13486b c13486b, int i10) {
        this(c13486b, i10, null);
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h();
        c14518h.a(this.f120694b);
        c14518h.a(new C14539s(this.f120695c));
        if (this.f120696d != null) {
            c14518h.a(new K0(true, 0, (InterfaceC14516g) new C0(this.f120696d)));
        }
        return new G0(c14518h);
    }

    public C15620k(C13486b c13486b, int i10, byte[] bArr) {
        this.f120694b = c13486b;
        this.f120695c = i10;
        this.f120696d = bArr;
    }
}
