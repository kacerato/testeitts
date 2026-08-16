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

public class C14647h {

    public Qk.q f100885b;

    public b f100884a = new b();

    public org.bouncycastle.cms.M f100886c = new Z();

    public Qk.J f100887d = new Qk.m();

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

        public final String f100888a;

        public c(String str) {
            super();
            this.f100888a = str;
        }

        @Override
        public InterfaceC3015h a(PublicKey publicKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().l(this.f100888a).f(publicKey);
        }

        @Override
        public InterfaceC3015h b(X509Certificate x509Certificate) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().l(this.f100888a).g(x509Certificate);
        }

        @Override
        public InterfaceC3015h c(C14146h c14146h) throws OperatorCreationException, CertificateException {
            return new org.bouncycastle.operator.jcajce.c().l(this.f100888a).h(c14146h);
        }

        @Override
        public Qk.q d() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().d(this.f100888a).b();
        }
    }

    public static class d extends b {

        public final Provider f100889a;

        public d(Provider provider) {
            super();
            this.f100889a = provider;
        }

        @Override
        public InterfaceC3015h a(PublicKey publicKey) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().m(this.f100889a).f(publicKey);
        }

        @Override
        public InterfaceC3015h b(X509Certificate x509Certificate) throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.c().m(this.f100889a).g(x509Certificate);
        }

        @Override
        public InterfaceC3015h c(C14146h c14146h) throws OperatorCreationException, CertificateException {
            return new org.bouncycastle.operator.jcajce.c().m(this.f100889a).h(c14146h);
        }

        @Override
        public Qk.q d() throws OperatorCreationException {
            return new org.bouncycastle.operator.jcajce.d().e(this.f100889a).b();
        }
    }

    public C14647h(Qk.q qVar) {
        this.f100885b = qVar;
    }

    public P0 a(PublicKey publicKey) throws OperatorCreationException {
        return new P0(this.f100886c, this.f100887d, this.f100884a.a(publicKey), this.f100885b);
    }

    public P0 b(X509Certificate x509Certificate) throws OperatorCreationException {
        return new P0(this.f100886c, this.f100887d, this.f100884a.b(x509Certificate), this.f100885b);
    }

    public P0 c(C14146h c14146h) throws OperatorCreationException, CertificateException {
        return new P0(this.f100886c, this.f100887d, this.f100884a.c(c14146h), this.f100885b);
    }

    public C14647h d(String str) {
        this.f100884a = new c(str);
        return this;
    }

    public C14647h e(Provider provider) {
        this.f100884a = new d(provider);
        return this;
    }

    public C14647h f(Qk.J j10) {
        this.f100887d = j10;
        return this;
    }

    public C14647h g(org.bouncycastle.cms.M m10) {
        this.f100886c = m10;
        return this;
    }
}
