package Tk;

import Bi.D;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.L;
import Li.C2796v;
import Li.V;
import Oi.H;
import Qk.A;
import Qk.r;
import Si.k;
import Ti.C3092c;
import Xh.s;
import Xh.t;
import Xi.C3351k;
import Xi.C3360o0;
import Xi.w0;
import hi.C13486b;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import oh.C14549x;

public class g {

    public static Map f25430a = new HashMap();

    public static Set f25431b = new HashSet();

    public static Set f25432c = new HashSet();

    public class a implements A {

        public final C14549x f25433a;

        public final s f25434b;

        public final k f25435c;

        public final char[] f25436d;

        public a(C14549x c14549x, s sVar, k kVar, char[] cArr) {
            this.f25433a = c14549x;
            this.f25434b = sVar;
            this.f25435c = kVar;
            this.f25436d = cArr;
        }

        @Override
        public C13486b a() {
            return new C13486b(this.f25433a, this.f25434b);
        }

        @Override
        public byte[] e() {
            byte[] bArr = new byte[this.f25435c.d()];
            this.f25435c.c(bArr, 0);
            return bArr;
        }

        @Override
        public r getKey() {
            return new r(a(), L.a(this.f25436d));
        }

        @Override
        public OutputStream getOutputStream() {
            return new Qi.f(this.f25435c);
        }
    }

    static {
        Map map = f25430a;
        C14549x c14549x = t.f29098e4;
        map.put(c14549x, org.bouncycastle.util.k.j(128));
        Map map2 = f25430a;
        C14549x c14549x2 = t.f29102f4;
        map2.put(c14549x2, org.bouncycastle.util.k.j(40));
        Map map3 = f25430a;
        C14549x c14549x3 = t.f29106g4;
        map3.put(c14549x3, org.bouncycastle.util.k.j(192));
        Map map4 = f25430a;
        C14549x c14549x4 = t.f29110h4;
        map4.put(c14549x4, org.bouncycastle.util.k.j(128));
        f25430a.put(t.f29111i4, org.bouncycastle.util.k.j(128));
        f25430a.put(t.f29115j4, org.bouncycastle.util.k.j(40));
        f25431b.add(c14549x);
        f25431b.add(c14549x2);
        f25432c.add(c14549x4);
        f25432c.add(c14549x3);
    }

    public static InterfaceC2379k a(C14549x c14549x, D d10, int i10, s sVar, char[] cArr) {
        H h10 = new H(d10);
        h10.j(L.a(cArr), sVar.u(), sVar.x().intValue());
        if (e(c14549x)) {
            return h10.e(d(c14549x));
        }
        InterfaceC2379k f10 = h10.f(d(c14549x), i10 * 8);
        if (f(c14549x)) {
            C3351k.f(((C3360o0) ((w0) f10).b()).b());
        }
        return f10;
    }

    public static A b(C14549x c14549x, D d10, s sVar, char[] cArr) {
        H h10 = new H(d10);
        h10.j(L.a(cArr), sVar.u(), sVar.x().intValue());
        C3360o0 c3360o0 = (C3360o0) h10.d(d10.f() * 8);
        k kVar = new k(d10);
        kVar.a(c3360o0);
        return new a(c14549x, sVar, kVar, cArr);
    }

    public static Wi.e c(C14549x c14549x) {
        InterfaceC2374f c2796v;
        if (c14549x.A(t.f29106g4) || c14549x.A(t.f29110h4)) {
            c2796v = new C2796v();
        } else {
            if (!c14549x.A(t.f29111i4) && !c14549x.A(t.f29115j4)) {
                throw new IllegalStateException("unknown algorithm");
            }
            c2796v = new V();
        }
        return new Wi.e(new C3092c(c2796v), new Wi.d());
    }

    public static int d(C14549x c14549x) {
        return ((Integer) f25430a.get(c14549x)).intValue();
    }

    public static boolean e(C14549x c14549x) {
        return f25431b.contains(c14549x);
    }

    public static boolean f(C14549x c14549x) {
        return f25432c.contains(c14549x);
    }
}
