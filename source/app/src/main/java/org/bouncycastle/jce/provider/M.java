package org.bouncycastle.jce.provider;

import com.android.apksig.internal.oid.OidConstants;
import dk.InterfaceC12950f;
import java.security.cert.CertPathValidatorException;
import java.security.cert.Certificate;
import java.security.cert.PKIXRevocationChecker;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import mj.InterfaceC14273a;
import oh.C14549x;
import pj.InterfaceC15005a;
import tj.InterfaceC15463a;
import yh.InterfaceC16192a;

public class M extends PKIXRevocationChecker implements Hj.q {

    public static final int f101631f = 15000;

    public static final int f101632g = 32768;

    public static final Map f101633h;

    public final InterfaceC12950f f101634b;

    public final K f101635c;

    public final L f101636d;

    public Hj.r f101637e;

    static {
        HashMap hashMap = new HashMap();
        f101633h = hashMap;
        hashMap.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_RSA), "SHA1WITHRSA");
        hashMap.put(Xh.t.f29059U0, "SHA224WITHRSA");
        hashMap.put(Xh.t.f29049R0, "SHA256WITHRSA");
        hashMap.put(Xh.t.f29051S0, "SHA384WITHRSA");
        hashMap.put(Xh.t.f29055T0, "SHA512WITHRSA");
        hashMap.put(InterfaceC16192a.f130282n, "GOST3411WITHGOST3410");
        hashMap.put(InterfaceC16192a.f130283o, "GOST3411WITHECGOST3410");
        hashMap.put(Cj.a.f4464i, "GOST3411-2012-256WITHECGOST3410-2012-256");
        hashMap.put(Cj.a.f4465j, "GOST3411-2012-512WITHECGOST3410-2012-512");
        hashMap.put(InterfaceC14273a.f97127d, "SHA1WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97128e, "SHA224WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97129f, "SHA256WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97130g, "SHA384WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97131h, "SHA512WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC14273a.f97132i, "RIPEMD160WITHPLAIN-ECDSA");
        hashMap.put(InterfaceC15005a.f104002s, "SHA1WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104003t, "SHA224WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104004u, "SHA256WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104005v, "SHA384WITHCVC-ECDSA");
        hashMap.put(InterfaceC15005a.f104006w, "SHA512WITHCVC-ECDSA");
        hashMap.put(InterfaceC15463a.f117695a, "XMSS");
        hashMap.put(InterfaceC15463a.f117696b, "XMSSMT");
        hashMap.put(new C14549x(OidConstants.OID_SIG_MD5_WITH_RSA), "MD5WITHRSA");
        hashMap.put(new C14549x("1.2.840.113549.1.1.2"), "MD2WITHRSA");
        hashMap.put(new C14549x(OidConstants.OID_SIG_SHA1_WITH_DSA), "SHA1WITHDSA");
        hashMap.put(ki.r.f95301E5, "SHA1WITHECDSA");
        hashMap.put(ki.r.f95309K5, "SHA224WITHECDSA");
        hashMap.put(ki.r.f95311L5, "SHA256WITHECDSA");
        hashMap.put(ki.r.f95313M5, "SHA384WITHECDSA");
        hashMap.put(ki.r.f95315N5, "SHA512WITHECDSA");
        hashMap.put(Bj.b.f1913k, "SHA1WITHRSA");
        hashMap.put(Bj.b.f1912j, "SHA1WITHDSA");
        hashMap.put(Sh.d.f23334a0, "SHA224WITHDSA");
        hashMap.put(Sh.d.f23336b0, "SHA256WITHDSA");
    }

    public M(InterfaceC12950f interfaceC12950f) {
        this.f101634b = interfaceC12950f;
        this.f101635c = new K(interfaceC12950f);
        this.f101636d = new L(this, interfaceC12950f);
    }

    @Override
    public void a(String str, Object obj) {
    }

    @Override
    public void b(Hj.r rVar) {
        this.f101637e = rVar;
        this.f101635c.b(rVar);
        this.f101636d.b(rVar);
    }

    public final boolean c(PKIXRevocationChecker.Option option) {
        return getOptions().contains(option);
    }

    @Override
    public void check(Certificate certificate, Collection<String> collection) throws CertPathValidatorException {
        X509Certificate x509Certificate = (X509Certificate) certificate;
        if (!c(PKIXRevocationChecker.Option.ONLY_END_ENTITY) || x509Certificate.getBasicConstraints() == -1) {
            if (c(PKIXRevocationChecker.Option.PREFER_CRLS)) {
                try {
                    this.f101635c.check(certificate);
                    return;
                } catch (RecoverableCertPathValidatorException e10) {
                    if (c(PKIXRevocationChecker.Option.NO_FALLBACK)) {
                        throw e10;
                    }
                    this.f101636d.check(certificate);
                    return;
                }
            }
            try {
                this.f101636d.check(certificate);
            } catch (RecoverableCertPathValidatorException e11) {
                if (c(PKIXRevocationChecker.Option.NO_FALLBACK)) {
                    throw e11;
                }
                this.f101635c.check(certificate);
            }
        }
    }

    @Override
    public List<CertPathValidatorException> getSoftFailExceptions() {
        return this.f101636d.k();
    }

    @Override
    public Set<String> getSupportedExtensions() {
        return null;
    }

    @Override
    public void init(boolean z10) throws CertPathValidatorException {
        this.f101637e = null;
        this.f101635c.c(z10);
        this.f101636d.m(z10);
    }

    @Override
    public boolean isForwardCheckingSupported() {
        return false;
    }
}
