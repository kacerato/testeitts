package com.android.apksig.internal.apk.v3;

import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.internal.apk.ApkSigningBlockUtils;
import com.android.apksig.internal.apk.SignatureAlgorithm;
import com.android.apksig.internal.util.GuaranteedEncodedFormX509Certificate;
import com.android.apksig.internal.util.X509CertificateUtils;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

public class V3SigningCertificateLineage {
    private static final int CURRENT_VERSION = 1;
    private static final int FIRST_VERSION = 1;

    public static class SigningCertificateNode {
        public int flags;
        public final SignatureAlgorithm parentSigAlgorithm;
        public SignatureAlgorithm sigAlgorithm;
        public final byte[] signature;
        public final X509Certificate signingCert;

        public SigningCertificateNode(X509Certificate x509Certificate, SignatureAlgorithm signatureAlgorithm, SignatureAlgorithm signatureAlgorithm2, byte[] bArr, int i10) {
            this.signingCert = x509Certificate;
            this.parentSigAlgorithm = signatureAlgorithm;
            this.sigAlgorithm = signatureAlgorithm2;
            this.signature = bArr;
            this.flags = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SigningCertificateNode)) {
                return false;
            }
            SigningCertificateNode signingCertificateNode = (SigningCertificateNode) obj;
            return this.signingCert.equals(signingCertificateNode.signingCert) && this.parentSigAlgorithm == signingCertificateNode.parentSigAlgorithm && this.sigAlgorithm == signingCertificateNode.sigAlgorithm && Arrays.equals(this.signature, signingCertificateNode.signature) && this.flags == signingCertificateNode.flags;
        }

        public int hashCode() {
            return (Objects.hash(this.signingCert, this.parentSigAlgorithm, this.sigAlgorithm, Integer.valueOf(this.flags)) * 31) + Arrays.hashCode(this.signature);
        }
    }

    public static byte[] encodeSignedData(X509Certificate x509Certificate, int i10) {
        try {
            byte[] encodeAsLengthPrefixedElement = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(x509Certificate.getEncoded());
            ByteBuffer allocate = ByteBuffer.allocate(encodeAsLengthPrefixedElement.length + 4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.put(encodeAsLengthPrefixedElement);
            allocate.putInt(i10);
            return ApkSigningBlockUtils.encodeAsLengthPrefixedElement(allocate.array());
        } catch (CertificateEncodingException e10) {
            throw new RuntimeException("Failed to encode V3SigningCertificateLineage certificate", e10);
        }
    }

    public static byte[] encodeSigningCertificateLineage(List<SigningCertificateNode> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<SigningCertificateNode> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(encodeSigningCertificateNode(it.next()));
        }
        byte[] encodeAsSequenceOfLengthPrefixedElements = ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(arrayList);
        ByteBuffer allocate = ByteBuffer.allocate(encodeAsSequenceOfLengthPrefixedElements.length + 4);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(1);
        allocate.put(encodeAsSequenceOfLengthPrefixedElements);
        return allocate.array();
    }

    public static byte[] encodeSigningCertificateNode(SigningCertificateNode signingCertificateNode) {
        SignatureAlgorithm signatureAlgorithm = signingCertificateNode.parentSigAlgorithm;
        int id2 = signatureAlgorithm != null ? signatureAlgorithm.getId() : 0;
        SignatureAlgorithm signatureAlgorithm2 = signingCertificateNode.sigAlgorithm;
        int id3 = signatureAlgorithm2 != null ? signatureAlgorithm2.getId() : 0;
        byte[] encodeSignedData = encodeSignedData(signingCertificateNode.signingCert, id2);
        byte[] encodeAsLengthPrefixedElement = ApkSigningBlockUtils.encodeAsLengthPrefixedElement(signingCertificateNode.signature);
        ByteBuffer allocate = ByteBuffer.allocate(encodeSignedData.length + 8 + encodeAsLengthPrefixedElement.length);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put(encodeSignedData);
        allocate.putInt(signingCertificateNode.flags);
        allocate.putInt(id3);
        allocate.put(encodeAsLengthPrefixedElement);
        return allocate.array();
    }

    public static List<SigningCertificateNode> readSigningCertificateLineage(ByteBuffer byteBuffer) throws IOException {
        String str;
        Throwable th2;
        String str2;
        String str3;
        String str4 = " when parsing V3SigningCertificateLineage object";
        ArrayList arrayList = new ArrayList();
        GuaranteedEncodedFormX509Certificate guaranteedEncodedFormX509Certificate = null;
        if (byteBuffer == null || !byteBuffer.hasRemaining()) {
            return null;
        }
        ApkSigningBlockUtils.checkByteOrderLittleEndian(byteBuffer);
        int i10 = 0;
        try {
            try {
                try {
                } catch (CertificateException e10) {
                    e = e10;
                    str2 = str4;
                }
                try {
                    if (byteBuffer.getInt() != 1) {
                        throw new IllegalArgumentException("Encoded SigningCertificateLineage has a version different than any of which we are aware");
                    }
                    try {
                        HashSet hashSet = new HashSet();
                        int i11 = 0;
                        while (byteBuffer.hasRemaining()) {
                            i10++;
                            ByteBuffer lengthPrefixedSlice = ApkSigningBlockUtils.getLengthPrefixedSlice(byteBuffer);
                            ByteBuffer lengthPrefixedSlice2 = ApkSigningBlockUtils.getLengthPrefixedSlice(lengthPrefixedSlice);
                            int i12 = lengthPrefixedSlice.getInt();
                            int i13 = lengthPrefixedSlice.getInt();
                            SignatureAlgorithm findById = SignatureAlgorithm.findById(i11);
                            byte[] readLengthPrefixedByteArray = ApkSigningBlockUtils.readLengthPrefixedByteArray(lengthPrefixedSlice);
                            if (guaranteedEncodedFormX509Certificate != null) {
                                String first = findById.getJcaSignatureAlgorithmAndParams().getFirst();
                                AlgorithmParameterSpec second = findById.getJcaSignatureAlgorithmAndParams().getSecond();
                                PublicKey publicKey = guaranteedEncodedFormX509Certificate.getPublicKey();
                                str3 = str4;
                                Signature signature = Signature.getInstance(first);
                                signature.initVerify(publicKey);
                                if (second != null) {
                                    signature.setParameter(second);
                                }
                                signature.update(lengthPrefixedSlice2);
                                if (!signature.verify(readLengthPrefixedByteArray)) {
                                    throw new SecurityException("Unable to verify signature of certificate #" + i10 + " using " + first + " when verifying V3SigningCertificateLineage object");
                                }
                            } else {
                                str3 = str4;
                            }
                            lengthPrefixedSlice2.rewind();
                            byte[] readLengthPrefixedByteArray2 = ApkSigningBlockUtils.readLengthPrefixedByteArray(lengthPrefixedSlice2);
                            int i14 = lengthPrefixedSlice2.getInt();
                            if (guaranteedEncodedFormX509Certificate != null && i11 != i14) {
                                throw new SecurityException("Signing algorithm ID mismatch for certificate #" + ((Object) lengthPrefixedSlice) + " when verifying V3SigningCertificateLineage object");
                            }
                            GuaranteedEncodedFormX509Certificate guaranteedEncodedFormX509Certificate2 = new GuaranteedEncodedFormX509Certificate(X509CertificateUtils.generateCertificate(readLengthPrefixedByteArray2), readLengthPrefixedByteArray2);
                            if (hashSet.contains(guaranteedEncodedFormX509Certificate2)) {
                                throw new SecurityException("Encountered duplicate entries in SigningCertificateLineage at certificate #" + i10 + ".  All signing certificates should be unique");
                            }
                            hashSet.add(guaranteedEncodedFormX509Certificate2);
                            arrayList.add(new SigningCertificateNode(guaranteedEncodedFormX509Certificate2, SignatureAlgorithm.findById(i14), SignatureAlgorithm.findById(i13), readLengthPrefixedByteArray, i12));
                            guaranteedEncodedFormX509Certificate = guaranteedEncodedFormX509Certificate2;
                            i11 = i13;
                            str4 = str3;
                        }
                        return arrayList;
                    } catch (InvalidAlgorithmParameterException e11) {
                        e = e11;
                        String str5 = str4;
                        th2 = e;
                        str = str5;
                        throw new SecurityException("Failed to verify signature over signed data for certificate #" + i10 + str, th2);
                    } catch (InvalidKeyException e12) {
                        e = e12;
                        String str52 = str4;
                        th2 = e;
                        str = str52;
                        throw new SecurityException("Failed to verify signature over signed data for certificate #" + i10 + str, th2);
                    } catch (NoSuchAlgorithmException e13) {
                        e = e13;
                        String str522 = str4;
                        th2 = e;
                        str = str522;
                        throw new SecurityException("Failed to verify signature over signed data for certificate #" + i10 + str, th2);
                    } catch (SignatureException e14) {
                        e = e14;
                        String str5222 = str4;
                        th2 = e;
                        str = str5222;
                        throw new SecurityException("Failed to verify signature over signed data for certificate #" + i10 + str, th2);
                    }
                } catch (InvalidAlgorithmParameterException e15) {
                    e = e15;
                } catch (InvalidKeyException e16) {
                    e = e16;
                } catch (NoSuchAlgorithmException e17) {
                    e = e17;
                } catch (SignatureException e18) {
                    e = e18;
                } catch (CertificateException e19) {
                    e = e19;
                    throw new SecurityException("Failed to decode certificate #" + i10 + str2, e);
                }
            } catch (ApkFormatException e20) {
                e = e20;
                throw new IOException("Failed to parse V3SigningCertificateLineage object", e);
            } catch (BufferUnderflowException e21) {
                e = e21;
                throw new IOException("Failed to parse V3SigningCertificateLineage object", e);
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException | NoSuchAlgorithmException | SignatureException e22) {
            str = " when parsing V3SigningCertificateLineage object";
            th2 = e22;
        }
    }
}
