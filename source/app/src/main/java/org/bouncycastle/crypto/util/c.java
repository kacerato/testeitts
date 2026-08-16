package org.bouncycastle.crypto.util;

import Bi.C2376h;
import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.Y;
import Li.C2769a;
import Li.C2786k;
import Li.C2795u;
import Li.C2796v;
import Li.V;
import Li.X;
import Ti.C3092c;
import Ti.C3094e;
import Ti.InterfaceC3090a;
import Xi.B0;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import hi.C13486b;
import java.io.OutputStream;
import nj.C14452a;
import nj.C14454c;
import oh.AbstractC14541t;
import oh.AbstractC14551y;
import oh.B;
import oh.C14549x;
import wj.InterfaceC16012a;
import yj.C16196a;
import yj.InterfaceC16198c;

public class c {

    public static final short[] f101048a = {93, 190, 155, 139, 17, 153, 110, 77, 89, 243, 133, 166, 63, 183, 131, 197, 228, 115, 107, 58, 104, 90, 192, 71, 160, 100, 52, 12, 241, 208, 82, 165, 185, 30, 150, 67, 65, 216, 212, 44, 219, 248, 7, 119, 42, 202, 235, 239, 16, 28, 22, 13, 56, 114, 47, 137, 193, 249, 128, 196, 109, 174, 48, 61, 206, 32, 99, 254, 230, 26, 199, 184, 80, 232, 36, 23, 252, 37, 111, 187, 106, 163, 68, 83, 217, 162, 1, 171, 188, 182, 31, 152, 238, 154, 167, 45, 79, 158, 142, 172, 224, 198, 73, 70, 41, 244, 148, 138, 175, 225, 91, 195, 179, 123, 87, 209, 124, 156, 237, 135, 64, 140, 226, 203, 147, 20, 201, 97, 46, 229, 204, 246, 94, 168, 92, 214, 117, 141, 98, 149, 88, 105, 118, 161, 74, 181, 85, 9, 120, 51, 130, 215, 221, 121, 245, 27, 11, 222, 38, 33, 40, 116, 4, 151, 86, 223, 60, 240, 55, 57, 220, 255, 6, 164, 234, 66, 8, 218, 180, 113, 176, 207, 18, 122, 78, 250, 108, 29, 132, 0, 200, 127, 145, 69, 170, 43, 194, 177, 143, 213, 186, 242, 173, 25, 178, 103, 54, 247, 15, 10, 146, 125, 227, 157, 233, 144, 62, 35, 39, 102, 19, 236, 129, 21, 189, 34, 191, 159, 126, 169, 81, 75, 76, 251, 2, 211, 112, 134, 49, 231, 59, 5, 3, 84, 96, 72, 101, 24, 210, 205, 95, 50, 136, 14, 53, 253};

    public static InterfaceC3090a a(C14549x c14549x) {
        if (Sh.d.f23309C.A(c14549x) || Sh.d.f23318L.A(c14549x) || Sh.d.f23327U.A(c14549x)) {
            return Ti.r.u(C2769a.r());
        }
        if (Sh.d.f23310D.A(c14549x) || Sh.d.f23319M.A(c14549x) || Sh.d.f23328V.A(c14549x)) {
            return C3094e.p(C2769a.r());
        }
        throw new IllegalArgumentException("cannot recognise cipher: " + ((Object) c14549x));
    }

    public static C2376h b(C14549x c14549x) throws IllegalArgumentException {
        InterfaceC2374f r10;
        if (Sh.d.f23373y.A(c14549x) || Sh.d.f23314H.A(c14549x) || Sh.d.f23323Q.A(c14549x)) {
            r10 = C2769a.r();
        } else if (Xh.t.f29123n1.A(c14549x)) {
            r10 = new C2796v();
        } else if (Bj.b.f1907e.A(c14549x)) {
            r10 = new C2795u();
        } else if (Xh.t.f29126o1.A(c14549x)) {
            r10 = new V();
        } else {
            if (!InterfaceC16198c.f130394u.A(c14549x)) {
                throw new IllegalArgumentException("cannot recognise cipher: " + ((Object) c14549x));
            }
            r10 = new C2786k();
        }
        return new Wi.e(C3092c.m(r10), new Wi.d());
    }

