package org.bouncycastle.pkix.util;

import Xh.t;
import em.h;
import hi.C13478B;
import hi.M;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Map;
import ki.r;
import li.C14146h;
import oh.C14549x;
import org.bouncycastle.openssl.i;

public class f {

    public static Map<C14549x, String> f102107a = new HashMap();

    public static Map<C14549x, String> f102108b = new HashMap();

    public static Map<M, String> f102109c = new HashMap();

    public static Map<Integer, String> f102110d = new HashMap();

    public static final String f102111e = "                                                              ";

    static {
        f102107a.put(C13478B.f90529e, "subjectDirectoryAttributes");
        f102107a.put(C13478B.f90530f, "subjectKeyIdentifier");
        f102107a.put(C13478B.f90531g, "keyUsage");
        f102107a.put(C13478B.f90532h, "privateKeyUsagePeriod");
        f102107a.put(C13478B.f90533i, "subjectAlternativeName");
        f102107a.put(C13478B.f90534j, "issuerAlternativeName");
        f102107a.put(C13478B.f90535k, "basicConstraints");
        f102107a.put(C13478B.f90536l, "cRLNumber");
        f102107a.put(C13478B.f90537m, "reasonCode");
        f102107a.put(C13478B.f90538n, "instructionCode");
        f102107a.put(C13478B.f90539o, "invalidityDate");
        f102107a.put(C13478B.f90540p, "deltaCRLIndicator");
        f102107a.put(C13478B.f90541q, "issuingDistributionPoint");
        f102107a.put(C13478B.f90542r, "certificateIssuer");
        f102107a.put(C13478B.f90543s, "nameConstraints");
        f102107a.put(C13478B.f90544t, "cRLDistributionPoints");
        f102107a.put(C13478B.f90545u, "certificatePolicies");
        f102107a.put(C13478B.f90546v, "policyMappings");
        f102107a.put(C13478B.f90547w, "authorityKeyIdentifier");
        f102107a.put(C13478B.f90548x, "policyConstraints");
        f102107a.put(C13478B.f90549y, "extendedKeyUsage");
        f102107a.put(C13478B.f90550z, "freshestCRL");
        f102107a.put(C13478B.f90515A, "inhibitAnyPolicy");
        f102107a.put(C13478B.f90516B, "authorityInfoAccess");
        f102107a.put(C13478B.f90517C, "subjectInfoAccess");
        f102107a.put(C13478B.f90518D, "logoType");
        f102107a.put(C13478B.f90519E, "biometricInfo");
        f102107a.put(C13478B.f90520F, "qCStatements");
        f102107a.put(C13478B.f90521G, "auditIdentity");
        f102107a.put(C13478B.f90522H, "noRevAvail");
        f102107a.put(C13478B.f90523I, "targetInformation");
        f102107a.put(C13478B.f90524J, "expiredCertsOnCRL");
        f102110d.put(128, "digitalSignature");
        f102110d.put(64, "nonRepudiation");
        f102110d.put(32, "keyEncipherment");
        f102110d.put(16, "dataEncipherment");
        f102110d.put(8, "keyAgreement");
        f102110d.put(4, "keyCertSign");
        f102110d.put(2, "cRLSign");
        f102110d.put(1, "encipherOnly");
        f102110d.put(32768, "decipherOnly");
        f102109c.put(M.f90684d, "anyExtendedKeyUsage");
        f102109c.put(M.f90685e, "id_kp_serverAuth");
        f102109c.put(M.f90686f, "id_kp_clientAuth");
        f102109c.put(M.f90687g, "id_kp_codeSigning");
        f102109c.put(M.f90688h, "id_kp_emailProtection");
        f102109c.put(M.f90689i, "id_kp_ipsecEndSystem");
        f102109c.put(M.f90690j, "id_kp_ipsecTunnel");
        f102109c.put(M.f90691k, "id_kp_ipsecUser");
        f102109c.put(M.f90692l, "id_kp_timeStamping");
        f102109c.put(M.f90693m, "id_kp_OCSPSigning");
        f102109c.put(M.f90694n, "id_kp_dvcs");
        f102109c.put(M.f90695o, "id_kp_sbgpCertAAServerAuth");
        f102109c.put(M.f90696p, "id_kp_scvp_responder");
        f102109c.put(M.f90697q, "id_kp_eapOverPPP");
        f102109c.put(M.f90698r, "id_kp_eapOverLAN");
        f102109c.put(M.f90699s, "id_kp_scvpServer");
        f102109c.put(M.f90700t, "id_kp_scvpClient");
        f102109c.put(M.f90701u, "id_kp_ipsecIKE");
        f102109c.put(M.f90702v, "id_kp_capwapAC");
        f102109c.put(M.f90703w, "id_kp_capwapWTP");
        f102109c.put(M.f90704x, "id_kp_cmcCA");
        f102109c.put(M.f90705y, "id_kp_cmcRA");
        f102109c.put(M.f90706z, "id_kp_cmKGA");
        f102109c.put(M.f90679A, "id_kp_smartcardlogon");
        f102109c.put(M.f90680B, "id_kp_macAddress");
        f102109c.put(M.f90681C, "id_kp_msSGC");
        f102109c.put(M.f90682D, "id_kp_nsSGC");
        f102108b.put(t.f29017H0, "rsaEncryption");
        f102108b.put(r.f95305I5, "id_ecPublicKey");
        f102108b.put(Bh.a.f1842d, "id_Ed25519");
        f102108b.put(Bh.a.f1843e, "id_Ed448");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:64:0x022e
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    public static java.lang.String a(li.C14146h r14) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pkix.util.f.a(li.h):java.lang.String");
    }

    public static void b(StringBuilder sb2, byte[] bArr, String str) {
        int i10 = 20;
        while (i10 < bArr.length) {
            int length = bArr.length - 20;
            sb2.append("                       ");
            sb2.append(i10 < length ? h.k(bArr, i10, 20) : h.k(bArr, i10, bArr.length - i10));
            sb2.append(str);
            i10 += 20;
        }
    }

    public static String c(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        String substring = str2.substring(0, str2.length() - str3.length());
        while (true) {
            int indexOf = substring.indexOf(str3);
            if (indexOf <= 0) {
                break;
            }
            sb2.append(substring.substring(0, indexOf));
            sb2.append(str3);
            sb2.append(str);
            if (substring.length() > 0) {
                substring = substring.substring(indexOf + str3.length());
            }
        }
        if (sb2.length() == 0) {
            return substring;
        }
        sb2.append(substring);
        return sb2.toString();
    }

    public static String d(C14549x c14549x) {
        String str = f102108b.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public static void e(String[] strArr) throws Exception {
        System.out.println(a((C14146h) new i(new FileReader(strArr[0])).readObject()));
    }

    public static String f(C14549x c14549x) {
        String str = f102107a.get(c14549x);
        return str != null ? str : c14549x.J();
    }

    public static void g(byte[] bArr, StringBuilder sb2, String str) {
        if (bArr.length <= 20) {
            sb2.append(h.j(bArr));
            sb2.append(str);
        } else {
            sb2.append(h.k(bArr, 0, 20));
            sb2.append(str);
            b(sb2, bArr, str);
        }
    }

    public static String h(int i10) {
        return f102111e.substring(0, i10);
    }
}
