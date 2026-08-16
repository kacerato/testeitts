package org.tukaani.xz.delta;

abstract class DeltaCoder {
    static final int DISTANCE_MASK = 255;
    static final int DISTANCE_MAX = 256;
    static final int DISTANCE_MIN = 1;
    final int distance;
    final byte[] history = new byte[256];
    int pos = 0;

    public DeltaCoder(int i10) {
        if (i10 < 1 || i10 > 256) {
            throw new IllegalArgumentException();
        }
        this.distance = i10;
    }
}
