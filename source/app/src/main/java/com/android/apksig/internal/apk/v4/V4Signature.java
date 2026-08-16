package com.android.apksig.internal.apk.v4;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

public class V4Signature {
    public static final int CURRENT_VERSION = 2;
    public static final int HASHING_ALGORITHM_SHA256 = 1;
    public static final byte LOG2_BLOCK_SIZE_4096_BYTES = 12;
    public static final int MAX_SIGNING_INFOS_SIZE = 7168;
    public final byte[] hashingInfo;
    public final byte[] signingInfos;
    public final int version;

    public static class HashingInfo {
        public final int hashAlgorithm;
        public final byte log2BlockSize;
        public final byte[] rawRootHash;
        public final byte[] salt;

        public HashingInfo(int i10, byte b10, byte[] bArr, byte[] bArr2) {
            this.hashAlgorithm = i10;
            this.log2BlockSize = b10;
            this.salt = bArr;
            this.rawRootHash = bArr2;
        }

        public static HashingInfo fromByteArray(byte[] bArr) throws IOException {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            return new HashingInfo(order.getInt(), order.get(), V4Signature.readBytes(order), V4Signature.readBytes(order));
        }

        public byte[] toByteArray() {
            ByteBuffer order = ByteBuffer.allocate(V4Signature.bytesSize(this.salt) + 5 + V4Signature.bytesSize(this.rawRootHash)).order(ByteOrder.LITTLE_ENDIAN);
            order.putInt(this.hashAlgorithm);
            order.put(this.log2BlockSize);
            V4Signature.writeBytes(order, this.salt);
            V4Signature.writeBytes(order, this.rawRootHash);
            return order.array();
        }
    }

    public static class SigningInfo {
        public final byte[] additionalData;
        public final byte[] apkDigest;
        public final byte[] certificate;
        public final byte[] publicKey;
        public final byte[] signature;
        public final int signatureAlgorithmId;

        public SigningInfo(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i10, byte[] bArr5) {
            this.apkDigest = bArr;
            this.certificate = bArr2;
            this.additionalData = bArr3;
            this.publicKey = bArr4;
            this.signatureAlgorithmId = i10;
            this.signature = bArr5;
        }

        public static SigningInfo fromByteArray(byte[] bArr) throws IOException {
            return fromByteBuffer(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
        }

        public static SigningInfo fromByteBuffer(ByteBuffer byteBuffer) throws IOException {
            return new SigningInfo(V4Signature.readBytes(byteBuffer), V4Signature.readBytes(byteBuffer), V4Signature.readBytes(byteBuffer), V4Signature.readBytes(byteBuffer), byteBuffer.getInt(), V4Signature.readBytes(byteBuffer));
        }

        public byte[] toByteArray() {
            ByteBuffer order = ByteBuffer.allocate(V4Signature.bytesSize(this.apkDigest) + V4Signature.bytesSize(this.certificate) + V4Signature.bytesSize(this.additionalData) + V4Signature.bytesSize(this.publicKey) + 4 + V4Signature.bytesSize(this.signature)).order(ByteOrder.LITTLE_ENDIAN);
            V4Signature.writeBytes(order, this.apkDigest);
            V4Signature.writeBytes(order, this.certificate);
            V4Signature.writeBytes(order, this.additionalData);
            V4Signature.writeBytes(order, this.publicKey);
            order.putInt(this.signatureAlgorithmId);
            V4Signature.writeBytes(order, this.signature);
            return order.array();
        }
    }

    public static class SigningInfoBlock {
        public final int blockId;
        public final byte[] signingInfo;

        public SigningInfoBlock(int i10, byte[] bArr) {
            this.blockId = i10;
            this.signingInfo = bArr;
        }

        public static SigningInfoBlock fromByteBuffer(ByteBuffer byteBuffer) throws IOException {
            return new SigningInfoBlock(byteBuffer.getInt(), V4Signature.readBytes(byteBuffer));
        }

        public byte[] toByteArray() {
            ByteBuffer order = ByteBuffer.allocate(V4Signature.bytesSize(this.signingInfo) + 4).order(ByteOrder.LITTLE_ENDIAN);
            order.putInt(this.blockId);
            V4Signature.writeBytes(order, this.signingInfo);
            return order.array();
        }
    }

    public V4Signature(int i10, byte[] bArr, byte[] bArr2) {
        this.version = i10;
        this.hashingInfo = bArr;
        this.signingInfos = bArr2;
    }

    public static int bytesSize(byte[] bArr) {
        return (bArr == null ? 0 : bArr.length) + 4;
    }

