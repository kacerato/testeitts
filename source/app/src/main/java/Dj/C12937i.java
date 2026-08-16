package dj;

import hi.C13482F;
import hi.W;
import java.math.BigInteger;
import java.util.Date;
import org.bouncycastle.dvcs.DVCSParsingException;

public class C12937i {

    public zh.g f84731a;

    public C12937i(zh.g gVar) {
        this.f84731a = gVar;
    }

    public static boolean a(Object obj, Object obj2) {
        return (obj == null && obj2 == null) || (obj != null && obj.equals(obj2));
    }

    public static boolean k(C12937i c12937i, C12937i c12937i2) {
        zh.g gVar = c12937i.f84731a;
        zh.g gVar2 = c12937i2.f84731a;
        if (gVar.F() != gVar2.F() || !a(gVar.E(), gVar2.E()) || !a(gVar.C(), gVar2.C()) || !a(gVar.B(), gVar2.B()) || !a(gVar.x(), gVar2.x())) {
            return false;
        }
        if (gVar.A() == null) {
            return true;
        }
        if (gVar2.A() == null) {
            return false;
        }
        byte[] byteArray = gVar.A().toByteArray();
        byte[] byteArray2 = gVar2.A().toByteArray();
        return byteArray2.length >= byteArray.length && org.bouncycastle.util.a.g(byteArray, org.bouncycastle.util.a.X(byteArray2, 0, byteArray.length));
    }

    public C13482F b() {
        return this.f84731a.u();
    }

    public C13482F c() {
        return this.f84731a.v();
    }

    public BigInteger d() {
        return this.f84731a.A();
    }

    public W e() {
        if (this.f84731a.B() != null) {
            return this.f84731a.B();
        }
        return null;
    }

    public Date f() throws DVCSParsingException {
        zh.j C10 = this.f84731a.C();
        if (C10 == null) {
            return null;
        }
        try {
            return C10.u() != null ? C10.u().I() : new org.bouncycastle.tsp.h(C10.x()).i().d();
        } catch (Exception e10) {
            throw new DVCSParsingException("unable to extract time: " + e10.getMessage(), e10);
        }
    }

    public C13482F g() {
        return this.f84731a.D();
    }

    public int h() {
        return this.f84731a.E().x().intValue();
    }

    public int i() {
        return this.f84731a.F();
    }

    public zh.g j() {
        return this.f84731a;
    }

    public C12937i(byte[] bArr) {
        this(zh.g.y(bArr));
    }
}
