package Rk;

import Bi.D;
import Bi.a0;
import Ii.C2650h;
import Ii.C2654l;
import Ii.C2656n;
import Ii.C2657o;
import Ii.C2665x;
import Ii.C2666y;
import Ii.C2667z;
import Ii.F;
import Ii.G;
import Ii.H;
import Ii.J;
import Ii.K;
import Ii.L;
import Ii.M;
import Ii.N;
import Ii.O;
import Ii.Q;
import Ii.S;
import bi.InterfaceC3890b;
import hi.C13486b;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import oh.C14539s;
import org.bouncycastle.operator.OperatorCreationException;
import yh.InterfaceC16192a;

public class j implements Rk.l {

    public static final Map f22853a = b();

    public static final Rk.l f22854b = new j();

    public class a implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new Q(128);
        }
    }

    public class b implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new Q(256);
        }
    }

    public class c implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new y(new Q(128), C14539s.F(c13486b.x()).O());
        }
    }

    public class d implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new y(new Q(256), C14539s.F(c13486b.x()).O());
        }
    }

    public class e implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2667z();
        }
    }

    public class f implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2666y();
        }
    }

    public class g implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2665x();
        }
    }

    public class h implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2654l();
        }
    }

    public class i implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2656n();
        }
    }

    public class C0551j implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2657o();
        }
    }

    public class k implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new J();
        }
    }

    public class l implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new F();
        }
    }

    public class m implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new G();
        }
    }

    public class n implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new H();
        }
    }

    public class o implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new S();
        }
    }

    public class p implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new C2650h(256);
        }
    }

    public class q implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new K();
        }
    }

    public class r implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new L();
        }
    }

    public class s implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new M();
        }
    }

    public class t implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new O();
        }
    }

    public class u implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new N(224);
        }
    }

    public class v implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new N(256);
        }
    }

    public class w implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new N(384);
        }
    }

    public class x implements Rk.l {
        @Override
        public D a(C13486b c13486b) {
            return new N(512);
        }
    }

    public static class y implements a0 {

        public final a0 f22855a;

        public final int f22856b;

        public y(a0 a0Var, int i10) {
            this.f22855a = a0Var;
            this.f22856b = i10;
        }

        @Override
        public String b() {
            return this.f22855a.b() + "-" + this.f22856b;
        }

        @Override
        public int c(byte[] bArr, int i10) {
            return e(bArr, i10, f());
        }

        @Override
        public int e(byte[] bArr, int i10, int i11) {
            return this.f22855a.e(bArr, i10, i11);
        }

        @Override
        public int f() {
            return (this.f22856b + 7) / 8;
        }

        @Override
        public int h(byte[] bArr, int i10, int i11) {
            return this.f22855a.h(bArr, i10, i11);
        }

        @Override
        public int i() {
            return this.f22855a.i();
        }

        @Override
        public void reset() {
            this.f22855a.reset();
        }

        @Override
        public void update(byte b10) {
            this.f22855a.update(b10);
        }

        @Override
        public void update(byte[] bArr, int i10, int i11) {
            this.f22855a.update(bArr, i10, i11);
        }
    }

    public static Map b() {
        HashMap hashMap = new HashMap();
        hashMap.put(Wh.b.f27785i, new k());
        hashMap.put(Sh.d.f23343f, new q());
        hashMap.put(Sh.d.f23337c, new r());
        hashMap.put(Sh.d.f23339d, new s());
        hashMap.put(Sh.d.f23341e, new t());
        hashMap.put(Sh.d.f23349i, new u());
        hashMap.put(Sh.d.f23351j, new v());
        hashMap.put(Sh.d.f23353k, new w());
        hashMap.put(Sh.d.f23355l, new x());
        hashMap.put(Sh.d.f23357m, new a());
        hashMap.put(Sh.d.f23359n, new b());
        hashMap.put(Sh.d.f23367s, new c());
        hashMap.put(Sh.d.f23368t, new d());
        hashMap.put(Xh.t.f29141u1, new e());
        hashMap.put(Xh.t.f29138t1, new f());
        hashMap.put(Xh.t.f29135s1, new g());
        hashMap.put(InterfaceC16192a.f130270b, new h());
        hashMap.put(Yh.a.f30580c, new i());
        hashMap.put(Yh.a.f30581d, new C0551j());
        hashMap.put(InterfaceC3890b.f33237c, new l());
        hashMap.put(InterfaceC3890b.f33236b, new m());
        hashMap.put(InterfaceC3890b.f33238d, new n());
        hashMap.put(Fh.b.f6869d0, new o());
        hashMap.put(Qh.c.f22354N, new p());
        return Collections.unmodifiableMap(hashMap);
    }

    @Override
    public D a(C13486b c13486b) throws OperatorCreationException {
        Rk.l lVar = (Rk.l) f22853a.get(c13486b.u());
        if (lVar != null) {
            return lVar.a(c13486b);
        }
        throw new OperatorCreationException("cannot recognise digest");
    }
}
