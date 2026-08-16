package org.tukaani.xz.lzma;

final class Optimum {
    private static final int INFINITY_PRICE = 1073741824;
    int backPrev;
    int backPrev2;
    boolean hasPrev2;
    int optPrev;
    int optPrev2;
    boolean prev1IsLiteral;
    int price;
    final State state = new State();
    final int[] reps = new int[4];

    public void reset() {
        this.price = 1073741824;
    }

    public void set1(int i10, int i11, int i12) {
        this.price = i10;
        this.optPrev = i11;
        this.backPrev = i12;
        this.prev1IsLiteral = false;
    }

    public void set2(int i10, int i11, int i12) {
        this.price = i10;
        this.optPrev = i11 + 1;
        this.backPrev = i12;
        this.prev1IsLiteral = true;
        this.hasPrev2 = false;
    }

    public void set3(int i10, int i11, int i12, int i13, int i14) {
        this.price = i10;
        this.optPrev = i13 + i11 + 1;
        this.backPrev = i14;
        this.prev1IsLiteral = true;
        this.hasPrev2 = true;
        this.optPrev2 = i11;
        this.backPrev2 = i12;
    }
}
