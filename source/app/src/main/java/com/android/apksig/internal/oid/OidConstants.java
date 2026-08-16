package com.android.apksig.internal.oid;

import android.security.keystore.KeyProperties;
import com.android.apksig.internal.util.InclusiveIntRange;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OidConstants {
    public static final String OID_DIGEST_MD5 = "1.2.840.113549.2.5";
    public static final String OID_DIGEST_SHA1 = "1.3.14.3.2.26";
    public static final String OID_DIGEST_SHA224 = "2.16.840.1.101.3.4.2.4";
    public static final String OID_DIGEST_SHA256 = "2.16.840.1.101.3.4.2.1";
    public static final String OID_DIGEST_SHA384 = "2.16.840.1.101.3.4.2.2";
    public static final String OID_DIGEST_SHA512 = "2.16.840.1.101.3.4.2.3";
    public static final String OID_SIG_DSA = "1.2.840.10040.4.1";
    public static final String OID_SIG_EC_PUBLIC_KEY = "1.2.840.10045.2.1";
    public static final String OID_SIG_MD5_WITH_RSA = "1.2.840.113549.1.1.4";
    public static final String OID_SIG_RSA = "1.2.840.113549.1.1.1";
    public static final String OID_SIG_SHA1_WITH_DSA = "1.2.840.10040.4.3";
    public static final String OID_SIG_SHA1_WITH_ECDSA = "1.2.840.10045.4.1";
    public static final String OID_SIG_SHA1_WITH_RSA = "1.2.840.113549.1.1.5";
    public static final String OID_SIG_SHA224_WITH_DSA = "2.16.840.1.101.3.4.3.1";
    public static final String OID_SIG_SHA224_WITH_ECDSA = "1.2.840.10045.4.3.1";
    public static final String OID_SIG_SHA224_WITH_RSA = "1.2.840.113549.1.1.14";
    public static final String OID_SIG_SHA256_WITH_DSA = "2.16.840.1.101.3.4.3.2";
    public static final String OID_SIG_SHA256_WITH_ECDSA = "1.2.840.10045.4.3.2";
    public static final String OID_SIG_SHA256_WITH_RSA = "1.2.840.113549.1.1.11";
    public static final String OID_SIG_SHA384_WITH_DSA = "2.16.840.1.101.3.4.3.3";
    public static final String OID_SIG_SHA384_WITH_ECDSA = "1.2.840.10045.4.3.3";
    public static final String OID_SIG_SHA384_WITH_RSA = "1.2.840.113549.1.1.12";
    public static final String OID_SIG_SHA512_WITH_DSA = "2.16.840.1.101.3.4.3.4";
    public static final String OID_SIG_SHA512_WITH_ECDSA = "1.2.840.10045.4.3.4";
    public static final String OID_SIG_SHA512_WITH_RSA = "1.2.840.113549.1.1.13";
    public static final Map<String, String> OID_TO_JCA_DIGEST_ALG;
    public static final Map<String, String> OID_TO_JCA_SIGNATURE_ALG;
    public static final Map<String, List<InclusiveIntRange>> SUPPORTED_SIG_ALG_OIDS = new HashMap();

    public static class OidToUserFriendlyNameMapper {
        private static final Map<String, String> OID_TO_USER_FRIENDLY_NAME;

        static {
            HashMap hashMap = new HashMap();
            OID_TO_USER_FRIENDLY_NAME = hashMap;
            hashMap.put(OidConstants.OID_DIGEST_MD5, KeyProperties.DIGEST_MD5);
            hashMap.put(OidConstants.OID_DIGEST_SHA1, "SHA-1");
            hashMap.put(OidConstants.OID_DIGEST_SHA224, "SHA-224");
            hashMap.put(OidConstants.OID_DIGEST_SHA256, "SHA-256");
            hashMap.put(OidConstants.OID_DIGEST_SHA384, "SHA-384");
            hashMap.put(OidConstants.OID_DIGEST_SHA512, "SHA-512");
            hashMap.put("1.2.840.113549.1.1.1", KeyProperties.KEY_ALGORITHM_RSA);
            hashMap.put(OidConstants.OID_SIG_MD5_WITH_RSA, "MD5 with RSA");
            hashMap.put(OidConstants.OID_SIG_SHA1_WITH_RSA, "SHA-1 with RSA");
            hashMap.put(OidConstants.OID_SIG_SHA224_WITH_RSA, "SHA-224 with RSA");
            hashMap.put(OidConstants.OID_SIG_SHA256_WITH_RSA, "SHA-256 with RSA");
            hashMap.put(OidConstants.OID_SIG_SHA384_WITH_RSA, "SHA-384 with RSA");
            hashMap.put(OidConstants.OID_SIG_SHA512_WITH_RSA, "SHA-512 with RSA");
            hashMap.put(OidConstants.OID_SIG_DSA, "DSA");
            hashMap.put(OidConstants.OID_SIG_SHA1_WITH_DSA, "SHA-1 with DSA");
            hashMap.put(OidConstants.OID_SIG_SHA224_WITH_DSA, "SHA-224 with DSA");
            hashMap.put(OidConstants.OID_SIG_SHA256_WITH_DSA, "SHA-256 with DSA");
            hashMap.put(OidConstants.OID_SIG_SHA384_WITH_DSA, "SHA-384 with DSA");
            hashMap.put(OidConstants.OID_SIG_SHA512_WITH_DSA, "SHA-512 with DSA");
            hashMap.put(OidConstants.OID_SIG_EC_PUBLIC_KEY, "ECDSA");
            hashMap.put(OidConstants.OID_SIG_SHA1_WITH_ECDSA, "SHA-1 with ECDSA");
            hashMap.put(OidConstants.OID_SIG_SHA224_WITH_ECDSA, "SHA-224 with ECDSA");
            hashMap.put(OidConstants.OID_SIG_SHA256_WITH_ECDSA, "SHA-256 with ECDSA");
            hashMap.put(OidConstants.OID_SIG_SHA384_WITH_ECDSA, "SHA-384 with ECDSA");
            hashMap.put(OidConstants.OID_SIG_SHA512_WITH_ECDSA, "SHA-512 with ECDSA");
        }

        private OidToUserFriendlyNameMapper() {
        }

        public static String getUserFriendlyNameForOid(String str) {
            return OID_TO_USER_FRIENDLY_NAME.get(str);
        }
    }

    static {
        addSupportedSigAlg(OID_DIGEST_MD5, "1.2.840.113549.1.1.1", InclusiveIntRange.from(0));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_MD5_WITH_RSA, InclusiveIntRange.fromTo(0, 8), InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA1_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA224_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA256_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA384_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA512_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, "1.2.840.113549.1.1.1", InclusiveIntRange.from(0));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_MD5_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA1_WITH_RSA, InclusiveIntRange.from(0));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA224_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA256_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA384_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA512_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, "1.2.840.113549.1.1.1", InclusiveIntRange.fromTo(0, 8), InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_MD5_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA1_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA224_WITH_RSA, InclusiveIntRange.fromTo(0, 8), InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA256_WITH_RSA, InclusiveIntRange.fromTo(21, 21));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA384_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA512_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, "1.2.840.113549.1.1.1", InclusiveIntRange.fromTo(0, 8), InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_MD5_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA1_WITH_RSA, InclusiveIntRange.fromTo(21, 21));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA224_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA256_WITH_RSA, InclusiveIntRange.fromTo(0, 8), InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA384_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA512_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, "1.2.840.113549.1.1.1", InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_MD5_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA1_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA224_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA256_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA384_WITH_RSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA512_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, "1.2.840.113549.1.1.1", InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_MD5_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA1_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA224_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA256_WITH_RSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA384_WITH_RSA, InclusiveIntRange.fromTo(21, 21));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA512_WITH_RSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA1_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA224_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA256_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_DSA, InclusiveIntRange.from(0));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA1_WITH_DSA, InclusiveIntRange.from(9));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA224_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA256_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_DSA, InclusiveIntRange.from(22));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA1_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA224_WITH_DSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA256_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_DSA, InclusiveIntRange.from(22));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA1_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA224_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA256_WITH_DSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA1_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA224_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA256_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA1_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA224_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA256_WITH_DSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_EC_PUBLIC_KEY, InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_EC_PUBLIC_KEY, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_EC_PUBLIC_KEY, InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_EC_PUBLIC_KEY, InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_EC_PUBLIC_KEY, InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA1_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA224_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA256_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA384_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_MD5, OID_SIG_SHA512_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA1_WITH_ECDSA, InclusiveIntRange.from(18));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA224_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA256_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA384_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA1, OID_SIG_SHA512_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA1_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA224_WITH_ECDSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA256_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA384_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA224, OID_SIG_SHA512_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA1_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA224_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA256_WITH_ECDSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA384_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA256, OID_SIG_SHA512_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA1_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA224_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA256_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA384_WITH_ECDSA, InclusiveIntRange.from(21));
        addSupportedSigAlg(OID_DIGEST_SHA384, OID_SIG_SHA512_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA1_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA224_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA256_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA384_WITH_ECDSA, InclusiveIntRange.fromTo(21, 23));
        addSupportedSigAlg(OID_DIGEST_SHA512, OID_SIG_SHA512_WITH_ECDSA, InclusiveIntRange.from(21));
        HashMap hashMap = new HashMap();
        OID_TO_JCA_DIGEST_ALG = hashMap;
        hashMap.put(OID_DIGEST_MD5, KeyProperties.DIGEST_MD5);
        hashMap.put(OID_DIGEST_SHA1, "SHA-1");
        hashMap.put(OID_DIGEST_SHA224, "SHA-224");
        hashMap.put(OID_DIGEST_SHA256, "SHA-256");
        hashMap.put(OID_DIGEST_SHA384, "SHA-384");
        hashMap.put(OID_DIGEST_SHA512, "SHA-512");
        HashMap hashMap2 = new HashMap();
        OID_TO_JCA_SIGNATURE_ALG = hashMap2;
        hashMap2.put(OID_SIG_MD5_WITH_RSA, "MD5withRSA");
        hashMap2.put(OID_SIG_SHA1_WITH_RSA, "SHA1withRSA");
        hashMap2.put(OID_SIG_SHA224_WITH_RSA, "SHA224withRSA");
        hashMap2.put(OID_SIG_SHA256_WITH_RSA, "SHA256withRSA");
        hashMap2.put(OID_SIG_SHA384_WITH_RSA, "SHA384withRSA");
        hashMap2.put(OID_SIG_SHA512_WITH_RSA, "SHA512withRSA");
        hashMap2.put(OID_SIG_SHA1_WITH_DSA, "SHA1withDSA");
        hashMap2.put(OID_SIG_SHA224_WITH_DSA, "SHA224withDSA");
        hashMap2.put(OID_SIG_SHA256_WITH_DSA, "SHA256withDSA");
        hashMap2.put(OID_SIG_SHA1_WITH_ECDSA, "SHA1withECDSA");
        hashMap2.put(OID_SIG_SHA224_WITH_ECDSA, "SHA224withECDSA");
        hashMap2.put(OID_SIG_SHA256_WITH_ECDSA, "SHA256withECDSA");
        hashMap2.put(OID_SIG_SHA384_WITH_ECDSA, "SHA384withECDSA");
        hashMap2.put(OID_SIG_SHA512_WITH_ECDSA, "SHA512withECDSA");
    }

    private OidConstants() {
    }

    public static void addSupportedSigAlg(String str, String str2, InclusiveIntRange... inclusiveIntRangeArr) {
        SUPPORTED_SIG_ALG_OIDS.put(str + "with" + str2, Arrays.asList(inclusiveIntRangeArr));
    }

    public static List<InclusiveIntRange> getSigAlgSupportedApiLevels(String str, String str2) {
        List<InclusiveIntRange> list = SUPPORTED_SIG_ALG_OIDS.get(str + "with" + str2);
        return list != null ? list : Collections.emptyList();
    }
}
