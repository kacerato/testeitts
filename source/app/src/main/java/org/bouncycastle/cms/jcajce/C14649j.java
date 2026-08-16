package org.bouncycastle.cms.jcajce;

import Qk.InterfaceC3015h;
import java.security.Provider;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import li.C14146h;
import org.bouncycastle.cms.P0;
import org.bouncycastle.cms.Z;
import org.bouncycastle.operator.OperatorCreationException;

public class C14649j {

    public b f100897a = new b();

    public static class b {
        public b() {
        }

        public InterfaceC3015h a(PublicKey publicKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().f(publicKey);
        }

        public InterfaceC3015h b(X509Certificate x509Certificate) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().g(x509Certificate);
        }

        public InterfaceC3015h c(C14146h c14146h) throws OperatorCreationException, CertificateException {
            return new org.bouncycastle.operator.jcajce.c().h(c14146h);
        }

        public Qk.q d() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().b();
        }
    }

    public static class c extends b {

        public final String f100898a;

        public c(String str) {
            super();
            this.f100898a = str;
        }

        @Override
        public InterfaceC3015h a(PublicKey publicKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().l(this.f100898a).f(publicKey);
        }

        @Override
        public InterfaceC3015h b(X509Certificate x509Certificate) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().l(this.f100898a).g(x509Certificate);
        }

        @Override
        public InterfaceC3015h c(C14146h c14146h) throws OperatorCreationException, CertificateException {
            return new org.bouncycastle.operator.jcajce.c().l(this.f100898a).h(c14146h);
        }

        @Override
        public Qk.q d() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().d(this.f100898a).b();
        }
    }

    public static class d extends b {

        public final Provider f100899a;

        public d(Provider provider) {
            super();
            this.f100899a = provider;
        }

        @Override
        public InterfaceC3015h a(PublicKey publicKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().m(this.f100899a).f(publicKey);
        }

        @Override
        public InterfaceC3015h b(X509Certificate x509Certificate) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().m(this.f100899a).g(x509Certificate);
        }

        @Override
        public InterfaceC3015h c(C14146h c14146h) throws OperatorCreationException, CertificateException {
            return new org.bouncycastle.operator.jcajce.c().m(this.f100899a).h(c14146h);
        }

        @Override
        public Qk.q d() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().e(this.f100899a).b();
        }
    }

    public P0 a(PublicKey publicKey) throws OperatorCreationException {
        return new P0(new Z(), new Qk.m(), this.f100897a.a(publicKey), this.f100897a.d());
    }

    public P0 b(X509Certificate x509Certificate) throws OperatorCreationException {
        return new P0(new Z(), new Qk.m(), this.f100897a.b(x509Certificate), this.f100897a.d());
    }

    public P0 c(C14146h c14146h) throws OperatorCreationException, CertificateException {
        return new P0(new Z(), new Qk.m(), this.f100897a.c(c14146h), this.f100897a.d());
    }

    public C14649j d(String str) {
        this.f100897a = new c(str);
        return this;
    }

    public C14649j e(Provider provider) {
        this.f100897a = new d(provider);
        return this;
    }
}
