package com.android.apksig;

import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.apk.ApkUtils;
import com.android.apksig.internal.apk.ApkSigResult;
import com.android.apksig.internal.apk.ApkSignerInfo;
import com.android.apksig.internal.apk.ApkSigningBlockUtils;
import com.android.apksig.internal.apk.ContentDigestAlgorithm;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.apk.SignatureInfo;
import com.android.apksig.internal.apk.SignatureNotFoundException;
import com.android.apksig.internal.apk.stamp.V2SourceStampVerifier;
import com.android.apksig.internal.apk.v1.V1SchemeVerifier;
import com.android.apksig.internal.apk.v2.V2SchemeVerifier;
import com.android.apksig.internal.apk.v3.V3SchemeVerifier;
import com.android.apksig.internal.apk.v4.V4SchemeVerifier;
import com.android.apksig.internal.zip.CentralDirectoryRecord;
import com.android.apksig.internal.zip.LocalFileRecord;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.DataSources;
import com.android.apksig.util.RunnablesExecutor;
import com.android.apksig.zip.ZipFormatException;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ApkVerifier {
    private static final Map<Integer, String> SUPPORTED_APK_SIG_SCHEME_NAMES = loadSupportedApkSigSchemeNames();
    private final DataSource mApkDataSource;
    private final File mApkFile;
    private final int mMaxSdkVersion;
    private final Integer mMinSdkVersion;
    private final File mV4SignatureFile;

    public static class ApkVerificationIssueAdapter {
        static final Map<Integer, Issue> sVerificationIssueIdToIssue;

        static {
            HashMap hashMap = new HashMap();
            sVerificationIssueIdToIssue = hashMap;
            hashMap.put(1, Issue.V2_SIG_MALFORMED_SIGNERS);
            hashMap.put(2, Issue.V2_SIG_NO_SIGNERS);
            hashMap.put(3, Issue.V2_SIG_MALFORMED_SIGNER);
            hashMap.put(4, Issue.V2_SIG_MALFORMED_SIGNATURE);
            hashMap.put(5, Issue.V2_SIG_NO_SIGNATURES);
            hashMap.put(6, Issue.V2_SIG_MALFORMED_CERTIFICATE);
            hashMap.put(7, Issue.V2_SIG_NO_CERTIFICATES);
            hashMap.put(8, Issue.V2_SIG_MALFORMED_DIGEST);
            hashMap.put(9, Issue.V3_SIG_MALFORMED_SIGNERS);
            hashMap.put(10, Issue.V3_SIG_NO_SIGNERS);
            hashMap.put(11, Issue.V3_SIG_MALFORMED_SIGNER);
            hashMap.put(12, Issue.V3_SIG_MALFORMED_SIGNATURE);
            hashMap.put(13, Issue.V3_SIG_NO_SIGNATURES);
            hashMap.put(14, Issue.V3_SIG_MALFORMED_CERTIFICATE);
            hashMap.put(15, Issue.V3_SIG_NO_CERTIFICATES);
            hashMap.put(16, Issue.V3_SIG_MALFORMED_DIGEST);
            hashMap.put(17, Issue.SOURCE_STAMP_NO_SIGNATURE);
            hashMap.put(18, Issue.SOURCE_STAMP_MALFORMED_CERTIFICATE);
            hashMap.put(19, Issue.SOURCE_STAMP_UNKNOWN_SIG_ALGORITHM);
            hashMap.put(20, Issue.SOURCE_STAMP_MALFORMED_SIGNATURE);
            hashMap.put(21, Issue.SOURCE_STAMP_DID_NOT_VERIFY);
            hashMap.put(22, Issue.SOURCE_STAMP_VERIFY_EXCEPTION);
            hashMap.put(23, Issue.SOURCE_STAMP_EXPECTED_DIGEST_MISMATCH);
            hashMap.put(24, Issue.SOURCE_STAMP_SIGNATURE_BLOCK_WITHOUT_CERT_DIGEST);
            hashMap.put(25, Issue.SOURCE_STAMP_CERT_DIGEST_AND_SIG_BLOCK_MISSING);
            hashMap.put(26, Issue.SOURCE_STAMP_NO_SUPPORTED_SIGNATURE);
            hashMap.put(27, Issue.SOURCE_STAMP_CERTIFICATE_MISMATCH_BETWEEN_SIGNATURE_BLOCK_AND_APK);
            hashMap.put(28, Issue.MALFORMED_APK);
            hashMap.put(29, Issue.UNEXPECTED_EXCEPTION);
            hashMap.put(30, Issue.SOURCE_STAMP_SIG_MISSING);
            hashMap.put(31, Issue.SOURCE_STAMP_MALFORMED_ATTRIBUTE);
            hashMap.put(32, Issue.SOURCE_STAMP_UNKNOWN_ATTRIBUTE);
            hashMap.put(33, Issue.SOURCE_STAMP_MALFORMED_LINEAGE);
            hashMap.put(34, Issue.SOURCE_STAMP_POR_CERT_MISMATCH);
            hashMap.put(35, Issue.SOURCE_STAMP_POR_DID_NOT_VERIFY);
            hashMap.put(36, Issue.JAR_SIG_NO_SIGNATURES);
            hashMap.put(37, Issue.JAR_SIG_PARSE_EXCEPTION);
            hashMap.put(38, Issue.SOURCE_STAMP_INVALID_TIMESTAMP);
        }

        private ApkVerificationIssueAdapter() {
        }

        public static List<IssueWithParams> getIssuesFromVerificationIssues(List<? extends ApkVerificationIssue> list) {
            ArrayList arrayList = new ArrayList(list.size());
            for (ApkVerificationIssue apkVerificationIssue : list) {
                if (apkVerificationIssue instanceof IssueWithParams) {
                    arrayList.add((IssueWithParams) apkVerificationIssue);
                } else {
                    arrayList.add(new IssueWithParams(sVerificationIssueIdToIssue.get(Integer.valueOf(apkVerificationIssue.getIssueId())), apkVerificationIssue.getParams()));
                }
            }
            return arrayList;
        }
    }

    public static class ByteArray {
        private final byte[] mArray;
        private final int mHashCode;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ByteArray)) {
                return false;
            }
            ByteArray byteArray = (ByteArray) obj;
            return hashCode() == byteArray.hashCode() && Arrays.equals(this.mArray, byteArray.mArray);
        }

        public int hashCode() {
            return this.mHashCode;
        }

        private ByteArray(byte[] bArr) {
            this.mArray = bArr;
            this.mHashCode = Arrays.hashCode(bArr);
        }
    }

    public enum Issue {
        JAR_SIG_NO_SIGNATURES("No JAR signatures"),
        JAR_SIG_NO_SIGNED_ZIP_ENTRIES("No JAR entries covered by JAR signatures"),
        JAR_SIG_DUPLICATE_ZIP_ENTRY("Duplicate entry: %1$s"),
        JAR_SIG_DUPLICATE_MANIFEST_SECTION("Duplicate section in META-INF/MANIFEST.MF: %1$s"),
        JAR_SIG_UNNNAMED_MANIFEST_SECTION("Malformed META-INF/MANIFEST.MF: invidual section #%1$d does not have a name"),
        JAR_SIG_UNNNAMED_SIG_FILE_SECTION("Malformed %1$s: invidual section #%2$d does not have a name"),
        JAR_SIG_NO_MANIFEST("Missing META-INF/MANIFEST.MF"),
        JAR_SIG_MISSING_ZIP_ENTRY_REFERENCED_IN_MANIFEST("%1$s entry referenced by META-INF/MANIFEST.MF not found in the APK"),
        JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_MANIFEST("No digest for %1$s in META-INF/MANIFEST.MF"),
        JAR_SIG_NO_ZIP_ENTRY_DIGEST_IN_SIG_FILE("No digest for %1$s in %2$s"),
        JAR_SIG_ZIP_ENTRY_NOT_SIGNED("%1$s entry not signed"),
        JAR_SIG_ZIP_ENTRY_SIGNERS_MISMATCH("Entries %1$s and %3$s are signed with different sets of signers : <%2$s> vs <%4$s>"),
        JAR_SIG_ZIP_ENTRY_DIGEST_DID_NOT_VERIFY("%2$s digest of %1$s does not match the digest specified in %3$s. Expected: <%5$s>, actual: <%4$s>"),
        JAR_SIG_MANIFEST_MAIN_SECTION_DIGEST_DID_NOT_VERIFY("%1$s digest of META-INF/MANIFEST.MF main section does not match the digest specified in %2$s. Expected: <%4$s>, actual: <%3$s>"),
        JAR_SIG_MANIFEST_SECTION_DIGEST_DID_NOT_VERIFY("%2$s digest of META-INF/MANIFEST.MF section for %1$s does not match the digest specified in %3$s. Expected: <%5$s>, actual: <%4$s>"),
        JAR_SIG_NO_MANIFEST_DIGEST_IN_SIG_FILE("%1$s does not specify digest of META-INF/MANIFEST.MF. This slows down verification."),
        JAR_SIG_NO_APK_SIG_STRIP_PROTECTION("APK is signed using APK Signature Scheme v2 but these signatures may be stripped without being detected because %1$s does not contain anti-stripping protections."),
        JAR_SIG_MISSING_FILE("Partial JAR signature. Found: %1$s, missing: %2$s"),
        JAR_SIG_VERIFY_EXCEPTION("Failed to verify JAR signature %1$s against %2$s: %3$s"),
        JAR_SIG_UNSUPPORTED_SIG_ALG("JAR signature %1$s uses digest algorithm %5$s and signature algorithm %6$s which is not supported on API Level(s) %4$s for which this APK is being verified"),
        JAR_SIG_PARSE_EXCEPTION("Failed to parse JAR signature %1$s: %2$s"),
        JAR_SIG_MALFORMED_CERTIFICATE("Malformed certificate in JAR signature %1$s: %2$s"),
        JAR_SIG_DID_NOT_VERIFY("JAR signature %1$s did not verify against %2$s"),
        JAR_SIG_NO_SIGNERS("JAR signature %1$s contains no signers"),
        JAR_SIG_DUPLICATE_SIG_FILE_SECTION("Duplicate section in %1$s: %2$s"),
        JAR_SIG_MISSING_VERSION_ATTR_IN_SIG_FILE("Malformed %1$s: missing Signature-Version attribute"),
        JAR_SIG_UNKNOWN_APK_SIG_SCHEME_ID("JAR signature %1$s references unknown APK signature scheme ID: %2$d"),
        JAR_SIG_MISSING_APK_SIG_REFERENCED("JAR signature %1$s indicates the APK is signed using %3$s but no such signature was found. Signature stripped?"),
        JAR_SIG_UNPROTECTED_ZIP_ENTRY("%1$s not protected by signature. Unauthorized modifications to this JAR entry will not be detected. Delete or move the entry outside of META-INF/."),
        JAR_SIG_MISSING("No JAR signature from this signer"),
        NO_SIG_FOR_TARGET_SANDBOX_VERSION("Missing APK Signature Scheme v2 signature required for target sandbox version %1$d"),
        MIN_SIG_SCHEME_FOR_TARGET_SDK_NOT_MET("Target SDK version %1$d requires a minimum of signature scheme v%2$d; the APK is not signed with this or a later signature scheme"),
        V2_SIG_MISSING("No APK Signature Scheme v2 signature from this signer"),
        V2_SIG_MALFORMED_SIGNERS("Malformed list of signers"),
        V2_SIG_MALFORMED_SIGNER("Malformed signer block"),
        V2_SIG_MALFORMED_PUBLIC_KEY("Malformed public key: %1$s"),
        V2_SIG_MALFORMED_CERTIFICATE("Malformed certificate #%2$d: %3$s"),
        V2_SIG_MALFORMED_SIGNATURE("Malformed APK Signature Scheme v2 signature record #%1$d"),
        V2_SIG_MALFORMED_DIGEST("Malformed APK Signature Scheme v2 digest record #%1$d"),
        V2_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE("Malformed additional attribute #%1$d"),
        V2_SIG_UNKNOWN_APK_SIG_SCHEME_ID("APK Signature Scheme v2 signer: %1$s references unknown APK signature scheme ID: %2$d"),
        V2_SIG_MISSING_APK_SIG_REFERENCED("APK Signature Scheme v2 signature %1$s indicates the APK is signed using %2$s but no such signature was found. Signature stripped?"),
        V2_SIG_NO_SIGNERS("No signers in APK Signature Scheme v2 signature"),
        V2_SIG_UNKNOWN_SIG_ALGORITHM("Unknown signature algorithm: %1$#x"),
        V2_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE("Unknown additional attribute: ID %1$#x"),
        V2_SIG_VERIFY_EXCEPTION("Failed to verify %1$s signature: %2$s"),
        V2_SIG_DID_NOT_VERIFY("%1$s signature over signed-data did not verify"),
        V2_SIG_NO_SIGNATURES("No signatures"),
        V2_SIG_NO_SUPPORTED_SIGNATURES("No supported signatures: %1$s"),
        V2_SIG_NO_CERTIFICATES("No certificates"),
        V2_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD("Public key mismatch between certificate and signature record: <%1$s> vs <%2$s>"),
        V2_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS("Signature algorithms mismatch between signatures and digests records: %1$s vs %2$s"),
        V2_SIG_APK_DIGEST_DID_NOT_VERIFY("APK integrity check failed. %1$s digest mismatch. Expected: <%2$s>, actual: <%3$s>"),
        V3_SIG_MALFORMED_SIGNERS("Malformed list of signers"),
        V3_SIG_MALFORMED_SIGNER("Malformed signer block"),
        V3_SIG_MALFORMED_PUBLIC_KEY("Malformed public key: %1$s"),
        V3_SIG_MALFORMED_CERTIFICATE("Malformed certificate #%2$d: %3$s"),
        V3_SIG_MALFORMED_SIGNATURE("Malformed APK Signature Scheme v3 signature record #%1$d"),
        V3_SIG_MALFORMED_DIGEST("Malformed APK Signature Scheme v3 digest record #%1$d"),
        V3_SIG_MALFORMED_ADDITIONAL_ATTRIBUTE("Malformed additional attribute #%1$d"),
        V3_SIG_NO_SIGNERS("No signers in APK Signature Scheme v3 signature"),
        V3_SIG_MULTIPLE_SIGNERS("Multiple APK Signature Scheme v3 signatures found for a single  platform version."),
        V3_SIG_MULTIPLE_PAST_SIGNERS("Multiple signatures found for pre-v3 signing with an APK  Signature Scheme v3 signer.  Only one allowed."),
        V3_SIG_PAST_SIGNERS_MISMATCH("v3 signer differs from v1/v2 signer without proper signing certificate lineage."),
        V3_SIG_UNKNOWN_SIG_ALGORITHM("Unknown signature algorithm: %1$#x"),
        V3_SIG_UNKNOWN_ADDITIONAL_ATTRIBUTE("Unknown additional attribute: ID %1$#x"),
        V3_SIG_VERIFY_EXCEPTION("Failed to verify %1$s signature: %2$s"),
        V3_SIG_INVALID_SDK_VERSIONS("Invalid SDK Version parameter(s) encountered in APK Signature scheme v3 signature: minSdkVersion %1$s maxSdkVersion: %2$s"),
        V3_SIG_DID_NOT_VERIFY("%1$s signature over signed-data did not verify"),
        V3_SIG_NO_SIGNATURES("No signatures"),
        V3_SIG_NO_SUPPORTED_SIGNATURES("No supported signatures"),
        V3_SIG_NO_CERTIFICATES("No certificates"),
        V3_MIN_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD("minSdkVersion mismatch between signed data and signature record: <%1$s> vs <%2$s>"),
        V3_MAX_SDK_VERSION_MISMATCH_BETWEEN_SIGNER_AND_SIGNED_DATA_RECORD("maxSdkVersion mismatch between signed data and signature record: <%1$s> vs <%2$s>"),
        V3_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD("Public key mismatch between certificate and signature record: <%1$s> vs <%2$s>"),
        V3_SIG_SIG_ALG_MISMATCH_BETWEEN_SIGNATURES_AND_DIGESTS_RECORDS("Signature algorithms mismatch between signatures and digests records: %1$s vs %2$s"),
        V3_SIG_APK_DIGEST_DID_NOT_VERIFY("APK integrity check failed. %1$s digest mismatch. Expected: <%2$s>, actual: <%3$s>"),
        V3_SIG_POR_DID_NOT_VERIFY("SigningCertificateLineage attribute containd a proof-of-rotation record with signature(s) that did not verify."),
        V3_SIG_MALFORMED_LINEAGE("Failed to parse the SigningCertificateLineage structure in the APK Signature Scheme v3 signature's additional attributes section."),
        V3_SIG_POR_CERT_MISMATCH("APK signing certificate differs from the associated certificate found in the signer's SigningCertificateLineage."),
        V3_INCONSISTENT_SDK_VERSIONS("APK Signature Scheme v3 signers supported min/max SDK versions are not continuous."),
        V3_MISSING_SDK_VERSIONS("APK Signature Scheme v3 signers supported min/max SDK versions do not cover the entire desired range.  Found min:  %1$s max %2$s"),
        V3_INCONSISTENT_LINEAGES("SigningCertificateLineages targeting different platform versions using APK Signature Scheme v3 are not all a part of the same overall lineage."),
        V31_BLOCK_MISSING("The v3 signer indicates key rotation should be supported starting from SDK version %1$s, but a v3.1 block was not found"),
        V31_ROTATION_MIN_SDK_MISMATCH("The v3 signer indicates key rotation should be supported starting from SDK version %1$s, but the v3.1 block targets %2$s for rotation"),
        V31_ROTATION_MIN_SDK_ATTR_MISSING("APK supports key rotation starting from SDK version %1$s, but the v3 signer does not contain the attribute to detect if this signature is stripped"),
        V31_BLOCK_FOUND_WITHOUT_V3_BLOCK("The APK contains a v3.1 signing block without a v3.0 base block"),
        V31_ROTATION_TARGETS_DEV_RELEASE_ATTR_ON_V3_SIGNER("The rotation-targets-dev-release attribute is only supported on v3.1 signers; this attribute will be ignored by the platform in a v3.0 signer"),
        APK_SIG_BLOCK_UNKNOWN_ENTRY_ID("APK Signing Block contains unknown entry: ID %1$#x"),
        V4_SIG_MALFORMED_SIGNERS("V4 signature has malformed signer block"),
        V4_SIG_UNKNOWN_SIG_ALGORITHM("V4 signature has unknown signing algorithm: %1$#x"),
        V4_SIG_NO_SIGNATURES("V4 signature has no signature found"),
        V4_SIG_NO_SUPPORTED_SIGNATURES("V4 signature has no supported signature"),
        V4_SIG_DID_NOT_VERIFY("%1$s signature over signed-data did not verify"),
        V4_SIG_VERIFY_EXCEPTION("Failed to verify %1$s signature: %2$s"),
        V4_SIG_MALFORMED_PUBLIC_KEY("Malformed public key: %1$s"),
        V4_SIG_MALFORMED_CERTIFICATE("V4 signature has malformed certificate"),
        V4_SIG_NO_CERTIFICATE("V4 signature has no certificate"),
        V4_SIG_PUBLIC_KEY_MISMATCH_BETWEEN_CERTIFICATE_AND_SIGNATURES_RECORD("V4 signature has mismatched certificate and signature: <%1$s> vs <%2$s>"),
        V4_SIG_APK_ROOT_DID_NOT_VERIFY("V4 signature's hash tree root (content digest) did not verity"),
        V4_SIG_APK_TREE_DID_NOT_VERIFY("V4 signature's hash tree did not verity"),
        V4_SIG_MULTIPLE_SIGNERS("V4 signature only supports one signer"),
        V4_SIG_V2_V3_SIGNERS_MISMATCH("V4 signature and V2/V3 signature have mismatched certificates"),
        V4_SIG_V2_V3_DIGESTS_MISMATCH("V4 signature and V2/V3 signature have mismatched digests"),
        V4_SIG_VERSION_NOT_CURRENT("V4 signature format version %1$d is different from the tool's current version %2$d"),
        SOURCE_STAMP_CERT_DIGEST_AND_SIG_BLOCK_MISSING("Neither the source stamp certificate digest file nor the signature block are present in the APK"),
        SOURCE_STAMP_SIG_MISSING("No SourceStamp signature"),
        SOURCE_STAMP_MALFORMED_CERTIFICATE("Malformed certificate: %1$s"),
        SOURCE_STAMP_MALFORMED_SIGNATURE("Malformed SourceStamp signature"),
        SOURCE_STAMP_UNKNOWN_SIG_ALGORITHM("Unknown signature algorithm: %1$#x"),
        SOURCE_STAMP_VERIFY_EXCEPTION("Failed to verify %1$s signature: %2$s"),
        SOURCE_STAMP_DID_NOT_VERIFY("%1$s signature over signed-data did not verify"),
        SOURCE_STAMP_NO_SIGNATURE("No signature"),
        SOURCE_STAMP_NO_SUPPORTED_SIGNATURE("Signature(s) {%1$s} not supported: %2$s"),
        SOURCE_STAMP_CERTIFICATE_MISMATCH_BETWEEN_SIGNATURE_BLOCK_AND_APK("Certificate mismatch between SourceStamp block in APK signing block and SourceStamp file in APK: <%1$s> vs <%2$s>"),
        SOURCE_STAMP_SIGNATURE_BLOCK_WITHOUT_CERT_DIGEST("A source stamp signature block was found without a corresponding certificate digest in the APK"),
        SOURCE_STAMP_EXPECTED_DIGEST_MISMATCH("The source stamp certificate digest in the APK, %1$s, does not match the expected digest, %2$s"),
        SOURCE_STAMP_MALFORMED_ATTRIBUTE("Malformed stamp attribute #%1$d"),
        SOURCE_STAMP_UNKNOWN_ATTRIBUTE("Unknown stamp attribute: ID %1$#x"),
        SOURCE_STAMP_MALFORMED_LINEAGE("Failed to parse the SigningCertificateLineage structure in the source stamp attributes section."),
        SOURCE_STAMP_POR_CERT_MISMATCH("APK signing certificate differs from the associated certificate found in the signer's SigningCertificateLineage."),
        SOURCE_STAMP_POR_DID_NOT_VERIFY("Source stamp SigningCertificateLineage attribute contains a proof-of-rotation record with signature(s) that did not verify."),
        SOURCE_STAMP_INVALID_TIMESTAMP("The source stamp timestamp attribute has an invalid value: %1$d"),
        MALFORMED_APK("Malformed APK; the following exception was caught when attempting to parse the APK: %1$s"),
        UNEXPECTED_EXCEPTION("An unexpected exception was caught when verifying the signature: %1$s");

        private final String mFormat;

        Issue(String str) {
            this.mFormat = str;
        }

        public String getFormat() {
            return this.mFormat;
        }
    }

    public static class IssueWithParams extends ApkVerificationIssue {
        private final Issue mIssue;
        private final Object[] mParams;

        public IssueWithParams(Issue issue, Object[] objArr) {
            super(issue.mFormat, objArr);
            this.mIssue = issue;
            this.mParams = objArr;
        }

        public Issue getIssue() {
            return this.mIssue;
        }

        @Override
        public Object[] getParams() {
            return (Object[]) this.mParams.clone();
        }

        @Override
        public String toString() {
            return String.format(this.mIssue.getFormat(), this.mParams);
        }
    }

    private static void checkV4Certificate(List<X509Certificate> list, List<X509Certificate> list2, Result result) {
        try {
            if (Arrays.equals(list2.get(0).getEncoded(), list.get(0).getEncoded())) {
                return;
            }
            result.addError(Issue.V4_SIG_V2_V3_SIGNERS_MISMATCH, new Object[0]);
        } catch (CertificateEncodingException e10) {
            throw new RuntimeException("Failed to encode APK signer cert", e10);
        }
    }

    private static void checkV4Signer(List<Result.V3SchemeSignerInfo> list, List<X509Certificate> list2, byte[] bArr, Result result) {
        if (list.size() != 1) {
            result.addError(Issue.V4_SIG_MULTIPLE_SIGNERS, new Object[0]);
        }
        checkV4Certificate(list2, list.get(0).mCerts, result);
        if (Arrays.equals(bArr, pickBestDigestForV4(list.get(0).getContentDigests()))) {
            return;
        }
        result.addError(Issue.V4_SIG_V2_V3_DIGESTS_MISMATCH, new Object[0]);
    }

    private static void collectApkContentDigests(List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> list, Map<ContentDigestAlgorithm, byte[]> map) {
        for (ApkSigningBlockUtils.Result.SignerInfo.ContentDigest contentDigest : list) {
            SignatureAlgorithm findById = SignatureAlgorithm.findById(contentDigest.getSignatureAlgorithmId());
            if (findById != null) {
                map.put(findById.getContentDigestAlgorithm(), contentDigest.getValue());
            }
        }
    }

    private static Result createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus sourceStampVerificationStatus, Issue issue, Object... objArr) {
        Result result = new Result();
        result.addError(issue, objArr);
        return mergeSourceStampResult(sourceStampVerificationStatus, result);
    }

    private static ByteBuffer getAndroidManifestFromApk(DataSource dataSource, ApkUtils.ZipSections zipSections) throws IOException, ApkFormatException {
        try {
            return ApkSigner.getAndroidManifestFromApk(V1SchemeVerifier.parseZipCentralDirectory(dataSource, zipSections), dataSource.slice(0L, zipSections.getZipCentralDirectoryOffset()));
        } catch (ZipFormatException e10) {
            throw new ApkFormatException("Failed to read AndroidManifest.xml", e10);
        }
    }

    private static Map<ContentDigestAlgorithm, byte[]> getApkContentDigestFromV1SigningScheme(List<CentralDirectoryRecord> list, DataSource dataSource, ApkUtils.ZipSections zipSections) throws IOException, ApkFormatException {
        CentralDirectoryRecord centralDirectoryRecord;
        EnumMap enumMap = new EnumMap(ContentDigestAlgorithm.class);
        Iterator<CentralDirectoryRecord> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                centralDirectoryRecord = null;
                break;
            }
            centralDirectoryRecord = it.next();
            if ("META-INF/MANIFEST.MF".equals(centralDirectoryRecord.getName())) {
                break;
            }
        }
        if (centralDirectoryRecord == null) {
            return enumMap;
        }
        try {
            enumMap.put((EnumMap) ContentDigestAlgorithm.SHA256, (ContentDigestAlgorithm) ApkUtils.computeSha256DigestBytes(LocalFileRecord.getUncompressedData(dataSource, centralDirectoryRecord, zipSections.getZipCentralDirectoryOffset())));
            return enumMap;
        } catch (ZipFormatException e10) {
            throw new ApkFormatException("Failed to read APK", e10);
        }
    }

    private ApkSigningBlockUtils.Result getApkContentDigests(DataSource dataSource, ApkUtils.ZipSections zipSections, Set<Integer> set, Map<Integer, String> map, Map<Integer, Map<ContentDigestAlgorithm, byte[]>> map2, int i10, int i11) throws IOException, NoSuchAlgorithmException {
        if (i10 != 2 && i10 != 3) {
            return null;
        }
        ApkSigningBlockUtils.Result result = new ApkSigningBlockUtils.Result(i10);
        try {
            SignatureInfo findSignature = ApkSigningBlockUtils.findSignature(dataSource, zipSections, i10 == 3 ? -262969152 : 1896449818, result);
            set.add(Integer.valueOf(i10));
            HashSet hashSet = new HashSet(1);
            if (i10 == 2) {
                V2SchemeVerifier.parseSigners(findSignature.signatureBlock, hashSet, map, set, i11, this.mMaxSdkVersion, result);
            } else {
                V3SchemeVerifier.parseSigners(findSignature.signatureBlock, hashSet, result);
            }
            EnumMap enumMap = new EnumMap(ContentDigestAlgorithm.class);
            Iterator<ApkSigningBlockUtils.Result.SignerInfo> it = result.signers.iterator();
            while (it.hasNext()) {
                for (ApkSigningBlockUtils.Result.SignerInfo.ContentDigest contentDigest : it.next().contentDigests) {
                    SignatureAlgorithm findById = SignatureAlgorithm.findById(contentDigest.getSignatureAlgorithmId());
                    if (findById != null) {
                        enumMap.put((EnumMap) findById.getContentDigestAlgorithm(), (ContentDigestAlgorithm) contentDigest.getValue());
                    }
                }
            }
            map2.put(Integer.valueOf(i10), enumMap);
            return result;
        } catch (ApkSigningBlockUtils.SignatureNotFoundException unused) {
            return null;
        }
    }

    private static Map<ContentDigestAlgorithm, byte[]> getApkContentDigestsFromSigningSchemeResult(ApkSigningBlockUtils.Result result) {
        HashMap hashMap = new HashMap();
        Iterator<ApkSigningBlockUtils.Result.SignerInfo> it = result.signers.iterator();
        while (it.hasNext()) {
            collectApkContentDigests(it.next().contentDigests, hashMap);
        }
        return hashMap;
    }

    private static int getMinimumSignatureSchemeVersionForTargetSdk(int i10) {
        return i10 >= 30 ? 2 : 1;
    }

    private static Map<Integer, String> getSupportedSchemeNames(int i10) {
        if (i10 >= 28) {
            return SUPPORTED_APK_SIG_SCHEME_NAMES;
        }
        if (i10 < 24) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(2, SUPPORTED_APK_SIG_SCHEME_NAMES.get(2));
        return hashMap;
    }

    private static Map<Integer, String> loadSupportedApkSigSchemeNames() {
        HashMap hashMap = new HashMap(2);
        hashMap.put(2, "APK Signature Scheme v2");
        hashMap.put(3, "APK Signature Scheme v3");
        return hashMap;
    }

    private static Result mergeSourceStampResult(Result.SourceStampInfo.SourceStampVerificationStatus sourceStampVerificationStatus, Result result) {
        result.mSourceStampInfo = new Result.SourceStampInfo(sourceStampVerificationStatus);
        return result;
    }

    private static byte[] pickBestDigestForV4(List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> list) {
        HashMap hashMap = new HashMap();
        collectApkContentDigests(list, hashMap);
        return ApkSigningBlockUtils.pickBestDigestForV4(hashMap);
    }

    private int verifyAndGetMinSdkVersion(DataSource dataSource, ApkUtils.ZipSections zipSections) throws ApkFormatException, IOException {
        Integer num = this.mMinSdkVersion;
        if (num == null) {
            int minSdkVersionFromBinaryAndroidManifest = ApkUtils.getMinSdkVersionFromBinaryAndroidManifest(getAndroidManifestFromApk(dataSource, zipSections).slice());
            if (minSdkVersionFromBinaryAndroidManifest <= this.mMaxSdkVersion) {
                return minSdkVersionFromBinaryAndroidManifest;
            }
            throw new IllegalArgumentException("minSdkVersion from APK (" + minSdkVersionFromBinaryAndroidManifest + ") > maxSdkVersion (" + this.mMaxSdkVersion + ")");
        }
        if (num.intValue() < 0) {
            throw new IllegalArgumentException("minSdkVersion must not be negative: " + ((Object) this.mMinSdkVersion));
        }
        Integer num2 = this.mMinSdkVersion;
        if (num2 == null || num2.intValue() <= this.mMaxSdkVersion) {
            return this.mMinSdkVersion.intValue();
        }
        throw new IllegalArgumentException("minSdkVersion (" + ((Object) this.mMinSdkVersion) + ") > maxSdkVersion (" + this.mMaxSdkVersion + ")");
    }

    public Result verify() throws IOException, ApkFormatException, NoSuchAlgorithmException, IllegalStateException {
        RandomAccessFile randomAccessFile = null;
        try {
            DataSource dataSource = this.mApkDataSource;
            if (dataSource == null) {
                if (this.mApkFile != null) {
                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.mApkFile, a.f72595c);
                    try {
                        dataSource = DataSources.asDataSource(randomAccessFile2, 0L, randomAccessFile2.length());
                        randomAccessFile = randomAccessFile2;
                    } catch (Throwable th2) {
                        th = th2;
                        randomAccessFile = randomAccessFile2;
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        throw th;
                    }
                } else {
                    throw new IllegalStateException("APK not provided");
                }
            }
            Result verify = verify(dataSource);
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            return verify;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Result verifySourceStamp() {
        return verifySourceStamp(null);
    }

    private ApkVerifier(File file, DataSource dataSource, File file2, Integer num, int i10) {
        this.mApkFile = file;
        this.mApkDataSource = dataSource;
        this.mV4SignatureFile = file2;
        this.mMinSdkVersion = num;
        this.mMaxSdkVersion = i10;
    }

    public Result verifySourceStamp(String str) {
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                DataSource dataSource = this.mApkDataSource;
                if (dataSource == null) {
                    if (this.mApkFile != null) {
                        RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.mApkFile, a.f72595c);
                        try {
                            dataSource = DataSources.asDataSource(randomAccessFile2, 0L, randomAccessFile2.length());
                            randomAccessFile = randomAccessFile2;
                        } catch (IOException e10) {
                            e = e10;
                            randomAccessFile = randomAccessFile2;
                            Result createSourceStampResultWithError = createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, Issue.UNEXPECTED_EXCEPTION, e);
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException unused) {
                                }
                            }
                            return createSourceStampResultWithError;
                        } catch (Throwable th2) {
                            th = th2;
                            randomAccessFile = randomAccessFile2;
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("APK not provided");
                    }
                }
                Result verifySourceStamp = verifySourceStamp(dataSource, str);
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException unused3) {
                    }
                }
                return verifySourceStamp;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e11) {
            e = e11;
        }
    }

    public static class Builder {
        private final DataSource mApkDataSource;
        private final File mApkFile;
        private int mMaxSdkVersion = Integer.MAX_VALUE;
        private Integer mMinSdkVersion;
        private File mV4SignatureFile;

        public Builder(File file) {
            if (file != null) {
                this.mApkFile = file;
                this.mApkDataSource = null;
                return;
            }
            throw new NullPointerException("apk == null");
        }

        public ApkVerifier build() {
            return new ApkVerifier(this.mApkFile, this.mApkDataSource, this.mV4SignatureFile, this.mMinSdkVersion, this.mMaxSdkVersion);
        }

        public Builder setMaxCheckedPlatformVersion(int i10) {
            this.mMaxSdkVersion = i10;
            return this;
        }

        public Builder setMinCheckedPlatformVersion(int i10) {
            this.mMinSdkVersion = Integer.valueOf(i10);
            return this;
        }

        public Builder setV4SignatureFile(File file) {
            this.mV4SignatureFile = file;
            return this;
        }

        public Builder(DataSource dataSource) {
            if (dataSource != null) {
                this.mApkDataSource = dataSource;
                this.mApkFile = null;
                return;
            }
            throw new NullPointerException("apk == null");
        }
    }

    public static class Result {
        private SigningCertificateLineage mSigningCertificateLineage;
        private SourceStampInfo mSourceStampInfo;
        private boolean mSourceStampVerified;
        private boolean mVerified;
        private boolean mVerifiedUsingV1Scheme;
        private boolean mVerifiedUsingV2Scheme;
        private boolean mVerifiedUsingV31Scheme;
        private boolean mVerifiedUsingV3Scheme;
        private boolean mVerifiedUsingV4Scheme;
        private boolean mWarningsAsErrors;
        private final List<IssueWithParams> mErrors = new ArrayList();
        private final List<IssueWithParams> mWarnings = new ArrayList();
        private final List<X509Certificate> mSignerCerts = new ArrayList();
        private final List<V1SchemeSignerInfo> mV1SchemeSigners = new ArrayList();
        private final List<V1SchemeSignerInfo> mV1SchemeIgnoredSigners = new ArrayList();
        private final List<V2SchemeSignerInfo> mV2SchemeSigners = new ArrayList();
        private final List<V3SchemeSignerInfo> mV3SchemeSigners = new ArrayList();
        private final List<V3SchemeSignerInfo> mV31SchemeSigners = new ArrayList();
        private final List<V4SchemeSignerInfo> mV4SchemeSigners = new ArrayList();

        public static class SourceStampInfo {
            private final List<X509Certificate> mCertificateLineage;
            private final List<X509Certificate> mCertificates;
            private final List<IssueWithParams> mErrors;
            private final SourceStampVerificationStatus mSourceStampVerificationStatus;
            private final long mTimestamp;
            private final List<IssueWithParams> mWarnings;

            public enum SourceStampVerificationStatus {
                STAMP_VERIFIED,
                STAMP_VERIFICATION_FAILED,
                CERT_DIGEST_MISMATCH,
                STAMP_MISSING,
                STAMP_NOT_VERIFIED,
                VERIFICATION_ERROR
            }

            public boolean containsErrors() {
                return !this.mErrors.isEmpty();
            }

            public X509Certificate getCertificate() {
                if (this.mCertificates.isEmpty()) {
                    return null;
                }
                return this.mCertificates.get(0);
            }

            public List<X509Certificate> getCertificatesInLineage() {
                return this.mCertificateLineage;
            }

            public List<IssueWithParams> getErrors() {
                return this.mErrors;
            }

            public SourceStampVerificationStatus getSourceStampVerificationStatus() {
                return this.mSourceStampVerificationStatus;
            }

            public long getTimestampEpochSeconds() {
                return this.mTimestamp;
            }

            public List<IssueWithParams> getWarnings() {
                return this.mWarnings;
            }

            private SourceStampInfo(ApkSignerInfo apkSignerInfo) {
                this.mCertificates = apkSignerInfo.certs;
                this.mCertificateLineage = apkSignerInfo.certificateLineage;
                List<IssueWithParams> issuesFromVerificationIssues = ApkVerificationIssueAdapter.getIssuesFromVerificationIssues(apkSignerInfo.getErrors());
                this.mErrors = issuesFromVerificationIssues;
                List<IssueWithParams> issuesFromVerificationIssues2 = ApkVerificationIssueAdapter.getIssuesFromVerificationIssues(apkSignerInfo.getWarnings());
                this.mWarnings = issuesFromVerificationIssues2;
                if (issuesFromVerificationIssues.isEmpty() && issuesFromVerificationIssues2.isEmpty()) {
                    this.mSourceStampVerificationStatus = SourceStampVerificationStatus.STAMP_VERIFIED;
                } else {
                    this.mSourceStampVerificationStatus = SourceStampVerificationStatus.STAMP_VERIFICATION_FAILED;
                }
                this.mTimestamp = apkSignerInfo.timestamp;
            }

            public SourceStampInfo(SourceStampVerificationStatus sourceStampVerificationStatus) {
                this.mCertificates = Collections.emptyList();
                this.mCertificateLineage = Collections.emptyList();
                this.mErrors = Collections.emptyList();
                this.mWarnings = Collections.emptyList();
                this.mSourceStampVerificationStatus = sourceStampVerificationStatus;
                this.mTimestamp = 0L;
            }
        }

        public static class V1SchemeSignerInfo {
            private final List<X509Certificate> mCertChain;
            private final List<IssueWithParams> mErrors;
            private final String mName;
            private final String mSignatureBlockFileName;
            private final String mSignatureFileName;
            private final List<IssueWithParams> mWarnings;

            public void addError(Issue issue, Object... objArr) {
                this.mErrors.add(new IssueWithParams(issue, objArr));
            }

            public boolean containsErrors() {
                return !this.mErrors.isEmpty();
            }

            public X509Certificate getCertificate() {
                if (this.mCertChain.isEmpty()) {
                    return null;
                }
                return this.mCertChain.get(0);
            }

            public List<X509Certificate> getCertificateChain() {
                return this.mCertChain;
            }

            public List<IssueWithParams> getErrors() {
                return this.mErrors;
            }

            public String getName() {
                return this.mName;
            }

            public String getSignatureBlockFileName() {
                return this.mSignatureBlockFileName;
            }

            public String getSignatureFileName() {
                return this.mSignatureFileName;
            }

            public List<IssueWithParams> getWarnings() {
                return this.mWarnings;
            }

            private V1SchemeSignerInfo(V1SchemeVerifier.Result.SignerInfo signerInfo) {
                this.mName = signerInfo.name;
                this.mCertChain = signerInfo.certChain;
                this.mSignatureBlockFileName = signerInfo.signatureBlockFileName;
                this.mSignatureFileName = signerInfo.signatureFileName;
                this.mErrors = signerInfo.getErrors();
                this.mWarnings = signerInfo.getWarnings();
            }
        }

        public static class V2SchemeSignerInfo {
            private final List<X509Certificate> mCerts;
            private final List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> mContentDigests;
            private final List<IssueWithParams> mErrors;
            private final int mIndex;
            private final List<IssueWithParams> mWarnings;

            public void addError(Issue issue, Object... objArr) {
                this.mErrors.add(new IssueWithParams(issue, objArr));
            }

            public boolean containsErrors() {
                return !this.mErrors.isEmpty();
            }

            public X509Certificate getCertificate() {
                if (this.mCerts.isEmpty()) {
                    return null;
                }
                return this.mCerts.get(0);
            }

            public List<X509Certificate> getCertificates() {
                return this.mCerts;
            }

            public List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> getContentDigests() {
                return this.mContentDigests;
            }

            public List<IssueWithParams> getErrors() {
                return this.mErrors;
            }

            public int getIndex() {
                return this.mIndex;
            }

            public List<IssueWithParams> getWarnings() {
                return this.mWarnings;
            }

            private V2SchemeSignerInfo(ApkSigningBlockUtils.Result.SignerInfo signerInfo) {
                this.mIndex = signerInfo.index;
                this.mCerts = signerInfo.certs;
                this.mErrors = signerInfo.getErrors();
                this.mWarnings = signerInfo.getWarnings();
                this.mContentDigests = signerInfo.contentDigests;
            }
        }

        public static class V3SchemeSignerInfo {
            private final List<X509Certificate> mCerts;
            private final List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> mContentDigests;
            private final List<IssueWithParams> mErrors;
            private final int mIndex;
            private final int mMaxSdkVersion;
            private final int mMinSdkVersion;
            private final boolean mRotationTargetsDevRelease;
            private final List<IssueWithParams> mWarnings;

            public boolean containsErrors() {
                return !this.mErrors.isEmpty();
            }

            public X509Certificate getCertificate() {
                if (this.mCerts.isEmpty()) {
                    return null;
                }
                return this.mCerts.get(0);
            }

            public List<X509Certificate> getCertificates() {
                return this.mCerts;
            }

            public List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> getContentDigests() {
                return this.mContentDigests;
            }

            public List<IssueWithParams> getErrors() {
                return this.mErrors;
            }

            public int getIndex() {
                return this.mIndex;
            }

            public int getMaxSdkVersion() {
                return this.mMaxSdkVersion;
            }

            public int getMinSdkVersion() {
                return this.mMinSdkVersion;
            }

            public boolean getRotationTargetsDevRelease() {
                return this.mRotationTargetsDevRelease;
            }

            public List<IssueWithParams> getWarnings() {
                return this.mWarnings;
            }

            private V3SchemeSignerInfo(ApkSigningBlockUtils.Result.SignerInfo signerInfo) {
                boolean z10;
                this.mIndex = signerInfo.index;
                this.mCerts = signerInfo.certs;
                this.mErrors = signerInfo.getErrors();
                this.mWarnings = signerInfo.getWarnings();
                this.mContentDigests = signerInfo.contentDigests;
                this.mMinSdkVersion = signerInfo.minSdkVersion;
                this.mMaxSdkVersion = signerInfo.maxSdkVersion;
                Iterator<ApkSigningBlockUtils.Result.SignerInfo.AdditionalAttribute> it = signerInfo.additionalAttributes.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z10 = false;
                        break;
                    } else if (it.next().getId() == -1029262406) {
                        z10 = true;
                        break;
                    }
                }
                this.mRotationTargetsDevRelease = z10;
            }
        }

        public static class V4SchemeSignerInfo {
            private final List<X509Certificate> mCerts;
            private final List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> mContentDigests;
            private final List<IssueWithParams> mErrors;
            private final int mIndex;
            private final List<IssueWithParams> mWarnings;

            public boolean containsErrors() {
                return !this.mErrors.isEmpty();
            }

            public X509Certificate getCertificate() {
                if (this.mCerts.isEmpty()) {
                    return null;
                }
                return this.mCerts.get(0);
            }

            public List<X509Certificate> getCertificates() {
                return this.mCerts;
            }

            public List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> getContentDigests() {
                return this.mContentDigests;
            }

            public List<IssueWithParams> getErrors() {
                return this.mErrors;
            }

            public int getIndex() {
                return this.mIndex;
            }

            public List<IssueWithParams> getWarnings() {
                return this.mWarnings;
            }

            private V4SchemeSignerInfo(ApkSigningBlockUtils.Result.SignerInfo signerInfo) {
                this.mIndex = signerInfo.index;
                this.mCerts = signerInfo.certs;
                this.mErrors = signerInfo.getErrors();
                this.mWarnings = signerInfo.getWarnings();
                this.mContentDigests = signerInfo.contentDigests;
            }
        }

        public void addSignerCertificate(X509Certificate x509Certificate) {
            this.mSignerCerts.add(x509Certificate);
        }

        public void mergeFrom(V1SchemeVerifier.Result result) {
            this.mVerifiedUsingV1Scheme = result.verified;
            this.mErrors.addAll(result.getErrors());
            this.mWarnings.addAll(result.getWarnings());
            Iterator<V1SchemeVerifier.Result.SignerInfo> it = result.signers.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                this.mV1SchemeSigners.add(new V1SchemeSignerInfo(it.next()));
            }
            Iterator<V1SchemeVerifier.Result.SignerInfo> it2 = result.ignoredSigners.iterator();
            while (it2.hasNext()) {
                this.mV1SchemeIgnoredSigners.add(new V1SchemeSignerInfo(it2.next()));
            }
        }

        public void setVerified() {
            this.mVerified = true;
        }

        public void addError(Issue issue, Object... objArr) {
            this.mErrors.add(new IssueWithParams(issue, objArr));
        }

        public void addWarning(Issue issue, Object... objArr) {
            this.mWarnings.add(new IssueWithParams(issue, objArr));
        }

        public boolean containsErrors() {
            if (!this.mErrors.isEmpty()) {
                return true;
            }
            if (this.mWarningsAsErrors && !this.mWarnings.isEmpty()) {
                return true;
            }
            if (!this.mV1SchemeSigners.isEmpty()) {
                for (V1SchemeSignerInfo v1SchemeSignerInfo : this.mV1SchemeSigners) {
                    if (v1SchemeSignerInfo.containsErrors()) {
                        return true;
                    }
                    if (this.mWarningsAsErrors && !v1SchemeSignerInfo.getWarnings().isEmpty()) {
                        return true;
                    }
                }
            }
            if (!this.mV2SchemeSigners.isEmpty()) {
                for (V2SchemeSignerInfo v2SchemeSignerInfo : this.mV2SchemeSigners) {
                    if (v2SchemeSignerInfo.containsErrors()) {
                        return true;
                    }
                    if (this.mWarningsAsErrors && !v2SchemeSignerInfo.getWarnings().isEmpty()) {
                        return true;
                    }
                }
            }
            if (!this.mV3SchemeSigners.isEmpty()) {
                for (V3SchemeSignerInfo v3SchemeSignerInfo : this.mV3SchemeSigners) {
                    if (v3SchemeSignerInfo.containsErrors()) {
                        return true;
                    }
                    if (this.mWarningsAsErrors && !v3SchemeSignerInfo.getWarnings().isEmpty()) {
                        return true;
                    }
                }
            }
            SourceStampInfo sourceStampInfo = this.mSourceStampInfo;
            if (sourceStampInfo == null) {
                return false;
            }
            if (sourceStampInfo.containsErrors()) {
                return true;
            }
            return this.mWarningsAsErrors && !this.mSourceStampInfo.getWarnings().isEmpty();
        }

        public List<IssueWithParams> getAllErrors() {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.mErrors);
            if (this.mWarningsAsErrors) {
                arrayList.addAll(this.mWarnings);
            }
            if (!this.mV1SchemeSigners.isEmpty()) {
                for (V1SchemeSignerInfo v1SchemeSignerInfo : this.mV1SchemeSigners) {
                    arrayList.addAll(v1SchemeSignerInfo.mErrors);
                    if (this.mWarningsAsErrors) {
                        arrayList.addAll(v1SchemeSignerInfo.getWarnings());
                    }
                }
            }
            if (!this.mV2SchemeSigners.isEmpty()) {
                for (V2SchemeSignerInfo v2SchemeSignerInfo : this.mV2SchemeSigners) {
                    arrayList.addAll(v2SchemeSignerInfo.mErrors);
                    if (this.mWarningsAsErrors) {
                        arrayList.addAll(v2SchemeSignerInfo.getWarnings());
                    }
                }
            }
            if (!this.mV3SchemeSigners.isEmpty()) {
                for (V3SchemeSignerInfo v3SchemeSignerInfo : this.mV3SchemeSigners) {
                    arrayList.addAll(v3SchemeSignerInfo.mErrors);
                    if (this.mWarningsAsErrors) {
                        arrayList.addAll(v3SchemeSignerInfo.getWarnings());
                    }
                }
            }
            SourceStampInfo sourceStampInfo = this.mSourceStampInfo;
            if (sourceStampInfo != null) {
                arrayList.addAll(sourceStampInfo.getErrors());
                if (this.mWarningsAsErrors) {
                    arrayList.addAll(this.mSourceStampInfo.getWarnings());
                }
            }
            return arrayList;
        }

        public List<IssueWithParams> getErrors() {
            if (!this.mWarningsAsErrors) {
                return this.mErrors;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.mErrors);
            arrayList.addAll(this.mWarnings);
            return arrayList;
        }

        public List<X509Certificate> getSignerCertificates() {
            return this.mSignerCerts;
        }

        public SigningCertificateLineage getSigningCertificateLineage() {
            return this.mSigningCertificateLineage;
        }

        public SourceStampInfo getSourceStampInfo() {
            return this.mSourceStampInfo;
        }

        public List<V1SchemeSignerInfo> getV1SchemeIgnoredSigners() {
            return this.mV1SchemeIgnoredSigners;
        }

        public List<V1SchemeSignerInfo> getV1SchemeSigners() {
            return this.mV1SchemeSigners;
        }

        public List<V2SchemeSignerInfo> getV2SchemeSigners() {
            return this.mV2SchemeSigners;
        }

        public List<V3SchemeSignerInfo> getV31SchemeSigners() {
            return this.mV31SchemeSigners;
        }

        public List<V3SchemeSignerInfo> getV3SchemeSigners() {
            return this.mV3SchemeSigners;
        }

        public List<V4SchemeSignerInfo> getV4SchemeSigners() {
            return this.mV4SchemeSigners;
        }

        public List<IssueWithParams> getWarnings() {
            return this.mWarnings;
        }

        public boolean isSourceStampVerified() {
            return this.mSourceStampVerified;
        }

        public boolean isVerified() {
            return this.mVerified;
        }

        public boolean isVerifiedUsingV1Scheme() {
            return this.mVerifiedUsingV1Scheme;
        }

        public boolean isVerifiedUsingV2Scheme() {
            return this.mVerifiedUsingV2Scheme;
        }

        public boolean isVerifiedUsingV31Scheme() {
            return this.mVerifiedUsingV31Scheme;
        }

        public boolean isVerifiedUsingV3Scheme() {
            return this.mVerifiedUsingV3Scheme;
        }

        public boolean isVerifiedUsingV4Scheme() {
            return this.mVerifiedUsingV4Scheme;
        }

        public void setWarningsAsErrors(boolean z10) {
            this.mWarningsAsErrors = z10;
        }

        public void mergeFrom(ApkSigResult apkSigResult) {
            if (apkSigResult.signatureSchemeVersion == 0) {
                this.mSourceStampVerified = apkSigResult.verified;
                if (apkSigResult.mSigners.isEmpty()) {
                    return;
                }
                this.mSourceStampInfo = new SourceStampInfo(apkSigResult.mSigners.get(0));
                return;
            }
            throw new IllegalArgumentException("Unknown ApkSigResult Signing Block Scheme Id " + apkSigResult.signatureSchemeVersion);
        }

        public void mergeFrom(ApkSigningBlockUtils.Result result) {
            int i10 = result.signatureSchemeVersion;
            if (i10 == 0) {
                this.mSourceStampVerified = result.verified;
                if (result.signers.isEmpty()) {
                    return;
                }
                this.mSourceStampInfo = new SourceStampInfo(result.signers.get(0));
                return;
            }
            if (i10 == 31) {
                this.mVerifiedUsingV31Scheme = result.verified;
                Iterator<ApkSigningBlockUtils.Result.SignerInfo> it = result.signers.iterator();
                while (it.hasNext()) {
                    this.mV31SchemeSigners.add(new V3SchemeSignerInfo(it.next()));
                }
                this.mSigningCertificateLineage = result.signingCertificateLineage;
                return;
            }
            if (i10 == 2) {
                this.mVerifiedUsingV2Scheme = result.verified;
                Iterator<ApkSigningBlockUtils.Result.SignerInfo> it2 = result.signers.iterator();
                while (it2.hasNext()) {
                    this.mV2SchemeSigners.add(new V2SchemeSignerInfo(it2.next()));
                }
                return;
            }
            if (i10 != 3) {
                if (i10 == 4) {
                    this.mVerifiedUsingV4Scheme = result.verified;
                    Iterator<ApkSigningBlockUtils.Result.SignerInfo> it3 = result.signers.iterator();
                    while (it3.hasNext()) {
                        this.mV4SchemeSigners.add(new V4SchemeSignerInfo(it3.next()));
                    }
                    return;
                }
                throw new IllegalArgumentException("Unknown Signing Block Scheme Id");
            }
            this.mVerifiedUsingV3Scheme = result.verified;
            Iterator<ApkSigningBlockUtils.Result.SignerInfo> it4 = result.signers.iterator();
            while (it4.hasNext()) {
                this.mV3SchemeSigners.add(new V3SchemeSignerInfo(it4.next()));
            }
            if (this.mSigningCertificateLineage == null) {
                this.mSigningCertificateLineage = result.signingCertificateLineage;
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(24:247|248|(21:250|243|(0)|(1:15)|221|222|223|224|225|226|227|(0)|18|(0)|24|(0)(0)|32|(1:34)|219|37|(0)(0))|242|243|(0)|(0)|221|222|223|224|225|226|227|(0)|18|(0)|24|(0)(0)|32|(0)|219|37|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0130, code lost:
    
        r16 = r14;
        r17 = 2;
        r14 = 24;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x013b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x00f2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Result verify(DataSource dataSource) throws IOException, ApkFormatException, NoSuchAlgorithmException {
        int i10;
        Map<Integer, String> map;
        int i11;
        ByteBuffer byteBuffer;
        List<CentralDirectoryRecord> parseZipCentralDirectory;
        List<CentralDirectoryRecord> list;
        int i12;
        int i13;
        int targetSdkVersionFromBinaryAndroidManifest;
        int minimumSignatureSchemeVersionForTargetSdk;
        X509Certificate x509Certificate;
        CentralDirectoryRecord centralDirectoryRecord;
        int i14;
        File file;
        int i15 = this.mMaxSdkVersion;
        try {
            ApkUtils.ZipSections findZipSections = ApkUtils.findZipSections(dataSource);
            int verifyAndGetMinSdkVersion = verifyAndGetMinSdkVersion(dataSource, findZipSections);
            Result result = new Result();
            HashMap hashMap = new HashMap();
            Map<Integer, String> supportedSchemeNames = getSupportedSchemeNames(i15);
            HashSet hashSet = new HashSet(2);
            if (i15 >= 24) {
                RunnablesExecutor runnablesExecutor = RunnablesExecutor.SINGLE_THREADED;
                if (i15 >= 33) {
                    try {
                        ApkSigningBlockUtils.Result verify = new V3SchemeVerifier.Builder(dataSource, findZipSections, Math.max(verifyAndGetMinSdkVersion, 33), i15).setRunnablesExecutor(runnablesExecutor).setBlockId(462663009).build().verify();
                        hashSet.add(31);
                        i14 = verify.signers.isEmpty() ? 0 : Integer.MAX_VALUE;
                        try {
                            Iterator<ApkSigningBlockUtils.Result.SignerInfo> it = verify.signers.iterator();
                            while (it.hasNext()) {
                                int i16 = it.next().minSdkVersion;
                                if (i14 > i16) {
                                    i14 = i16;
                                }
                            }
                            result.mergeFrom(verify);
                            hashMap.put(31, getApkContentDigestsFromSigningSchemeResult(verify));
                        } catch (ApkSigningBlockUtils.SignatureNotFoundException unused) {
                        }
                    } catch (ApkSigningBlockUtils.SignatureNotFoundException unused2) {
                        i14 = 0;
                    }
                    if (result.containsErrors()) {
                        return result;
                    }
                } else {
                    i14 = 0;
                }
                if (verifyAndGetMinSdkVersion < 33 || hashSet.isEmpty()) {
                    try {
                        V3SchemeVerifier.Builder blockId = new V3SchemeVerifier.Builder(dataSource, findZipSections, Math.max(verifyAndGetMinSdkVersion, 28), i15).setRunnablesExecutor(runnablesExecutor).setBlockId(-262969152);
                        if (i14 > 0) {
                            blockId.setRotationMinSdkVersion(i14);
                        }
                        ApkSigningBlockUtils.Result verify2 = blockId.build().verify();
                        try {
                            hashSet.add(3);
                            result.mergeFrom(verify2);
                            hashMap.put(3, getApkContentDigestsFromSigningSchemeResult(verify2));
                        } catch (ApkSigningBlockUtils.SignatureNotFoundException unused3) {
                            if (hashSet.contains(31)) {
                                result.addError(Issue.V31_BLOCK_FOUND_WITHOUT_V3_BLOCK, new Object[0]);
                                if (result.containsErrors()) {
                                }
                                if (verifyAndGetMinSdkVersion >= 28) {
                                }
                                map = supportedSchemeNames;
                                i10 = 2;
                                i11 = 24;
                                ApkSigningBlockUtils.Result verify3 = V2SchemeVerifier.verify(runnablesExecutor, dataSource, findZipSections, supportedSchemeNames, hashSet, Math.max(verifyAndGetMinSdkVersion, 24), i15);
                                hashSet.add(2);
                                result.mergeFrom(verify3);
                                hashMap.put(2, getApkContentDigestsFromSigningSchemeResult(verify3));
                                if (result.containsErrors()) {
                                }
                                file = this.mV4SignatureFile;
                                if (file != null) {
                                }
                                if (i15 >= 26) {
                                }
                                parseZipCentralDirectory = V1SchemeVerifier.parseZipCentralDirectory(dataSource, findZipSections);
                                if (verifyAndGetMinSdkVersion >= i11) {
                                }
                                list = parseZipCentralDirectory;
                                i12 = 1;
                                result.mergeFrom(V1SchemeVerifier.verify(dataSource, findZipSections, map, hashSet, verifyAndGetMinSdkVersion, i15));
                                hashMap.put(1, getApkContentDigestFromV1SigningScheme(list, dataSource, findZipSections));
                                if (result.containsErrors()) {
                                }
                            }
                            if (result.containsErrors()) {
                            }
                            if (verifyAndGetMinSdkVersion >= 28) {
                            }
                            map = supportedSchemeNames;
                            i10 = 2;
                            i11 = 24;
                            ApkSigningBlockUtils.Result verify32 = V2SchemeVerifier.verify(runnablesExecutor, dataSource, findZipSections, supportedSchemeNames, hashSet, Math.max(verifyAndGetMinSdkVersion, 24), i15);
                            hashSet.add(2);
                            result.mergeFrom(verify32);
                            hashMap.put(2, getApkContentDigestsFromSigningSchemeResult(verify32));
                            if (result.containsErrors()) {
                            }
                            file = this.mV4SignatureFile;
                            if (file != null) {
                            }
                            if (i15 >= 26) {
                            }
                            parseZipCentralDirectory = V1SchemeVerifier.parseZipCentralDirectory(dataSource, findZipSections);
                            if (verifyAndGetMinSdkVersion >= i11) {
                            }
                            list = parseZipCentralDirectory;
                            i12 = 1;
                            result.mergeFrom(V1SchemeVerifier.verify(dataSource, findZipSections, map, hashSet, verifyAndGetMinSdkVersion, i15));
                            hashMap.put(1, getApkContentDigestFromV1SigningScheme(list, dataSource, findZipSections));
                            if (result.containsErrors()) {
                            }
                        }
                    } catch (ApkSigningBlockUtils.SignatureNotFoundException unused4) {
                    }
                    if (result.containsErrors()) {
                        return result;
                    }
                }
                if (verifyAndGetMinSdkVersion >= 28 || hashSet.isEmpty()) {
                    map = supportedSchemeNames;
                    i10 = 2;
                    i11 = 24;
                    ApkSigningBlockUtils.Result verify322 = V2SchemeVerifier.verify(runnablesExecutor, dataSource, findZipSections, supportedSchemeNames, hashSet, Math.max(verifyAndGetMinSdkVersion, 24), i15);
                    hashSet.add(2);
                    result.mergeFrom(verify322);
                    hashMap.put(2, getApkContentDigestsFromSigningSchemeResult(verify322));
                    if (result.containsErrors()) {
                        return result;
                    }
                } else {
                    map = supportedSchemeNames;
                    i11 = 24;
                    i10 = 2;
                }
                file = this.mV4SignatureFile;
                if (file != null) {
                    ApkSigningBlockUtils.Result verify4 = V4SchemeVerifier.verify(dataSource, file);
                    hashSet.add(4);
                    result.mergeFrom(verify4);
                    if (result.containsErrors()) {
                        return result;
                    }
                }
            } else {
                i10 = 2;
                map = supportedSchemeNames;
                i11 = 24;
            }
            if (i15 >= 26) {
                ByteBuffer androidManifestFromApk = getAndroidManifestFromApk(dataSource, findZipSections);
                int targetSandboxVersionFromBinaryAndroidManifest = ApkUtils.getTargetSandboxVersionFromBinaryAndroidManifest(androidManifestFromApk.slice());
                if (targetSandboxVersionFromBinaryAndroidManifest > 1 && hashSet.isEmpty()) {
                    result.addError(Issue.NO_SIG_FOR_TARGET_SANDBOX_VERSION, Integer.valueOf(targetSandboxVersionFromBinaryAndroidManifest));
                }
                byteBuffer = androidManifestFromApk;
            } else {
                byteBuffer = null;
            }
            parseZipCentralDirectory = V1SchemeVerifier.parseZipCentralDirectory(dataSource, findZipSections);
            if (verifyAndGetMinSdkVersion >= i11 || hashSet.isEmpty()) {
                list = parseZipCentralDirectory;
                i12 = 1;
                result.mergeFrom(V1SchemeVerifier.verify(dataSource, findZipSections, map, hashSet, verifyAndGetMinSdkVersion, i15));
                hashMap.put(1, getApkContentDigestFromV1SigningScheme(list, dataSource, findZipSections));
            } else {
                list = parseZipCentralDirectory;
                i12 = 1;
            }
            if (result.containsErrors()) {
                return result;
            }
            try {
                Iterator<CentralDirectoryRecord> it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        centralDirectoryRecord = null;
                        break;
                    }
                    centralDirectoryRecord = it2.next();
                    if ("stamp-cert-sha256".equals(centralDirectoryRecord.getName())) {
                        break;
                    }
                }
                if (centralDirectoryRecord != null) {
                    result.mergeFrom(V2SourceStampVerifier.verify(dataSource, findZipSections, LocalFileRecord.getUncompressedData(dataSource, centralDirectoryRecord, findZipSections.getZipCentralDirectoryOffset()), hashMap, Math.max(verifyAndGetMinSdkVersion, 30), i15));
                }
                i13 = 0;
            } catch (SignatureNotFoundException unused5) {
                i13 = 0;
                result.addWarning(Issue.SOURCE_STAMP_SIG_MISSING, new Object[0]);
            } catch (ZipFormatException e10) {
                throw new ApkFormatException("Failed to read APK", e10);
            }
            if (result.containsErrors()) {
                return result;
            }
            if (result.isVerifiedUsingV1Scheme() && result.isVerifiedUsingV2Scheme()) {
                ArrayList arrayList = new ArrayList(result.getV1SchemeSigners());
                ArrayList arrayList2 = new ArrayList(result.getV2SchemeSigners());
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    Result.V1SchemeSignerInfo v1SchemeSignerInfo = (Result.V1SchemeSignerInfo) it3.next();
                    try {
                        arrayList3.add(new ByteArray(v1SchemeSignerInfo.getCertificate().getEncoded()));
                    } catch (CertificateEncodingException e11) {
                        throw new IllegalStateException("Failed to encode JAR signer " + v1SchemeSignerInfo.getName() + " certs", e11);
                    }
                }
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    Result.V2SchemeSignerInfo v2SchemeSignerInfo = (Result.V2SchemeSignerInfo) it4.next();
                    try {
                        arrayList4.add(new ByteArray(v2SchemeSignerInfo.getCertificate().getEncoded()));
                    } catch (CertificateEncodingException e12) {
                        throw new IllegalStateException("Failed to encode APK Signature Scheme v2 signer (index: " + v2SchemeSignerInfo.getIndex() + ") certs", e12);
                    }
                }
                int i17 = i13;
                while (true) {
                    if (i17 >= arrayList3.size()) {
                        break;
                    }
                    if (!arrayList4.contains((ByteArray) arrayList3.get(i17))) {
                        ((Result.V1SchemeSignerInfo) arrayList.get(i17)).addError(Issue.V2_SIG_MISSING, new Object[i13]);
                        break;
                    }
                    i17++;
                }
                int i18 = i13;
                while (true) {
                    if (i18 >= arrayList4.size()) {
                        break;
                    }
                    if (!arrayList3.contains((ByteArray) arrayList4.get(i18))) {
                        ((Result.V2SchemeSignerInfo) arrayList2.get(i18)).addError(Issue.JAR_SIG_MISSING, new Object[i13]);
                        break;
                    }
                    i18++;
                }
            }
            if (result.isVerifiedUsingV3Scheme() && (result.isVerifiedUsingV1Scheme() || result.isVerifiedUsingV2Scheme())) {
                SigningCertificateLineage signingCertificateLineage = result.getSigningCertificateLineage();
                if (result.isVerifiedUsingV1Scheme()) {
                    List<Result.V1SchemeSignerInfo> v1SchemeSigners = result.getV1SchemeSigners();
                    if (v1SchemeSigners.size() != i12) {
                        result.addError(Issue.V3_SIG_MULTIPLE_PAST_SIGNERS, new Object[i13]);
                    }
                    x509Certificate = (X509Certificate) v1SchemeSigners.get(i13).mCertChain.get(i13);
                } else {
                    List<Result.V2SchemeSignerInfo> v2SchemeSigners = result.getV2SchemeSigners();
                    if (v2SchemeSigners.size() != i12) {
                        result.addError(Issue.V3_SIG_MULTIPLE_PAST_SIGNERS, new Object[i13]);
                    }
                    x509Certificate = (X509Certificate) v2SchemeSigners.get(i13).mCerts.get(i13);
                }
                if (signingCertificateLineage == null) {
                    List<Result.V3SchemeSignerInfo> v3SchemeSigners = result.getV3SchemeSigners();
                    if (v3SchemeSigners.size() != i12) {
                        result.addError(Issue.V3_SIG_MULTIPLE_SIGNERS, new Object[i13]);
                    }
                    try {
                        if (!Arrays.equals(x509Certificate.getEncoded(), ((X509Certificate) v3SchemeSigners.get(i13).mCerts.get(i13)).getEncoded())) {
                            result.addError(Issue.V3_SIG_PAST_SIGNERS_MISMATCH, new Object[i13]);
                        }
                    } catch (CertificateEncodingException e13) {
                        throw new RuntimeException("Failed to encode APK Signature Scheme v3 signer cert", e13);
                    }
                } else {
                    try {
                        if (signingCertificateLineage.getSubLineage(x509Certificate).size() != i12) {
                            result.addError(Issue.V3_SIG_PAST_SIGNERS_MISMATCH, new Object[i13]);
                        }
                    } catch (IllegalArgumentException unused6) {
                        result.addError(Issue.V3_SIG_PAST_SIGNERS_MISMATCH, new Object[i13]);
                    }
                }
            }
            if (result.isVerifiedUsingV4Scheme()) {
                List<Result.V4SchemeSignerInfo> v4SchemeSigners = result.getV4SchemeSigners();
                List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> contentDigests = v4SchemeSigners.get(i13).getContentDigests();
                if (contentDigests.size() != i12) {
                    result.addError(Issue.V4_SIG_V2_V3_DIGESTS_MISMATCH, new Object[i13]);
                }
                byte[] value = contentDigests.get(i13).getValue();
                if (result.isVerifiedUsingV3Scheme()) {
                    if (v4SchemeSigners.size() != (result.isVerifiedUsingV31Scheme() ? i10 : i12)) {
                        result.addError(Issue.V4_SIG_MULTIPLE_SIGNERS, new Object[i13]);
                    }
                    checkV4Signer(result.getV3SchemeSigners(), v4SchemeSigners.get(i13).mCerts, value, result);
                    if (result.isVerifiedUsingV31Scheme()) {
                        checkV4Signer(result.getV31SchemeSigners(), v4SchemeSigners.get(i12).mCerts, value, result);
                    }
                } else if (result.isVerifiedUsingV2Scheme()) {
                    if (v4SchemeSigners.size() != i12) {
                        result.addError(Issue.V4_SIG_MULTIPLE_SIGNERS, new Object[i13]);
                    }
                    List<Result.V2SchemeSignerInfo> v2SchemeSigners2 = result.getV2SchemeSigners();
                    if (v2SchemeSigners2.size() != i12) {
                        result.addError(Issue.V4_SIG_MULTIPLE_SIGNERS, new Object[i13]);
                    }
                    checkV4Certificate(v4SchemeSigners.get(i13).mCerts, v2SchemeSigners2.get(i13).mCerts, result);
                    if (!Arrays.equals(value, pickBestDigestForV4(v2SchemeSigners2.get(i13).getContentDigests()))) {
                        result.addError(Issue.V4_SIG_V2_V3_DIGESTS_MISMATCH, new Object[i13]);
                    }
                } else {
                    throw new RuntimeException("V4 signature must be also verified with V2/V3");
                }
            }
            if (byteBuffer == null) {
                try {
                    byteBuffer = getAndroidManifestFromApk(dataSource, findZipSections);
                } catch (ApkFormatException unused7) {
                }
            }
            if (byteBuffer != null && (minimumSignatureSchemeVersionForTargetSdk = getMinimumSignatureSchemeVersionForTargetSdk((targetSdkVersionFromBinaryAndroidManifest = ApkUtils.getTargetSdkVersionFromBinaryAndroidManifest(byteBuffer.slice())))) > i12 && i15 >= targetSdkVersionFromBinaryAndroidManifest && (minimumSignatureSchemeVersionForTargetSdk == i10 ? !result.isVerifiedUsingV2Scheme() : minimumSignatureSchemeVersionForTargetSdk == 3) && !result.isVerifiedUsingV3Scheme() && !result.isVerifiedUsingV31Scheme()) {
                result.addError(Issue.MIN_SIG_SCHEME_FOR_TARGET_SDK_NOT_MET, Integer.valueOf(targetSdkVersionFromBinaryAndroidManifest), Integer.valueOf(minimumSignatureSchemeVersionForTargetSdk));
            }
            if (result.containsErrors()) {
                return result;
            }
            result.setVerified();
            if (result.isVerifiedUsingV31Scheme()) {
                List<Result.V3SchemeSignerInfo> v31SchemeSigners = result.getV31SchemeSigners();
                result.addSignerCertificate(v31SchemeSigners.get(v31SchemeSigners.size() - i12).getCertificate());
            } else if (result.isVerifiedUsingV3Scheme()) {
                List<Result.V3SchemeSignerInfo> v3SchemeSigners2 = result.getV3SchemeSigners();
                result.addSignerCertificate(v3SchemeSigners2.get(v3SchemeSigners2.size() - i12).getCertificate());
            } else if (result.isVerifiedUsingV2Scheme()) {
                Iterator<Result.V2SchemeSignerInfo> it5 = result.getV2SchemeSigners().iterator();
                while (it5.hasNext()) {
                    result.addSignerCertificate(it5.next().getCertificate());
                }
            } else if (result.isVerifiedUsingV1Scheme()) {
                Iterator<Result.V1SchemeSignerInfo> it6 = result.getV1SchemeSigners().iterator();
                while (it6.hasNext()) {
                    result.addSignerCertificate(it6.next().getCertificate());
                }
            } else {
                throw new RuntimeException("APK verified, but has not verified using any of v1, v2 or v3 schemes");
            }
            return result;
        } catch (ZipFormatException e14) {
            throw new ApkFormatException("Malformed APK: not a ZIP archive", e14);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0134 A[Catch: NoSuchAlgorithmException -> 0x0030, ZipFormatException -> 0x0033, IOException -> 0x0036, ApkFormatException -> 0x0039, SignatureNotFoundException -> 0x013c, TryCatch #3 {ApkFormatException -> 0x0039, SignatureNotFoundException -> 0x013c, ZipFormatException -> 0x0033, IOException -> 0x0036, NoSuchAlgorithmException -> 0x0030, blocks: (B:3:0x0007, B:4:0x0017, B:6:0x001d, B:51:0x003f, B:52:0x004a, B:10:0x0060, B:12:0x006a, B:14:0x0074, B:17:0x0081, B:19:0x009d, B:21:0x00ba, B:23:0x00c0, B:25:0x00cd, B:29:0x00d7, B:32:0x00e2, B:34:0x00fc, B:36:0x0102, B:40:0x010f, B:42:0x0120, B:44:0x0134, B:46:0x0138, B:47:0x0115, B:55:0x0055), top: B:2:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0138 A[Catch: NoSuchAlgorithmException -> 0x0030, ZipFormatException -> 0x0033, IOException -> 0x0036, ApkFormatException -> 0x0039, SignatureNotFoundException -> 0x013c, TRY_LEAVE, TryCatch #3 {ApkFormatException -> 0x0039, SignatureNotFoundException -> 0x013c, ZipFormatException -> 0x0033, IOException -> 0x0036, NoSuchAlgorithmException -> 0x0030, blocks: (B:3:0x0007, B:4:0x0017, B:6:0x001d, B:51:0x003f, B:52:0x004a, B:10:0x0060, B:12:0x006a, B:14:0x0074, B:17:0x0081, B:19:0x009d, B:21:0x00ba, B:23:0x00c0, B:25:0x00cd, B:29:0x00d7, B:32:0x00e2, B:34:0x00fc, B:36:0x0102, B:40:0x010f, B:42:0x0120, B:44:0x0134, B:46:0x0138, B:47:0x0115, B:55:0x0055), top: B:2:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Result verifySourceStamp(DataSource dataSource, String str) {
        CentralDirectoryRecord centralDirectoryRecord;
        Result result;
        HashSet hashSet;
        byte[] bArr;
        int i10;
        ApkSigResult verify;
        try {
            ApkUtils.ZipSections findZipSections = ApkUtils.findZipSections(dataSource);
            int verifyAndGetMinSdkVersion = verifyAndGetMinSdkVersion(dataSource, findZipSections);
            List<CentralDirectoryRecord> parseZipCentralDirectory = V1SchemeVerifier.parseZipCentralDirectory(dataSource, findZipSections);
            Iterator<CentralDirectoryRecord> it = parseZipCentralDirectory.iterator();
            while (true) {
                if (!it.hasNext()) {
                    centralDirectoryRecord = null;
                    break;
                }
                centralDirectoryRecord = it.next();
                if ("stamp-cert-sha256".equals(centralDirectoryRecord.getName())) {
                    break;
                }
            }
            if (centralDirectoryRecord == null) {
                try {
                    ApkSigningBlockUtils.findSignature(dataSource, findZipSections, 1845461005, new ApkSigningBlockUtils.Result(0));
                    return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.STAMP_NOT_VERIFIED, Issue.SOURCE_STAMP_SIGNATURE_BLOCK_WITHOUT_CERT_DIGEST, new Object[0]);
                } catch (ApkSigningBlockUtils.SignatureNotFoundException unused) {
                    return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.STAMP_MISSING, Issue.SOURCE_STAMP_CERT_DIGEST_AND_SIG_BLOCK_MISSING, new Object[0]);
                }
            }
            byte[] uncompressedData = LocalFileRecord.getUncompressedData(dataSource, centralDirectoryRecord, findZipSections.getZipCentralDirectoryOffset());
            if (str != null) {
                String hex = ApkSigningBlockUtils.toHex(uncompressedData);
                if (!str.equalsIgnoreCase(hex)) {
                    return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.CERT_DIGEST_MISMATCH, Issue.SOURCE_STAMP_EXPECTED_DIGEST_MISMATCH, hex, str);
                }
            }
            HashMap hashMap = new HashMap();
            Map<Integer, String> supportedSchemeNames = getSupportedSchemeNames(this.mMaxSdkVersion);
            HashSet hashSet2 = new HashSet(2);
            Result result2 = new Result();
            if (this.mMaxSdkVersion >= 28) {
                result = result2;
                hashSet = hashSet2;
                ApkSigningBlockUtils.Result apkContentDigests = getApkContentDigests(dataSource, findZipSections, hashSet2, supportedSchemeNames, hashMap, 3, Math.max(verifyAndGetMinSdkVersion, 28));
                if (apkContentDigests != null && apkContentDigests.containsErrors()) {
                    result.mergeFrom(apkContentDigests);
                    return mergeSourceStampResult(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, result);
                }
            } else {
                result = result2;
                hashSet = hashSet2;
            }
            if (this.mMaxSdkVersion < 24 || (verifyAndGetMinSdkVersion >= 28 && !hashSet.isEmpty())) {
                bArr = uncompressedData;
                i10 = 24;
                if (verifyAndGetMinSdkVersion >= i10 || hashSet.isEmpty()) {
                    hashMap.put(1, getApkContentDigestFromV1SigningScheme(parseZipCentralDirectory, dataSource, findZipSections));
                }
                verify = V2SourceStampVerifier.verify(dataSource, findZipSections, bArr, hashMap, verifyAndGetMinSdkVersion, this.mMaxSdkVersion);
                result.mergeFrom(verify);
                if (!verify.verified) {
                    result.setVerified();
                } else {
                    result.setWarningsAsErrors(true);
                }
                return result;
            }
            bArr = uncompressedData;
            i10 = 24;
            ApkSigningBlockUtils.Result apkContentDigests2 = getApkContentDigests(dataSource, findZipSections, hashSet, supportedSchemeNames, hashMap, 2, Math.max(verifyAndGetMinSdkVersion, 24));
            if (apkContentDigests2 != null && apkContentDigests2.containsErrors()) {
                result.mergeFrom(apkContentDigests2);
                return mergeSourceStampResult(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, result);
            }
            if (verifyAndGetMinSdkVersion >= i10) {
            }
            hashMap.put(1, getApkContentDigestFromV1SigningScheme(parseZipCentralDirectory, dataSource, findZipSections));
            verify = V2SourceStampVerifier.verify(dataSource, findZipSections, bArr, hashMap, verifyAndGetMinSdkVersion, this.mMaxSdkVersion);
            result.mergeFrom(verify);
            if (!verify.verified) {
            }
            return result;
        } catch (ApkFormatException e10) {
            e = e10;
            return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, Issue.MALFORMED_APK, e);
        } catch (SignatureNotFoundException unused2) {
            return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.STAMP_NOT_VERIFIED, Issue.SOURCE_STAMP_SIG_MISSING, new Object[0]);
        } catch (ZipFormatException e11) {
            e = e11;
            return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, Issue.MALFORMED_APK, e);
        } catch (IOException e12) {
            e = e12;
            return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, Issue.MALFORMED_APK, e);
        } catch (NoSuchAlgorithmException e13) {
            return createSourceStampResultWithError(Result.SourceStampInfo.SourceStampVerificationStatus.VERIFICATION_ERROR, Issue.UNEXPECTED_EXCEPTION, e13);
        }
    }
}
