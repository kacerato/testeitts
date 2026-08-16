package org.bouncycastle.cms.jcajce;

import hi.C13486b;
import java.security.AlgorithmParameters;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.SecureRandom;
import org.bouncycastle.cms.CMSException;

public class C14652m {

    public C14642c f100902a = new C14642c(new C14641b());

    public SecureRandom f100903b;

    public AlgorithmParameters a(C13486b c13486b) throws CMSException {
        if (c13486b.x() == null) {
            return null;
        }
        try {
            AlgorithmParameters c10 = this.f100902a.c(c13486b.u());
            C14640a.o(c10, c13486b.x());
            return c10;
        } catch (NoSuchAlgorithmException e10) {
            throw new CMSException("can't find parameters for algorithm", e10);
        } catch (NoSuchProviderException e11) {
            throw new CMSException("can't find provider for algorithm", e11);
        }
    }

    public C14652m b(String str) {
        this.f100902a = new C14642c(new S(str));
        return this;
    }

    public C14652m c(Provider provider) {
        this.f100902a = new C14642c(new T(provider));
        return this;
    }
}
