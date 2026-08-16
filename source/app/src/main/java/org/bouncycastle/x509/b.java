package org.bouncycastle.x509;

import hi.C13481E;
import hi.C13482F;
import hi.C13492e;
import hi.s0;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.CertSelector;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.security.auth.x500.X500Principal;
import oh.G0;
import oh.InterfaceC14516g;

public class b implements CertSelector, org.bouncycastle.util.r {

    public final InterfaceC14516g f102348b;

    public b(C13492e c13492e) {
        this.f102348b = c13492e.x();
    }

    @Override
    public boolean Z2(Object obj) {
        if (obj instanceof X509Certificate) {
            return match((Certificate) obj);
        }
        return false;
    }

    public final Object[] a() {
        InterfaceC14516g interfaceC14516g = this.f102348b;
        C13481E[] y10 = (interfaceC14516g instanceof s0 ? ((s0) interfaceC14516g).x() : (C13482F) interfaceC14516g).y();
        ArrayList arrayList = new ArrayList(y10.length);
        for (int i10 = 0; i10 != y10.length; i10++) {
            if (y10[i10].g() == 4) {
                try {
                    arrayList.add(new X500Principal(y10[i10].x().r().getEncoded()));
                } catch (IOException unused) {
                    throw new RuntimeException("badly formed Name object");
                }
            }
        }
        return arrayList.toArray(new Object[arrayList.size()]);
    }

    public Principal[] b() {
        Object[] a10 = a();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 != a10.length; i10++) {
            Object obj = a10[i10];
            if (obj instanceof Principal) {
                arrayList.add(obj);
            }
        }
        return (Principal[]) arrayList.toArray(new Principal[arrayList.size()]);
    }

    public final boolean c(X500Principal x500Principal, C13482F c13482f) {
        C13481E[] y10 = c13482f.y();
        for (int i10 = 0; i10 != y10.length; i10++) {
            C13481E c13481e = y10[i10];
            if (c13481e.g() == 4) {
                try {
                    if (new X500Principal(c13481e.x().r().getEncoded()).equals(x500Principal)) {
                        return true;
                    }
                } catch (IOException unused) {
                    continue;
                }
            }
        }
        return false;
    }

    @Override
    public Object clone() {
        return new b(C13492e.u(this.f102348b));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            return this.f102348b.equals(((b) obj).f102348b);
        }
        return false;
    }

    public int hashCode() {
        return this.f102348b.hashCode();
    }

    @Override
    public boolean match(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            return false;
        }
        X509Certificate x509Certificate = (X509Certificate) certificate;
        InterfaceC14516g interfaceC14516g = this.f102348b;
        if (interfaceC14516g instanceof s0) {
            s0 s0Var = (s0) interfaceC14516g;
            if (s0Var.u() != null) {
                return s0Var.u().z().L(x509Certificate.getSerialNumber()) && c(x509Certificate.getIssuerX500Principal(), s0Var.u().x());
            }
            if (c(x509Certificate.getSubjectX500Principal(), s0Var.x())) {
                return true;
            }
        } else {
            if (c(x509Certificate.getSubjectX500Principal(), (C13482F) interfaceC14516g)) {
                return true;
            }
        }
        return false;
    }

    public b(X500Principal x500Principal) throws IOException {
        this(new org.bouncycastle.jce.j(x500Principal.getEncoded()));
    }

    public b(org.bouncycastle.jce.j jVar) {
        this.f102348b = new s0(C13482F.w(new G0(new C13481E(jVar))));
    }
}
