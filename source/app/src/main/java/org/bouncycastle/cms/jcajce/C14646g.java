package org.bouncycastle.cms.jcajce;

import Qk.InterfaceC3013f;
import hi.C13486b;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import li.C14146h;
import org.bouncycastle.cms.C14621a0;
import org.bouncycastle.cms.InterfaceC14626d;
import org.bouncycastle.cms.L0;
import org.bouncycastle.cms.M0;
import org.bouncycastle.operator.OperatorCreationException;

public class C14646g {

    public M0 f100883a;

    public C14646g(Qk.q qVar) {
        this(qVar, new C14621a0());
    }

    public L0 a(InterfaceC3013f interfaceC3013f, X509Certificate x509Certificate) throws OperatorCreationException, CertificateEncodingException {
        return b(interfaceC3013f, new org.bouncycastle.cert.jcajce.i(x509Certificate));
    }

    public L0 b(InterfaceC3013f interfaceC3013f, C14146h c14146h) throws OperatorCreationException {
        return this.f100883a.a(interfaceC3013f, c14146h);
    }

    public L0 c(InterfaceC3013f interfaceC3013f, byte[] bArr) throws OperatorCreationException {
        return this.f100883a.b(interfaceC3013f, bArr);
    }

    public C14646g d(C13486b c13486b) {
        this.f100883a.d(c13486b);
        return this;
    }

    public C14646g e(boolean z10) {
        this.f100883a.e(z10);
        return this;
    }

    public C14646g f(InterfaceC14626d interfaceC14626d) {
        this.f100883a.f(interfaceC14626d);
        return this;
    }

    public C14646g g(InterfaceC14626d interfaceC14626d) {
        this.f100883a.g(interfaceC14626d);
        return this;
    }

    public C14646g(Qk.q qVar, org.bouncycastle.cms.N n10) {
        this.f100883a = new M0(qVar, n10);
    }
}
