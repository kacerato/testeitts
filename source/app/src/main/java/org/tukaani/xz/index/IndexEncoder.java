package org.tukaani.xz.index;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.CRC32;
import java.util.zip.CheckedOutputStream;
import org.tukaani.xz.XZIOException;
import org.tukaani.xz.common.EncoderUtil;

public class IndexEncoder extends IndexBase {
    private final ArrayList<IndexRecord> records;

    public IndexEncoder() {
        super(new XZIOException("XZ Stream or its Index has grown too big"));
        this.records = new ArrayList<>();
    }

    @Override
    public void add(long j10, long j11) throws XZIOException {
        super.add(j10, j11);
        this.records.add(new IndexRecord(j10, j11));
    }

    public void encode(OutputStream outputStream) throws IOException {
        CRC32 crc32 = new CRC32();
        CheckedOutputStream checkedOutputStream = new CheckedOutputStream(outputStream, crc32);
        checkedOutputStream.write(0);
        EncoderUtil.encodeVLI(checkedOutputStream, this.recordCount);
        Iterator<IndexRecord> it = this.records.iterator();
        while (it.hasNext()) {
            IndexRecord next = it.next();
            EncoderUtil.encodeVLI(checkedOutputStream, next.unpadded);
            EncoderUtil.encodeVLI(checkedOutputStream, next.uncompressed);
        }
        for (int indexPaddingSize = getIndexPaddingSize(); indexPaddingSize > 0; indexPaddingSize--) {
            checkedOutputStream.write(0);
        }
        long value = crc32.getValue();
        for (int i10 = 0; i10 < 4; i10++) {
            outputStream.write((byte) (value >>> (i10 * 8)));
        }
    }

    @Override
    public long getIndexSize() {
        return super.getIndexSize();
    }

    @Override
    public long getStreamSize() {
        return super.getStreamSize();
    }
}
