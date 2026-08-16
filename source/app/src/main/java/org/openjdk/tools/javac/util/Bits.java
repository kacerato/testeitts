package org.openjdk.tools.javac.util;

import java.util.Arrays;
import okhttp3.v;

public class Bits {
    private static final int[] unassignedBits = new int[0];
    private static final int wordlen = 32;
    private static final int wordmask = 31;
    private static final int wordshift = 5;
    public int[] bits;
    protected BitsState currentState;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$util$Bits$BitsState;

        static {
            int[] iArr = new int[BitsState.values().length];
            $SwitchMap$com$sun$tools$javac$util$Bits$BitsState = iArr;
            try {
                iArr[BitsState.UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$util$Bits$BitsState[BitsState.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum BitsState {
        UNKNOWN,
        UNINIT,
        NORMAL;

        public static BitsState getState(int[] iArr, boolean z10) {
            return z10 ? UNKNOWN : iArr != Bits.unassignedBits ? NORMAL : UNINIT;
        }
    }

    public Bits() {
        this(false);
    }

    private static int trailingZeroBits(int i10) {
        int i11;
        Assert.check(true);
        if (i10 == 0) {
            return 32;
        }
        if ((65535 & i10) == 0) {
            i10 >>>= 16;
            i11 = 17;
        } else {
            i11 = 1;
        }
        if ((i10 & 255) == 0) {
            i11 += 8;
            i10 >>>= 8;
        }
        if ((i10 & 15) == 0) {
            i11 += 4;
            i10 >>>= 4;
        }
        if ((i10 & 3) == 0) {
            i11 += 2;
            i10 >>>= 2;
        }
        return i11 - (i10 & 1);
    }

    public Bits andSet(Bits bits) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        internalAndSet(bits);
        this.currentState = BitsState.NORMAL;
        return this;
    }

    public Bits assign(Bits bits) {
        this.bits = bits.dup().bits;
        this.currentState = BitsState.NORMAL;
        return this;
    }

    public void clear() {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        int i10 = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i10 >= iArr.length) {
                this.currentState = BitsState.NORMAL;
                return;
            } else {
                iArr[i10] = 0;
                i10++;
            }
        }
    }

    public Bits diffSet(Bits bits) {
        int i10 = 0;
        Assert.check(this.currentState != BitsState.UNKNOWN);
        while (true) {
            int[] iArr = this.bits;
            if (i10 >= iArr.length) {
                this.currentState = BitsState.NORMAL;
                return this;
            }
            int[] iArr2 = bits.bits;
            if (i10 < iArr2.length) {
                iArr[i10] = (~iArr2[i10]) & iArr[i10];
            }
            i10++;
        }
    }

    public Bits dup() {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        Bits bits = new Bits();
        bits.bits = dupBits();
        this.currentState = BitsState.NORMAL;
        return bits;
    }

    public int[] dupBits() {
        if (this.currentState != BitsState.NORMAL) {
            return this.bits;
        }
        int[] iArr = this.bits;
        int[] iArr2 = new int[iArr.length];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    public void excl(int i10) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        Assert.check(i10 >= 0);
        int i11 = i10 >>> 5;
        sizeTo(i11 + 1);
        int[] iArr = this.bits;
        iArr[i11] = (~(1 << (i10 & 31))) & iArr[i11];
        this.currentState = BitsState.NORMAL;
    }

    public void excludeFrom(int i10) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        Bits bits = new Bits();
        bits.sizeTo(this.bits.length);
        bits.inclRange(0, i10);
        internalAndSet(bits);
        this.currentState = BitsState.NORMAL;
    }