    public static Object c(boolean z10, InterfaceC2379k interfaceC2379k, C13486b c13486b) throws IllegalArgumentException {
        InterfaceC3090a a10;
        C3331a c3331a;
        w0 w0Var;
        C14549x u10 = c13486b.u();
        if (u10.A(Xh.t.f29129p1)) {
            X x10 = new X();
            x10.a(z10, interfaceC2379k);
            return x10;
        }
        if (u10.A(Sh.d.f23309C) || u10.A(Sh.d.f23318L) || u10.A(Sh.d.f23327U)) {
            a10 = a(c13486b.u());
            C14454c v10 = C14454c.v(c13486b.x());
            if (!(interfaceC2379k instanceof C3360o0)) {
                throw new IllegalArgumentException("key data must be accessible for GCM operation");
            }
            c3331a = new C3331a((C3360o0) interfaceC2379k, v10.u() * 8, v10.x());
        } else {
            if (!u10.A(Sh.d.f23310D) && !u10.A(Sh.d.f23319M) && !u10.A(Sh.d.f23328V)) {
                C2376h b10 = b(c13486b.u());
                B r10 = c13486b.x().r();
                if (r10 != null && !(r10 instanceof AbstractC14541t)) {
                    if (u10.A(Xh.t.f29123n1) || u10.A(a.f101043a) || u10.A(Sh.d.f23373y) || u10.A(Sh.d.f23314H) || u10.A(Sh.d.f23323Q) || u10.A(Aj.a.f827a) || u10.A(Aj.a.f828b) || u10.A(Aj.a.f829c) || u10.A(InterfaceC16012a.f127584a) || u10.A(Bj.b.f1907e)) {
                        w0Var = new w0(interfaceC2379k, AbstractC14551y.F(r10).H());
                    } else if (u10.A(a.f101044b)) {
                        w0Var = new w0(interfaceC2379k, C16196a.v(r10).u());
                    } else {
                        if (!u10.A(Xh.t.f29126o1)) {
                            throw new IllegalArgumentException("cannot match parameters");
                        }
                        Xh.w v11 = Xh.w.v(r10);
                        w0Var = new w0(new B0(((C3360o0) interfaceC2379k).b(), f101048a[v11.x().intValue()]), v11.u());
                    }
                    b10.f(z10, w0Var);
                } else if (u10.A(Xh.t.f29123n1) || u10.A(a.f101043a) || u10.A(a.f101044b)) {
                    b10.f(z10, new w0(interfaceC2379k, new byte[8]));
                } else {
                    b10.f(z10, interfaceC2379k);
                }
                return b10;
            }
            a10 = a(c13486b.u());
            C14452a v12 = C14452a.v(c13486b.x());
            if (!(interfaceC2379k instanceof C3360o0)) {
                throw new IllegalArgumentException("key data must be accessible for CCM operation");
            }
            c3331a = new C3331a((C3360o0) interfaceC2379k, v12.u() * 8, v12.x());
        }
        a10.a(z10, c3331a);
        return a10;
    }

    public static Qi.b d(OutputStream outputStream, Object obj) {
        if (obj instanceof C2376h) {
            return new Qi.b(outputStream, (C2376h) obj);
        }
        if (obj instanceof Y) {
            return new Qi.b(outputStream, (Y) obj);
        }
        if (obj instanceof InterfaceC3090a) {
            return new Qi.b(outputStream, (InterfaceC3090a) obj);
        }
        throw new IllegalArgumentException("unknown cipher object: " + obj);
    }
}
