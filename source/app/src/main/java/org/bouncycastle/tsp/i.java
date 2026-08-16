package org.bouncycastle.tsp;

import Qk.p;
import Xh.t;
import ci.C4190a;
import ci.C4197h;
import ci.C4199j;
import hi.C13479C;
import hi.C13480D;
import hi.C13481E;
import hi.C13482F;
import hi.C13486b;
import hi.K;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SimpleTimeZone;
import li.C14146h;
import oh.C14512e;
import oh.C14530n;
import oh.C14539s;
import oh.C14549x;
import oh.InterfaceC14520i;
import oh.h1;
import org.bouncycastle.cms.CMSAttributeTableGenerationException;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.G;
import org.bouncycastle.cms.InterfaceC14626d;
import org.bouncycastle.cms.L0;
import org.bouncycastle.cms.P;
import org.eclipse.jdt.core.Signature;
import uh.C15611b;

public class i {

    public static final int f102287n = 0;

    public static final int f102288o = 1;

    public static final int f102289p = 2;

    public static final int f102290q = 2;

    public static final int f102291r = 3;

    public int f102292a;

    public Locale f102293b;

    public int f102294c;

    public int f102295d;

    public int f102296e;

    public boolean f102297f;

    public C13481E f102298g;

    public C14549x f102299h;

    public List f102300i;

    public List f102301j;

    public List f102302k;

    public Map f102303l;

    public L0 f102304m;

    public class a implements InterfaceC14626d {

        public final L0 f102305g;

        public final Dh.c f102306h;

        public a(L0 l02, Dh.c cVar) {
            this.f102305g = l02;
            this.f102306h = cVar;
        }

        @Override
        public C15611b a(Map map) throws CMSAttributeTableGenerationException {
            C15611b a10 = this.f102305g.j().a(map);
            C14549x c14549x = t.f29122l3;
            return a10.d(c14549x) == null ? a10.a(c14549x, new Dh.g(this.f102306h)) : a10;
        }
    }

    public class b implements InterfaceC14626d {

        public final L0 f102308g;

        public final Dh.d f102309h;

        public b(L0 l02, Dh.d dVar) {
            this.f102308g = l02;
            this.f102309h = dVar;
        }

        @Override
        public C15611b a(Map map) throws CMSAttributeTableGenerationException {
            C15611b a10 = this.f102308g.j().a(map);
            C14549x c14549x = t.f29125n3;
            return a10.d(c14549x) == null ? a10.a(c14549x, new Dh.h(this.f102309h)) : a10;
        }
    }

    public i(L0 l02, p pVar, C14549x c14549x) throws IllegalArgumentException, TSPException {
        this(l02, pVar, c14549x, false);
    }

    public void a(org.bouncycastle.util.t tVar) {
        this.f102302k.addAll(tVar.a(null));
    }

    public void b(org.bouncycastle.util.t tVar) {
        this.f102301j.addAll(tVar.a(null));
    }

    public void c(org.bouncycastle.util.t tVar) {
        this.f102300i.addAll(tVar.a(null));
    }

