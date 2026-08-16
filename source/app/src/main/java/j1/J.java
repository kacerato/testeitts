package j1;

import java.math.RoundingMode;

public final class J {
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003e, code lost:
    
        if (((r0 & 1) & (r7 != java.math.RoundingMode.HALF_EVEN ? 0 : 1)) != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0041, code lost:
    
        if (r1 > 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0044, code lost:
    
        if (r5 > 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
    
        if (r5 < 0) goto L27;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001c. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int a(int i10, int i11, RoundingMode roundingMode) {
        roundingMode.getClass();
        if (i11 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i12 = i10 / i11;
        int i13 = i10 - (i11 * i12);
        if (i13 == 0) {
            return i12;
        }
        int i14 = ((i10 ^ i11) >> 31) | 1;
        switch (I.f92487a[roundingMode.ordinal()]) {
            case 1:
                K.a(false);
            case 2:
                return i12;
            case 3:
                break;
            case 4:
                return i12 + i14;
            case 5:
                break;
            case 6:
            case 7:
            case 8:
                int abs = Math.abs(i13);
                int abs2 = abs - (Math.abs(i11) - abs);
                if (abs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        break;
                    }
                    return i12 + i14;
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    public static int b(int i10, RoundingMode roundingMode) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("x (0) must be > 0");
        }
        switch (I.f92487a[roundingMode.ordinal()]) {
            case 1:
                K.a(((i10 + (-1)) & i10) == 0);
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i10 - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
                return (31 - numberOfLeadingZeros) + (((E2.f.f5383b >>> numberOfLeadingZeros) - i10) >>> 31);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i10);
    }
}
