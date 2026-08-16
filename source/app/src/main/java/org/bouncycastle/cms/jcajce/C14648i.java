package org.bouncycastle.cms.jcajce;

import Qk.InterfaceC3013f;
import hi.C13486b;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import li.C14146h;
import org.bouncycastle.cms.C14623b0;
import org.bouncycastle.cms.InterfaceC14626d;
import org.bouncycastle.cms.L0;
import org.bouncycastle.cms.M0;
import org.bouncycastle.operator.OperatorCreationException;
import uh.C15611b;

public class C14648i {

    public b f100890a = new b();

    public boolean f100891b;

    public InterfaceC14626d f100892c;

    public InterfaceC14626d f100893d;

    public C13486b f100894e;

    public static class b {
        public b() {
        }

        public InterfaceC3013f a(String str, PrivateKey privateKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.b(str).b(C14640a.a(privateKey));
        }

        public Qk.q b() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().b();
        }
    }

    public static class c extends b {

        public final String f100895a;

        public c(String str) {
            super();
            this.f100895a = str;
        }

        @Override
        public InterfaceC3013f a(String str, PrivateKey privateKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.b(str).f(this.f100895a).b(C14640a.a(privateKey));
        }

        @Override
        public Qk.q b() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().d(this.f100895a).b();
        }
    }

    public static class d extends b {

        public final Provider f100896a;

        public d(Provider provider) {
            super();
            this.f100896a = provider;
        }

        @Override
        public InterfaceC3013f a(String str, PrivateKey privateKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.b(str).g(this.f100896a).b(C14640a.a(privateKey));
        }

        @Override
        public Qk.q b() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().e(this.f100896a).b();
        }
    }

    public L0 a(String str, PrivateKey privateKey, X509Certificate x509Certificate) throws OperatorCreationException, CertificateEncodingException {
        return d().a(this.f100890a.a(str, C14640a.a(privateKey)), new org.bouncycastle.cert.jcajce.i(x509Certificate));
    }

    public L0 b(String str, PrivateKey privateKey, C14146h c14146h) throws OperatorCreationException {
        return d().a(this.f100890a.a(str, C14640a.a(privateKey)), c14146h);
    }

    public L0 c(String str, PrivateKey privateKey, byte[] bArr) throws OperatorCreationException {
        return d().b(this.f100890a.a(str, C14640a.a(privateKey)), bArr);
    }

    public final M0 d() throws OperatorCreationException {
        M0 m02 = new M0(this.f100890a.b());
        m02.e(this.f100891b);
        m02.d(this.f100894e);
        m02.f(this.f100892c);
        m02.g(this.f100893d);
        return m02;
    }

    public C14648i e(C13486b c13486b) {
        this.f100894e = c13486b;
        return this;
    }

    public C14648i f(boolean z10) {
        this.f100891b = z10;
        return this;
    }

    public C14648i g(String str) throws OperatorCreationException {
        this.f100890a = new c(str);
        return this;
    }

    public C14648i h(Provider provider) throws OperatorCreationException {
        this.f100890a = new d(provider);
        return this;
    }

    public C14648i i(InterfaceC14626d interfaceC14626d) {
        this.f100892c = interfaceC14626d;
        return this;
    }

    public C14648i j(C15611b c15611b) {
        this.f100892c = new C14623b0(c15611b);
        return this;
    }

    public C14648i k(InterfaceC14626d interfaceC14626d) {
        this.f100893d = interfaceC14626d;
        return this;
    }
}
