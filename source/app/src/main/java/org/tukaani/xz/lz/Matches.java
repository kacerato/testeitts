package org.tukaani.xz.lz;

public final class Matches {
    public int count = 0;
    public final int[] dist;
    public final int[] len;

    public Matches(int i10) {
        this.len = new int[i10];
        this.dist = new int[i10];
    }
}
