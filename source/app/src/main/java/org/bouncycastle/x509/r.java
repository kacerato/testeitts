package org.bouncycastle.x509;

import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.util.Collection;
import org.bouncycastle.x509.w;

public class r implements org.bouncycastle.util.t {

    public Provider f102419b;

    public t f102420c;

    public r(Provider provider, t tVar) {
        this.f102419b = provider;
        this.f102420c = tVar;
    }

    public static r b(w.a aVar, s sVar) {
        t tVar = (t) aVar.a();
        tVar.b(sVar);
        return new r(aVar.b(), tVar);
    }

    public static r c(String str, s sVar) throws NoSuchStoreException {
        try {
            return b(w.g("X509Store", str), sVar);
        } catch (NoSuchAlgorithmException e10) {
            throw new NoSuchStoreException(e10.getMessage());
        }
    }

    public static r d(String str, s sVar, String str2) throws NoSuchStoreException, NoSuchProviderException {
        return e(str, sVar, w.i(str2));
    }

    public static r e(String str, s sVar, Provider provider) throws NoSuchStoreException {
        try {
            return b(w.h("X509Store", str, provider), sVar);
        } catch (NoSuchAlgorithmException e10) {
            throw new NoSuchStoreException(e10.getMessage());
        }
    }

    @Override
    public Collection a(org.bouncycastle.util.r rVar) {
        return this.f102420c.a(rVar);
    }

    public Provider f() {
        return this.f102419b;
    }
}
