package org.tukaani.xz.index;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.zip.CheckedInputStream;
import org.tukaani.xz.CorruptedInputException;
import org.tukaani.xz.XZIOException;
import org.tukaani.xz.check.CRC32;
import org.tukaani.xz.check.Check;
import org.tukaani.xz.check.SHA256;
import org.tukaani.xz.common.DecoderUtil;

public class IndexHash extends IndexBase {
    private Check hash;

    public IndexHash() {
        super(new CorruptedInputException());
        try {
            this.hash = new SHA256();
        } catch (NoSuchAlgorithmException unused) {
            this.hash = new CRC32();
        }
    }

    @Override
    public void add(long j10, long j11) throws XZIOException {
        super.add(j10, j11);
        ByteBuffer allocate = ByteBuffer.allocate(16);
        allocate.putLong(j10);
        allocate.putLong(j11);
        this.hash.update(allocate.array());
    }

    @Override
    public long getIndexSize() {
        return super.getIndexSize();
    }

    @Override
    public long getStreamSize() {
        return super.getStreamSize();
    }

    public void validate(InputStream inputStream) throws IOException {
        java.util.zip.CRC32 crc32 = new java.util.zip.CRC32();
        crc32.update(0);
        CheckedInputStream checkedInputStream = new CheckedInputStream(inputStream, crc32);
        if (DecoderUtil.decodeVLI(checkedInputStream) != this.recordCount) {
            throw new CorruptedInputException("XZ Block Header or the start of XZ Index is corrupt");
        }
        IndexHash indexHash = new IndexHash();
        for (long j10 = 0; j10 < this.recordCount; j10++) {
            try {
                indexHash.add(DecoderUtil.decodeVLI(checkedInputStream), DecoderUtil.decodeVLI(checkedInputStream));
                if (indexHash.blocksSum > this.blocksSum || indexHash.uncompressedSum > this.uncompressedSum || indexHash.indexListSize > this.indexListSize) {
                    throw new CorruptedInputException("XZ Index is corrupt");
                }
            } catch (XZIOException unused) {
                throw new CorruptedInputException("XZ Index is corrupt");
            }
        }
        if (indexHash.blocksSum != this.blocksSum || indexHash.uncompressedSum != this.uncompressedSum || indexHash.indexListSize != this.indexListSize || !Arrays.equals(indexHash.hash.finish(), this.hash.finish())) {
            throw new CorruptedInputException("XZ Index is corrupt");
        }
        DataInputStream dataInputStream = new DataInputStream(checkedInputStream);
        for (int indexPaddingSize = getIndexPaddingSize(); indexPaddingSize > 0; indexPaddingSize--) {
            if (dataInputStream.readUnsignedByte() != 0) {
                throw new CorruptedInputException("XZ Index is corrupt");
            }
        }
        long value = crc32.getValue();
        for (int i10 = 0; i10 < 4; i10++) {
            if (((value >>> (i10 * 8)) & 255) != dataInputStream.readUnsignedByte()) {
                throw new CorruptedInputException("XZ Index is corrupt");
            }
        }
    }
}
