package Ah;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.M;

public class e extends AbstractC14545v {

    public static final int f610e = 192;

    public static final int f611f = 128;

    public static final int f612g = 64;

    public static final int f613h = 0;

    public static final int f614i = 2;

    public static final int f615j = 1;

    public C14549x f618b;

    public byte f619c;

    public static final C14549x f609d = h.f624a.E("3.1.2.1");

    public static Map f616k = new HashMap();

    public static a f617l = new a();

    static {
        f616k.put(org.bouncycastle.util.k.j(2), "RADG4");
        f616k.put(org.bouncycastle.util.k.j(1), "RADG3");
        f617l.put(org.bouncycastle.util.k.j(192), "CVCA");
        f617l.put(org.bouncycastle.util.k.j(128), "DV_DOMESTIC");
        f617l.put(org.bouncycastle.util.k.j(64), "DV_FOREIGN");
        f617l.put(org.bouncycastle.util.k.j(0), "IS");
    }

    public e(C14549x c14549x, int i10) throws IOException {
        A(c14549x);
        z((byte) i10);
    }

    public static int v(String str) {
        Integer num = (Integer) f617l.a(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("Unknown value " + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String y(int i10) {
        return (String) f617l.get(org.bouncycastle.util.k.j(i10));
    }

    public final void A(C14549x c14549x) {
        this.f618b = c14549x;
    }

    public final void B(E e10) {
        B b10 = (B) e10.I(0);
        if (!(b10 instanceof C14549x)) {
            throw new IllegalArgumentException("no Oid in CerticateHolderAuthorization");
        }
        this.f618b = (C14549x) b10;
        B b11 = (B) e10.I(1);
        if (!(b11 instanceof M)) {
            throw new IllegalArgumentException("No access rights in CerticateHolderAuthorization");
        }
        this.f619c = AbstractC14551y.F(M.T(b11, 64, 19).M(false, 4)).H()[0];
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        c14518h.a(this.f618b);
        c14518h.a(i.c(19, new byte[]{this.f619c}));
        return i.b(76, new G0(c14518h));
    }

    public int u() {
        return this.f619c & 255;
    }

    public C14549x x() {
        return this.f618b;
    }

    public final void z(byte b10) {
        this.f619c = b10;
    }

    public e(M m10) throws IOException {
        if (!m10.m(64, 76)) {
            throw new IllegalArgumentException("Unrecognized object in CerticateHolderAuthorization");
        }
        B(E.G(m10.M(false, 16)));
    }
}
