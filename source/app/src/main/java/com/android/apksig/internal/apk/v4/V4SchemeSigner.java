package com.android.apksig.internal.apk.v4;

import com.android.apksig.apk.ApkUtils;
import com.android.apksig.internal.apk.ApkSigningBlockUtils;
import com.android.apksig.internal.apk.ContentDigestAlgorithm;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.apk.v2.V2SchemeVerifier;
import com.android.apksig.internal.apk.v3.V3SchemeSigner;
import com.android.apksig.internal.apk.v3.V3SchemeVerifier;
import com.android.apksig.internal.apk.v4.V4Signature;
import com.android.apksig.internal.util.Pair;
import com.android.apksig.util.DataSource;
import com.android.apksig.zip.ZipFormatException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;

public abstract class V4SchemeSigner {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm;

        static {
            int[] iArr = new int[ContentDigestAlgorithm.values().length];
            $SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm = iArr;
            try {
                iArr[ContentDigestAlgorithm.CHUNKED_SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm[ContentDigestAlgorithm.VERITY_CHUNKED_SHA256.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm[ContentDigestAlgorithm.CHUNKED_SHA512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class SignerConfig {
        public final ApkSigningBlockUtils.SignerConfig v41Config;
        public final ApkSigningBlockUtils.SignerConfig v4Config;

        public SignerConfig(List<ApkSigningBlockUtils.SignerConfig> list, List<ApkSigningBlockUtils.SignerConfig> list2) throws InvalidKeyException {
            if (list == null || list.size() != 1) {
                throw new InvalidKeyException("Only accepting one signer config for V4 Signature.");
            }
            if (list2 != null && list2.size() != 1) {
                throw new InvalidKeyException("Only accepting one signer config for V4.1 Signature.");
            }
            this.v4Config = list.get(0);
            this.v41Config = list2 != null ? list2.get(0) : null;
        }
    }

    private V4SchemeSigner() {
    }

    private static Pair<Integer, Byte> convertToV4HashingInfo(ContentDigestAlgorithm contentDigestAlgorithm) throws NoSuchAlgorithmException {
        if (AnonymousClass1.$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm[contentDigestAlgorithm.ordinal()] == 2) {
            return Pair.of(1, (byte) 12);
        }
        throw new NoSuchAlgorithmException("Invalid hash algorithm, only SHA2-256 over 4 KB chunks supported.");
    }

    public static int digestAlgorithmSortingOrder(ContentDigestAlgorithm contentDigestAlgorithm) {
        int i10 = AnonymousClass1.$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm[contentDigestAlgorithm.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 != 2) {
            return i10 != 3 ? -1 : 2;
        }
        return 1;
    }

    private static V4Signature generateSignature(SignerConfig signerConfig, V4Signature.HashingInfo hashingInfo, byte[] bArr, byte[] bArr2, long j10) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException, CertificateEncodingException {
        V4Signature.SigningInfo generateSigningInfo = generateSigningInfo(signerConfig.v4Config, hashingInfo, bArr, bArr2, j10);
        ApkSigningBlockUtils.SignerConfig signerConfig2 = signerConfig.v41Config;
        return new V4Signature(2, hashingInfo.toByteArray(), (signerConfig2 != null ? new V4Signature.SigningInfos(generateSigningInfo, new V4Signature.SigningInfoBlock(462663009, generateSigningInfo(signerConfig2, hashingInfo, bArr, bArr2, j10).toByteArray())) : new V4Signature.SigningInfos(generateSigningInfo)).toByteArray());
    }

    private static V4Signature.SigningInfo generateSigningInfo(ApkSigningBlockUtils.SignerConfig signerConfig, V4Signature.HashingInfo hashingInfo, byte[] bArr, byte[] bArr2, long j10) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException, CertificateEncodingException {
        if (signerConfig.certificates.isEmpty()) {
            throw new SignatureException("No certificates configured for signer");
        }
        if (signerConfig.certificates.size() != 1) {
            throw new CertificateEncodingException("Should only have one certificate");
        }
        PublicKey publicKey = signerConfig.certificates.get(0).getPublicKey();
        byte[] bArr3 = ApkSigningBlockUtils.encodeCertificates(signerConfig.certificates).get(0);
        List<Pair<Integer, byte[]>> generateSignaturesOverData = ApkSigningBlockUtils.generateSignaturesOverData(signerConfig, V4Signature.getSignedData(j10, hashingInfo, new V4Signature.SigningInfo(bArr, bArr3, bArr2, publicKey.getEncoded(), -1, null)));
        if (generateSignaturesOverData.size() != 1) {
            throw new SignatureException("Should only be one signature generated");
        }
        return new V4Signature.SigningInfo(bArr, bArr3, bArr2, publicKey.getEncoded(), generateSignaturesOverData.get(0).getFirst().intValue(), generateSignaturesOverData.get(0).getSecond());
    }

    public static void generateV4Signature(DataSource dataSource, SignerConfig signerConfig, File file) throws IOException, InvalidKeyException, NoSuchAlgorithmException {
        Pair<V4Signature, byte[]> generateV4Signature = generateV4Signature(dataSource, signerConfig);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                generateV4Signature.getFirst().writeTo(fileOutputStream);
                V4Signature.writeBytes(fileOutputStream, generateV4Signature.getSecond());
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            file.delete();
            throw e10;
        }
    }

    private static byte[] getApkDigest(DataSource dataSource) throws IOException {
        try {
            ApkUtils.ZipSections findZipSections = ApkUtils.findZipSections(dataSource);
            try {
                return getBestV3Digest(dataSource, findZipSections);
            } catch (SignatureException e10) {
                try {
                    return getBestV2Digest(dataSource, findZipSections);
                } catch (SignatureException e11) {
                    throw new IOException("Failed to obtain v2/v3 digest, v3 exception: " + ((Object) e10) + ", v2 exception: " + ((Object) e11));
                }
            }
        } catch (ZipFormatException e12) {
            throw new IOException("Malformed APK: not a ZIP archive", e12);
        }
    }

    private static byte[] getBestV2Digest(DataSource dataSource, ApkUtils.ZipSections zipSections) throws SignatureException {
        HashSet hashSet = new HashSet(1);
        HashSet hashSet2 = new HashSet(1);
        ApkSigningBlockUtils.Result result = new ApkSigningBlockUtils.Result(2);
        try {
            V2SchemeVerifier.parseSigners(ApkSigningBlockUtils.findSignature(dataSource, zipSections, 1896449818, result).signatureBlock, hashSet, Collections.emptyMap(), hashSet2, Integer.MAX_VALUE, Integer.MAX_VALUE, result);
            if (result.signers.size() != 1) {
                throw new SignatureException("Should only have one signer, errors: " + ((Object) result.getErrors()));
            }
            ApkSigningBlockUtils.Result.SignerInfo signerInfo = result.signers.get(0);
            if (!signerInfo.containsErrors()) {
                return pickBestDigest(signerInfo.contentDigests);
            }
            throw new SignatureException("Parsing failed: " + ((Object) signerInfo.getErrors()));
        } catch (Exception e10) {
            throw new SignatureException("Failed to extract and parse v2 block", e10);
        }
    }

    private static byte[] getBestV3Digest(DataSource dataSource, ApkUtils.ZipSections zipSections) throws SignatureException {
        HashSet hashSet = new HashSet(1);
        ApkSigningBlockUtils.Result result = new ApkSigningBlockUtils.Result(3);
        try {
            V3SchemeVerifier.parseSigners(ApkSigningBlockUtils.findSignature(dataSource, zipSections, -262969152, result).signatureBlock, hashSet, result);
            if (result.signers.size() != 1) {
                throw new SignatureException("Should only have one signer, errors: " + ((Object) result.getErrors()));
            }
            ApkSigningBlockUtils.Result.SignerInfo signerInfo = result.signers.get(0);
            if (!signerInfo.containsErrors()) {
                return pickBestDigest(result.signers.get(0).contentDigests);
            }
            throw new SignatureException("Parsing failed: " + ((Object) signerInfo.getErrors()));
        } catch (Exception e10) {
            throw new SignatureException("Failed to extract and parse v3 block", e10);
        }
    }

    public static List<SignatureAlgorithm> getSuggestedSignatureAlgorithms(PublicKey publicKey, int i10, boolean z10, boolean z11) throws InvalidKeyException {
        List<SignatureAlgorithm> suggestedSignatureAlgorithms = V3SchemeSigner.getSuggestedSignatureAlgorithms(publicKey, i10, z10, z11);
        ListIterator<SignatureAlgorithm> listIterator = suggestedSignatureAlgorithms.listIterator();
        while (listIterator.hasNext()) {
            if (!isSupported(listIterator.next().getContentDigestAlgorithm(), false)) {
                listIterator.remove();
            }
        }
        return suggestedSignatureAlgorithms;
    }

    private static boolean isSupported(ContentDigestAlgorithm contentDigestAlgorithm, boolean z10) {
        if (contentDigestAlgorithm == null) {
            return false;
        }
        if (contentDigestAlgorithm == ContentDigestAlgorithm.CHUNKED_SHA256 || contentDigestAlgorithm == ContentDigestAlgorithm.CHUNKED_SHA512) {
            return true;
        }
        return z10 && contentDigestAlgorithm == ContentDigestAlgorithm.VERITY_CHUNKED_SHA256;
    }

    private static byte[] pickBestDigest(List<ApkSigningBlockUtils.Result.SignerInfo.ContentDigest> list) throws SignatureException {
        int digestAlgorithmSortingOrder;
        if (list == null || list.isEmpty()) {
            throw new SignatureException("Should have at least one digest");
        }
        int i10 = -1;
        byte[] bArr = null;
        for (ApkSigningBlockUtils.Result.SignerInfo.ContentDigest contentDigest : list) {
            ContentDigestAlgorithm contentDigestAlgorithm = SignatureAlgorithm.findById(contentDigest.getSignatureAlgorithmId()).getContentDigestAlgorithm();
            if (isSupported(contentDigestAlgorithm, true) && i10 < (digestAlgorithmSortingOrder = digestAlgorithmSortingOrder(contentDigestAlgorithm))) {
                bArr = contentDigest.getValue();
                i10 = digestAlgorithmSortingOrder;
            }
        }
        if (bArr != null) {
            return bArr;
        }
        throw new SignatureException("Failed to find a supported digest in the source APK");
    }

    public static Pair<V4Signature, byte[]> generateV4Signature(DataSource dataSource, SignerConfig signerConfig) throws IOException, InvalidKeyException, NoSuchAlgorithmException {
        long size = dataSource.size();
        byte[] apkDigest = getApkDigest(dataSource);
        ApkSigningBlockUtils.VerityTreeAndDigest computeChunkVerityTreeAndDigest = ApkSigningBlockUtils.computeChunkVerityTreeAndDigest(dataSource);
        ContentDigestAlgorithm contentDigestAlgorithm = computeChunkVerityTreeAndDigest.contentDigestAlgorithm;
        byte[] bArr = computeChunkVerityTreeAndDigest.rootHash;
        byte[] bArr2 = computeChunkVerityTreeAndDigest.tree;
        Pair<Integer, Byte> convertToV4HashingInfo = convertToV4HashingInfo(contentDigestAlgorithm);
        try {
            return Pair.of(generateSignature(signerConfig, new V4Signature.HashingInfo(convertToV4HashingInfo.getFirst().intValue(), convertToV4HashingInfo.getSecond().byteValue(), null, bArr), apkDigest, null, size), bArr2);
        } catch (InvalidKeyException | SignatureException | CertificateEncodingException e10) {
            throw new InvalidKeyException("Signer failed", e10);
        }
    }
}
