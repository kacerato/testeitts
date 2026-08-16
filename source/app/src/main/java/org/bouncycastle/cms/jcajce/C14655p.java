package org.bouncycastle.cms.jcajce;

import ck.r;
import hi.C13486b;
import hi.h0;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Cipher;
import oh.A0;
import oh.C14549x;
import org.bouncycastle.cms.AbstractC14635h0;
import org.bouncycastle.operator.OperatorException;
import sl.InterfaceC15352m;
import uh.C15620k;

public class C14655p extends AbstractC14635h0 {

    public static Map f100925j;

    public final C13486b f100926b;

    public final int f100927c;

    public InterfaceC14643d f100928d;

    public Map f100929e;

    public PublicKey f100930f;

    public SecureRandom f100931g;

    public C13486b f100932h;

    public byte[] f100933i;

    static {
        HashMap hashMap = new HashMap();
        f100925j = hashMap;
        hashMap.put(Ol.g.f20359c.b(), org.bouncycastle.util.k.j(768));
        f100925j.put(Ol.g.f20360d.b(), org.bouncycastle.util.k.j(1088));
        f100925j.put(Ol.g.f20361e.b(), org.bouncycastle.util.k.j(1568));
        f100925j.put(Ol.o.f20398c.b(), org.bouncycastle.util.k.j(699));
        f100925j.put(Ol.o.f20399d.b(), org.bouncycastle.util.k.j(930));
        f100925j.put(Ol.o.f20400e.b(), org.bouncycastle.util.k.j(1230));
        f100925j.put(Ol.o.f20402g.b(), org.bouncycastle.util.k.j(1138));
    }

    public C14655p(PublicKey publicKey, C14549x c14549x) {
        super(publicKey instanceof RSAPublicKey ? new C13486b(Nh.a.f16379h) : h0.w(publicKey.getEncoded()).u());
        this.f100928d = new C14641b();
        this.f100929e = new HashMap();
        this.f100932h = new C13486b(ki.r.f95320P6, new C13486b(Sh.d.f23337c, A0.f98776c));
        this.f100930f = publicKey;
        this.f100926b = new C13486b(c14549x);
        this.f100927c = C14640a.h(c14549x);
    }

    @Override
    public byte[] b(Qk.r rVar) throws OperatorException {
        try {
            byte[] encoded = new C15620k(this.f100926b, this.f100927c).getEncoded();
            if (this.f100930f instanceof RSAPublicKey) {
                Cipher b10 = C14640a.b(this.f100928d, a().u(), new HashMap());
                try {
                    b10.init(3, this.f100930f, new r.a(C14640a.j(this.f100926b.u()), this.f100927c * 8, encoded).b(this.f100932h).a(), this.f100931g);
                    byte[] wrap = b10.wrap(C14640a.g(rVar));
                    int bitLength = (((RSAPublicKey) this.f100930f).getModulus().bitLength() + 7) / 8;
                    this.f100933i = org.bouncycastle.util.a.X(wrap, 0, bitLength);
                    return org.bouncycastle.util.a.X(wrap, bitLength, wrap.length);
                } catch (Exception e10) {
                    throw new OperatorException("Unable to wrap contents key: " + e10.getMessage(), e10);
                }
            }
            Cipher b11 = C14640a.b(this.f100928d, a().u(), new HashMap());
            try {
                b11.init(3, this.f100930f, new r.a(C14640a.j(this.f100926b.u()), this.f100927c * 8, encoded).b(this.f100932h).a(), this.f100931g);
                byte[] wrap2 = b11.wrap(C14640a.g(rVar));
                int g10 = g(this.f100930f);
                this.f100933i = org.bouncycastle.util.a.X(wrap2, 0, g10);
                return org.bouncycastle.util.a.X(wrap2, g10, wrap2.length);
            } catch (Exception e11) {
                throw new OperatorException("Unable to wrap contents key: " + e11.getMessage(), e11);
            }
        } catch (Exception e12) {
            throw new OperatorException("unable to wrap contents key: " + e12.getMessage(), e12);
        }
        throw new OperatorException("unable to wrap contents key: " + e12.getMessage(), e12);
    }

    @Override
    public byte[] c() {
        return this.f100933i;
    }

    @Override
    public C13486b d() {
        return this.f100932h;
    }

    @Override
    public int e() {
        return this.f100927c;
    }

    @Override
    public C13486b f() {
        return this.f100926b;
    }

    public final int g(PublicKey publicKey) {
        Map map;
        String b10;
        if (publicKey instanceof InterfaceC15352m) {
            map = f100925j;
            b10 = ((InterfaceC15352m) publicKey).t().b();
        } else {
            if (!(publicKey instanceof sl.s)) {
                return 0;
            }
            map = f100925j;
            b10 = ((sl.s) publicKey).t().b();
        }
        return ((Integer) map.get(b10)).intValue();
    }

    public C14655p h(C14549x c14549x, String str) {
        this.f100929e.put(c14549x, str);
        return this;
    }

    public C14655p i(C13486b c13486b) {
        this.f100932h = c13486b;
        return this;
    }

    public C14655p j(String str) {
        this.f100928d = new S(str);
        return this;
    }

    public C14655p k(Provider provider) {
        this.f100928d = new T(provider);
        return this;
    }

    public C14655p l(SecureRandom secureRandom) {
        this.f100931g = secureRandom;
        return this;
    }
}
