package com.android.apksig.internal.apk.stamp;

import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.internal.apk.ApkSignerInfo;
import com.android.apksig.internal.apk.ApkSigningBlockUtilsLite;
import com.android.apksig.internal.apk.ApkSupportedSignature;
import com.android.apksig.internal.apk.NoApkSupportedSignaturesException;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.apk.stamp.SourceStampCertificateLineage;
import com.android.apksig.internal.util.ByteBufferUtils;
import com.android.apksig.internal.util.GuaranteedEncodedFormX509Certificate;
import java.io.ByteArrayInputStream;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class SourceStampVerifier {
    private SourceStampVerifier() {
    }

    private static void parseStampAttributes(ByteBuffer byteBuffer, X509Certificate x509Certificate, ApkSignerInfo apkSignerInfo) throws ApkFormatException {
        ByteBuffer lengthPrefixedSlice = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer);
        int i10 = 0;
        while (lengthPrefixedSlice.hasRemaining()) {
            i10++;
            try {
                ByteBuffer lengthPrefixedSlice2 = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(lengthPrefixedSlice);
                int i11 = lengthPrefixedSlice2.getInt();
                byte[] byteArray = ByteBufferUtils.toByteArray(lengthPrefixedSlice2);
                if (i11 == -1654455305) {
                    readStampCertificateLineage(byteArray, x509Certificate, apkSignerInfo);
                } else if (i11 == -465807034) {
                    long j10 = ByteBuffer.wrap(byteArray).order(ByteOrder.LITTLE_ENDIAN).getLong();
                    if (j10 > 0) {
                        apkSignerInfo.timestamp = j10;
                    } else {
                        apkSignerInfo.addWarning(38, Long.valueOf(j10));
                    }
                } else {
                    apkSignerInfo.addWarning(32, Integer.valueOf(i11));
                }
            } catch (ApkFormatException | BufferUnderflowException unused) {
                apkSignerInfo.addWarning(31, Integer.valueOf(i10));
                return;
            }
        }
    }

    private static void readStampCertificateLineage(byte[] bArr, X509Certificate x509Certificate, ApkSignerInfo apkSignerInfo) {
        try {
            List<SourceStampCertificateLineage.SigningCertificateNode> readSigningCertificateLineage = SourceStampCertificateLineage.readSigningCertificateLineage(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
            for (int i10 = 0; i10 < readSigningCertificateLineage.size(); i10++) {
                apkSignerInfo.certificateLineage.add(readSigningCertificateLineage.get(i10).signingCert);
            }
            if (x509Certificate.equals(apkSignerInfo.certificateLineage.get(r5.size() - 1))) {
                return;
            }
            apkSignerInfo.addWarning(34, new Object[0]);
        } catch (IllegalArgumentException unused) {
            apkSignerInfo.addWarning(34, new Object[0]);
        } catch (SecurityException unused2) {
            apkSignerInfo.addWarning(35, new Object[0]);
        } catch (Exception unused3) {
            apkSignerInfo.addWarning(33, new Object[0]);
        }
    }

    private static X509Certificate verifySourceStampCertificate(ByteBuffer byteBuffer, CertificateFactory certificateFactory, byte[] bArr, ApkSignerInfo apkSignerInfo) throws NoSuchAlgorithmException, ApkFormatException {
        byte[] readLengthPrefixedByteArray = ApkSigningBlockUtilsLite.readLengthPrefixedByteArray(byteBuffer);
        try {
            GuaranteedEncodedFormX509Certificate guaranteedEncodedFormX509Certificate = new GuaranteedEncodedFormX509Certificate((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(readLengthPrefixedByteArray)), readLengthPrefixedByteArray);
            apkSignerInfo.certs.add(guaranteedEncodedFormX509Certificate);
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(readLengthPrefixedByteArray);
            byte[] digest = messageDigest.digest();
            if (Arrays.equals(bArr, digest)) {
                return guaranteedEncodedFormX509Certificate;
            }
            apkSignerInfo.addWarning(27, ApkSigningBlockUtilsLite.toHex(digest), ApkSigningBlockUtilsLite.toHex(bArr));
            return null;
        } catch (CertificateException e10) {
            apkSignerInfo.addWarning(18, e10);
            return null;
        }
    }

    private static void verifySourceStampSignature(byte[] bArr, int i10, int i11, X509Certificate x509Certificate, ByteBuffer byteBuffer, ApkSignerInfo apkSignerInfo) {
        ArrayList<ApkSupportedSignature> arrayList = new ArrayList(1);
        int i12 = 0;
        while (byteBuffer.hasRemaining()) {
            i12++;
            try {
                ByteBuffer lengthPrefixedSlice = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer);
                int i13 = lengthPrefixedSlice.getInt();
                byte[] readLengthPrefixedByteArray = ApkSigningBlockUtilsLite.readLengthPrefixedByteArray(lengthPrefixedSlice);
                SignatureAlgorithm findById = SignatureAlgorithm.findById(i13);
                if (findById == null) {
                    apkSignerInfo.addWarning(19, Integer.valueOf(i13));
                } else {
                    arrayList.add(new ApkSupportedSignature(findById, readLengthPrefixedByteArray));
                }
            } catch (ApkFormatException | BufferUnderflowException unused) {
                apkSignerInfo.addWarning(20, Integer.valueOf(i12));
                return;
            }
        }
        if (arrayList.isEmpty()) {
            apkSignerInfo.addWarning(17, new Object[0]);
            return;
        }
        try {
            for (ApkSupportedSignature apkSupportedSignature : ApkSigningBlockUtilsLite.getSignaturesToVerify(arrayList, i10, i11, true)) {
                SignatureAlgorithm signatureAlgorithm = apkSupportedSignature.algorithm;
                String first = signatureAlgorithm.getJcaSignatureAlgorithmAndParams().getFirst();
                AlgorithmParameterSpec second = signatureAlgorithm.getJcaSignatureAlgorithmAndParams().getSecond();
                PublicKey publicKey = x509Certificate.getPublicKey();
                try {
                    Signature signature = Signature.getInstance(first);
                    signature.initVerify(publicKey);
                    if (second != null) {
                        signature.setParameter(second);
                    }
                    signature.update(bArr);
                    if (!signature.verify(apkSupportedSignature.signature)) {
                        apkSignerInfo.addWarning(21, signatureAlgorithm);
                        return;
                    }
                } catch (InvalidAlgorithmParameterException e10) {
                    e = e10;
                    apkSignerInfo.addWarning(22, signatureAlgorithm, e);
                    return;
                } catch (InvalidKeyException e11) {
                    e = e11;
                    apkSignerInfo.addWarning(22, signatureAlgorithm, e);
                    return;
                } catch (NoSuchAlgorithmException e12) {
                    e = e12;
                    apkSignerInfo.addWarning(22, signatureAlgorithm, e);
                    return;
                } catch (SignatureException e13) {
                    e = e13;
                    apkSignerInfo.addWarning(22, signatureAlgorithm, e);
                    return;
                }
            }
        } catch (NoApkSupportedSignaturesException e14) {
            StringBuilder sb2 = new StringBuilder();
            for (ApkSupportedSignature apkSupportedSignature2 : arrayList) {
                if (sb2.length() > 0) {
                    sb2.append(", ");
                }
                sb2.append((Object) apkSupportedSignature2.algorithm);
            }
            apkSignerInfo.addWarning(26, sb2.toString(), e14);
        }
    }

    public static void verifyV1SourceStamp(ByteBuffer byteBuffer, CertificateFactory certificateFactory, ApkSignerInfo apkSignerInfo, byte[] bArr, byte[] bArr2, int i10, int i11) throws ApkFormatException, NoSuchAlgorithmException {
        X509Certificate verifySourceStampCertificate = verifySourceStampCertificate(byteBuffer, certificateFactory, bArr2, apkSignerInfo);
        if (apkSignerInfo.containsWarnings() || apkSignerInfo.containsErrors()) {
            return;
        }
        verifySourceStampSignature(bArr, i10, i11, verifySourceStampCertificate, ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer), apkSignerInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void verifyV2SourceStamp(ByteBuffer byteBuffer, CertificateFactory certificateFactory, ApkSignerInfo apkSignerInfo, Map<Integer, byte[]> map, byte[] bArr, int i10, int i11) throws ApkFormatException, NoSuchAlgorithmException {
        X509Certificate verifySourceStampCertificate = verifySourceStampCertificate(byteBuffer, certificateFactory, bArr, apkSignerInfo);
        if (apkSignerInfo.containsWarnings() || apkSignerInfo.containsErrors()) {
            return;
        }
        ByteBuffer lengthPrefixedSlice = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer);
        HashMap hashMap = new HashMap();
        while (lengthPrefixedSlice.hasRemaining()) {
            ByteBuffer lengthPrefixedSlice2 = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(lengthPrefixedSlice);
            int i12 = lengthPrefixedSlice2.getInt();
            hashMap.put(Integer.valueOf(i12), ApkSigningBlockUtilsLite.getLengthPrefixedSlice(lengthPrefixedSlice2));
        }
        for (Map.Entry<Integer, byte[]> entry : map.entrySet()) {
            if (entry.getKey().intValue() != 31) {
                if (!hashMap.containsKey(entry.getKey())) {
                    apkSignerInfo.addWarning(17, new Object[0]);
                    return;
                }
                verifySourceStampSignature(entry.getValue(), i10, i11, verifySourceStampCertificate, (ByteBuffer) hashMap.get(entry.getKey()), apkSignerInfo);
                if (apkSignerInfo.containsWarnings() || apkSignerInfo.containsErrors()) {
                    return;
                }
            }
        }
        if (byteBuffer.hasRemaining()) {
            ByteBuffer lengthPrefixedSlice3 = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer);
            ByteBuffer lengthPrefixedSlice4 = ApkSigningBlockUtilsLite.getLengthPrefixedSlice(byteBuffer);
            byte[] bArr2 = new byte[lengthPrefixedSlice3.remaining()];
            lengthPrefixedSlice3.get(bArr2);
            lengthPrefixedSlice3.flip();
            verifySourceStampSignature(bArr2, i10, i11, verifySourceStampCertificate, lengthPrefixedSlice4, apkSignerInfo);
            if (apkSignerInfo.containsErrors() || apkSignerInfo.containsWarnings()) {
                return;
            }
            parseStampAttributes(lengthPrefixedSlice3, verifySourceStampCertificate, apkSignerInfo);
        }
    }
}
