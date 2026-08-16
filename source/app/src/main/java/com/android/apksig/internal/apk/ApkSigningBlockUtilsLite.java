package com.android.apksig.internal.apk;

import ag.C3629k;
import com.android.apksig.apk.ApkFormatException;
import com.android.apksig.apk.ApkSigningBlockNotFoundException;
import com.android.apksig.apk.ApkUtilsLite;
import com.android.apksig.internal.util.Pair;
import com.android.apksig.util.DataSource;
import com.android.apksig.zip.ZipSections;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class ApkSigningBlockUtilsLite {
    private static final char[] HEX_DIGITS = C3629k.f32105a.toCharArray();

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
                $SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm[ContentDigestAlgorithm.CHUNKED_SHA512.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm[ContentDigestAlgorithm.VERITY_CHUNKED_SHA256.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private ApkSigningBlockUtilsLite() {
    }

    public static void checkByteOrderLittleEndian(ByteBuffer byteBuffer) {
        if (byteBuffer.order() != ByteOrder.LITTLE_ENDIAN) {
            throw new IllegalArgumentException("ByteBuffer byte order must be little endian");
        }
    }

    private static int compareContentDigestAlgorithm(ContentDigestAlgorithm contentDigestAlgorithm, ContentDigestAlgorithm contentDigestAlgorithm2) {
        int[] iArr = AnonymousClass1.$SwitchMap$com$android$apksig$internal$apk$ContentDigestAlgorithm;
        int i10 = iArr[contentDigestAlgorithm.ordinal()];
        if (i10 == 1) {
            int i11 = iArr[contentDigestAlgorithm2.ordinal()];
            if (i11 == 1) {
                return 0;
            }
            if (i11 == 2 || i11 == 3) {
                return -1;
            }
            throw new IllegalArgumentException("Unknown alg2: " + ((Object) contentDigestAlgorithm2));
        }
        if (i10 == 2) {
            int i12 = iArr[contentDigestAlgorithm2.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    return 0;
                }
                if (i12 != 3) {
                    throw new IllegalArgumentException("Unknown alg2: " + ((Object) contentDigestAlgorithm2));
                }
            }
            return 1;
        }
        if (i10 != 3) {
            throw new IllegalArgumentException("Unknown alg1: " + ((Object) contentDigestAlgorithm));
        }
        int i13 = iArr[contentDigestAlgorithm2.ordinal()];
        if (i13 == 1) {
            return 1;
        }
        if (i13 == 2) {
            return -1;
        }
        if (i13 == 3) {
            return 0;
        }
        throw new IllegalArgumentException("Unknown alg2: " + ((Object) contentDigestAlgorithm2));
    }

    public static int compareSignatureAlgorithm(SignatureAlgorithm signatureAlgorithm, SignatureAlgorithm signatureAlgorithm2) {
        return compareContentDigestAlgorithm(signatureAlgorithm.getContentDigestAlgorithm(), signatureAlgorithm2.getContentDigestAlgorithm());
    }

    public static byte[] encodeAsSequenceOfLengthPrefixedPairsOfIntAndLengthPrefixedBytes(List<Pair<Integer, byte[]>> list) {
        Iterator<Pair<Integer, byte[]>> it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10 += it.next().getSecond().length + 12;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i10);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        for (Pair<Integer, byte[]> pair : list) {
            byte[] second = pair.getSecond();
            allocate.putInt(second.length + 8);
            allocate.putInt(pair.getFirst().intValue());
            allocate.putInt(second.length);
            allocate.put(second);
        }
        return allocate.array();
    }

    public static ByteBuffer findApkSignatureSchemeBlock(ByteBuffer byteBuffer, int i10) throws SignatureNotFoundException {
        checkByteOrderLittleEndian(byteBuffer);
        ByteBuffer sliceFromTo = sliceFromTo(byteBuffer, 8, byteBuffer.capacity() - 24);
        int i11 = 0;
        while (sliceFromTo.hasRemaining()) {
            i11++;
            if (sliceFromTo.remaining() < 8) {
                throw new SignatureNotFoundException("Insufficient data to read size of APK Signing Block entry #" + i11);
            }
            long j10 = sliceFromTo.getLong();
            if (j10 < 4 || j10 > 2147483647L) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i11 + " size out of range: " + j10);
            }
            int i12 = (int) j10;
            int position = sliceFromTo.position() + i12;
            if (i12 > sliceFromTo.remaining()) {
                throw new SignatureNotFoundException("APK Signing Block entry #" + i11 + " size out of range: " + i12 + ", available: " + sliceFromTo.remaining());
            }
            if (sliceFromTo.getInt() == i10) {
                return getByteBuffer(sliceFromTo, i12 - 4);
            }
            sliceFromTo.position(position);
        }
        throw new SignatureNotFoundException("No APK Signature Scheme block in APK Signing Block with ID: " + i10);
    }

    public static SignatureInfo findSignature(DataSource dataSource, ZipSections zipSections, int i10) throws IOException, SignatureNotFoundException {
        try {
            ApkUtilsLite.ApkSigningBlock findApkSigningBlock = ApkUtilsLite.findApkSigningBlock(dataSource, zipSections);
            long startOffset = findApkSigningBlock.getStartOffset();
            DataSource contents = findApkSigningBlock.getContents();
            ByteBuffer byteBuffer = contents.getByteBuffer(0L, (int) contents.size());
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
            return new SignatureInfo(findApkSignatureSchemeBlock(byteBuffer, i10), startOffset, zipSections.getZipCentralDirectoryOffset(), zipSections.getZipEndOfCentralDirectoryOffset(), zipSections.getZipEndOfCentralDirectory());
        } catch (ApkSigningBlockNotFoundException e10) {
            throw new SignatureNotFoundException(e10.getMessage(), e10);
        }
    }

    private static ByteBuffer getByteBuffer(ByteBuffer byteBuffer, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("size: " + i10);
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i11 = i10 + position;
        if (i11 < position || i11 > limit) {
            throw new BufferUnderflowException();
        }
        byteBuffer.limit(i11);
        try {
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            byteBuffer.position(i11);
            return slice;
        } finally {
            byteBuffer.limit(limit);
        }
    }

    public static ByteBuffer getLengthPrefixedSlice(ByteBuffer byteBuffer) throws ApkFormatException {
        if (byteBuffer.remaining() < 4) {
            throw new ApkFormatException("Remaining buffer too short to contain length of length-prefixed field. Remaining: " + byteBuffer.remaining());
        }
        int i10 = byteBuffer.getInt();
        if (i10 < 0) {
            throw new IllegalArgumentException("Negative length");
        }
        if (i10 <= byteBuffer.remaining()) {
            return getByteBuffer(byteBuffer, i10);
        }
        throw new ApkFormatException("Length-prefixed field longer than remaining buffer. Field length: " + i10 + ", remaining: " + byteBuffer.remaining());
    }

    public static <T extends ApkSupportedSignature> List<T> getSignaturesToVerify(List<T> list, int i10, int i11) throws NoApkSupportedSignaturesException {
        return getSignaturesToVerify(list, i10, i11, false);
    }

    public static int lambda$getSignaturesToVerify$0(ApkSupportedSignature apkSupportedSignature, ApkSupportedSignature apkSupportedSignature2) {
        return Integer.compare(apkSupportedSignature.algorithm.getId(), apkSupportedSignature2.algorithm.getId());
    }

    public static byte[] readLengthPrefixedByteArray(ByteBuffer byteBuffer) throws ApkFormatException {
        int i10 = byteBuffer.getInt();
        if (i10 < 0) {
            throw new ApkFormatException("Negative length");
        }
        if (i10 <= byteBuffer.remaining()) {
            byte[] bArr = new byte[i10];
            byteBuffer.get(bArr);
            return bArr;
        }
        throw new ApkFormatException("Underflow while reading length-prefixed value. Length: " + i10 + ", available: " + byteBuffer.remaining());
    }

    private static ByteBuffer sliceFromTo(ByteBuffer byteBuffer, int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException("start: " + i10);
        }
        if (i11 < i10) {
            throw new IllegalArgumentException("end < start: " + i11 + " < " + i10);
        }
        int capacity = byteBuffer.capacity();
        if (i11 > byteBuffer.capacity()) {
            throw new IllegalArgumentException("end > capacity: " + i11 + " > " + capacity);
        }
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        try {
            byteBuffer.position(0);
            byteBuffer.limit(i11);
            byteBuffer.position(i10);
            ByteBuffer slice = byteBuffer.slice();
            slice.order(byteBuffer.order());
            return slice;
        } finally {
            byteBuffer.position(0);
            byteBuffer.limit(limit);
            byteBuffer.position(position);
        }
    }

    public static String toHex(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b10 : bArr) {
            char[] cArr = HEX_DIGITS;
            sb2.append(cArr[(b10 & 255) >>> 4]);
            sb2.append(cArr[b10 & 15]);
        }
        return sb2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends ApkSupportedSignature> List<T> getSignaturesToVerify(List<T> list, int i10, int i11, boolean z10) throws NoApkSupportedSignaturesException {
        int minSdkVersion;
        HashMap hashMap = new HashMap();
        int i12 = Integer.MAX_VALUE;
        for (T t10 : list) {
            SignatureAlgorithm signatureAlgorithm = t10.algorithm;
            if (z10) {
                minSdkVersion = signatureAlgorithm.getJcaSigAlgMinSdkVersion();
            } else {
                minSdkVersion = signatureAlgorithm.getMinSdkVersion();
            }
            if (minSdkVersion <= i11) {
                if (minSdkVersion < i12) {
                    i12 = minSdkVersion;
                }
                ApkSupportedSignature apkSupportedSignature = (ApkSupportedSignature) hashMap.get(Integer.valueOf(minSdkVersion));
                if (apkSupportedSignature == null || compareSignatureAlgorithm(signatureAlgorithm, apkSupportedSignature.algorithm) > 0) {
                    hashMap.put(Integer.valueOf(minSdkVersion), t10);
                }
            }
        }
        if (i10 >= i12) {
            if (!hashMap.isEmpty()) {
                ArrayList arrayList = new ArrayList(hashMap.values());
                Collections.sort(arrayList, new Comparator() {
                    @Override
                    public final int compare(Object obj, Object obj2) {
                        int lambda$getSignaturesToVerify$0;
                        lambda$getSignaturesToVerify$0 = ApkSigningBlockUtilsLite.lambda$getSignaturesToVerify$0((ApkSupportedSignature) obj, (ApkSupportedSignature) obj2);
                        return lambda$getSignaturesToVerify$0;
                    }
                });
                return arrayList;
            }
            throw new NoApkSupportedSignaturesException("No supported signature");
        }
        throw new NoApkSupportedSignaturesException("Minimum provided signature version " + i12 + " > minSdkVersion " + i10);
    }
}
