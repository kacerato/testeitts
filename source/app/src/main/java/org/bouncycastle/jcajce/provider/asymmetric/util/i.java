package org.bouncycastle.jcajce.provider.asymmetric.util;

import Xh.v;
import Xi.C3335c;
import Xi.G;
import Xi.K;
import Xi.L;
import Xi.M;
import fk.InterfaceC13238d;
import fk.InterfaceC13239e;
import hi.h0;
import hk.C13523c;
import hk.C13525e;
import java.math.BigInteger;
import java.security.AccessController;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Enumeration;
import jk.AbstractC13875e;
import oh.C14549x;
import org.bouncycastle.jce.provider.C14720a;
import org.bouncycastle.util.w;

public class i {

    public class a implements PrivilegedAction {

        public final AlgorithmParameterSpec f101333a;

        public a(AlgorithmParameterSpec algorithmParameterSpec) {
            this.f101333a = algorithmParameterSpec;
        }

        @Override
        public Object run() {
            try {
                return this.f101333a.getClass().getMethod("getName", null).invoke(this.f101333a, null);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static int[] a(int[] iArr) {
        int i10;
        int[] iArr2 = new int[3];
        if (iArr.length == 1) {
            iArr2[0] = iArr[0];
        } else {
            if (iArr.length != 3) {
                throw new IllegalArgumentException("Only Trinomials and pentanomials supported");
            }
            int i11 = iArr[0];
            int i12 = iArr[1];
            if (i11 >= i12 || i11 >= (i10 = iArr[2])) {
                int i13 = iArr[2];
                if (i12 < i13) {
                    iArr2[0] = i12;
                    int i14 = iArr[0];
                    if (i14 < i13) {
                        iArr2[1] = i14;
                        iArr2[2] = i13;
                    } else {
                        iArr2[1] = i13;
                        iArr2[2] = i14;
                    }
                } else {
                    iArr2[0] = i13;
                    int i15 = iArr[0];
                    if (i15 < i12) {
                        iArr2[1] = i15;
                        iArr2[2] = iArr[1];
                    } else {
                        iArr2[1] = i12;
                        iArr2[2] = i15;
                    }
                }
            } else {
                iArr2[0] = i11;
                if (i12 < i10) {
                    iArr2[1] = i12;
                    iArr2[2] = i10;
                } else {
                    iArr2[1] = i10;
                    iArr2[2] = iArr[1];
                }
            }
        }
        return iArr2;
    }

    public static String b(jk.i iVar, C13525e c13525e) {
        AbstractC13875e a10 = c13525e.a();
        return a10 != null ? new org.bouncycastle.util.i(org.bouncycastle.util.a.D(iVar.l(false), a10.p().e(), a10.r().e(), c13525e.b().l(false))).toString() : new org.bouncycastle.util.i(iVar.l(false)).toString();
    }

    public static C3335c c(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof InterfaceC13238d) {
            InterfaceC13238d interfaceC13238d = (InterfaceC13238d) privateKey;
            C13525e parameters = interfaceC13238d.getParameters();
            if (parameters == null) {
                parameters = C14720a.f101702f.b();
            }
            if (!(interfaceC13238d.getParameters() instanceof C13523c)) {
                return new L(interfaceC13238d.m1(), new G(parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e()));
            }
            return new L(interfaceC13238d.m1(), new K(ki.e.h(((C13523c) interfaceC13238d.getParameters()).f()), parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e()));
        }
        if (privateKey instanceof ECPrivateKey) {
            ECPrivateKey eCPrivateKey = (ECPrivateKey) privateKey;
            C13525e g10 = h.g(eCPrivateKey.getParams());
            return new L(eCPrivateKey.getS(), new G(g10.a(), g10.b(), g10.d(), g10.c(), g10.e()));
        }
        try {
            byte[] encoded = privateKey.getEncoded();
            if (encoded == null) {
                throw new InvalidKeyException("no encoding for EC private key");
            }
            PrivateKey p10 = C14720a.p(v.v(encoded));
            if (p10 instanceof ECPrivateKey) {
                return c(p10);
            }
            throw new InvalidKeyException("can't identify EC private key.");
        } catch (Exception e10) {
            throw new InvalidKeyException("cannot identify EC private key: " + e10.toString());
        }
    }

    public static C3335c d(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof InterfaceC13239e) {
            InterfaceC13239e interfaceC13239e = (InterfaceC13239e) publicKey;
            C13525e parameters = interfaceC13239e.getParameters();
            return new M(interfaceC13239e.Ne(), new G(parameters.a(), parameters.b(), parameters.d(), parameters.c(), parameters.e()));
        }
        if (publicKey instanceof ECPublicKey) {
            ECPublicKey eCPublicKey = (ECPublicKey) publicKey;
            C13525e g10 = h.g(eCPublicKey.getParams());
            return new M(h.e(eCPublicKey.getParams(), eCPublicKey.getW()), new G(g10.a(), g10.b(), g10.d(), g10.c(), g10.e()));
        }
        try {
            byte[] encoded = publicKey.getEncoded();
            if (encoded == null) {
                throw new InvalidKeyException("no encoding for EC public key");
            }
            PublicKey q10 = C14720a.q(h0.w(encoded));
            if (q10 instanceof ECPublicKey) {
                return d(q10);
            }
            throw new InvalidKeyException("cannot identify EC public key.");
        } catch (Exception e10) {
            throw new InvalidKeyException("cannot identify EC public key: " + e10.toString());
        }
    }

