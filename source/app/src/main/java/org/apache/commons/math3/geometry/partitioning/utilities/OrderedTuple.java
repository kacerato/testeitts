package org.apache.commons.math3.geometry.partitioning.utilities;

import com.google.common.collect.C12510d2;
import java.util.Arrays;
import org.apache.commons.math3.util.FastMath;

@Deprecated
public class OrderedTuple implements Comparable<OrderedTuple> {
    private static final long EXPONENT_MASK = 9218868437227405312L;
    private static final long IMPLICIT_ONE = 4503599627370496L;
    private static final long MANTISSA_MASK = 4503599627370495L;
    private static final long SIGN_MASK = Long.MIN_VALUE;
    private double[] components;
    private long[] encoding;
    private int lsb;
    private boolean nan;
    private boolean negInf;
    private int offset;
    private boolean posInf;

    public OrderedTuple(double... dArr) {
        this.components = (double[]) dArr.clone();
        this.lsb = Integer.MAX_VALUE;
        this.posInf = false;
        this.negInf = false;
        this.nan = false;
        int i10 = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < dArr.length; i11++) {
            if (Double.isInfinite(dArr[i11])) {
                if (dArr[i11] < 0.0d) {
                    this.negInf = true;
                } else {
                    this.posInf = true;
                }
            } else if (Double.isNaN(dArr[i11])) {
                this.nan = true;
            } else {
                long doubleToLongBits = Double.doubleToLongBits(dArr[i11]);
                long mantissa = mantissa(doubleToLongBits);
                if (mantissa != 0) {
                    int exponent = exponent(doubleToLongBits);
                    i10 = FastMath.max(i10, computeMSB(mantissa) + exponent);
                    this.lsb = FastMath.min(this.lsb, exponent + computeLSB(mantissa));
                }
            }
        }
        if (this.posInf && this.negInf) {
            this.posInf = false;
            this.negInf = false;
            this.nan = true;
        }
        if (this.lsb <= i10) {
            encode(i10 + 16);
        } else {
            this.encoding = new long[]{0};
        }
    }

    private static int computeLSB(long j10) {
        long j11 = C12510d2.f66536l;
        int i10 = 32;
        int i11 = 0;
        while (i10 != 0) {
            if ((j10 & j11) == j10) {
                i11 |= i10;
                j10 >>= i10;
            }
            i10 >>= 1;
            j11 >>= i10;
        }
        return i11;
    }

    private static int computeMSB(long j10) {
        long j11 = 4294967295L;
        int i10 = 32;
        int i11 = 0;
        while (i10 != 0) {
            if ((j10 & j11) != j10) {
                i11 |= i10;
                j10 >>= i10;
            }
            i10 >>= 1;
            j11 >>= i10;
        }
        return i11;
    }

    private void encode(int i10) {
        int i11 = i10 + 31;
        int i12 = i11 - (i11 % 32);
        this.offset = i12;
        long[] jArr = this.encoding;
        if (jArr != null && jArr.length == 1 && jArr[0] == 0) {
            return;
        }
        this.encoding = new long[this.components.length * ((((i12 + 1) - this.lsb) + 62) / 63)];
        long j10 = 0;
        int i13 = 0;
        int i14 = 62;
        while (i13 < this.encoding.length) {
            for (int i15 = 0; i15 < this.components.length; i15++) {
                if (getBit(i15, i12) != 0) {
                    j10 |= 1 << i14;
                }
                int i16 = i14 - 1;
                if (i14 == 0) {
                    this.encoding[i13] = j10;
                    j10 = 0;
                    i14 = 62;
                    i13++;
                } else {
                    i14 = i16;
                }
            }
            i12--;
        }
    }

    private static int exponent(long j10) {
        return ((int) ((j10 & 9218868437227405312L) >> 52)) - 1075;
    }

    private int getBit(int i10, int i11) {
        int i12;
        long doubleToLongBits = Double.doubleToLongBits(this.components[i10]);
        int exponent = exponent(doubleToLongBits);
        if (i11 < exponent || i11 > (i12 = this.offset)) {
            return 0;
        }
        if (i11 == i12) {
            return sign(doubleToLongBits) == 0 ? 1 : 0;
        }
        if (i11 > exponent + 52) {
            return sign(doubleToLongBits) == 0 ? 0 : 1;
        }
        long sign = sign(doubleToLongBits);
        long mantissa = mantissa(doubleToLongBits);
        if (sign != 0) {
            mantissa = -mantissa;
        }
        return (int) ((mantissa >> (i11 - exponent)) & 1);
    }

    private static long mantissa(long j10) {
        return (9218868437227405312L & j10) == 0 ? (j10 & 4503599627370495L) << 1 : (j10 & 4503599627370495L) | 4503599627370496L;
    }

    private static long sign(long j10) {
        return j10 & Long.MIN_VALUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof OrderedTuple) && compareTo((OrderedTuple) obj) == 0;
    }

    public double[] getComponents() {
        return (double[]) this.components.clone();
    }

    public int hashCode() {
        return (((((((((Arrays.hashCode(this.components) * 37) + this.offset) * 37) + this.lsb) * 37) + (this.posInf ? 97 : 71)) * 37) + (this.negInf ? 97 : 71)) * 37) + (this.nan ? 97 : 71);
    }

    @Override
    public int compareTo(OrderedTuple orderedTuple) {
        double[] dArr = this.components;
        int length = dArr.length;
        double[] dArr2 = orderedTuple.components;
        if (length == dArr2.length) {
            if (this.nan) {
                return 1;
            }
            if (orderedTuple.nan || this.negInf || orderedTuple.posInf) {
                return -1;
            }
            if (this.posInf || orderedTuple.negInf) {
                return 1;
            }
            int i10 = this.offset;
            int i11 = orderedTuple.offset;
            if (i10 < i11) {
                encode(i11);
            } else if (i10 > i11) {
                orderedTuple.encode(i10);
            }
            int min = FastMath.min(this.encoding.length, orderedTuple.encoding.length);
            for (int i12 = 0; i12 < min; i12++) {
                long j10 = this.encoding[i12];
                long j11 = orderedTuple.encoding[i12];
                if (j10 < j11) {
                    return -1;
                }
                if (j10 > j11) {
                    return 1;
                }
            }
            long[] jArr = this.encoding;
            int length2 = jArr.length;
            long[] jArr2 = orderedTuple.encoding;
            if (length2 < jArr2.length) {
                return -1;
            }
            return jArr.length > jArr2.length ? 1 : 0;
        }
        return dArr.length - dArr2.length;
    }
}
