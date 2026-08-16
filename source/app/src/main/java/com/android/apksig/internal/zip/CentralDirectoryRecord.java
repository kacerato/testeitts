package com.android.apksig.internal.zip;

import com.android.apksig.zip.ZipFormatException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Comparator;

public class CentralDirectoryRecord {
    public static final Comparator<CentralDirectoryRecord> BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR = new ByLocalFileHeaderOffsetComparator();
    private static final int GP_FLAGS_OFFSET = 8;
    private static final int HEADER_SIZE_BYTES = 46;
    private static final int LOCAL_FILE_HEADER_OFFSET_OFFSET = 42;
    private static final int NAME_OFFSET = 46;
    private static final int RECORD_SIGNATURE = 33639248;
    private final long mCompressedSize;
    private final short mCompressionMethod;
    private final long mCrc32;
    private final ByteBuffer mData;
    private final short mGpFlags;
    private final int mLastModificationDate;
    private final int mLastModificationTime;
    private final long mLocalFileHeaderOffset;
    private final String mName;
    private final int mNameSizeBytes;
    private final long mUncompressedSize;

    public static class ByLocalFileHeaderOffsetComparator implements Comparator<CentralDirectoryRecord> {
        private ByLocalFileHeaderOffsetComparator() {
        }

        @Override
        public int compare(CentralDirectoryRecord centralDirectoryRecord, CentralDirectoryRecord centralDirectoryRecord2) {
            long localFileHeaderOffset = centralDirectoryRecord.getLocalFileHeaderOffset();
            long localFileHeaderOffset2 = centralDirectoryRecord2.getLocalFileHeaderOffset();
            if (localFileHeaderOffset > localFileHeaderOffset2) {
                return 1;
            }
            return localFileHeaderOffset < localFileHeaderOffset2 ? -1 : 0;
        }
    }

    private CentralDirectoryRecord(ByteBuffer byteBuffer, short s10, short s11, int i10, int i11, long j10, long j11, long j12, long j13, String str, int i12) {
        this.mData = byteBuffer;
        this.mGpFlags = s10;
        this.mCompressionMethod = s11;
        this.mLastModificationDate = i11;
        this.mLastModificationTime = i10;
        this.mCrc32 = j10;
        this.mCompressedSize = j11;
        this.mUncompressedSize = j12;
        this.mLocalFileHeaderOffset = j13;
        this.mName = str;
        this.mNameSizeBytes = i12;
    }

