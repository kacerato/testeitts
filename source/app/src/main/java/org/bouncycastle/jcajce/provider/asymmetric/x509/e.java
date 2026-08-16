package org.bouncycastle.jcajce.provider.asymmetric.x509;

import ei.C13155a;
import fi.C13228d;
import hi.C13478B;
import hi.C13479C;
import hi.C13481E;
import hi.C13482F;
import hi.C13503o;
import hi.i0;
import java.io.IOException;
import java.math.BigInteger;
import java.security.cert.CRLException;
import java.security.cert.X509CRLEntry;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import oh.C14522j;
import oh.C14549x;
import oh.InterfaceC14520i;
import oh.r;
import org.bouncycastle.util.w;

public class e extends X509CRLEntry {

    public i0.b f101365b;

    public C13228d f101366c;

    public volatile boolean f101367d;

    public volatile int f101368e;

    public e(i0.b bVar) {
        this.f101365b = bVar;
        this.f101366c = null;
    }

    public final C13478B a(C14549x c14549x) {
        C13479C u10 = this.f101365b.u();
        if (u10 != null) {
            return u10.x(c14549x);
        }
        return null;
    }

    public final Set c(boolean z10) {
        C13479C u10 = this.f101365b.u();
        if (u10 == null) {
            return null;
        }
        HashSet hashSet = new HashSet();
        Enumeration F10 = u10.F();
        while (F10.hasMoreElements()) {
            C14549x c14549x = (C14549x) F10.nextElement();
            if (z10 == u10.x(c14549x).B()) {
                hashSet.add(c14549x.J());
            }
        }
        return hashSet;
    }

    public final C13228d d(boolean z10, C13228d c13228d) {
        if (!z10) {
            return null;
        }
        C13478B a10 = a(C13478B.f90542r);
        if (a10 == null) {
            return c13228d;
        }
        try {
            C13481E[] y10 = C13482F.w(a10.A()).y();
            for (int i10 = 0; i10 < y10.length; i10++) {
                if (y10[i10].g() == 4) {
                    return C13228d.x(y10[i10].x());
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return super.equals(this);
        }
        e eVar = (e) obj;
        if (this.f101367d && eVar.f101367d && this.f101368e != eVar.f101368e) {
            return false;
        }
        return this.f101365b.equals(eVar.f101365b);
    }

    @Override
    public X500Principal getCertificateIssuer() {
        if (this.f101366c == null) {
            return null;
        }
        try {
            return new X500Principal(this.f101366c.getEncoded());
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public Set getCriticalExtensionOIDs() {
        return c(true);
    }

    @Override
    public byte[] getEncoded() throws CRLException {
        try {
            return this.f101365b.s(InterfaceC14520i.f98892a);
        } catch (IOException e10) {
            throw new CRLException(e10.toString());
        }
    }

    @Override
    public byte[] getExtensionValue(String str) {
        C13478B a10 = a(new C14549x(str));
        if (a10 == null) {
            return null;
        }
        try {
            return a10.y().getEncoded();
        } catch (Exception e10) {
            throw new IllegalStateException("Exception encoding: " + e10.toString());
        }
    }

    @Override
    public Set getNonCriticalExtensionOIDs() {
        return c(false);
    }

    @Override
    public Date getRevocationDate() {
        return this.f101365b.x().u();
    }

    @Override
    public BigInteger getSerialNumber() {
        return this.f101365b.y().I();
    }

    @Override
    public boolean hasExtensions() {
        return this.f101365b.u() != null;
    }

    @Override
    public boolean hasUnsupportedCriticalExtension() {
        Set criticalExtensionOIDs = getCriticalExtensionOIDs();
        return (criticalExtensionOIDs == null || criticalExtensionOIDs.isEmpty()) ? false : true;
    }

    @Override
    public int hashCode() {
        if (!this.f101367d) {
            this.f101368e = super.hashCode();
            this.f101367d = true;
        }
        return this.f101368e;
    }

    @Override
    public String toString() {
        Object w10;
        StringBuffer stringBuffer = new StringBuffer();
        String f10 = w.f();
        stringBuffer.append("      userCertificate: ");
        stringBuffer.append((Object) getSerialNumber());
        stringBuffer.append(f10);
        stringBuffer.append("       revocationDate: ");
        stringBuffer.append((Object) getRevocationDate());
        stringBuffer.append(f10);
        stringBuffer.append("       certificateIssuer: ");
        stringBuffer.append((Object) getCertificateIssuer());
        stringBuffer.append(f10);
        C13479C u10 = this.f101365b.u();
        if (u10 != null) {
            Enumeration F10 = u10.F();
            if (F10.hasMoreElements()) {
                String str = "   crlEntryExtensions:";
                loop0: while (true) {
                    stringBuffer.append(str);
                    while (true) {
                        stringBuffer.append(f10);
                        while (F10.hasMoreElements()) {
                            C14549x c14549x = (C14549x) F10.nextElement();
                            C13478B x10 = u10.x(c14549x);
                            if (x10.y() != null) {
                                r rVar = new r(x10.y().H());
                                stringBuffer.append("                       critical(");
                                stringBuffer.append(x10.B());
                                stringBuffer.append(") ");
                                try {
                                    if (c14549x.A(C13478B.f90537m)) {
                                        w10 = C13503o.u(C14522j.F(rVar.k()));
                                    } else if (c14549x.A(C13478B.f90542r)) {
                                        stringBuffer.append("Certificate issuer: ");
                                        w10 = C13482F.w(rVar.k());
                                    } else {
                                        stringBuffer.append(c14549x.J());
                                        stringBuffer.append(" value = ");
                                        stringBuffer.append(C13155a.c(rVar.k()));
                                        stringBuffer.append(f10);
                                    }
                                    stringBuffer.append(w10);
                                    stringBuffer.append(f10);
                                } catch (Exception unused) {
                                    stringBuffer.append(c14549x.J());
                                    stringBuffer.append(" value = ");
                                    str = "*****";
                                }
                            }
                        }
                    }
                }
            }
        }
        return stringBuffer.toString();
    }

    public e(i0.b bVar, boolean z10, C13228d c13228d) {
        this.f101365b = bVar;
        this.f101366c = d(z10, c13228d);
    }
}
