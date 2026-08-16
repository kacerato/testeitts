package zh;

import hi.C13479C;
import hi.C13481E;
import hi.C13482F;
import hi.W;
import java.math.BigInteger;
import oh.C14518h;
import oh.C14539s;
import oh.G0;
import oh.InterfaceC14516g;
import oh.K0;

public class h {

    public static final int f131417k = 1;

    public static final int f131418l = 0;

    public static final int f131419m = 1;

    public static final int f131420n = 2;

    public static final int f131421o = 3;

    public static final int f131422p = 4;

    public int f131423a;

    public final m f131424b;

    public g f131425c;

    public BigInteger f131426d;

    public j f131427e;

    public C13482F f131428f;

    public W f131429g;

    public C13482F f131430h;

    public C13482F f131431i;

    public C13479C f131432j;

    public h(g gVar) {
        this.f131423a = 1;
        this.f131425c = gVar;
        this.f131424b = gVar.E();
        this.f131423a = gVar.F();
        this.f131426d = gVar.A();
        this.f131427e = gVar.C();
        this.f131429g = gVar.B();
        this.f131430h = gVar.u();
        this.f131431i = gVar.v();
    }

    public g a() {
        C14518h c14518h = new C14518h(9);
        if (this.f131423a != 1) {
            c14518h.a(new C14539s(this.f131423a));
        }
        c14518h.a(this.f131424b);
        if (this.f131426d != null) {
            c14518h.a(new C14539s(this.f131426d));
        }
        j jVar = this.f131427e;
        if (jVar != null) {
            c14518h.a(jVar);
        }
        int[] iArr = {0, 1, 2, 3, 4};
        InterfaceC14516g[] interfaceC14516gArr = {this.f131428f, this.f131429g, this.f131430h, this.f131431i, this.f131432j};
        for (int i10 = 0; i10 < 5; i10++) {
            int i11 = iArr[i10];
            InterfaceC14516g interfaceC14516g = interfaceC14516gArr[i10];
            if (interfaceC14516g != null) {
                c14518h.a(new K0(false, i11, interfaceC14516g));
            }
        }
        return g.y(new G0(c14518h));
    }

    public void b(C13481E c13481e) {
        c(new C13482F(c13481e));
    }

    public void c(C13482F c13482f) {
        this.f131430h = c13482f;
    }

    public void d(C13481E c13481e) {
        e(new C13482F(c13481e));
    }

    public void e(C13482F c13482f) {
        this.f131431i = c13482f;
    }

    public void f(C13479C c13479c) {
        if (this.f131425c != null) {
            throw new IllegalStateException("cannot change extensions in existing DVCSRequestInformation");
        }
        this.f131432j = c13479c;
    }

    public void g(BigInteger bigInteger) {
        g gVar = this.f131425c;
        if (gVar != null) {
            if (gVar.A() == null) {
                this.f131426d = bigInteger;
            } else {
                byte[] byteArray = this.f131425c.A().toByteArray();
                byte[] c10 = org.bouncycastle.util.b.c(bigInteger);
                byte[] bArr = new byte[byteArray.length + c10.length];
                System.arraycopy(byteArray, 0, bArr, 0, byteArray.length);
                System.arraycopy(c10, 0, bArr, byteArray.length, c10.length);
                this.f131426d = new BigInteger(bArr);
            }
        }
        this.f131426d = bigInteger;
    }

    public void h(W w10) {
        if (this.f131425c != null) {
            throw new IllegalStateException("cannot change request policy in existing DVCSRequestInformation");
        }
        this.f131429g = w10;
    }

    public void i(j jVar) {
        if (this.f131425c != null) {
            throw new IllegalStateException("cannot change request time in existing DVCSRequestInformation");
        }
        this.f131427e = jVar;
    }

    public void j(C13481E c13481e) {
        k(new C13482F(c13481e));
    }

    public void k(C13482F c13482f) {
        this.f131428f = c13482f;
    }

    public void l(int i10) {
        if (this.f131425c != null) {
            throw new IllegalStateException("cannot change version in existing DVCSRequestInformation");
        }
        this.f131423a = i10;
    }

    public h(m mVar) {
        this.f131423a = 1;
        this.f131424b = mVar;
    }
}
