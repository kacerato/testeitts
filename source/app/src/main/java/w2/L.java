package w2;

import java.util.BitSet;
import w2.AbstractC15885e;

@InterfaceC15894k
@v2.c
public final class L extends AbstractC15885e.v {

    public static final int f126170g = 1023;

    public static final int f126171h = -862048943;

    public static final int f126172i = 461845907;

    public static final double f126173j = 0.5d;

    public final char[] f126174d;

    public final boolean f126175e;

    public final long f126176f;

    public L(char[] cArr, long j10, boolean z10, String str) {
        super(str);
        this.f126174d = cArr;
        this.f126176f = j10;
        this.f126175e = z10;
    }

    @v2.d
    public static int Z(int i10) {
        if (i10 == 1) {
            return 2;
        }
        int highestOneBit = Integer.highestOneBit(i10 - 1) << 1;
        while (highestOneBit * 0.5d < i10) {
            highestOneBit <<= 1;
        }
        return highestOneBit;
    }

    public static AbstractC15885e a0(BitSet bitSet, String str) {
        int i10;
        int cardinality = bitSet.cardinality();
        boolean z10 = bitSet.get(0);
        int Z10 = Z(cardinality);
        char[] cArr = new char[Z10];
        int i11 = Z10 - 1;
        int nextSetBit = bitSet.nextSetBit(0);
        long j10 = 0;
        while (nextSetBit != -1) {
            long j11 = (1 << nextSetBit) | j10;
            int b02 = b0(nextSetBit);
            while (true) {
                i10 = b02 & i11;
                if (cArr[i10] == 0) {
                    break;
                }
                b02 = i10 + 1;
            }
            cArr[i10] = (char) nextSetBit;
            nextSetBit = bitSet.nextSetBit(nextSetBit + 1);
            j10 = j11;
        }
        return new L(cArr, j10, z10, str);
    }

    public static int b0(int i10) {
        return Integer.rotateLeft(i10 * (-862048943), 15) * 461845907;
    }

    @Override
    public boolean B(char c10) {
        if (c10 == 0) {
            return this.f126175e;
        }
        if (!Y(c10)) {
            return false;
        }
        int length = this.f126174d.length - 1;
        int b02 = b0(c10) & length;
        int i10 = b02;
        do {
            char c11 = this.f126174d[i10];
            if (c11 == 0) {
                return false;
            }
            if (c11 == c10) {
                return true;
            }
            i10 = (i10 + 1) & length;
        } while (i10 != b02);
        return false;
    }

    @Override
    public void Q(BitSet bitSet) {
        if (this.f126175e) {
            bitSet.set(0);
        }
        for (char c10 : this.f126174d) {
            if (c10 != 0) {
                bitSet.set(c10);
            }
        }
    }

    public final boolean Y(int i10) {
        return 1 == ((this.f126176f >> i10) & 1);
    }
}