    public static CentralDirectoryRecord createWithDeflateCompressedData(String str, int i10, int i11, long j10, long j11, long j12, long j13) {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 46);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(RECORD_SIGNATURE);
        ZipUtils.putUnsignedInt16(allocate, 20);
        ZipUtils.putUnsignedInt16(allocate, 20);
        allocate.putShort(ZipUtils.GP_FLAG_EFS);
        allocate.putShort((short) 8);
        ZipUtils.putUnsignedInt16(allocate, i10);
        ZipUtils.putUnsignedInt16(allocate, i11);
        ZipUtils.putUnsignedInt32(allocate, j10);
        ZipUtils.putUnsignedInt32(allocate, j11);
        ZipUtils.putUnsignedInt32(allocate, j12);
        ZipUtils.putUnsignedInt16(allocate, bytes.length);
        ZipUtils.putUnsignedInt16(allocate, 0);
        ZipUtils.putUnsignedInt16(allocate, 0);
        ZipUtils.putUnsignedInt16(allocate, 0);
        ZipUtils.putUnsignedInt16(allocate, 0);
        ZipUtils.putUnsignedInt32(allocate, 0L);
        ZipUtils.putUnsignedInt32(allocate, j13);
        allocate.put(bytes);
        if (!allocate.hasRemaining()) {
            allocate.flip();
            return new CentralDirectoryRecord(allocate, ZipUtils.GP_FLAG_EFS, (short) 8, i10, i11, j10, j11, j12, j13, str, bytes.length);
        }
        throw new RuntimeException("pos: " + allocate.position() + ", limit: " + allocate.limit());
    }

    public static CentralDirectoryRecord getRecord(ByteBuffer byteBuffer) throws ZipFormatException {
        ZipUtils.assertByteOrderLittleEndian(byteBuffer);
        if (byteBuffer.remaining() < 46) {
            throw new ZipFormatException("Input too short. Need at least: 46 bytes, available: " + byteBuffer.remaining() + " bytes", new BufferUnderflowException());
        }
        int position = byteBuffer.position();
        int i10 = byteBuffer.getInt();
        if (i10 != RECORD_SIGNATURE) {
            throw new ZipFormatException("Not a Central Directory record. Signature: 0x" + Long.toHexString(i10 & 4294967295L));
        }
        byteBuffer.position(position + 8);
        short s10 = byteBuffer.getShort();
        short s11 = byteBuffer.getShort();
        int unsignedInt16 = ZipUtils.getUnsignedInt16(byteBuffer);
        int unsignedInt162 = ZipUtils.getUnsignedInt16(byteBuffer);
        long unsignedInt32 = ZipUtils.getUnsignedInt32(byteBuffer);
        long unsignedInt322 = ZipUtils.getUnsignedInt32(byteBuffer);
        long unsignedInt323 = ZipUtils.getUnsignedInt32(byteBuffer);
        int unsignedInt163 = ZipUtils.getUnsignedInt16(byteBuffer);
        int unsignedInt164 = ZipUtils.getUnsignedInt16(byteBuffer);
        int unsignedInt165 = ZipUtils.getUnsignedInt16(byteBuffer);
        byteBuffer.position(position + 42);
        long unsignedInt324 = ZipUtils.getUnsignedInt32(byteBuffer);
        byteBuffer.position(position);
        int i11 = unsignedInt163 + 46 + unsignedInt164 + unsignedInt165;
        if (i11 > byteBuffer.remaining()) {
            throw new ZipFormatException("Input too short. Need: " + i11 + " bytes, available: " + byteBuffer.remaining() + " bytes", new BufferUnderflowException());
        }
        String name = getName(byteBuffer, position + 46, unsignedInt163);
        byteBuffer.position(position);
        int limit = byteBuffer.limit();
        int i12 = position + i11;
        try {
            byteBuffer.limit(i12);
            ByteBuffer slice = byteBuffer.slice();
            byteBuffer.limit(limit);
            byteBuffer.position(i12);
            return new CentralDirectoryRecord(slice, s10, s11, unsignedInt16, unsignedInt162, unsignedInt32, unsignedInt322, unsignedInt323, unsignedInt324, name, unsignedInt163);
        } catch (Throwable th2) {
            byteBuffer.limit(limit);
            throw th2;
        }
    }

    public void copyTo(ByteBuffer byteBuffer) {
        byteBuffer.put(this.mData.slice());
    }

    public CentralDirectoryRecord createWithModifiedLocalFileHeaderOffset(long j10) {
        ByteBuffer allocate = ByteBuffer.allocate(this.mData.remaining());
        allocate.put(this.mData.slice());
        allocate.flip();
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        ZipUtils.setUnsignedInt32(allocate, 42, j10);
        return new CentralDirectoryRecord(allocate, this.mGpFlags, this.mCompressionMethod, this.mLastModificationTime, this.mLastModificationDate, this.mCrc32, this.mCompressedSize, this.mUncompressedSize, j10, this.mName, this.mNameSizeBytes);
    }

    public long getCompressedSize() {
        return this.mCompressedSize;
    }

    public short getCompressionMethod() {
        return this.mCompressionMethod;
    }

    public long getCrc32() {
        return this.mCrc32;
    }

    public short getGpFlags() {
        return this.mGpFlags;
    }

    public int getLastModificationDate() {
        return this.mLastModificationDate;
    }

    public int getLastModificationTime() {
        return this.mLastModificationTime;
    }

    public long getLocalFileHeaderOffset() {
        return this.mLocalFileHeaderOffset;
    }

    public String getName() {
        return this.mName;
    }

    public int getNameSizeBytes() {
        return this.mNameSizeBytes;
    }

    public int getSize() {
        return this.mData.remaining();
    }

    public long getUncompressedSize() {
        return this.mUncompressedSize;
    }

    public static String getName(ByteBuffer byteBuffer, int i10, int i11) {
        byte[] bArr;
        int i12;
        if (byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
            i12 = byteBuffer.arrayOffset() + i10;
        } else {
            bArr = new byte[i11];
            int position = byteBuffer.position();
            try {
                byteBuffer.position(i10);
                byteBuffer.get(bArr);
                byteBuffer.position(position);
                i12 = 0;
            } catch (Throwable th2) {
                byteBuffer.position(position);
                throw th2;
            }
        }
        return new String(bArr, i12, i11, StandardCharsets.UTF_8);
    }
}
