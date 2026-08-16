package com.android.apksig.internal.apk.stamp;

import com.android.apksig.SigningCertificateLineage;
import com.android.apksig.internal.apk.ApkSigningBlockUtils;
import com.android.apksig.internal.apk.ContentDigestAlgorithm;
import com.android.apksig.internal.util.Pair;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.cert.CertificateEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class V2SourceStampSigner {
    public static final int V2_SOURCE_STAMP_BLOCK_ID = 1845461005;

    public static final class SourceStampBlock {
        public List<Pair<Integer, byte[]>> signedDigests;
        public List<Pair<Integer, byte[]>> signedStampAttributes;
        public byte[] stampAttributes;
        public byte[] stampCertificate;

        private SourceStampBlock() {
        }
    }

    private V2SourceStampSigner() {
    }

    private static byte[] encodeStampAttributes(Map<Integer, byte[]> map) {
        Iterator<byte[]> it = map.values().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().length + 8;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i10 + 4);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(i10);
        for (Map.Entry<Integer, byte[]> entry : map.entrySet()) {
            allocate.putInt(entry.getValue().length + 4);
            allocate.putInt(entry.getKey().intValue());
            allocate.put(entry.getValue());
        }
        return allocate.array();
    }

    public static Pair<byte[], Integer> generateSourceStampBlock(ApkSigningBlockUtils.SignerConfig signerConfig, Map<Integer, Map<ContentDigestAlgorithm, byte[]>> map) throws SignatureException, NoSuchAlgorithmException, InvalidKeyException {
        if (signerConfig.certificates.isEmpty()) {
            throw new SignatureException("No certificates configured for signer");
        }
        ArrayList arrayList = new ArrayList();
        getSignedDigestsFor(3, map, signerConfig, arrayList);
        getSignedDigestsFor(2, map, signerConfig, arrayList);
        getSignedDigestsFor(1, map, signerConfig, arrayList);
        Collections.sort(arrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int lambda$generateSourceStampBlock$0;
                lambda$generateSourceStampBlock$0 = V2SourceStampSigner.lambda$generateSourceStampBlock$0((Pair) obj, (Pair) obj2);
                return lambda$generateSourceStampBlock$0;
            }
        });
        SourceStampBlock sourceStampBlock = new SourceStampBlock();
        try {
            sourceStampBlock.stampCertificate = signerConfig.certificates.get(0).getEncoded();
            sourceStampBlock.signedDigests = arrayList;
            byte[] encodeStampAttributes = encodeStampAttributes(generateStampAttributes(signerConfig.mSigningCertificateLineage));
            sourceStampBlock.stampAttributes = encodeStampAttributes;
            sourceStampBlock.signedStampAttributes = ApkSigningBlockUtils.generateSignaturesOverData(signerConfig, encodeStampAttributes);
            return Pair.of(ApkSigningBlockUtils.encodeAsLengthPrefixedElement(ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedElements(new byte[][]{sourceStampBlock.stampCertificate, ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(sourceStampBlock.signedDigests), sourceStampBlock.stampAttributes, ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(sourceStampBlock.signedStampAttributes)})), 1845461005);
        } catch (CertificateEncodingException e10) {
            throw new SignatureException("Retrieving the encoded form of the stamp certificate failed", e10);
        }
    }

    private static Map<Integer, byte[]> generateStampAttributes(SigningCertificateLineage signingCertificateLineage) {
        HashMap hashMap = new HashMap();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (currentTimeMillis <= 0) {
            throw new IllegalStateException("Received an invalid value from Instant#getTimestamp: " + currentTimeMillis);
        }
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putLong(currentTimeMillis);
        hashMap.put(Integer.valueOf(SourceStampConstants.STAMP_TIME_ATTR_ID), allocate.array());
        if (signingCertificateLineage != null) {
            hashMap.put(Integer.valueOf(SourceStampConstants.PROOF_OF_ROTATION_ATTR_ID), signingCertificateLineage.encodeSigningCertificateLineage());
        }
        return hashMap;
    }

    private static void getSignedDigestsFor(int i10, Map<Integer, Map<ContentDigestAlgorithm, byte[]>> map, ApkSigningBlockUtils.SignerConfig signerConfig, List<Pair<Integer, byte[]>> list) throws NoSuchAlgorithmException, InvalidKeyException, SignatureException {
        if (map.containsKey(Integer.valueOf(i10))) {
            Map<ContentDigestAlgorithm, byte[]> map2 = map.get(Integer.valueOf(i10));
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<ContentDigestAlgorithm, byte[]> entry : map2.entrySet()) {
                arrayList.add(Pair.of(Integer.valueOf(entry.getKey().getId()), entry.getValue()));
            }
            Collections.sort(arrayList, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int lambda$getSignedDigestsFor$1;
                    lambda$getSignedDigestsFor$1 = V2SourceStampSigner.lambda$getSignedDigestsFor$1((Pair) obj, (Pair) obj2);
                    return lambda$getSignedDigestsFor$1;
                }
            });
            list.add(Pair.of(Integer.valueOf(i10), ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(ApkSigningBlockUtils.generateSignaturesOverData(signerConfig, ApkSigningBlockUtils.encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(arrayList)))));
        }
    }

    public static int lambda$generateSourceStampBlock$0(Pair pair, Pair pair2) {
        return ((Integer) pair.getFirst()).compareTo((Integer) pair2.getFirst());
    }

    public static int lambda$getSignedDigestsFor$1(Pair pair, Pair pair2) {
        return ((Integer) pair.getFirst()).compareTo((Integer) pair2.getFirst());
    }
}
