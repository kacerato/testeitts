package org.tukaani.xz.index;

class IndexRecord {
    final long uncompressed;
    final long unpadded;

    public IndexRecord(long j10, long j11) {
        this.unpadded = j10;
        this.uncompressed = j11;
    }
}
