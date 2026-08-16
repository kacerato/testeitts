package Hk;

import yk.C16204f;

public class a {

    public static final C16204f.b f8582a;

    public static final C16204f.b f8583b;

    public static final C16204f.b f8584c;

    public static final C16204f.b f8585d;

    public static final C16204f.b f8586e;

    public static final C16204f.b f8587f;

    public static final C16204f.b f8588g;

    public static final C16204f.b f8589h;

    public static final C16204f.b f8590i;

    public static final C16204f.b f8591j;

    public static final C16204f.b f8592k;

    public static final C16204f.b f8593l;

    public static final C16204f.b f8594m;

    public static final C16204f.b f8595n;

    public static final C16204f.b f8596o;

    public static final C16204f.b f8597p;

    static {
        C16204f.b bVar = Jk.a.f10645i;
        f8582a = bVar.z("EnrolmentRequestMessage");
        f8583b = bVar.z("EnrolmentResponseMessage");
        f8584c = Jk.a.f10644h.z("AuthorizationRequestMessage");
        f8585d = bVar.z("AuthorizationRequestMessageWithPop");
        f8586e = bVar.z("AuthorizationResponseMessage");
        C16204f.b bVar2 = Jk.a.f10640d;
        f8587f = bVar2.z("CertificateRevocationListMessage");
        f8588g = bVar2.z("TlmCertificateTrustListMessage");
        f8589h = bVar2.z("RcaCertificateTrustListMessage");
        C16204f.b z10 = bVar2.z("RcaSingleSignedLinkCertificateMessage");
        f8590i = z10;
        C16204f.b z11 = C16204f.d(f.f8628d.q("enrolmentRequest"), f.f8626b.q("enrolmentResponse"), c.f8620d.q("authorizationRequest"), c.f8618b.q("authorizationResponse"), b.f8600c.q("certificateRevocationList"), b.f8615r.q("certificateTrustListTlm"), b.f8616s.q("certificateTrustListRca"), d.f8622b.q("authorizationValidationRequest"), d.f8623c.q("authorizationValidationResponse"), e.f8624a.q("caCertificateRequest"), C16204f.j(g.f8630b.q("linkCertificateTlm"), g.f8631c.q("singleSignedLinkCertificateRca"), z10.q("doubleSignedlinkCertificateRca"))).z("EtsiTs102941DataContent");
        f8591j = z11;
        f8592k = C16204f.y(Ik.a.f10047e.q("version"), z11.q("content")).z("EtsiTs102941Data");
        f8593l = bVar.z("AuthorizationValidationRequestMessage");
        f8594m = bVar2.z("CaCertificateRequestMessage");
        f8595n = bVar2.z("CaCertificateRekeyingMessage");
        f8596o = bVar2.z("TlmLinkCertificateMessage");
        f8597p = bVar2.z("RcaDoubleSignedLinkCertificateMessage");
    }
}
