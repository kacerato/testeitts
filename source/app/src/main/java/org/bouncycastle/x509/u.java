package org.bouncycastle.x509;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.util.Collection;
import org.bouncycastle.x509.util.StreamParsingException;
import org.bouncycastle.x509.w;

public class u implements org.bouncycastle.x509.util.b {

    public Provider f102421a;

    public v f102422b;

    public u(Provider provider, v vVar) {
        this.f102421a = provider;
        this.f102422b = vVar;
    }

    public static u b(w.a aVar) {
        return new u(aVar.b(), (v) aVar.a());
    }

    public static u c(String str) throws NoSuchParserException {
        try {
            return b(w.g("X509StreamParser", str));
        } catch (NoSuchAlgorithmException e10) {
            throw new NoSuchParserException(e10.getMessage());
        }
    }

    public static u d(String str, String str2) throws NoSuchParserException, NoSuchProviderException {
        return e(str, w.i(str2));
    }

    public static u e(String str, Provider provider) throws NoSuchParserException {
        try {
            return b(w.h("X509StreamParser", str, provider));
        } catch (NoSuchAlgorithmException e10) {
            throw new NoSuchParserException(e10.getMessage());
        }
    }

    @Override
    public Collection a() throws StreamParsingException {
        return this.f102422b.c();
    }

    public Provider f() {
        return this.f102421a;
    }

    public void g(InputStream inputStream) {
        this.f102422b.a(inputStream);
    }

    public void h(byte[] bArr) {
        this.f102422b.a(new ByteArrayInputStream(bArr));
    }

    @Override
    public Object read() throws StreamParsingException {
        return this.f102422b.b();
    }
}