    public static String e(C14549x c14549x) {
        return ki.e.f(c14549x);
    }

    public static G f(Tj.c cVar, C13525e c13525e) {
        if (c13525e instanceof C13523c) {
            C13523c c13523c = (C13523c) c13525e;
            return new K(l(c13523c.f()), c13523c.a(), c13523c.b(), c13523c.d(), c13523c.c(), c13523c.e());
        }
        if (c13525e != null) {
            return new G(c13525e.a(), c13525e.b(), c13525e.d(), c13525e.c(), c13525e.e());
        }
        C13525e b10 = cVar.b();
        return new G(b10.a(), b10.b(), b10.d(), b10.c(), b10.e());
    }

    public static G g(Tj.c cVar, ki.j jVar) {
        G g10;
        if (jVar.z()) {
            C14549x K10 = C14549x.K(jVar.x());
            ki.l j10 = j(K10);
            if (j10 == null) {
                j10 = (ki.l) cVar.d().get(K10);
            }
            return new K(K10, j10);
        }
        if (jVar.y()) {
            C13525e b10 = cVar.b();
            g10 = new G(b10.a(), b10.b(), b10.d(), b10.c(), b10.e());
        } else {
            ki.l B10 = ki.l.B(jVar.x());
            g10 = new G(B10.v(), B10.z(), B10.C(), B10.A(), B10.D());
        }
        return g10;
    }

    public static String h(AlgorithmParameterSpec algorithmParameterSpec) {
        return (String) AccessController.doPrivileged(new a(algorithmParameterSpec));
    }

    public static ki.l i(String str) {
        ki.l j10 = Ji.a.j(str);
        return j10 == null ? ki.e.b(str) : j10;
    }

    public static ki.l j(C14549x c14549x) {
        ki.l l10 = Ji.a.l(c14549x);
        return l10 == null ? ki.e.d(c14549x) : l10;
    }

    public static C14549x k(C13525e c13525e) {
        Enumeration g10 = ki.e.g();
        while (g10.hasMoreElements()) {
            String str = (String) g10.nextElement();
            ki.l b10 = ki.e.b(str);
            if (b10.C().equals(c13525e.d()) && b10.A().equals(c13525e.c()) && b10.v().n(c13525e.a()) && b10.z().e(c13525e.b())) {
                return ki.e.h(str);
            }
        }
        return null;
    }

    public static C14549x l(String str) {
        if (str == null || str.length() < 1) {
            return null;
        }
        int indexOf = str.indexOf(32);
        if (indexOf > 0) {
            str = str.substring(indexOf + 1);
        }
        C14549x m10 = m(str);
        return m10 != null ? m10 : ki.e.h(str);
    }

    public static C14549x m(String str) {
        char charAt = str.charAt(0);
        if (charAt < '0' || charAt > '2') {
            return null;
        }
        try {
            return new C14549x(str);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int n(Tj.c cVar, BigInteger bigInteger, BigInteger bigInteger2) {
        C13525e b10;
        if (bigInteger != null) {
            return bigInteger.bitLength();
        }
        if (cVar != null && (b10 = cVar.b()) != null) {
            return b10.d().bitLength();
        }
        return bigInteger2.bitLength();
    }

    public static String o(String str, BigInteger bigInteger, C13525e c13525e) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        jk.i B10 = new jk.k().a(c13525e.b(), bigInteger).B();
        stringBuffer.append(str);
        stringBuffer.append(" Private Key [");
        stringBuffer.append(b(B10, c13525e));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("            X: ");
        stringBuffer.append(B10.f().v().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(B10.g().v().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }

    public static String p(String str, jk.i iVar, C13525e c13525e) {
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append(str);
        stringBuffer.append(" Public Key [");
        stringBuffer.append(b(iVar, c13525e));
        stringBuffer.append("]");
        stringBuffer.append(f10);
        stringBuffer.append("            X: ");
        stringBuffer.append(iVar.f().v().toString(16));
        stringBuffer.append(f10);
        stringBuffer.append("            Y: ");
        stringBuffer.append(iVar.g().v().toString(16));
        stringBuffer.append(f10);
        return stringBuffer.toString();
    }
}
