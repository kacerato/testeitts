package com.android.apksig.internal.zip;

import com.android.apksig.internal.util.ByteBufferSink;
import com.android.apksig.util.DataSink;
import com.android.apksig.util.DataSource;
import com.android.apksig.zip.ZipFormatException;
import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class LocalFileRecord {
    private static final int COMPRESSED_SIZE_OFFSET = 18;
    private static final int CRC32_OFFSET = 14;
    private static final int DATA_DESCRIPTOR_SIGNATURE = 134695760;
    private static final int DATA_DESCRIPTOR_SIZE_BYTES_WITHOUT_SIGNATURE = 12;
    private static final ByteBuffer EMPTY_BYTE_BUFFER = ByteBuffer.allocate(0);
    private static final int EXTRA_LENGTH_OFFSET = 28;
    private static final int GP_FLAGS_OFFSET = 6;
    private static final int HEADER_SIZE_BYTES = 30;
    private static final int NAME_LENGTH_OFFSET = 26;
    private static final int NAME_OFFSET = 30;
    private static final int RECORD_SIGNATURE = 67324752;
    private static final int UNCOMPRESSED_SIZE_OFFSET = 22;
    private final boolean mDataCompressed;
    private final long mDataSize;
    private final int mDataStartOffset;
    private final ByteBuffer mExtra;
    private final String mName;
    private final int mNameSizeBytes;
    private final long mSize;
    private final long mStartOffsetInArchive;
    private final long mUncompressedDataSize;

    public static class InflateSinkAdapter implements DataSink, Closeable {
        private boolean mClosed;
        private final DataSink mDelegate;
        private Inflater mInflater;
        private byte[] mInputBuffer;
        private byte[] mOutputBuffer;
        private long mOutputByteCount;

        private void checkNotClosed() {
            if (this.mClosed) {
                throw new IllegalStateException("Closed");
            }
        }

        @Override
        public void close() throws IOException {
            this.mClosed = true;
            this.mInputBuffer = null;
            this.mOutputBuffer = null;
            Inflater inflater = this.mInflater;
            if (inflater != null) {
                inflater.end();
                this.mInflater = null;
            }
        }

        @Override
        public void consume(byte[] bArr, int i10, int i11) throws IOException {
            checkNotClosed();
            this.mInflater.setInput(bArr, i10, i11);
            if (this.mOutputBuffer == null) {
                this.mOutputBuffer = new byte[65536];
            }
            while (!this.mInflater.finished()) {
                try {
                    int inflate = this.mInflater.inflate(this.mOutputBuffer);
                    if (inflate == 0) {
                        return;
                    }
                    this.mDelegate.consume(this.mOutputBuffer, 0, inflate);
                    this.mOutputByteCount += inflate;
                } catch (DataFormatException e10) {
                    throw new IOException("Failed to inflate data", e10);
                }
            }
        }

        public long getOutputByteCount() {
            return this.mOutputByteCount;
        }

        private InflateSinkAdapter(DataSink dataSink) {
            this.mInflater = new Inflater(true);
            this.mDelegate = dataSink;
        }

        @Override
        public void consume(ByteBuffer byteBuffer) throws IOException {
            checkNotClosed();
            if (byteBuffer.hasArray()) {
                consume(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
                byteBuffer.position(byteBuffer.limit());
                return;
            }
            if (this.mInputBuffer == null) {
                this.mInputBuffer = new byte[65536];
            }
            while (byteBuffer.hasRemaining()) {
                int min = Math.min(byteBuffer.remaining(), this.mInputBuffer.length);
                byteBuffer.get(this.mInputBuffer, 0, min);
                consume(this.mInputBuffer, 0, min);
            }
        }
    }

    private LocalFileRecord(String str, int i10, ByteBuffer byteBuffer, long j10, long j11, int i11, long j12, boolean z10, long j13) {
        this.mName = str;
        this.mNameSizeBytes = i10;
        this.mExtra = byteBuffer;
        this.mStartOffsetInArchive = j10;
        this.mSize = j11;
        this.mDataStartOffset = i11;
        this.mDataSize = j12;
        this.mDataCompressed = z10;
        this.mUncompressedDataSize = j13;
    }

    public static LocalFileRecord getRecord(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10) throws ZipFormatException, IOException {
        return getRecord(dataSource, centralDirectoryRecord, j10, true, true);
    }

    public static byte[] getUncompressedData(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10) throws ZipFormatException, IOException {
        if (centralDirectoryRecord.getUncompressedSize() <= 2147483647L) {
            byte[] bArr = new byte[(int) centralDirectoryRecord.getUncompressedSize()];
            outputUncompressedData(dataSource, centralDirectoryRecord, j10, new ByteBufferSink(ByteBuffer.wrap(bArr)));
            return bArr;
        }
        throw new IOException(centralDirectoryRecord.getName() + " too large: " + centralDirectoryRecord.getUncompressedSize());
    }

    public static long outputRecordWithDeflateCompressedData(String str, int i10, int i11, byte[] bArr, long j10, long j11, DataSink dataSink) throws IOException {
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 30);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(67324752);
        ZipUtils.putUnsignedInt16(allocate, 20);
        allocate.putShort(ZipUtils.GP_FLAG_EFS);
        allocate.putShort((short) 8);
        ZipUtils.putUnsignedInt16(allocate, i10);
        ZipUtils.putUnsignedInt16(allocate, i11);
        ZipUtils.putUnsignedInt32(allocate, j10);
        ZipUtils.putUnsignedInt32(allocate, bArr.length);
        ZipUtils.putUnsignedInt32(allocate, j11);
        ZipUtils.putUnsignedInt16(allocate, bytes.length);
        ZipUtils.putUnsignedInt16(allocate, 0);
        allocate.put(bytes);
        if (allocate.hasRemaining()) {
            throw new RuntimeException("pos: " + allocate.position() + ", limit: " + allocate.limit());
        }
        allocate.flip();
        long remaining = allocate.remaining();
        dataSink.consume(allocate);
        long length = remaining + bArr.length;
        dataSink.consume(bArr, 0, bArr.length);
        return length;
    }

    public int getDataStartOffsetInRecord() {
        return this.mDataStartOffset;
    }

    public ByteBuffer getExtra() {
        return this.mExtra.capacity() > 0 ? this.mExtra.slice() : this.mExtra;
    }

    public int getExtraFieldStartOffsetInsideRecord() {
        return this.mNameSizeBytes + 30;
    }

    public String getName() {
        return this.mName;
    }

    public long getSize() {
        return this.mSize;
    }

    public long getStartOffsetInArchive() {
        return this.mStartOffsetInArchive;
    }

    public boolean isDataCompressed() {
        return this.mDataCompressed;
    }

    public long outputRecord(DataSource dataSource, DataSink dataSink) throws IOException {
        long size = getSize();
        dataSource.feed(getStartOffsetInArchive(), size, dataSink);
        return size;
    }

    public long outputRecordWithModifiedExtra(DataSource dataSource, ByteBuffer byteBuffer, DataSink dataSink) throws IOException {
        long startOffsetInArchive = getStartOffsetInArchive();
        int extraFieldStartOffsetInsideRecord = getExtraFieldStartOffsetInsideRecord();
        int remaining = byteBuffer.remaining();
        ByteBuffer allocate = ByteBuffer.allocate(extraFieldStartOffsetInsideRecord + remaining);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        dataSource.copyTo(startOffsetInArchive, extraFieldStartOffsetInsideRecord, allocate);
        allocate.put(byteBuffer.slice());
        allocate.flip();
        ZipUtils.setUnsignedInt16(allocate, 28, remaining);
        long remaining2 = allocate.remaining();
        dataSink.consume(allocate);
        long size = getSize();
        int i10 = this.mDataStartOffset;
        long j10 = size - i10;
        dataSource.feed(startOffsetInArchive + i10, j10, dataSink);
        return remaining2 + j10;
    }

    public void outputUncompressedData(DataSource dataSource, DataSink dataSink) throws IOException, ZipFormatException {
        long j10 = this.mStartOffsetInArchive + this.mDataStartOffset;
        try {
            if (this.mDataCompressed) {
                try {
                    InflateSinkAdapter inflateSinkAdapter = new InflateSinkAdapter(dataSink);
                    try {
                        dataSource.feed(j10, this.mDataSize, inflateSinkAdapter);
                        long outputByteCount = inflateSinkAdapter.getOutputByteCount();
                        if (outputByteCount == this.mUncompressedDataSize) {
                            inflateSinkAdapter.close();
                            return;
                        }
                        throw new ZipFormatException("Unexpected size of uncompressed data of " + this.mName + ". Expected: " + this.mUncompressedDataSize + " bytes, actual: " + outputByteCount + " bytes");
                    } finally {
                    }
                } catch (IOException e10) {
                    if (e10.getCause() instanceof DataFormatException) {
                        throw new ZipFormatException("Data of entry " + this.mName + " malformed", e10);
                    }
                    throw e10;
                }
            }
            dataSource.feed(j10, this.mDataSize, dataSink);
        } catch (IOException e11) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to read data of ");
            sb2.append(this.mDataCompressed ? "compressed" : "uncompressed");
            sb2.append(" entry ");
            sb2.append(this.mName);
            throw new IOException(sb2.toString(), e11);
        }
    }

    private static LocalFileRecord getRecord(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10, boolean z10, boolean z11) throws ZipFormatException, IOException {
        long j11;
        DataSource dataSource2;
        ByteBuffer byteBuffer;
        String name = centralDirectoryRecord.getName();
        int nameSizeBytes = centralDirectoryRecord.getNameSizeBytes();
        int i10 = nameSizeBytes + 30;
        long localFileHeaderOffset = centralDirectoryRecord.getLocalFileHeaderOffset();
        long j12 = i10 + localFileHeaderOffset;
        if (j12 > j10) {
            throw new ZipFormatException("Local File Header of " + name + " extends beyond start of Central Directory. LFH end: " + j12 + ", CD start: " + j10);
        }
        try {
            ByteBuffer byteBuffer2 = dataSource.getByteBuffer(localFileHeaderOffset, i10);
            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
            byteBuffer2.order(byteOrder);
            int i11 = byteBuffer2.getInt();
            if (i11 == 67324752) {
                int i12 = byteBuffer2.getShort(6) & 8;
                boolean z12 = i12 != 0;
                boolean z13 = (centralDirectoryRecord.getGpFlags() & 8) != 0;
                if (z12 != z13) {
                    throw new ZipFormatException("Data Descriptor presence mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + z12 + ", CD: " + z13);
                }
                boolean z14 = z12;
                long crc32 = centralDirectoryRecord.getCrc32();
                long compressedSize = centralDirectoryRecord.getCompressedSize();
                long uncompressedSize = centralDirectoryRecord.getUncompressedSize();
                if (z14) {
                    j11 = localFileHeaderOffset;
                } else {
                    j11 = localFileHeaderOffset;
                    long unsignedInt32 = ZipUtils.getUnsignedInt32(byteBuffer2, 14);
                    if (unsignedInt32 != crc32) {
                        throw new ZipFormatException("CRC-32 mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + unsignedInt32 + ", CD: " + crc32);
                    }
                    long unsignedInt322 = ZipUtils.getUnsignedInt32(byteBuffer2, 18);
                    if (unsignedInt322 != compressedSize) {
                        throw new ZipFormatException("Compressed size mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + unsignedInt322 + ", CD: " + compressedSize);
                    }
                    long unsignedInt323 = ZipUtils.getUnsignedInt32(byteBuffer2, 22);
                    if (unsignedInt323 != uncompressedSize) {
                        throw new ZipFormatException("Uncompressed size mismatch between Local File Header and Central Directory for entry " + name + ". LFH: " + unsignedInt323 + ", CD: " + uncompressedSize);
                    }
                }
                int unsignedInt16 = ZipUtils.getUnsignedInt16(byteBuffer2, 26);
                if (unsignedInt16 <= nameSizeBytes) {
                    String name2 = CentralDirectoryRecord.getName(byteBuffer2, 30, unsignedInt16);
                    if (name.equals(name2)) {
                        int unsignedInt162 = ZipUtils.getUnsignedInt16(byteBuffer2, 28);
                        long j13 = j11 + 30 + unsignedInt16;
                        long j14 = unsignedInt162 + j13;
                        boolean z15 = centralDirectoryRecord.getCompressionMethod() != 0;
                        long j15 = z15 ? compressedSize : uncompressedSize;
                        long j16 = j14 + j15;
                        if (j16 > j10) {
                            throw new ZipFormatException("Local File Header data of " + name + " overlaps with Central Directory. LFH data start: " + j14 + ", LFH data end: " + j16 + ", CD start: " + j10);
                        }
                        ByteBuffer byteBuffer3 = EMPTY_BYTE_BUFFER;
                        if (!z10 || unsignedInt162 <= 0) {
                            dataSource2 = dataSource;
                            byteBuffer = byteBuffer3;
                        } else {
                            dataSource2 = dataSource;
                            byteBuffer = dataSource2.getByteBuffer(j13, unsignedInt162);
                        }
                        if (z11 && i12 != 0) {
                            long j17 = 12 + j16;
                            if (j17 > j10) {
                                throw new ZipFormatException("Data Descriptor of " + name + " overlaps with Central Directory. Data Descriptor end: " + j16 + ", CD start: " + j10);
                            }
                            ByteBuffer byteBuffer4 = dataSource2.getByteBuffer(j16, 4);
                            byteBuffer4.order(byteOrder);
                            if (byteBuffer4.getInt() == DATA_DESCRIPTOR_SIGNATURE) {
                                long j18 = 16 + j16;
                                if (j18 > j10) {
                                    throw new ZipFormatException("Data Descriptor of " + name + " overlaps with Central Directory. Data Descriptor end: " + j16 + ", CD start: " + j10);
                                }
                                j16 = j18;
                            } else {
                                j16 = j17;
                            }
                        }
                        return new LocalFileRecord(name, nameSizeBytes, byteBuffer, j11, j16 - j11, unsignedInt16 + 30 + unsignedInt162, j15, z15, uncompressedSize);
                    }
                    throw new ZipFormatException("Name mismatch between Local File Header and Central Directory. LFH: \"" + name2 + "\", CD: \"" + name + JavadocConstants.ANCHOR_PREFIX_END);
                }
                throw new ZipFormatException("Name mismatch between Local File Header and Central Directory for entry" + name + ". LFH: " + unsignedInt16 + " bytes, CD: " + nameSizeBytes + " bytes");
            }
            throw new ZipFormatException("Not a Local File Header record for entry " + name + ". Signature: 0x" + Long.toHexString(i11 & 4294967295L));
        } catch (IOException e10) {
            throw new IOException("Failed to read Local File Header of " + name, e10);
        }
    }

    public static void outputUncompressedData(DataSource dataSource, CentralDirectoryRecord centralDirectoryRecord, long j10, DataSink dataSink) throws ZipFormatException, IOException {
        getRecord(dataSource, centralDirectoryRecord, j10, false, false).outputUncompressedData(dataSource, dataSink);
    }
}
