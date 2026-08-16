package Xh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;

public class w extends AbstractC14545v {

    public C14539s f29162b;

    public AbstractC14551y f29163c;

    public w(int i10, byte[] bArr) {
        this.f29162b = new C14539s(i10);
        this.f29163c = new C0(bArr);
    }

    public static w v(Object obj) {
        if (obj instanceof w) {
            return (w) obj;
        }
        if (obj != null) {
            return new w(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        C14518h c14518h = new C14518h(2);
        C14539s c14539s = this.f29162b;
        if (c14539s != null) {
            c14518h.a(c14539s);
        }
        c14518h.a(this.f29163c);
        return new G0(c14518h);
    }

    public byte[] u() {
        return this.f29163c.H();
    }

    public BigInteger x() {
        C14539s c14539s = this.f29162b;
        if (c14539s == null) {
            return null;
        }
        return c14539s.I();
    }

    public w(oh.E e10) {
        InterfaceC14516g I10;
        if (e10.size() == 1) {
            this.f29162b = null;
            I10 = e10.I(0);
        } else {
            this.f29162b = (C14539s) e10.I(0);
            I10 = e10.I(1);
        }
        this.f29163c = (AbstractC14551y) I10;
    }

    public w(byte[] bArr) {
        this.f29162b = null;
        this.f29163c = new C0(bArr);
    }
}