    public void incl(int i10) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        Assert.check(i10 >= 0);
        int i11 = i10 >>> 5;
        sizeTo(i11 + 1);
        int[] iArr = this.bits;
        iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
        this.currentState = BitsState.NORMAL;
    }

    public void inclRange(int i10, int i11) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        sizeTo((i11 >>> 5) + 1);
        while (i10 < i11) {
            int[] iArr = this.bits;
            int i12 = i10 >>> 5;
            iArr[i12] = iArr[i12] | (1 << (i10 & 31));
            i10++;
        }
        this.currentState = BitsState.NORMAL;
    }

    public void internalAndSet(Bits bits) {
        int i10 = 0;
        Assert.check(this.currentState != BitsState.UNKNOWN);
        sizeTo(bits.bits.length);
        while (true) {
            int[] iArr = bits.bits;
            if (i10 >= iArr.length) {
                return;
            }
            int[] iArr2 = this.bits;
            iArr2[i10] = iArr[i10] & iArr2[i10];
            i10++;
        }
    }

    public void internalReset() {
        this.bits = null;
        this.currentState = BitsState.UNKNOWN;
    }

    public boolean isMember(int i10) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        if (i10 < 0) {
            return false;
        }
        int[] iArr = this.bits;
        if (i10 < (iArr.length << 5)) {
            return ((1 << (i10 & 31)) & iArr[i10 >>> 5]) != 0;
        }
        return false;
    }

    public boolean isReset() {
        return this.currentState == BitsState.UNKNOWN;
    }

    public int nextBit(int i10) {
        Assert.check(this.currentState != BitsState.UNKNOWN);
        int i11 = i10 >>> 5;
        int[] iArr = this.bits;
        if (i11 >= iArr.length) {
            return -1;
        }
        int i12 = (~((1 << (i10 & 31)) - 1)) & iArr[i11];
        while (i12 == 0) {
            i11++;
            int[] iArr2 = this.bits;
            if (i11 >= iArr2.length) {
                return -1;
            }
            i12 = iArr2[i11];
        }
        return (i11 << 5) + trailingZeroBits(i12);
    }

    public Bits orSet(Bits bits) {
        int i10 = 0;
        Assert.check(this.currentState != BitsState.UNKNOWN);
        sizeTo(bits.bits.length);
        while (true) {
            int[] iArr = bits.bits;
            if (i10 >= iArr.length) {
                this.currentState = BitsState.NORMAL;
                return this;
            }
            int[] iArr2 = this.bits;
            iArr2[i10] = iArr[i10] | iArr2[i10];
            i10++;
        }
    }

    public void reset() {
        internalReset();
    }

    public void sizeTo(int i10) {
        int[] iArr = this.bits;
        if (iArr.length < i10) {
            this.bits = Arrays.copyOf(iArr, i10);
        }
    }

    public String toString() {
        int[] iArr = this.bits;
        if (iArr == null || iArr.length <= 0) {
            return v.f99450n;
        }
        char[] cArr = new char[iArr.length * 32];
        for (int i10 = 0; i10 < this.bits.length * 32; i10++) {
            cArr[i10] = isMember(i10) ? '1' : '0';
        }
        return new String(cArr);
    }

    public Bits xorSet(Bits bits) {
        int i10 = 0;
        Assert.check(this.currentState != BitsState.UNKNOWN);
        sizeTo(bits.bits.length);
        while (true) {
            int[] iArr = bits.bits;
            if (i10 >= iArr.length) {
                this.currentState = BitsState.NORMAL;
                return this;
            }
            int[] iArr2 = this.bits;
            iArr2[i10] = iArr[i10] ^ iArr2[i10];
            i10++;
        }
    }

    public Bits(Bits bits) {
        this(bits.dup().bits, BitsState.getState(bits.bits, false));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Bits(boolean z10) {
        this(r0, BitsState.getState(r0, z10));
        int[] iArr = unassignedBits;
    }

    public Bits(int[] iArr, BitsState bitsState) {
        this.bits = iArr;
        this.currentState = bitsState;
        int i10 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$util$Bits$BitsState[bitsState.ordinal()];
        if (i10 == 1) {
            this.bits = null;
        } else {
            if (i10 != 2) {
                return;
            }
            Assert.check(iArr != unassignedBits);
        }
    }
}
