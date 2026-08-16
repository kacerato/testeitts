package org.bouncycastle.cert.jcajce;

import Qk.InterfaceC3015h;
import hi.h0;
import java.security.Provider;
import java.security.cert.CertificateException;
import li.C14146h;
import li.InterfaceC14147i;
import org.bouncycastle.operator.OperatorCreationException;

public class j implements InterfaceC14147i {

    public org.bouncycastle.operator.jcajce.c f100443a = new org.bouncycastle.operator.jcajce.c();

    @Override
    public InterfaceC3015h a(h0 h0Var) throws OperatorCreationException {
        return this.f100443a.e(h0Var);
    }

    @Override
    public InterfaceC3015h b(C14146h c14146h) throws OperatorCreationException {
        try {
            return this.f100443a.h(c14146h);
        } catch (CertificateException e10) {
            throw new OperatorCreationException("Unable to process certificate: " + e10.getMessage(), e10);
        }
    }

    public j c(String str) {
        this.f100443a.l(str);
        return this;
    }

    public j d(Provider provider) {
        this.f100443a.m(provider);
        return this;
    }
}
