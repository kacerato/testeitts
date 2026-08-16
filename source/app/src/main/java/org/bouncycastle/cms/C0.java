package org.bouncycastle.cms;

import hi.C13486b;
import java.security.SecureRandom;
import oh.C14518h;
import oh.C14549x;
import org.bouncycastle.cms.A0;

public abstract class C0 implements G0 {

    public char[] f100500a;

    public C13486b f100501b;

    public C14549x f100502c;

    public SecureRandom f100503d;

    public int f100504e;

    public int f100505f;

    public int f100506g;

    public A0.a f100507h;

    public byte[] f100508i;

    public int f100509j;

    public C0(C14549x c14549x, char[] cArr) {
        this(c14549x, cArr, d(c14549x), ((Integer) D0.f100520i.get(c14549x)).intValue());
    }

    public static int d(C14549x c14549x) {
        Integer num = (Integer) D0.f100519h.get(c14549x);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalArgumentException("cannot find key size for algorithm: " + ((Object) c14549x));
    }

    @Override
    public uh.Q a(Qk.r rVar) throws CMSException {
        byte[] bArr = new byte[this.f100506g];
        if (this.f100503d == null) {
            this.f100503d = new SecureRandom();
        }
        this.f100503d.nextBytes(bArr);
        if (this.f100508i == null) {
            byte[] bArr2 = new byte[20];
            this.f100508i = bArr2;
            this.f100503d.nextBytes(bArr2);
        }
        C13486b c13486b = new C13486b(Xh.t.f29107h1, new Xh.q(this.f100508i, this.f100509j, this.f100507h.f100462b));
        this.f100501b = c13486b;
        oh.C0 c02 = new oh.C0(c(new C13486b(this.f100502c, new oh.C0(bArr)), b(this.f100504e, c13486b, this.f100505f), rVar));
        C14518h c14518h = new C14518h();
        c14518h.a(this.f100502c);
        c14518h.a(new oh.C0(bArr));
        return new uh.Q(new uh.N(this.f100501b, new C13486b(Xh.t.f29035N2, new oh.G0(c14518h)), c02));
    }

    public abstract byte[] b(int i10, C13486b c13486b, int i11) throws CMSException;

    public abstract byte[] c(C13486b c13486b, byte[] bArr, Qk.r rVar) throws CMSException;

    public C0 e(A0.a aVar) {
        this.f100507h = aVar;
        return this;
    }

    public C0 f(int i10) {
        this.f100504e = i10;
        return this;
    }

    public C0 g(byte[] bArr, int i10) {
        this.f100508i = org.bouncycastle.util.a.p(bArr);
        this.f100509j = i10;
        return this;
    }

    public C0 h(SecureRandom secureRandom) {
        this.f100503d = secureRandom;
        return this;
    }

    public C0(C14549x c14549x, char[] cArr, int i10, int i11) {
        this.f100500a = cArr;
        this.f100504e = 1;
        this.f100502c = c14549x;
        this.f100505f = i10;
        this.f100506g = i11;
        this.f100507h = A0.a.f100456c;
        this.f100509j = 1024;
    }
}
