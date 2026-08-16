package com.android.apksig.internal.apk.v3;

import android.security.keystore.KeyProperties;
import com.android.apksig.SigningCertificateLineage;
import com.android.apksig.internal.apk.ApkSigningBlockUtils;
import com.android.apksig.internal.apk.ContentDigestAlgorithm;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.compat.OptionalIntCompat;
import com.android.apksig.internal.util.Pair;
import com.android.apksig.util.DataSource;
import com.android.apksig.util.RunnablesExecutor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.interfaces.ECKey;
import java.security.interfaces.RSAKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class V3SchemeSigner {
    public static final int APK_SIGNATURE_SCHEME_V3_BLOCK_ID = -262969152;
    public static final int PROOF_OF_ROTATION_ATTR_ID = 1000370060;
    private final DataSource mBeforeCentralDir;
    private final int mBlockId;
    private final DataSource mCentralDir;
    private final DataSource mEocd;
    private final RunnablesExecutor mExecutor;
    private final OptionalIntCompat mOptionalRotationMinSdkVersion;
    private final boolean mRotationTargetsDevRelease;
    private final List<ApkSigningBlockUtils.SignerConfig> mSignerConfigs;

    public static class Builder {
        private final DataSource mBeforeCentralDir;
        private final DataSource mCentralDir;
        private final DataSource mEocd;
        private final List<ApkSigningBlockUtils.SignerConfig> mSignerConfigs;
        private RunnablesExecutor mExecutor = RunnablesExecutor.MULTI_THREADED;
        private int mBlockId = -262969152;
        private OptionalIntCompat mOptionalRotationMinSdkVersion = OptionalIntCompat.empty();
        private boolean mRotationTargetsDevRelease = false;

        public Builder(DataSource dataSource, DataSource dataSource2, DataSource dataSource3, List<ApkSigningBlockUtils.SignerConfig> list) {
            this.mBeforeCentralDir = dataSource;
            this.mCentralDir = dataSource2;
            this.mEocd = dataSource3;
            this.mSignerConfigs = list;
        }

        public V3SchemeSigner build() {
            return new V3SchemeSigner(this.mBeforeCentralDir, this.mCentralDir, this.mEocd, this.mSignerConfigs, this.mExecutor, this.mBlockId, this.mOptionalRotationMinSdkVersion, this.mRotationTargetsDevRelease);
        }

        public Builder setBlockId(int i10) {
            this.mBlockId = i10;
            return this;
        }

        public Builder setRotationMinSdkVersion(int i10) {
            this.mOptionalRotationMinSdkVersion = OptionalIntCompat.of(i10);
            return this;
        }

        public Builder setRotationTargetsDevRelease(boolean z10) {
            this.mRotationTargetsDevRelease = z10;
            return this;
        }

        public Builder setRunnablesExecutor(RunnablesExecutor runnablesExecutor) {
            this.mExecutor = runnablesExecutor;
            return this;
        }
    }

    public static final class V3SignatureSchemeBlock {

        public static final class SignedData {
            public byte[] additionalAttributes;
            public List<byte[]> certificates;
            public List<Pair<Integer, byte[]>> digests;
            public int maxSdkVersion;
            public int minSdkVersion;

            private SignedData() {
            }
        }

        public static final class Signer {
            public int maxSdkVersion;
            public int minSdkVersion;
            public byte[] publicKey;
            public List<Pair<Integer, byte[]>> signatures;
            public byte[] signedData;

            private Signer() {
            }
        }

        private V3SignatureSchemeBlock() {
        }
    }

    private byte[] encodeSignedData(V3SignatureSchemeBlock.SignedData signedData) {
        byte[] encodeAsLengthPrefixedElement = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(signedData.digests));
        byte[] encodeAsLengthPrefixedElement2 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(signedData.certificates));
        byte[] encodeAsLengthPrefixedElement3 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signedData.additionalAttributes);
        ByteBuffer allocate = ByteBuffer.allocate(encodeAsLengthPrefixedElement.length + encodeAsLengthPrefixedElement2.length + 8 + encodeAsLengthPrefixedElement3.length);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put(encodeAsLengthPrefixedElement);
        allocate.put(encodeAsLengthPrefixedElement2);
        allocate.putInt(signedData.minSdkVersion);
        allocate.putInt(signedData.maxSdkVersion);
        allocate.put(encodeAsLengthPrefixedElement3);
        return allocate.array();
    }

    private byte[] encodeSigner(V3SignatureSchemeBlock.Signer signer) {
        byte[] encodeAsLengthPrefixedElement = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signer.signedData);
        byte[] encodeAsLengthPrefixedElement2 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(signer.signatures));
        byte[] encodeAsLengthPrefixedElement3 = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signer.publicKey);
        ByteBuffer allocate = ByteBuffer.allocate(encodeAsLengthPrefixedElement.length + 8 + encodeAsLengthPrefixedElement2.length + encodeAsLengthPrefixedElement3.length);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put(encodeAsLengthPrefixedElement);
        allocate.putInt(signer.minSdkVersion);
        allocate.putInt(signer.maxSdkVersion);
        allocate.put(encodeAsLengthPrefixedElement2);
        allocate.put(encodeAsLengthPrefixedElement3);
        return allocate.array();
    }

    private byte[] generateAdditionalAttributes(ApkSigningBlockUtils.SignerConfig signerConfig) {
        SigningCertificateLineage signingCertificateLineage = signerConfig.mSigningCertificateLineage;
        if (signingCertificateLineage == null) {
            return this.mOptionalRotationMinSdkVersion.isPresent() ? generateV3RotationMinSdkVersionStrippingProtectionAttribute(this.mOptionalRotationMinSdkVersion.getAsInt()) : new byte[0];
        }
        byte[] generateV3SignerAttribute = generateV3SignerAttribute(signingCertificateLineage);
        if (!this.mRotationTargetsDevRelease || this.mBlockId != 462663009) {
            return generateV3SignerAttribute;
        }
        byte[] generateV31RotationTargetsDevReleaseAttribute = generateV31RotationTargetsDevReleaseAttribute();
        byte[] bArr = new byte[generateV3SignerAttribute.length + generateV31RotationTargetsDevReleaseAttribute.length];
        System.arraycopy(generateV3SignerAttribute, 0, bArr, 0, generateV3SignerAttribute.length);
        System.arraycopy(generateV31RotationTargetsDevReleaseAttribute, 0, bArr, generateV3SignerAttribute.length, generateV31RotationTargetsDevReleaseAttribute.length);
        return bArr;
    }

    public static ApkSigningBlockUtils.SigningSchemeBlockAndDigests generateApkSignatureSchemeV3Block(RunnablesExecutor runnablesExecutor, DataSource dataSource, DataSource dataSource2, DataSource dataSource3, List<ApkSigningBlockUtils.SignerConfig> list) throws IOException, InvalidKeyException, NoSuchAlgorithmException, SignatureException {
        return new Builder(dataSource, dataSource2, dataSource3, list).setRunnablesExecutor(runnablesExecutor).setBlockId(-262969152).build().generateApkSignatureSchemeV3BlockAndDigests();
    }

    private byte[] generateSignerBlock(ApkSigningBlockUtils.SignerConfig signerConfig, Map<ContentDigestAlgorithm, byte[]> map) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        if (signerConfig.certificates.isEmpty()) {
            throw new SignatureException("No certificates configured for signer");
        }
        byte[] encodePublicKey = ApkSigningBlockUtils.encodePublicKey(signerConfig.certificates.get(0).getPublicKey());
        V3SignatureSchemeBlock.SignedData signedData = new V3SignatureSchemeBlock.SignedData();
        try {
            signedData.certificates = ApkSigningBlockUtils.encodeCertificates(signerConfig.certificates);
            ArrayList arrayList = new ArrayList(signerConfig.signatureAlgorithms.size());
            for (SignatureAlgorithm signatureAlgorithm : signerConfig.signatureAlgorithms) {
                ContentDigestAlgorithm contentDigestAlgorithm = signatureAlgorithm.getContentDigestAlgorithm();
                byte[] bArr = map.get(contentDigestAlgorithm);
                if (bArr == null) {
                    throw new RuntimeException(((Object) contentDigestAlgorithm) + " content digest for " + ((Object) signatureAlgorithm) + " not computed");
                }
                arrayList.add(Pair.of(Integer.valueOf(signatureAlgorithm.getId()), bArr));
            }
            signedData.digests = arrayList;
            signedData.minSdkVersion = signerConfig.minSdkVersion;
            signedData.maxSdkVersion = signerConfig.maxSdkVersion;
            signedData.additionalAttributes = generateAdditionalAttributes(signerConfig);
            V3SignatureSchemeBlock.Signer signer = new V3SignatureSchemeBlock.Signer();
            byte[] encodeSignedData = encodeSignedData(signedData);
            signer.signedData = encodeSignedData;
            signer.minSdkVersion = signerConfig.minSdkVersion;
            signer.maxSdkVersion = signerConfig.maxSdkVersion;
            signer.publicKey = encodePublicKey;
            signer.signatures = ApkSigningBlockUtils.generateSignaturesOverData(signerConfig, encodeSignedData);
            return encodeSigner(signer);
        } catch (CertificateEncodingException e10) {
            throw new SignatureException("Failed to encode certificates", e10);
        }
    }

    private static byte[] generateV31RotationTargetsDevReleaseAttribute() {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(4);
        allocate.putInt(V3SchemeConstants.ROTATION_ON_DEV_RELEASE_ATTR_ID);
        return allocate.array();
    }

    private static byte[] generateV3RotationMinSdkVersionStrippingProtectionAttribute(int i10) {
        ByteBuffer allocate = ByteBuffer.allocate(12);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(8);
        allocate.putInt(V3SchemeConstants.ROTATION_MIN_SDK_VERSION_ATTR_ID);
        allocate.putInt(i10);
        return allocate.array();
    }

    public static byte[] generateV3SignerAttribute(SigningCertificateLineage signingCertificateLineage) {
        byte[] encodeSigningCertificateLineage = signingCertificateLineage.encodeSigningCertificateLineage();
        ByteBuffer allocate = ByteBuffer.allocate(encodeSigningCertificateLineage.length + 8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(encodeSigningCertificateLineage.length + 4);
        allocate.putInt(1000370060);
        allocate.put(encodeSigningCertificateLineage);
        return allocate.array();
    }

    public static List<SignatureAlgorithm> getSuggestedSignatureAlgorithms(PublicKey publicKey, int i10, boolean z10, boolean z11) throws InvalidKeyException {
        String algorithm = publicKey.getAlgorithm();
        if (KeyProperties.KEY_ALGORITHM_RSA.equalsIgnoreCase(algorithm)) {
            if (((RSAKey) publicKey).getModulus().bitLength() > 3072) {
                return Collections.singletonList(SignatureAlgorithm.RSA_PKCS1_V1_5_WITH_SHA512);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(SignatureAlgorithm.RSA_PKCS1_V1_5_WITH_SHA256);
            if (z10) {
                arrayList.add(SignatureAlgorithm.VERITY_RSA_PKCS1_V1_5_WITH_SHA256);
            }
            return arrayList;
        }
        if ("DSA".equalsIgnoreCase(algorithm)) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(z11 ? SignatureAlgorithm.DETDSA_WITH_SHA256 : SignatureAlgorithm.DSA_WITH_SHA256);
            if (z10) {
                arrayList2.add(SignatureAlgorithm.VERITY_DSA_WITH_SHA256);
            }
            return arrayList2;
        }
        if (!KeyProperties.KEY_ALGORITHM_EC.equalsIgnoreCase(algorithm)) {
            throw new InvalidKeyException("Unsupported key algorithm: " + algorithm);
        }
        if (((ECKey) publicKey).getParams().getOrder().bitLength() > 256) {
            return Collections.singletonList(SignatureAlgorithm.ECDSA_WITH_SHA512);
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(SignatureAlgorithm.ECDSA_WITH_SHA256);
        if (z10) {
            arrayList3.add(SignatureAlgorithm.VERITY_ECDSA_WITH_SHA256);
        }
        return arrayList3;
    }

    public ApkSigningBlockUtils.SigningSchemeBlockAndDigests generateApkSignatureSchemeV3BlockAndDigests() throws IOException, InvalidKeyException, NoSuchAlgorithmException, SignatureException {
        Pair<List<ApkSigningBlockUtils.SignerConfig>, Map<ContentDigestAlgorithm, byte[]>> computeContentDigests = ApkSigningBlockUtils.computeContentDigests(this.mExecutor, this.mBeforeCentralDir, this.mCentralDir, this.mEocd, this.mSignerConfigs);
        return new ApkSigningBlockUtils.SigningSchemeBlockAndDigests(generateApkSignatureSchemeV3Block(computeContentDigests.getSecond()), computeContentDigests.getSecond());
    }

    private V3SchemeSigner(DataSource dataSource, DataSource dataSource2, DataSource dataSource3, List<ApkSigningBlockUtils.SignerConfig> list, RunnablesExecutor runnablesExecutor, int i10, OptionalIntCompat optionalIntCompat, boolean z10) {
        this.mBeforeCentralDir = dataSource;
        this.mCentralDir = dataSource2;
        this.mEocd = dataSource3;
        this.mSignerConfigs = list;
        this.mExecutor = runnablesExecutor;
        this.mBlockId = i10;
        this.mOptionalRotationMinSdkVersion = optionalIntCompat;
        this.mRotationTargetsDevRelease = z10;
    }

    private Pair<byte[], Integer> generateApkSignatureSchemeV3Block(Map<ContentDigestAlgorithm, byte[]> map) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        ArrayList arrayList = new ArrayList(this.mSignerConfigs.size());
        Iterator<ApkSigningBlockUtils.SignerConfig> it = this.mSignerConfigs.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10++;
            try {
                arrayList.add(generateSignerBlock(it.next(), map));
            } catch (InvalidKeyException e10) {
                throw new InvalidKeyException("Signer #" + i10 + " failed", e10);
            } catch (SignatureException e11) {
                throw new SignatureException("Signer #" + i10 + " failed", e11);
            }
        }
        return Pair.of(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(new byte[][]{ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(arrayList)}), Integer.valueOf(this.mBlockId));
    }
}