    public static byte[] getSignedData(long j10, HashingInfo hashingInfo, SigningInfo signingInfo) {
        int bytesSize = bytesSize(hashingInfo.salt) + 17 + bytesSize(hashingInfo.rawRootHash) + bytesSize(signingInfo.apkDigest) + bytesSize(signingInfo.certificate) + bytesSize(signingInfo.additionalData);
        ByteBuffer order = ByteBuffer.allocate(bytesSize).order(ByteOrder.LITTLE_ENDIAN);
        order.putInt(bytesSize);
        order.putLong(j10);
        order.putInt(hashingInfo.hashAlgorithm);
        order.put(hashingInfo.log2BlockSize);
        writeBytes(order, hashingInfo.salt);
        writeBytes(order, hashingInfo.rawRootHash);
        writeBytes(order, signingInfo.apkDigest);
        writeBytes(order, signingInfo.certificate);
        writeBytes(order, signingInfo.additionalData);
        return order.array();
    }

    public static byte[] readBytes(InputStream inputStream) throws IOException {
        try {
            byte[] bArr = new byte[readIntLE(inputStream)];
            readFully(inputStream, bArr);
            return bArr;
        } catch (EOFException unused) {
            return null;
        }
    }

    public static V4Signature readFrom(InputStream inputStream) throws IOException {
        int readIntLE = readIntLE(inputStream);
        if (readIntLE == 2) {
            return new V4Signature(readIntLE, readBytes(inputStream), readBytes(inputStream));
        }
        throw new IOException("Invalid signature version.");
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        int length = bArr.length;
        int i10 = 0;
        while (i10 < length) {
            int read = inputStream.read(bArr, i10, length - i10);
            if (read < 0) {
                throw new EOFException();
            }
            i10 += read;
        }
    }

    public static int readIntLE(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[4];
        readFully(inputStream, bArr);
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getInt();
    }

    public static void writeBytes(OutputStream outputStream, byte[] bArr) throws IOException {
        if (bArr == null) {
            writeIntLE(outputStream, 0);
        } else {
            writeIntLE(outputStream, bArr.length);
            outputStream.write(bArr);
        }
    }

    public static void writeIntLE(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(ByteBuffer.wrap(new byte[4]).order(ByteOrder.LITTLE_ENDIAN).putInt(i10).array());
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        writeIntLE(outputStream, this.version);
        writeBytes(outputStream, this.hashingInfo);
        writeBytes(outputStream, this.signingInfos);
    }

    public static class SigningInfos {
        public final SigningInfo signingInfo;
        public final SigningInfoBlock[] signingInfoBlocks;

        public SigningInfos(SigningInfo signingInfo) {
            this.signingInfo = signingInfo;
            this.signingInfoBlocks = new SigningInfoBlock[0];
        }

        public static SigningInfos fromByteArray(byte[] bArr) throws IOException {
            ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
            SigningInfo fromByteBuffer = SigningInfo.fromByteBuffer(order);
            if (!order.hasRemaining()) {
                return new SigningInfos(fromByteBuffer);
            }
            ArrayList arrayList = new ArrayList(1);
            while (order.hasRemaining()) {
                arrayList.add(SigningInfoBlock.fromByteBuffer(order));
            }
            return new SigningInfos(fromByteBuffer, (SigningInfoBlock[]) arrayList.toArray(new SigningInfoBlock[arrayList.size()]));
        }

        public byte[] toByteArray() {
            byte[][] bArr = new byte[this.signingInfoBlocks.length + 1];
            byte[] byteArray = this.signingInfo.toByteArray();
            bArr[0] = byteArray;
            int length = byteArray.length;
            int length2 = this.signingInfoBlocks.length;
            int i10 = 0;
            while (i10 < length2) {
                int i11 = i10 + 1;
                byte[] byteArray2 = this.signingInfoBlocks[i10].toByteArray();
                bArr[i11] = byteArray2;
                length += byteArray2.length;
                i10 = i11;
            }
            if (length > 7168) {
                throw new IllegalArgumentException("Combined SigningInfos length exceeded limit of 7K: " + length);
            }
            byte[] copyOf = Arrays.copyOf(bArr[0], length);
            int length3 = bArr[0].length;
            int length4 = this.signingInfoBlocks.length;
            int i12 = 0;
            while (i12 < length4) {
                i12++;
                byte[] bArr2 = bArr[i12];
                System.arraycopy(bArr2, 0, copyOf, length3, bArr2.length);
                length3 += bArr[i12].length;
            }
            return copyOf;
        }

        public SigningInfos(SigningInfo signingInfo, SigningInfoBlock... signingInfoBlockArr) {
            this.signingInfo = signingInfo;
            this.signingInfoBlocks = signingInfoBlockArr;
        }
    }

    public static byte[] readBytes(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer.remaining() >= 4) {
            int i10 = byteBuffer.getInt();
            if (byteBuffer.remaining() >= i10) {
                byte[] bArr = new byte[i10];
                byteBuffer.get(bArr);
                return bArr;
            }
            throw new EOFException();
        }
        throw new EOFException();
    }

    public static void writeBytes(ByteBuffer byteBuffer, byte[] bArr) {
        if (bArr == null) {
            byteBuffer.putInt(0);
        } else {
            byteBuffer.putInt(bArr.length);
            byteBuffer.put(bArr);
        }
    }
}
