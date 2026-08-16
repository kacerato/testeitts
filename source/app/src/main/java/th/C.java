package th;

import Xh.C3330e;
import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.InterfaceC14516g;
import oh.K0;

public class C extends AbstractC14545v implements InterfaceC14514f {

    public static final int f117402A = 23;

    public static final int f117403B = 24;

    public static final int f117404C = 25;

    public static final int f117405D = 26;

    public static final int f117406d = 0;

    public static final int f117407e = 1;

    public static final int f117408f = 2;

    public static final int f117409g = 3;

    public static final int f117410h = 4;

    public static final int f117411i = 5;

    public static final int f117412j = 6;

    public static final int f117413k = 7;

    public static final int f117414l = 8;

    public static final int f117415m = 9;

    public static final int f117416n = 10;

    public static final int f117417o = 11;

    public static final int f117418p = 12;

    public static final int f117419q = 13;

    public static final int f117420r = 14;

    public static final int f117421s = 15;

    public static final int f117422t = 16;

    public static final int f117423u = 17;

    public static final int f117424v = 18;

    public static final int f117425w = 19;

    public static final int f117426x = 20;

    public static final int f117427y = 21;

    public static final int f117428z = 22;

    public final int f117429b;

    public final InterfaceC14516g f117430c;

    public C(int i10, InterfaceC14516g interfaceC14516g) {
        this.f117429b = i10;
        this.f117430c = u(i10, interfaceC14516g);
    }

    public static InterfaceC14516g u(int i10, InterfaceC14516g interfaceC14516g) {
        try {
            switch (i10) {
                case 0:
                    return wh.d.u(interfaceC14516g);
                case 1:
                    return C15434j.v(interfaceC14516g);
                case 2:
                    return wh.d.u(interfaceC14516g);
                case 3:
                    return C15434j.v(interfaceC14516g);
                case 4:
                    return C3330e.v(interfaceC14516g);
                case 5:
                    return M.u(interfaceC14516g);
                case 6:
                    return N.u(interfaceC14516g);
                case 7:
                    return wh.d.u(interfaceC14516g);
                case 8:
                    return C15434j.v(interfaceC14516g);
                case 9:
                    return wh.d.u(interfaceC14516g);
                case 10:
                    return C15447x.w(interfaceC14516g);
                case 11:
                    return W.u(interfaceC14516g);
                case 12:
                    return U.w(interfaceC14516g);
                case 13:
                    return wh.d.u(interfaceC14516g);
                case 14:
                    return C15434j.v(interfaceC14516g);
                case 15:
                    return C15425a.u(interfaceC14516g);
                case 16:
                    return C15426b.u(interfaceC14516g);
                case 17:
                    return S.y(interfaceC14516g);
                case 18:
                    return C15428d.v(interfaceC14516g);
                case 19:
                    return D.u(interfaceC14516g);
                case 20:
                    return J.u(interfaceC14516g);
                case 21:
                    return r.u(interfaceC14516g);
                case 22:
                    return C15442s.u(interfaceC14516g);
                case 23:
                    return C15441q.y(interfaceC14516g);
                case 24:
                    return C15432h.u(interfaceC14516g);
                case 25:
                    return P.w(interfaceC14516g);
                case 26:
                    return O.w(interfaceC14516g);
                default:
                    throw new IllegalArgumentException("unknown tag number: " + i10);
            }
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException("body type of " + i10 + " has incorrect type got: " + ((Object) interfaceC14516g.getClass()));
        } catch (IllegalArgumentException unused2) {
            throw new IllegalArgumentException("body type of " + i10 + " has incorrect type got: " + ((Object) interfaceC14516g.getClass()));
        }
    }

    public static C w(Object obj) {
        if (obj == null || (obj instanceof C)) {
            return (C) obj;
        }
        if (obj instanceof oh.M) {
            return new C((oh.M) obj);
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    @Override
    public oh.B r() {
        return new K0(true, this.f117429b, this.f117430c);
    }

    public InterfaceC14516g v() {
        return this.f117430c;
    }

    public int x() {
        return this.f117429b;
    }

    public C(oh.M m10) {
        int g10 = m10.g();
        this.f117429b = g10;
        try {
            this.f117430c = u(g10, m10.O());
        } catch (ClassCastException e10) {
            throw org.bouncycastle.util.h.a("malformed body found: " + e10.getMessage(), e10);
        } catch (IllegalArgumentException e11) {
            throw org.bouncycastle.util.h.a("malformed body found: " + e11.getMessage(), e11);
        }
    }
}