    public void d(C14549x c14549x, org.bouncycastle.util.t tVar) {
        this.f102303l.put(c14549x, tVar.a(null));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0069, code lost:
    
        if (r1.length() > r4) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
    
        r1.delete(r4, r1.length());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0079, code lost:
    
        if (r1.length() > r4) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C14530n e(Date date) throws TSPException {
        int i10;
        SimpleDateFormat simpleDateFormat = this.f102293b == null ? new SimpleDateFormat("yyyyMMddHHmmss.SSS", h1.f98891b) : new SimpleDateFormat("yyyyMMddHHmmss.SSS", this.f102293b);
        simpleDateFormat.setTimeZone(new SimpleTimeZone(0, Signature.SIG_BOOLEAN));
        StringBuilder sb2 = new StringBuilder(simpleDateFormat.format(date));
        int indexOf = sb2.indexOf(".");
        if (indexOf < 0) {
            sb2.append(Signature.SIG_BOOLEAN);
            return new C14530n(sb2.toString());
        }
        int i11 = this.f102292a;
        if (i11 == 1) {
            i10 = indexOf + 2;
        } else if (i11 == 2) {
            i10 = indexOf + 3;
        } else if (i11 != 3) {
            throw new TSPException("unknown time-stamp resolution: " + this.f102292a);
        }
        while (sb2.charAt(sb2.length() - 1) == '0') {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        if (sb2.length() - 1 == indexOf) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        sb2.append(Signature.SIG_BOOLEAN);
        return new C14530n(sb2.toString());
    }

    public h f(d dVar, BigInteger bigInteger, Date date) throws TSPException {
        return g(dVar, bigInteger, date, null);
    }

    public h g(d dVar, BigInteger bigInteger, Date date, C13479C c13479c) throws TSPException {
        C13479C c13479c2;
        C4197h c4197h = new C4197h(dVar.h(), dVar.j());
        int i10 = this.f102294c;
        C4190a c4190a = (i10 > 0 || this.f102295d > 0 || this.f102296e > 0) ? new C4190a(i10 > 0 ? new C14539s(this.f102294c) : null, this.f102295d > 0 ? new C14539s(this.f102295d) : null, this.f102296e > 0 ? new C14539s(this.f102296e) : null) : null;
        boolean z10 = this.f102297f;
        C14512e I10 = z10 ? C14512e.I(z10) : null;
        C14539s c14539s = dVar.l() != null ? new C14539s(dVar.l()) : null;
        C14549x c14549x = this.f102299h;
        if (dVar.m() != null) {
            c14549x = dVar.m();
        }
        C14549x c14549x2 = c14549x;
        C13479C g10 = dVar.g();
        if (c13479c != null) {
            C13480D c13480d = new C13480D();
            if (g10 != null) {
                Enumeration F10 = g10.F();
                while (F10.hasMoreElements()) {
                    c13480d.a(g10.x(C14549x.K(F10.nextElement())));
                }
            }
            Enumeration F11 = c13479c.F();
            while (F11.hasMoreElements()) {
                c13480d.a(c13479c.x(C14549x.K(F11.nextElement())));
            }
            c13479c2 = c13480d.e();
        } else {
            c13479c2 = g10;
        }
        C4199j c4199j = new C4199j(c14549x2, c4197h, new C14539s(bigInteger), this.f102292a == 0 ? this.f102293b == null ? new C14530n(date) : new C14530n(date, this.f102293b) : e(date), c4190a, I10, c14539s, this.f102298g, c13479c2);
        try {
            P p10 = new P();
            if (dVar.b()) {
                p10.f(new org.bouncycastle.util.e(this.f102300i));
                p10.b(new org.bouncycastle.util.e(this.f102302k));
            }
            p10.d(new org.bouncycastle.util.e(this.f102301j));
            if (!this.f102303l.isEmpty()) {
                for (C14549x c14549x3 : this.f102303l.o()) {
                    p10.h(c14549x3, new org.bouncycastle.util.e((Collection) this.f102303l.get(c14549x3)));
                }
            }
            p10.i(this.f102304m);
            return new h(p10.o(new G(t.f29153z2, c4199j.s(InterfaceC14520i.f98892a)), true));
        } catch (IOException e10) {
            throw new TSPException("Exception encoding info", e10);
        } catch (CMSException e11) {
            throw new TSPException("Error generating time-stamp token", e11);
        }
    }

    public void h(int i10) {
        this.f102296e = i10;
    }

    public void i(int i10) {
        this.f102295d = i10;
    }

    public void j(int i10) {
        this.f102294c = i10;
    }

    public void k(Locale locale) {
        this.f102293b = locale;
    }

    public void l(boolean z10) {
        this.f102297f = z10;
    }

    public void m(int i10) {
        this.f102292a = i10;
    }

    public void n(C13481E c13481e) {
        this.f102298g = c13481e;
    }

    public i(L0 l02, p pVar, C14549x c14549x, boolean z10) throws IllegalArgumentException, TSPException {
        L0 l03;
        this.f102292a = 0;
        this.f102293b = null;
        this.f102294c = -1;
        this.f102295d = -1;
        this.f102296e = -1;
        this.f102297f = false;
        this.f102298g = null;
        this.f102300i = new ArrayList();
        this.f102301j = new ArrayList();
        this.f102302k = new ArrayList();
        this.f102303l = new HashMap();
        this.f102304m = l02;
        this.f102299h = c14549x;
        if (!l02.l()) {
            throw new IllegalArgumentException("SignerInfoGenerator must have an associated certificate");
        }
        C14146h b10 = l02.b();
        c.e(b10);
        try {
            OutputStream outputStream = pVar.getOutputStream();
            outputStream.write(b10.getEncoded());
            outputStream.close();
            if (pVar.a().u().A(Wh.b.f27785i)) {
                l03 = new L0(l02, new a(l02, new Dh.c(pVar.b(), z10 ? new K(new C13482F(new C13481E(b10.e())), b10.i()) : null)), l02.k());
            } else {
                l03 = new L0(l02, new b(l02, new Dh.d(new C13486b(pVar.a().u()), pVar.b(), z10 ? new K(new C13482F(new C13481E(b10.e())), new C14539s(b10.i())) : null)), l02.k());
            }
            this.f102304m = l03;
        } catch (IOException e10) {
            throw new TSPException("Exception processing certificate.", e10);
        }
    }
}
