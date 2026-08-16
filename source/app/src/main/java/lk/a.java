package Lk;

import Tj.d;
import java.math.BigInteger;
import oh.C14538r0;
import oh.C14539s;
import oh.InterfaceC14516g;
import org.bouncycastle.cms.InterfaceC14626d;
import yk.C16201c;
import yk.C16204f;
import yk.InterfaceC16202d;
import yk.k;
import yk.l;

public class a {

    public static final C16204f.b f14391A;

    public static final C16204f.b f14392B;

    public static final C16204f.b f14393C;

    public static C14539s f14394D;

    public static C14539s f14395E;

    public static final C16204f.b f14396F;

    public static final C16204f.b f14397G;

    public static final C16204f.b f14398H;

    public static final C16204f.b f14399I;

    public static final C16204f.b f14400J;

    public static final C16204f.b f14401K;

    public static final C16204f.b f14402L;

    public static final C16204f.b f14403M;

    public static final C16204f.b f14404N;

    public static final C16204f.b f14405O;

    public static final C16204f.b f14406P;

    public static final C16204f.b f14407Q;

    public static final C16204f.b f14408R;

    public static final C16204f.b f14409a;

    public static final C16204f.b f14410b;

    public static final C16204f.b f14411c;

    public static final C16204f.b f14412d;

    public static final C14539s f14413e;

    public static final InterfaceC14516g[] f14414f;

    public static final C16204f.b f14415g;

    public static final k f14416h;

    public static final C16204f.b f14417i;

    public static final C16204f.b f14418j;

    public static final C16204f.b f14419k;

    public static final C16204f.b f14420l;

    public static final C16204f.b f14421m;

    public static final C16204f.b f14422n;

    public static final C16204f.b f14423o;

    public static final C16204f.b f14424p;

    public static final C16204f.b f14425q;

    public static final C16204f.b f14426r;

    public static final C16204f.b f14427s;

    public static final C16204f.b f14428t;

    public static final C16204f.b f14429u;

    public static final C16204f.b f14430v;

    public static final C16204f.b f14431w;

    public static final C16204f.b f14432x;

    public static final C16204f.b f14433y;

    public static final C16204f.b f14434z;

    public class C0403a implements k {
        @Override
        public C16201c a(l lVar) {
            C14539s F10 = C14539s.F(lVar.a(0).r());
            if (F10.A(a.f14413e)) {
                return C16204f.z(Kk.a.f11466i).w(1L).q("extns").f();
            }
            throw new IllegalArgumentException("No forward definition for type id " + ((Object) F10));
        }

        @Override
        public InterfaceC14516g[] j() {
            return a.f14414f;
        }
    }

    public class b implements InterfaceC16202d {

        public C16201c f14435a;

