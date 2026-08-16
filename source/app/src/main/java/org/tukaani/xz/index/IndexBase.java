package org.tukaani.xz.index;

import org.tukaani.xz.XZIOException;
import org.tukaani.xz.common.Util;

abstract class IndexBase {
    private final XZIOException invalidIndexException;
    long blocksSum = 0;
    long uncompressedSum = 0;
    long indexListSize = 0;
    long recordCount = 0;

    public IndexBase(XZIOException xZIOException) {
        this.invalidIndexException = xZIOException;
    }

    private long getUnpaddedIndexSize() {
        return Util.getVLISize(this.recordCount) + 1 + this.indexListSize + 4;
    }

    public void add(long j10, long j11) throws XZIOException {
        this.blocksSum += (3 + j10) & (-4);
        this.uncompressedSum += j11;
        this.indexListSize += Util.getVLISize(j10) + Util.getVLISize(j11);
        this.recordCount++;
        if (this.blocksSum < 0 || this.uncompressedSum < 0 || getIndexSize() > 17179869184L || getStreamSize() < 0) {
            throw this.invalidIndexException;
        }
    }

    public int getIndexPaddingSize() {
        return (int) ((4 - getUnpaddedIndexSize()) & 3);
    }

    public long getIndexSize() {
        return (getUnpaddedIndexSize() + 3) & (-4);
    }

    public long getStreamSize() {
        return this.blocksSum + 12 + getIndexSize() + 12;
    }
}
