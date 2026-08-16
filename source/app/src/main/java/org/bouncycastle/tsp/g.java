package org.bouncycastle.tsp;

import ci.C4201l;
import hi.C13479C;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import oh.AbstractC14508c;
import oh.C14518h;
import oh.C14538r0;
import oh.C14539s;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.M0;
import oh.V0;
import th.F;
import th.L;

public class g {

    public int f102274a;

    public C14518h f102275b;

    public int f102276c;

    public i f102277d;

    public Set f102278e;

    public Set f102279f;

    public Set f102280g;

    public static class a extends C14538r0 {
        public a(int i10) {
            super(AbstractC14508c.G(i10), AbstractC14508c.K(i10));
        }
    }

    public g(i iVar, Set set) {
        this(iVar, set, null, null);
    }

    public final void a(String str) {
        this.f102275b.a(new M0(str));
    }

    public final Set b(Set set) {
        if (set == null) {
            return set;
        }
        HashSet hashSet = new HashSet(set.size());
        for (Object obj : set) {
            if (obj instanceof String) {
                hashSet.add(new C14549x((String) obj));
            } else {
                hashSet.add(obj);
            }
        }
        return hashSet;
    }

    public f c(d dVar, BigInteger bigInteger, Date date) throws TSPException {
        try {
            return f(dVar, bigInteger, date, "Operation Okay");
        } catch (Exception e10) {
            return h(e10);
        }
    }

    public f d(int i10, int i11, String str) throws TSPException {
        this.f102274a = i10;
        this.f102275b = new C14518h();
        j(i11);
        if (str != null) {
            a(str);
        }
        try {
            return new f(new C4201l(i(), null));
        } catch (IOException unused) {
            throw new TSPException("created badly formatted response!");
        }
    }

    public f e(d dVar, BigInteger bigInteger, Date date) throws TSPException {
        return f(dVar, bigInteger, date, null);
    }

    public f f(d dVar, BigInteger bigInteger, Date date, String str) throws TSPException {
        return g(dVar, bigInteger, date, str, null);
    }

    public f g(d dVar, BigInteger bigInteger, Date date, String str, C13479C c13479c) throws TSPException {
        if (date == null) {
            throw new TSPValidationException("The time source is not available.", 512);
        }
        dVar.q(this.f102278e, this.f102279f, this.f102280g);
        this.f102274a = 0;
        this.f102275b = new C14518h();
        if (str != null) {
            a(str);
        }
        try {
            try {
                return new f(new V0(new InterfaceC14516g[]{i().r(), this.f102277d.g(dVar, bigInteger, date, c13479c).l().s().r()}));
            } catch (IOException unused) {
                throw new TSPException("created badly formatted response!");
            }
        } catch (TSPException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new TSPException("Timestamp token received cannot be converted to ContentInfo", e11);
        }
    }

    public f h(Exception exc) throws TSPException {
        return d(2, exc instanceof TSPValidationException ? ((TSPValidationException) exc).getFailureCode() : 1073741824, exc.getMessage());
    }

    public final L i() {
        C14518h c14518h = new C14518h();
        c14518h.a(new C14539s(this.f102274a));
        if (this.f102275b.i() > 0) {
            c14518h.a(F.u(new G0(this.f102275b)));
        }
        if (this.f102276c != 0) {
            c14518h.a(new a(this.f102276c));
        }
        return L.v(new G0(c14518h));
    }

    public final void j(int i10) {
        this.f102276c = i10 | this.f102276c;
    }

    public g(i iVar, Set set, Set set2) {
        this(iVar, set, set2, null);
    }

    public g(i iVar, Set set, Set set2, Set set3) {
        this.f102277d = iVar;
        this.f102278e = b(set);
        this.f102279f = b(set2);
        this.f102280g = b(set3);
        this.f102275b = new C14518h();
    }
}