        @Override
        public C16201c build() {
            C16201c c16201c;
            synchronized (this) {
                try {
                    if (this.f14435a == null) {
                        this.f14435a = a.f14403M.q("tbsData").f();
                    }
                    c16201c = this.f14435a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return c16201c;
        }
    }

    public class c implements InterfaceC16202d {

        public C16201c f14436a;

        @Override
        public C16201c build() {
            C16201c c16201c;
            synchronized (this) {
                try {
                    if (this.f14436a == null) {
                        this.f14436a = a.f14404N.q("signedData").t(true).f();
                    }
                    c16201c = this.f14436a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return c16201c;
        }
    }

    static {
        C16204f.b z10 = C16204f.r().z("Opaque");
        f14409a = z10;
        C16204f.b z11 = C16204f.n(0L, 255L).z("PduFunctionalType");
        f14410b = z11;
        C16204f.b z12 = C16204f.d(C16204f.s(32).q("sha256HashedData"), C16204f.j(C16204f.s(48).q("sha384HashedData"), C16204f.s(32).q("reserved"))).z("HashedData");
        f14411c = z12;
        C16204f.b bVar = Mk.a.f15403h;
        C16204f.b q10 = bVar.q("cracaId");
        C16204f.b bVar2 = Mk.a.f15387Y;
        C16204f.b z13 = C16204f.y(q10, bVar2.q("crlSeries"), C16204f.j(new Object[0])).z("MissingCrlIdentifier");
        f14412d = z13;
        C14539s c14539s = new C14539s(org.bouncycastle.util.b.f102317c);
        f14413e = c14539s;
        f14414f = new InterfaceC14516g[]{c14539s};
        C16204f.b B10 = C16204f.n(0L, 255L).z("HeaderInfoContributorId").B(c14539s);
        f14415g = B10;
        C0403a c0403a = new C0403a();
        f14416h = c0403a;
        C16204f.b z14 = C16204f.y(B10.q("contributorId"), C16204f.a(c0403a).q("Extn")).z("ContributedExtensionBlock");
        f14417i = z14;
        C16204f.b z15 = C16204f.z(z14).w(1L).z("ContributedExtensionBlocks");
        f14418j = z15;
        C16204f.b bVar3 = Mk.a.f15405i;
        C16204f.b z16 = bVar3.z("PreSharedKeyRecipientInfo");
        f14419k = z16;
        C16204f.b bVar4 = Mk.a.f15369G;
        C16204f.b z17 = C16204f.d(bVar4.q("eciesNistP256"), bVar4.q("eciesBrainpoolP256r1"), C16204f.j(new Object[0])).z("EncryptedDataEncryptionKey");
        f14420l = z17;
        C16204f.b z18 = C16204f.y(bVar3.q("recipientId"), z17.q("encKey")).z("PKRecipientInfo");
        f14421m = z18;
        C16204f.b z19 = C16204f.y(C16204f.s(12).q("nonce"), z10.q("ccmCiphertext")).z("AesCcmCiphertext");
        f14422n = z19;
        C16204f.b z20 = C16204f.d(z19.q("aes128ccm"), C16204f.j(new Object[0])).z("SymmetricCiphertext");
        f14423o = z20;
        C16204f.b z21 = C16204f.y(bVar3.q("recipientId"), z20.q("encKey")).z("SymmRecipientInfo");
        f14424p = z21;
        C16204f.b z22 = C16204f.d(z16.q("pskRecipInfo"), z21.q("symmRecipInfo"), z18.q("certRecipInfo"), z18.q("signedDataRecipInfo"), z18.q("rekRecipInfo")).z("RecipientInfo");
        f14425q = z22;
        C16204f.b z23 = C16204f.z(z22).z("SequenceOfRecipientInfo");
        f14426r = z23;
        C16204f.b z24 = C16204f.y(z23.q("recipients"), z20.q("ciphertext")).z("EncryptedData");
        f14427s = z24;
        C16204f.b z25 = C16204f.b(8L).j(new C14538r0(new byte[]{0}, 0)).z("EndEntityType");
        f14428t = z25;
        C16204f.b z26 = C16204f.d(Mk.a.f15385W.q("explicit"), C16204f.q().q(d.f25405q), C16204f.j(new Object[0])).z("SubjectPermissions");
        f14429u = z26;
        C16204f.b z27 = C16204f.d(Mk.a.f15374L.q("verificationKey"), Mk.a.f15435y.q("reconstructionValue"), C16204f.j(new Object[0])).z("VerificationKeyIndicator");
        f14430v = z27;
        C16204f.b z28 = C16204f.y(z26.q("subjectPermissions"), C16204f.m(1L).q("minChainLength"), C16204f.m(0L).q("chainLengthRange"), z25.q("eeType")).z("PsidGroupPermissions");
        f14431w = z28;
        C16204f.b z29 = C16204f.z(z28).z("SequenceOfPsidGroupPermissions");
        f14432x = z29;
        C16204f.b z30 = C16204f.y(Mk.a.f15423r.q("iCert"), Mk.a.f15427t.q("linkageValue"), C16204f.v(Mk.a.f15429u.q("groupLinkageValue")), C16204f.j(new Object[0])).z("LinkageData");
        f14433y = z30;
        C16204f.b z31 = C16204f.d(z30.q("linkageData"), Mk.a.f15425s.q("name"), C16204f.t(1, 64).q("binaryId"), C16204f.q().q("none"), C16204f.j(new Object[0])).z("CertificateId");
        f14434z = z31;
        C16204f.b z32 = C16204f.y(z31.q("id"), bVar.q("cracaId"), bVar2.q("crlSeries"), Mk.a.f15421q.q("validityPeriod"), C16204f.v(Mk.a.f15432v0.q("region"), Mk.a.f15386X.q("assuranceLevel"), Mk.a.f15379Q.q("appPermissions"), z29.q("certIssuePermissions"), z29.q("certRequestPermissions"), C16204f.q().q("canRequestRollover"), Mk.a.f15372J.q("encryptionKey")), z27.q("verifyKeyIndicator"), C16204f.j(new Object[0])).z("ToBeSignedCertificate");
        f14391A = z32;
        C16204f.b q11 = bVar3.q("sha256AndDigest");
        C16204f.b bVar5 = Mk.a.f15368F;
        C16204f.b z33 = C16204f.d(q11, bVar5.q("self"), C16204f.j(bVar3.q("sha384AndDigest"))).z("IssuerIdentifier");
        f14392B = z33;
        C16204f.b z34 = C16204f.h(C16204f.f("explicit"), C16204f.f("implicit"), C16204f.j(new Object[0])).z("CertificateType");
        f14393C = z34;
        f14394D = new C14539s(BigInteger.ZERO);
        f14395E = new C14539s(BigInteger.ONE);
        C16204f.b bVar6 = Mk.a.f15391b;
        C16204f.b q12 = bVar6.q("version");
        C16204f.b q13 = z34.q("type");
        C16204f.b q14 = z33.q("issuer");
        C16204f.b q15 = z32.q("toBeSigned");
        C16204f.b bVar7 = Mk.a.f15366D;
        C16204f.b z35 = C16204f.y(q12, q13, q14, q15, C16204f.v(bVar7.q("signature"))).q("signature").z("CertificateBase");
        f14396F = z35;
        C16204f.b z36 = z35.g().z("Certificate");
        f14397G = z36;
        f14398H = z35.z("ExplicitCertificate").y(1, z34.B(f14394D).q("type"));
        f14399I = z35.z("ImplicitCertificate").y(1, z34.B(f14395E).q("type"));
        C16204f.b z37 = C16204f.z(z36).z("SequenceOfCertificate");
        f14400J = z37;
        C16204f.b z38 = C16204f.d(bVar3.q(InterfaceC14626d.f100733b), z37.q("certificate"), C16204f.q().q("self"), C16204f.j(new Object[0])).z("SignerIdentifier");
        f14401K = z38;
        C16204f.b q16 = Mk.a.f15375M.q("psid");
        C16204f.b bVar8 = Mk.a.f15417o;
        C16204f.b z39 = C16204f.y(q16, C16204f.v(bVar8.q("generationTime"), bVar8.q("expiryTime"), Mk.a.f15420p0.q("generationLocation"), bVar.q("p2pcdLearningRequest"), z13.q("missingCrlIdentifier"), Mk.a.f15373K.q("encryptionKey")), C16204f.j(C16204f.v(Mk.a.f15411l.q("inlineP2pcdRequest"), z36.q("requestedCertificate"), z11.q("pduFunctionalType"), z15.q("contributedExtensions")))).z("HeaderInfo");
        f14402L = z39;
        f14404N = C16204f.y(bVar5.q("hashId"), C16204f.e(new b()).q("tbsData"), z38.q("signer"), bVar7.q("signature")).z("SignedData");
        C16204f.b z40 = C16204f.d(z10.q("unsecuredData"), C16204f.e(new c()).q("signedData").t(true), z24.q("encryptedData"), z10.q("signedCertificateRequest"), C16204f.j(new Object[0])).z("Ieee1609Dot2Content");
        f14405O = z40;
        f14406P = C16204f.y(bVar6.q("protocolVersion"), z40.q("content")).z("CounterSignature");
        C16204f.b z41 = C16204f.y(bVar6.B(new C14539s(3L)).q("protocolVersion"), z40.q("content")).z("Ieee1609Dot2Data");
        f14407Q = z41;
        C16204f.b z42 = C16204f.y(C16204f.v(z41.q("data"), z12.q("extDataHash")), C16204f.j(new Object[0])).z("SignedDataPayload");
        f14408R = z42;
        f14403M = C16204f.y(z42.q("payload"), z39.q("headerInfo")).z("ToBeSignedData");
    }
}
