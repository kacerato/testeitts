package org.apache.commons.math3.dfp;

import Dd.c;
import E2.d;
import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.Arrays;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.dfp.DfpField;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import w2.C15883c;

public class Dfp implements RealFieldElement<Dfp> {
    private static final String ADD_TRAP = "add";
    private static final String ALIGN_TRAP = "align";
    private static final String DIVIDE_TRAP = "divide";
    public static final int ERR_SCALE = 32760;
    public static final byte FINITE = 0;
    private static final String GREATER_THAN_TRAP = "greaterThan";
    public static final byte INFINITE = 1;
    private static final String LESS_THAN_TRAP = "lessThan";
    public static final int MAX_EXP = 32768;
    public static final int MIN_EXP = -32767;
    private static final String MULTIPLY_TRAP = "multiply";
    private static final String NAN_STRING = "NaN";
    private static final String NEG_INFINITY_STRING = "-Infinity";
    private static final String NEW_INSTANCE_TRAP = "newInstance";
    private static final String NEXT_AFTER_TRAP = "nextAfter";
    private static final String POS_INFINITY_STRING = "Infinity";
    public static final byte QNAN = 3;
    public static final int RADIX = 10000;
    public static final byte SNAN = 2;
    private static final String SQRT_TRAP = "sqrt";
    private static final String TRUNC_TRAP = "trunc";
    protected int exp;
    private final DfpField field;
    protected int[] mant;
    protected byte nans;
    protected byte sign;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode;

        static {
            int[] iArr = new int[DfpField.RoundingMode.values().length];
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = iArr;
            try {
                iArr[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public Dfp(DfpField dfpField) {
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
    }

    private static int compare(Dfp dfp, Dfp dfp2) {
        int[] iArr = dfp.mant;
        if (iArr[iArr.length - 1] == 0) {
            int[] iArr2 = dfp2.mant;
            if (iArr2[iArr2.length - 1] == 0 && dfp.nans == 0 && dfp2.nans == 0) {
                return 0;
            }
        }
        byte b10 = dfp.sign;
        byte b11 = dfp2.sign;
        if (b10 != b11) {
            return b10 == -1 ? -1 : 1;
        }
        byte b12 = dfp.nans;
        if (b12 == 1 && dfp2.nans == 0) {
            return b10;
        }
        if (b12 == 0 && dfp2.nans == 1) {
            return -b11;
        }
        if (b12 == 1 && dfp2.nans == 1) {
            return 0;
        }
        int[] iArr3 = dfp2.mant;
        if (iArr3[iArr3.length - 1] != 0 && iArr[iArr3.length - 1] != 0) {
            int i10 = dfp.exp;
            int i11 = dfp2.exp;
            if (i10 < i11) {
                return -b10;
            }
            if (i10 > i11) {
                return b10;
            }
        }
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i12 = dfp.mant[length];
            int i13 = dfp2.mant[length];
            if (i12 > i13) {
                return dfp.sign;
            }
            if (i12 < i13) {
                return -dfp.sign;
            }
        }
        return 0;
    }

    public static Dfp copysign(Dfp dfp, Dfp dfp2) {
        Dfp newInstance = dfp.newInstance(dfp);
        newInstance.sign = dfp2.sign;
        return newInstance;
    }

    private Dfp multiplyFast(int i10) {
        int i11;
        Dfp newInstance = newInstance(this);
        if (this.nans != 0) {
            if (isNaN()) {
                return this;
            }
            byte b10 = this.nans;
            if (b10 == 1 && i10 != 0) {
                return newInstance(this);
            }
            if (b10 == 1 && i10 == 0) {
                this.field.setIEEEFlagsBits(1);
                Dfp newInstance2 = newInstance(getZero());
                newInstance2.nans = (byte) 3;
                return dotrap(1, MULTIPLY_TRAP, newInstance(getZero()), newInstance2);
            }
        }
        if (i10 < 0 || i10 >= 10000) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance3 = newInstance(getZero());
            newInstance3.nans = (byte) 3;
            return dotrap(1, MULTIPLY_TRAP, newInstance3, newInstance3);
        }
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i12 >= iArr.length) {
                break;
            }
            int i14 = (iArr[i12] * i10) + i13;
            i13 = i14 / 10000;
            newInstance.mant[i12] = i14 - (i13 * 10000);
            i12++;
        }
        if (i13 != 0) {
            i11 = newInstance.mant[0];
            newInstance.shiftRight();
            newInstance.mant[this.mant.length - 1] = i13;
        } else {
            i11 = 0;
        }
        if (newInstance.mant[this.mant.length - 1] == 0) {
            newInstance.exp = 0;
        }
        int round = newInstance.round(i11);
        return round != 0 ? dotrap(round, MULTIPLY_TRAP, newInstance, newInstance) : newInstance;
    }

    public int align(int i10) {
        int i11 = this.exp - i10;
        int i12 = i11 < 0 ? -i11 : i11;
        if (i11 == 0) {
            return 0;
        }
        int[] iArr = this.mant;
        if (i12 > iArr.length + 1) {
            Arrays.fill(iArr, 0);
            this.exp = i10;
            this.field.setIEEEFlagsBits(16);
            dotrap(16, ALIGN_TRAP, this, this);
            return 0;
        }
        boolean z10 = false;
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            if (i11 < 0) {
                if (i13 != 0) {
                    z10 = true;
                }
                i13 = this.mant[0];
                shiftRight();
            } else {
                shiftLeft();
            }
        }
        if (z10) {
            this.field.setIEEEFlagsBits(16);
            dotrap(16, ALIGN_TRAP, this, this);
        }
        return i13;
    }

    public int classify() {
        return this.nans;
    }

    public int complement(int i10) {
        int i11 = 10000 - i10;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i13 >= iArr.length) {
                break;
            }
            iArr[i13] = 9999 - iArr[i13];
            i13++;
        }
        int i14 = i11 / 10000;
        int i15 = i11 - (i14 * 10000);
        while (true) {
            int[] iArr2 = this.mant;
            if (i12 >= iArr2.length) {
                return i15;
            }
            int i16 = iArr2[i12] + i14;
            i14 = i16 / 10000;
            iArr2[i12] = i16 - (i14 * 10000);
            i12++;
        }
    }

    public String dfp2sci() {
        int i10;
        int[] iArr = this.mant;
        int length = iArr.length * 4;
        char[] cArr = new char[length];
        char[] cArr2 = new char[(iArr.length * 4) + 20];
        int i11 = 0;
        for (int length2 = iArr.length - 1; length2 >= 0; length2--) {
            int i12 = this.mant[length2];
            cArr[i11] = (char) ((i12 / 1000) + 48);
            cArr[i11 + 1] = (char) (((i12 / 100) % 10) + 48);
            int i13 = i11 + 3;
            cArr[i11 + 2] = (char) (((i12 / 10) % 10) + 48);
            i11 += 4;
            cArr[i13] = (char) ((i12 % 10) + 48);
        }
        int i14 = 0;
        while (i14 < length && cArr[i14] == '0') {
            i14++;
        }
        if (this.sign == -1) {
            cArr2[0] = '-';
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (i14 == length) {
            cArr2[i10] = '0';
            cArr2[i10 + 1] = '.';
            cArr2[i10 + 2] = '0';
            cArr2[i10 + 3] = 'e';
            cArr2[i10 + 4] = '0';
            return new String(cArr2, 0, 5);
        }
        int i15 = i10 + 1;
        cArr2[i10] = cArr[i14];
        int i16 = i10 + 2;
        cArr2[i15] = '.';
        for (int i17 = i14 + 1; i17 < length; i17++) {
            cArr2[i16] = cArr[i17];
            i16++;
        }
        int i18 = i16 + 1;
        cArr2[i16] = 'e';
        int i19 = ((this.exp * 4) - i14) - 1;
        int i20 = i19 < 0 ? -i19 : i19;
        int i21 = 1000000000;
        while (i21 > i20) {
            i21 /= 10;
        }
        if (i19 < 0) {
            cArr2[i18] = '-';
            i18 = i16 + 2;
        }
        while (i21 > 0) {
            cArr2[i18] = (char) ((i20 / i21) + 48);
            i20 %= i21;
            i21 /= 10;
            i18++;
        }
        return new String(cArr2, 0, i18);
    }

    public String dfp2string() {
        boolean z10;
        int i10;
        char c10;
        char[] cArr = new char[(this.mant.length * 4) + 20];
        int i11 = this.exp;
        cArr[0] = C15883c.f126249O;
        int i12 = 1;
        if (i11 <= 0) {
            cArr[1] = '0';
            cArr[2] = '.';
            i10 = 3;
            z10 = true;
        } else {
            z10 = false;
            i10 = 1;
        }
        while (i11 < 0) {
            cArr[i10] = '0';
            cArr[i10 + 1] = '0';
            int i13 = i10 + 3;
            cArr[i10 + 2] = '0';
            i10 += 4;
            cArr[i13] = '0';
            i11++;
        }
        for (int length = this.mant.length - 1; length >= 0; length--) {
            int i14 = this.mant[length];
            cArr[i10] = (char) ((i14 / 1000) + 48);
            cArr[i10 + 1] = (char) (((i14 / 100) % 10) + 48);
            cArr[i10 + 2] = (char) (((i14 / 10) % 10) + 48);
            int i15 = i10 + 4;
            cArr[i10 + 3] = (char) ((i14 % 10) + 48);
            i11--;
            if (i11 == 0) {
                i10 += 5;
                cArr[i15] = '.';
                z10 = true;
            } else {
                i10 = i15;
            }
        }
        while (i11 > 0) {
            cArr[i10] = '0';
            cArr[i10 + 1] = '0';
            int i16 = i10 + 3;
            cArr[i10 + 2] = '0';
            i10 += 4;
            cArr[i16] = '0';
            i11--;
        }
        if (!z10) {
            cArr[i10] = '.';
            i10++;
        }
        while (true) {
            c10 = cArr[i12];
            if (c10 != '0') {
                break;
            }
            i12++;
        }
        if (c10 == '.') {
            i12--;
        }
        while (cArr[i10 - 1] == '0') {
            i10--;
        }
        if (this.sign < 0) {
            i12--;
            cArr[i12] = '-';
        }
        return new String(cArr, i12, i10 - i12);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Dfp dotrap(int i10, String str, Dfp dfp, Dfp dfp2) {
        Dfp newInstance;
        Dfp dfp3;
        Dfp dfp4;
        byte b10;
        byte b11;
        Dfp newInstance2;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 4) {
                    dfp2.exp -= 32760;
                    newInstance2 = newInstance(getZero());
                    newInstance2.sign = dfp2.sign;
                    newInstance2.nans = (byte) 1;
                } else if (i10 != 8) {
                    dfp3 = dfp2;
                } else {
                    if (dfp2.exp + this.mant.length < -32767) {
                        newInstance2 = newInstance(getZero());
                        newInstance2.sign = dfp2.sign;
                    } else {
                        newInstance2 = newInstance(dfp2);
                    }
                    dfp2.exp += ERR_SCALE;
                }
                dfp3 = newInstance2;
            } else {
                if (this.nans == 0) {
                    int[] iArr = this.mant;
                    if (iArr[iArr.length - 1] != 0) {
                        dfp4 = newInstance(getZero());
                        dfp4.sign = (byte) (this.sign * dfp.sign);
                        dfp4.nans = (byte) 1;
                        if (this.nans == 0) {
                            int[] iArr2 = this.mant;
                            if (iArr2[iArr2.length - 1] == 0) {
                                dfp4 = newInstance(getZero());
                                dfp4.nans = (byte) 3;
                            }
                        }
                        b10 = this.nans;
                        if (b10 != 1 || b10 == 3) {
                            dfp4 = newInstance(getZero());
                            dfp4.nans = (byte) 3;
                        }
                        b11 = this.nans;
                        if (b11 != 1 || b11 == 2) {
                            newInstance = newInstance(getZero());
                            newInstance.nans = (byte) 3;
                        } else {
                            dfp3 = dfp4;
                        }
                    }
                }
                dfp4 = dfp2;
                if (this.nans == 0) {
                }
                b10 = this.nans;
                if (b10 != 1) {
                }
                dfp4 = newInstance(getZero());
                dfp4.nans = (byte) 3;
                b11 = this.nans;
                if (b11 != 1) {
                }
                newInstance = newInstance(getZero());
                newInstance.nans = (byte) 3;
            }
            return trap(i10, str, dfp, dfp3, dfp2);
        }
        newInstance = newInstance(getZero());
        newInstance.sign = dfp2.sign;
        newInstance.nans = (byte) 3;
        dfp3 = newInstance;
        return trap(i10, str, dfp, dfp3, dfp2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dfp)) {
            return false;
        }
        Dfp dfp = (Dfp) obj;
        return !isNaN() && !dfp.isNaN() && this.field.getRadixDigits() == dfp.field.getRadixDigits() && compare(this, dfp) == 0;
    }

    public Dfp getOne() {
        return this.field.getOne();
    }

    public int getRadixDigits() {
        return this.field.getRadixDigits();
    }

    @Override
    public double getReal() {
        return toDouble();
    }

    public Dfp getTwo() {
        return this.field.getTwo();
    }

    public Dfp getZero() {
        return this.field.getZero();
    }

    public boolean greaterThan(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            dotrap(1, GREATER_THAN_TRAP, dfp, newInstance);
            return false;
        }
        if (!isNaN() && !dfp.isNaN()) {
            return compare(this, dfp) > 0;
        }
        this.field.setIEEEFlagsBits(1);
        dotrap(1, GREATER_THAN_TRAP, dfp, newInstance(getZero()));
        return false;
    }

    public int hashCode() {
        return (isZero() ? 0 : this.sign << 8) + 17 + (this.nans << 16) + this.exp + Arrays.hashCode(this.mant);
    }

    public int intLog10() {
        int[] iArr = this.mant;
        return iArr[iArr.length + (-1)] > 1000 ? (this.exp * 4) - 1 : iArr[iArr.length + (-1)] > 100 ? (this.exp * 4) - 2 : iArr[iArr.length + (-1)] > 10 ? (this.exp * 4) - 3 : (this.exp * 4) - 4;
    }

    public int intValue() {
        Dfp rint = rint();
        if (rint.greaterThan(newInstance(Integer.MAX_VALUE))) {
            return Integer.MAX_VALUE;
        }
        if (rint.lessThan(newInstance(Integer.MIN_VALUE))) {
            return Integer.MIN_VALUE;
        }
        int i10 = 0;
        for (int length = this.mant.length - 1; length >= this.mant.length - rint.exp; length--) {
            i10 = (i10 * 10000) + rint.mant[length];
        }
        return rint.sign == -1 ? -i10 : i10;
    }

    public boolean isInfinite() {
        return this.nans == 1;
    }

    public boolean isNaN() {
        byte b10 = this.nans;
        return b10 == 3 || b10 == 2;
    }

    public boolean isZero() {
        if (!isNaN()) {
            int[] iArr = this.mant;
            return iArr[iArr.length - 1] == 0 && !isInfinite();
        }
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
        return false;
    }

    public boolean lessThan(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            dotrap(1, LESS_THAN_TRAP, dfp, newInstance);
            return false;
        }
        if (!isNaN() && !dfp.isNaN()) {
            return compare(this, dfp) < 0;
        }
        this.field.setIEEEFlagsBits(1);
        dotrap(1, LESS_THAN_TRAP, dfp, newInstance(getZero()));
        return false;
    }

    @Deprecated
    public int log10() {
        return intLog10();
    }

    public int log10K() {
        return this.exp - 1;
    }

    public boolean negativeOrNull() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign >= 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] != 0 || isInfinite()) {
                return false;
            }
        }
        return true;
    }

    public Dfp newInstance() {
        return new Dfp(getField());
    }

    public Dfp nextAfter(Dfp dfp) {
        Dfp subtract;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, NEXT_AFTER_TRAP, dfp, newInstance);
        }
        boolean lessThan = lessThan(dfp);
        if (compare(this, dfp) == 0) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            lessThan = !lessThan;
        }
        if (lessThan) {
            Dfp newInstance2 = newInstance(getOne());
            newInstance2.exp = (this.exp - this.mant.length) + 1;
            newInstance2.sign = this.sign;
            if (equals(getZero())) {
                newInstance2.exp = (-32767) - this.mant.length;
            }
            subtract = add(newInstance2);
        } else {
            Dfp newInstance3 = newInstance(getOne());
            newInstance3.exp = this.exp;
            newInstance3.sign = this.sign;
            if (equals(newInstance3)) {
                newInstance3.exp = this.exp - this.mant.length;
            } else {
                newInstance3.exp = (this.exp - this.mant.length) + 1;
            }
            if (equals(getZero())) {
                newInstance3.exp = (-32767) - this.mant.length;
            }
            subtract = subtract(newInstance3);
        }
        if (subtract.classify() == 1 && classify() != 1) {
            this.field.setIEEEFlagsBits(16);
            subtract = dotrap(16, NEXT_AFTER_TRAP, dfp, subtract);
        }
        if (!subtract.equals(getZero()) || equals(getZero())) {
            return subtract;
        }
        this.field.setIEEEFlagsBits(16);
        return dotrap(16, NEXT_AFTER_TRAP, dfp, subtract);
    }

    public boolean positiveOrNull() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign <= 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] != 0 || isInfinite()) {
                return false;
            }
        }
        return true;
    }

    public Dfp power10(int i10) {
        Dfp newInstance = newInstance(getOne());
        if (i10 >= 0) {
            newInstance.exp = (i10 / 4) + 1;
        } else {
            newInstance.exp = (i10 + 1) / 4;
        }
        int i11 = ((i10 % 4) + 4) % 4;
        return i11 != 0 ? i11 != 1 ? i11 != 2 ? newInstance.multiply(1000) : newInstance.multiply(100) : newInstance.multiply(10) : newInstance;
    }

    public Dfp power10K(int i10) {
        Dfp newInstance = newInstance(getOne());
        newInstance.exp = i10 + 1;
        return newInstance;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0026, code lost:
    
        if ((r7.mant[0] & 1) != 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0029, code lost:
    
        if (r8 > 5000) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
    
        if (r8 >= 5000) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
    
        if (r8 != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x003b, code lost:
    
        if ((r7.mant[0] & 1) != 1) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        if (r8 != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
    
        if (r8 != 0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b A[LOOP:0: B:7:0x0046->B:9:0x004b, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int round(int i10) {
        int i11;
        int i12;
        int[] iArr;
        switch (AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[this.field.getRoundingMode().ordinal()]) {
            case 2:
                if (this.sign == 1) {
                }
                break;
            case 3:
                if (i10 <= 5000) {
                    if (i10 == 5000) {
                        break;
                    }
                }
                i11 = 0;
                i12 = 1;
                while (true) {
                    iArr = this.mant;
                    if (i11 < iArr.length) {
                        if (i12 != 0) {
                            shiftRight();
                            int[] iArr2 = this.mant;
                            iArr2[iArr2.length - 1] = i12;
                            break;
                        }
                    } else {
                        int i13 = iArr[i11] + i12;
                        i12 = i13 / 10000;
                        iArr[i11] = i13 - (i12 * 10000);
                        i11++;
                    }
                }
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
            case 8:
                if (i10 <= 5000) {
                    if (i10 == 5000) {
                        break;
                    }
                }
                i11 = 0;
                i12 = 1;
                while (true) {
                    iArr = this.mant;
                    if (i11 < iArr.length) {
                    }
                    int i132 = iArr[i11] + i12;
                    i12 = i132 / 10000;
                    iArr[i11] = i132 - (i12 * 10000);
                    i11++;
                }
                break;
            default:
                if (this.sign == -1) {
                }
                break;
        }
        int i14 = this.exp;
        if (i14 < -32767) {
            this.field.setIEEEFlagsBits(8);
            return 8;
        }
        if (i14 > 32768) {
            this.field.setIEEEFlagsBits(4);
            return 4;
        }
        if (i10 == 0) {
            return 0;
        }
        this.field.setIEEEFlagsBits(16);
        return 16;
    }

    public void shiftLeft() {
        for (int length = this.mant.length - 1; length > 0; length--) {
            int[] iArr = this.mant;
            iArr[length] = iArr[length - 1];
        }
        this.mant[0] = 0;
        this.exp--;
    }

    public void shiftRight() {
        int i10 = 0;
        while (true) {
            int[] iArr = this.mant;
            if (i10 >= iArr.length - 1) {
                iArr[iArr.length - 1] = 0;
                this.exp++;
                return;
            } else {
                int i11 = i10 + 1;
                iArr[i10] = iArr[i11];
                i10 = i11;
            }
        }
    }

    public boolean strictlyNegative() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign >= 0) {
            return false;
        }
        int[] iArr = this.mant;
        return iArr[iArr.length - 1] != 0 || isInfinite();
    }

    public boolean strictlyPositive() {
        if (isNaN()) {
            this.field.setIEEEFlagsBits(1);
            dotrap(1, LESS_THAN_TRAP, this, newInstance(getZero()));
            return false;
        }
        if (this.sign <= 0) {
            return false;
        }
        int[] iArr = this.mant;
        return iArr[iArr.length - 1] != 0 || isInfinite();
    }

    public double toDouble() {
        Dfp dfp;
        boolean z10;
        if (isInfinite()) {
            return lessThan(getZero()) ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        if (isNaN()) {
            return Double.NaN;
        }
        int compare = compare(this, getZero());
        if (compare == 0) {
            return this.sign < 0 ? -0.0d : 0.0d;
        }
        if (compare < 0) {
            dfp = negate();
            z10 = true;
        } else {
            dfp = this;
            z10 = false;
        }
        int intLog10 = (int) (dfp.intLog10() * 3.32d);
        if (intLog10 < 0) {
            intLog10--;
        }
        Dfp pow = DfpMath.pow(getTwo(), intLog10);
        while (true) {
            if (!pow.lessThan(dfp) && !pow.equals(dfp)) {
                break;
            }
            pow = pow.multiply(2);
            intLog10++;
        }
        int i10 = intLog10 - 1;
        Dfp divide = dfp.divide(DfpMath.pow(getTwo(), i10));
        if (i10 > -1023) {
            divide = divide.subtract(getOne());
        }
        if (i10 < -1074) {
            return 0.0d;
        }
        if (i10 > 1023) {
            return z10 ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        String dfp2 = divide.multiply(newInstance(4503599627370496L)).rint().toString();
        long parseLong = Long.parseLong(dfp2.substring(0, dfp2.length() - 1));
        if (parseLong == 4503599627370496L) {
            parseLong = 0;
        } else {
            intLog10 = i10;
        }
        if (intLog10 <= -1023) {
            intLog10--;
        }
        while (intLog10 < -1023) {
            intLog10++;
            parseLong >>>= 1;
        }
        double longBitsToDouble = Double.longBitsToDouble(((intLog10 + 1023) << 52) | parseLong);
        return z10 ? -longBitsToDouble : longBitsToDouble;
    }

    public double[] toSplitDouble() {
        double longBitsToDouble = Double.longBitsToDouble(Double.doubleToLongBits(toDouble()) & (-1073741824));
        return new double[]{longBitsToDouble, subtract(newInstance(longBitsToDouble)).toDouble()};
    }

    public String toString() {
        byte b10 = this.nans;
        if (b10 != 0) {
            return b10 == 1 ? this.sign < 0 ? NEG_INFINITY_STRING : "Infinity" : NAN_STRING;
        }
        int i10 = this.exp;
        return (i10 > this.mant.length || i10 < -1) ? dfp2sci() : dfp2string();
    }

    public Dfp trap(int i10, String str, Dfp dfp, Dfp dfp2, Dfp dfp3) {
        return dfp2;
    }

    public Dfp trunc(DfpField.RoundingMode roundingMode) {
        int i10;
        if (!isNaN() && this.nans != 1) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] == 0) {
                return newInstance(this);
            }
            int i11 = this.exp;
            if (i11 < 0) {
                this.field.setIEEEFlagsBits(16);
                return dotrap(16, TRUNC_TRAP, this, newInstance(getZero()));
            }
            if (i11 >= iArr.length) {
                return newInstance(this);
            }
            Dfp newInstance = newInstance(this);
            boolean z10 = false;
            for (int i12 = 0; i12 < this.mant.length - newInstance.exp; i12++) {
                int[] iArr2 = newInstance.mant;
                z10 |= iArr2[i12] != 0;
                iArr2[i12] = 0;
            }
            if (!z10) {
                return newInstance;
            }
            int i13 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[roundingMode.ordinal()];
            if (i13 != 1) {
                if (i13 != 2) {
                    Dfp newInstance2 = newInstance(c.f5125q);
                    Dfp subtract = subtract(newInstance);
                    subtract.sign = (byte) 1;
                    if (subtract.greaterThan(newInstance2)) {
                        subtract = newInstance(getOne());
                        subtract.sign = this.sign;
                        newInstance = newInstance.add(subtract);
                    }
                    if (subtract.equals(newInstance2) && (i10 = newInstance.exp) > 0 && (newInstance.mant[this.mant.length - i10] & 1) != 0) {
                        Dfp newInstance3 = newInstance(getOne());
                        newInstance3.sign = this.sign;
                        newInstance = newInstance.add(newInstance3);
                    }
                } else if (newInstance.sign == 1) {
                    newInstance = newInstance.add(getOne());
                }
            } else if (newInstance.sign == -1) {
                newInstance = newInstance.add(newInstance(-1));
            }
            this.field.setIEEEFlagsBits(16);
            return dotrap(16, TRUNC_TRAP, this, newInstance);
        }
        return newInstance(this);
    }

    public boolean unequal(Dfp dfp) {
        if (isNaN() || dfp.isNaN() || this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            return false;
        }
        return greaterThan(dfp) || lessThan(dfp);
    }

    @Override
    public Dfp abs() {
        Dfp newInstance = newInstance(this);
        newInstance.sign = (byte) 1;
        return newInstance;
    }

    @Override
    public Dfp acos() {
        return DfpMath.acos(this);
    }

    @Override
    public Dfp acosh() {
        return multiply(this).subtract(getOne()).sqrt().add(this).log();
    }

    @Override
    public Dfp asin() {
        return DfpMath.asin(this);
    }

    @Override
    public Dfp asinh() {
        return multiply(this).add(getOne()).sqrt().add(this).log();
    }

    @Override
    public Dfp atan() {
        return DfpMath.atan(this);
    }

    @Override
    public Dfp atan2(Dfp dfp) throws DimensionMismatchException {
        Dfp sqrt = dfp.multiply(dfp).add(multiply(this)).sqrt();
        if (dfp.sign >= 0) {
            return getTwo().multiply(divide(sqrt.add(dfp)).atan());
        }
        Dfp multiply = getTwo().multiply(divide(sqrt.subtract(dfp)).atan());
        return newInstance(multiply.sign <= 0 ? -3.141592653589793d : 3.141592653589793d).subtract(multiply);
    }

    @Override
    public Dfp atanh() {
        return getOne().add(this).divide(getOne().subtract(this)).log().divide(2);
    }

    @Override
    public Dfp cbrt() {
        return rootN(3);
    }

    @Override
    public Dfp ceil() {
        return trunc(DfpField.RoundingMode.ROUND_CEIL);
    }

    @Override
    public Dfp cos() {
        return DfpMath.cos(this);
    }

    @Override
    public Dfp cosh() {
        return DfpMath.exp(this).add(DfpMath.exp(negate())).divide(2);
    }

    @Override
    public Dfp exp() {
        return DfpMath.exp(this);
    }

    @Override
    public Dfp expm1() {
        return DfpMath.exp(this).subtract(getOne());
    }

    @Override
    public Dfp floor() {
        return trunc(DfpField.RoundingMode.ROUND_FLOOR);
    }

    @Override
    public DfpField getField() {
        return this.field;
    }

    @Override
    public Dfp hypot(Dfp dfp) {
        return multiply(this).add(dfp.multiply(dfp)).sqrt();
    }

    @Override
    public Dfp log() {
        return DfpMath.log(this);
    }

    @Override
    public Dfp log1p() {
        return DfpMath.log(add(getOne()));
    }

    @Override
    public Dfp negate() {
        Dfp newInstance = newInstance(this);
        newInstance.sign = (byte) (-newInstance.sign);
        return newInstance;
    }

    public Dfp newInstance(byte b10) {
        return new Dfp(getField(), b10);
    }

    @Override
    public Dfp reciprocal() {
        return this.field.getOne().divide(this);
    }

    @Override
    public Dfp rint() {
        return trunc(DfpField.RoundingMode.ROUND_HALF_EVEN);
    }

    @Override
    public Dfp rootN(int i10) {
        return this.sign >= 0 ? DfpMath.pow(this, getOne().divide(i10)) : DfpMath.pow(negate(), getOne().divide(i10)).negate();
    }

    @Override
    public Dfp scalb(int i10) {
        return multiply(DfpMath.pow(getTwo(), i10));
    }

    @Override
    public Dfp signum() {
        if (isNaN() || isZero()) {
            return this;
        }
        return newInstance(this.sign > 0 ? 1 : -1);
    }

    @Override
    public Dfp sin() {
        return DfpMath.sin(this);
    }

    @Override
    public Dfp sinh() {
        return DfpMath.exp(this).subtract(DfpMath.exp(negate())).divide(2);
    }

    @Override
    public Dfp sqrt() {
        byte b10 = this.nans;
        if (b10 == 0) {
            int[] iArr = this.mant;
            if (iArr[iArr.length - 1] == 0) {
                return newInstance(this);
            }
        }
        if (b10 != 0) {
            if (b10 == 1 && this.sign == 1) {
                return newInstance(this);
            }
            if (b10 == 3) {
                return newInstance(this);
            }
            if (b10 == 2) {
                this.field.setIEEEFlagsBits(1);
                return dotrap(1, SQRT_TRAP, null, newInstance(this));
            }
        }
        if (this.sign == -1) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(this);
            newInstance.nans = (byte) 3;
            return dotrap(1, SQRT_TRAP, null, newInstance);
        }
        Dfp newInstance2 = newInstance(this);
        int i10 = newInstance2.exp;
        if (i10 < -1 || i10 > 1) {
            newInstance2.exp = this.exp / 2;
        }
        int[] iArr2 = newInstance2.mant;
        int[] iArr3 = this.mant;
        int i11 = iArr2[iArr3.length - 1] / 2000;
        if (i11 == 0) {
            iArr2[iArr3.length - 1] = (iArr2[iArr3.length - 1] / 2) + 1;
        } else if (i11 == 2) {
            iArr2[iArr3.length - 1] = 1500;
        } else if (i11 != 3) {
            iArr2[iArr3.length - 1] = 3000;
        } else {
            iArr2[iArr3.length - 1] = 2200;
        }
        newInstance(newInstance2);
        Dfp zero = getZero();
        getZero();
        while (newInstance2.unequal(zero)) {
            Dfp newInstance3 = newInstance(newInstance2);
            newInstance3.sign = (byte) -1;
            Dfp divide = newInstance3.add(divide(newInstance2)).divide(2);
            Dfp add = newInstance2.add(divide);
            if (add.equals(zero) || divide.mant[this.mant.length - 1] == 0) {
                return add;
            }
            zero = newInstance2;
            newInstance2 = add;
        }
        return newInstance2;
    }

    @Override
    public Dfp tan() {
        return DfpMath.tan(this);
    }

    @Override
    public Dfp tanh() {
        Dfp exp = DfpMath.exp(this);
        Dfp exp2 = DfpMath.exp(negate());
        return exp.subtract(exp2).divide(exp.add(exp2));
    }

    @Override
    public Dfp add(Dfp dfp) {
        int align;
        int i10;
        int[] iArr;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, ADD_TRAP, dfp, newInstance);
        }
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b10 = this.nans;
            if (b10 == 1 && dfp.nans == 0) {
                return this;
            }
            byte b11 = dfp.nans;
            if (b11 == 1 && b10 == 0) {
                return dfp;
            }
            if (b11 == 1 && b10 == 1 && this.sign == dfp.sign) {
                return dfp;
            }
            if (b11 == 1 && b10 == 1 && this.sign != dfp.sign) {
                this.field.setIEEEFlagsBits(1);
                Dfp newInstance2 = newInstance(getZero());
                newInstance2.nans = (byte) 3;
                return dotrap(1, ADD_TRAP, dfp, newInstance2);
            }
        }
        Dfp newInstance3 = newInstance(this);
        Dfp newInstance4 = newInstance(dfp);
        Dfp newInstance5 = newInstance(getZero());
        byte b12 = newInstance3.sign;
        byte b13 = newInstance4.sign;
        newInstance3.sign = (byte) 1;
        newInstance4.sign = (byte) 1;
        byte b14 = compare(newInstance3, newInstance4) > 0 ? b12 : b13;
        int[] iArr2 = newInstance4.mant;
        int[] iArr3 = this.mant;
        if (iArr2[iArr3.length - 1] == 0) {
            newInstance4.exp = newInstance3.exp;
        }
        if (newInstance3.mant[iArr3.length - 1] == 0) {
            newInstance3.exp = newInstance4.exp;
        }
        int i11 = newInstance3.exp;
        int i12 = newInstance4.exp;
        if (i11 < i12) {
            i10 = newInstance3.align(i12);
            align = 0;
        } else {
            align = newInstance4.align(i11);
            i10 = 0;
        }
        if (b12 != b13) {
            if (b12 == b14) {
                align = newInstance4.complement(align);
            } else {
                i10 = newInstance3.complement(i10);
            }
        }
        int i13 = 0;
        for (int i14 = 0; i14 < this.mant.length; i14++) {
            int i15 = newInstance3.mant[i14] + newInstance4.mant[i14] + i13;
            i13 = i15 / 10000;
            newInstance5.mant[i14] = i15 - (i13 * 10000);
        }
        newInstance5.exp = newInstance3.exp;
        newInstance5.sign = b14;
        if (i13 != 0 && b12 == b13) {
            int i16 = newInstance5.mant[0];
            newInstance5.shiftRight();
            newInstance5.mant[this.mant.length - 1] = i13;
            int round = newInstance5.round(i16);
            if (round != 0) {
                newInstance5 = dotrap(round, ADD_TRAP, dfp, newInstance5);
            }
        }
        int i17 = 0;
        while (true) {
            iArr = this.mant;
            if (i17 >= iArr.length || newInstance5.mant[iArr.length - 1] != 0) {
                break;
            }
            newInstance5.shiftLeft();
            if (i17 == 0) {
                newInstance5.mant[0] = i10 + align;
                i10 = 0;
                align = 0;
            }
            i17++;
        }
        if (newInstance5.mant[iArr.length - 1] == 0) {
            newInstance5.exp = 0;
            if (b12 != b13) {
                newInstance5.sign = (byte) 1;
            }
        }
        int round2 = newInstance5.round(i10 + align);
        return round2 != 0 ? dotrap(round2, ADD_TRAP, dfp, newInstance5) : newInstance5;
    }

    @Override
    public Dfp copySign(Dfp dfp) {
        byte b10 = this.sign;
        return ((b10 < 0 || dfp.sign < 0) && (b10 >= 0 || dfp.sign >= 0)) ? negate() : this;
    }

    @Override
    public Dfp divide(Dfp dfp) {
        int[] iArr;
        int[] iArr2;
        int i10;
        int round;
        int i11;
        int[] iArr3;
        int i12 = 1;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, DIVIDE_TRAP, dfp, newInstance);
        }
        Dfp newInstance2 = newInstance(getZero());
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b10 = this.nans;
            if (b10 == 1 && dfp.nans == 0) {
                Dfp newInstance3 = newInstance(this);
                newInstance3.sign = (byte) (this.sign * dfp.sign);
                return newInstance3;
            }
            byte b11 = dfp.nans;
            if (b11 == 1 && b10 == 0) {
                Dfp newInstance4 = newInstance(getZero());
                newInstance4.sign = (byte) (this.sign * dfp.sign);
                return newInstance4;
            }
            if (b11 == 1 && b10 == 1) {
                this.field.setIEEEFlagsBits(1);
                Dfp newInstance5 = newInstance(getZero());
                newInstance5.nans = (byte) 3;
                return dotrap(1, DIVIDE_TRAP, dfp, newInstance5);
            }
        }
        int[] iArr4 = dfp.mant;
        int[] iArr5 = this.mant;
        int i13 = 2;
        if (iArr4[iArr5.length - 1] == 0) {
            this.field.setIEEEFlagsBits(2);
            Dfp newInstance6 = newInstance(getZero());
            newInstance6.sign = (byte) (this.sign * dfp.sign);
            newInstance6.nans = (byte) 1;
            return dotrap(2, DIVIDE_TRAP, dfp, newInstance6);
        }
        int[] iArr6 = new int[iArr5.length + 1];
        int[] iArr7 = new int[iArr5.length + 2];
        int[] iArr8 = new int[iArr5.length + 1];
        iArr6[iArr5.length] = 0;
        iArr7[iArr5.length] = 0;
        iArr7[iArr5.length + 1] = 0;
        iArr8[iArr5.length] = 0;
        int i14 = 0;
        while (true) {
            iArr = this.mant;
            if (i14 >= iArr.length) {
                break;
            }
            iArr6[i14] = iArr[i14];
            iArr7[i14] = 0;
            iArr8[i14] = 0;
            i14++;
        }
        int length = iArr.length + 1;
        int i15 = 0;
        int i16 = 0;
        while (length >= 0) {
            int[] iArr9 = this.mant;
            int i17 = (iArr6[iArr9.length] * 10000) + iArr6[iArr9.length - i12];
            int[] iArr10 = dfp.mant;
            int i18 = i17 / (iArr10[iArr9.length - i12] + i12);
            int i19 = (i17 + i12) / iArr10[iArr9.length - i12];
            boolean z10 = false;
            while (!z10) {
                i16 = (i18 + i19) / i13;
                int i20 = 0;
                int i21 = 0;
                while (true) {
                    int[] iArr11 = this.mant;
                    i11 = i18;
                    if (i20 >= iArr11.length + i12) {
                        break;
                    }
                    int i22 = ((i20 < iArr11.length ? dfp.mant[i20] : 0) * i16) + i21;
                    int i23 = i22 / 10000;
                    iArr8[i20] = i22 - (i23 * 10000);
                    i20++;
                    i21 = i23;
                    i18 = i11;
                    i12 = 1;
                }
                int i24 = 0;
                int i25 = 1;
                while (true) {
                    iArr3 = this.mant;
                    if (i24 >= iArr3.length + 1) {
                        break;
                    }
                    int i26 = (9999 - iArr8[i24]) + iArr6[i24] + i25;
                    i25 = i26 / 10000;
                    iArr8[i24] = i26 - (i25 * 10000);
                    i24++;
                }
                if (i25 == 0) {
                    i19 = i16 - 1;
                    i18 = i11;
                    i12 = 1;
                    i13 = 2;
                } else {
                    boolean z11 = z10;
                    int i27 = ((iArr8[iArr3.length] * 10000) + iArr8[iArr3.length - 1]) / (dfp.mant[iArr3.length - 1] + 1);
                    i13 = 2;
                    if (i27 >= 2) {
                        i18 = i16 + i27;
                        i12 = 1;
                        z10 = z11;
                    } else {
                        boolean z12 = false;
                        for (int length2 = iArr3.length - 1; length2 >= 0; length2--) {
                            int i28 = dfp.mant[length2];
                            int i29 = iArr8[length2];
                            if (i28 > i29) {
                                z12 = true;
                            }
                            if (i28 < i29) {
                                break;
                            }
                        }
                        z10 = iArr8[this.mant.length] != 0 ? false : z12;
                        i18 = !z10 ? i16 + 1 : i11;
                        i12 = 1;
                    }
                }
            }
            iArr7[length] = i16;
            if (i16 != 0 || i15 != 0) {
                i15++;
            }
            if ((this.field.getRoundingMode() == DfpField.RoundingMode.ROUND_DOWN && i15 == this.mant.length) || i15 > this.mant.length) {
                break;
            }
            iArr6[0] = 0;
            int i30 = 0;
            while (i30 < this.mant.length) {
                int i31 = i30 + 1;
                iArr6[i31] = iArr8[i30];
                i30 = i31;
            }
            length--;
            i12 = 1;
        }
        int[] iArr12 = this.mant;
        int length3 = iArr12.length;
        int length4 = iArr12.length + 1;
        while (true) {
            if (length4 < 0) {
                break;
            }
            if (iArr7[length4] != 0) {
                length3 = length4;
                break;
            }
            length4--;
        }
        int i32 = 0;
        while (true) {
            iArr2 = this.mant;
            if (i32 >= iArr2.length) {
                break;
            }
            newInstance2.mant[(iArr2.length - i32) - 1] = iArr7[length3 - i32];
            i32++;
        }
        newInstance2.exp = ((this.exp - dfp.exp) + length3) - iArr2.length;
        newInstance2.sign = (byte) (this.sign == dfp.sign ? 1 : -1);
        if (newInstance2.mant[iArr2.length - 1] == 0) {
            i10 = 0;
            newInstance2.exp = 0;
        } else {
            i10 = 0;
        }
        if (length3 > iArr2.length - 1) {
            round = newInstance2.round(iArr7[length3 - iArr2.length]);
        } else {
            round = newInstance2.round(i10);
        }
        return round != 0 ? dotrap(round, DIVIDE_TRAP, dfp, newInstance2) : newInstance2;
    }

    public Dfp newInstance(int i10) {
        return new Dfp(getField(), i10);
    }

    @Override
    public Dfp remainder(Dfp dfp) {
        Dfp subtract = subtract(divide(dfp).rint().multiply(dfp));
        if (subtract.mant[this.mant.length - 1] == 0) {
            subtract.sign = this.sign;
        }
        return subtract;
    }

    @Override
    public Dfp subtract(Dfp dfp) {
        return add(dfp.negate());
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0099, code lost:
    
        if (r6[r6.length - 1] != 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00a9, code lost:
    
        r11.field.setIEEEFlagsBits(1);
        r0 = newInstance(getZero());
        r0.nans = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00bc, code lost:
    
        return dotrap(1, org.apache.commons.math3.dfp.Dfp.MULTIPLY_TRAP, r12, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00a7, code lost:
    
        if (r12.mant[r11.mant.length - 1] == 0) goto L43;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Dfp multiply(Dfp dfp) {
        int[] iArr;
        int[] iArr2;
        int round;
        int[] iArr3;
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, MULTIPLY_TRAP, dfp, newInstance);
        }
        Dfp newInstance2 = newInstance(getZero());
        if (this.nans != 0 || dfp.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (dfp.isNaN()) {
                return dfp;
            }
            byte b10 = this.nans;
            if (b10 == 1 && dfp.nans == 0 && dfp.mant[this.mant.length - 1] != 0) {
                Dfp newInstance3 = newInstance(this);
                newInstance3.sign = (byte) (this.sign * dfp.sign);
                return newInstance3;
            }
            byte b11 = dfp.nans;
            if (b11 == 1 && b10 == 0) {
                int[] iArr4 = this.mant;
                if (iArr4[iArr4.length - 1] != 0) {
                    Dfp newInstance4 = newInstance(dfp);
                    newInstance4.sign = (byte) (this.sign * dfp.sign);
                    return newInstance4;
                }
            }
            if (b11 == 1 && b10 == 1) {
                Dfp newInstance5 = newInstance(this);
                newInstance5.sign = (byte) (this.sign * dfp.sign);
                return newInstance5;
            }
            if (b11 == 1 && b10 == 0) {
                int[] iArr5 = this.mant;
            }
            if (b10 == 1) {
                if (b11 == 0) {
                }
            }
        }
        int[] iArr6 = new int[this.mant.length * 2];
        int i10 = 0;
        while (true) {
            iArr = this.mant;
            if (i10 >= iArr.length) {
                break;
            }
            int i11 = 0;
            int i12 = 0;
            while (true) {
                iArr3 = this.mant;
                if (i11 < iArr3.length) {
                    int i13 = i10 + i11;
                    int i14 = (iArr3[i10] * dfp.mant[i11]) + iArr6[i13] + i12;
                    i12 = i14 / 10000;
                    iArr6[i13] = i14 - (i12 * 10000);
                    i11++;
                }
            }
            iArr6[iArr3.length + i10] = i12;
            i10++;
        }
        int length = (iArr.length * 2) - 1;
        int length2 = (iArr.length * 2) - 1;
        while (true) {
            if (length2 < 0) {
                break;
            }
            if (iArr6[length2] != 0) {
                length = length2;
                break;
            }
            length2--;
        }
        int i15 = 0;
        while (true) {
            iArr2 = this.mant;
            if (i15 >= iArr2.length) {
                break;
            }
            newInstance2.mant[(iArr2.length - i15) - 1] = iArr6[length - i15];
            i15++;
        }
        newInstance2.exp = (((this.exp + dfp.exp) + length) - (iArr2.length * 2)) + 1;
        newInstance2.sign = (byte) (this.sign == dfp.sign ? 1 : -1);
        if (newInstance2.mant[iArr2.length - 1] == 0) {
            newInstance2.exp = 0;
        }
        if (length > iArr2.length - 1) {
            round = newInstance2.round(iArr6[length - iArr2.length]);
        } else {
            round = newInstance2.round(0);
        }
        return round != 0 ? dotrap(round, MULTIPLY_TRAP, dfp, newInstance2) : newInstance2;
    }

    public Dfp newInstance(long j10) {
        return new Dfp(getField(), j10);
    }

    @Override
    public Dfp pow(double d10) {
        return DfpMath.pow(this, newInstance(d10));
    }

    @Override
    public Dfp subtract(double d10) {
        return subtract(newInstance(d10));
    }

    @Override
    public Dfp copySign(double d10) {
        long doubleToLongBits = Double.doubleToLongBits(d10);
        byte b10 = this.sign;
        return ((b10 < 0 || doubleToLongBits < 0) && (b10 >= 0 || doubleToLongBits >= 0)) ? negate() : this;
    }

    public Dfp newInstance(double d10) {
        return new Dfp(getField(), d10);
    }

    @Override
    public Dfp pow(int i10) {
        return DfpMath.pow(this, i10);
    }

    public Dfp newInstance(Dfp dfp) {
        if (this.field.getRadixDigits() != dfp.field.getRadixDigits()) {
            this.field.setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, NEW_INSTANCE_TRAP, dfp, newInstance);
        }
        return new Dfp(dfp);
    }

    @Override
    public Dfp pow(Dfp dfp) {
        return DfpMath.pow(this, dfp);
    }

    @Override
    public Dfp remainder(double d10) {
        return remainder(newInstance(d10));
    }

    public Dfp(DfpField dfpField, byte b10) {
        this(dfpField, b10);
    }

    public Dfp(DfpField dfpField, int i10) {
        this(dfpField, i10);
    }

    public Dfp(DfpField dfpField, long j10) {
        boolean z10;
        this.mant = new int[dfpField.getRadixDigits()];
        int i10 = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        if (j10 == Long.MIN_VALUE) {
            j10++;
            z10 = true;
        } else {
            z10 = false;
        }
        if (j10 < 0) {
            this.sign = (byte) -1;
            j10 = -j10;
        } else {
            this.sign = (byte) 1;
        }
        this.exp = 0;
        while (j10 != 0) {
            int[] iArr = this.mant;
            int length = iArr.length;
            int i11 = this.exp;
            System.arraycopy(iArr, length - i11, iArr, (iArr.length - 1) - i11, i11);
            int[] iArr2 = this.mant;
            iArr2[iArr2.length - 1] = (int) (j10 % FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
            j10 /= FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER;
            this.exp++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int[] iArr3 = this.mant;
            if (i10 >= iArr3.length - 1) {
                return;
            }
            int i12 = iArr3[i10];
            if (i12 != 0) {
                iArr3[i10] = i12 + 1;
                return;
            }
            i10++;
        }
    }

    @Override
    public Dfp linearCombination(Dfp[] dfpArr, Dfp[] dfpArr2) throws DimensionMismatchException {
        if (dfpArr.length == dfpArr2.length) {
            Dfp zero = getZero();
            for (int i10 = 0; i10 < dfpArr.length; i10++) {
                zero = zero.add(dfpArr[i10].multiply(dfpArr2[i10]));
            }
            return zero;
        }
        throw new DimensionMismatchException(dfpArr.length, dfpArr2.length);
    }

    public Dfp newInstance(String str) {
        return new Dfp(this.field, str);
    }

    public Dfp newInstance(byte b10, byte b11) {
        return this.field.newDfp(b10, b11);
    }

    @Override
    public Dfp linearCombination(double[] dArr, Dfp[] dfpArr) throws DimensionMismatchException {
        if (dArr.length == dfpArr.length) {
            Dfp zero = getZero();
            for (int i10 = 0; i10 < dArr.length; i10++) {
                zero = zero.add(dfpArr[i10].multiply(dArr[i10]));
            }
            return zero;
        }
        throw new DimensionMismatchException(dArr.length, dfpArr.length);
    }

    @Override
    public long round() {
        return FastMath.round(toDouble());
    }

    @Override
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4));
    }

    @Override
    public Dfp linearCombination(double d10, Dfp dfp, double d11, Dfp dfp2) {
        return dfp.multiply(d10).add(dfp2.multiply(d11));
    }

    @Override
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4, Dfp dfp5, Dfp dfp6) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4)).add(dfp5.multiply(dfp6));
    }

    @Override
    public Dfp linearCombination(double d10, Dfp dfp, double d11, Dfp dfp2, double d12, Dfp dfp3) {
        return dfp.multiply(d10).add(dfp2.multiply(d11)).add(dfp3.multiply(d12));
    }

    public Dfp(DfpField dfpField, double d10) {
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        long doubleToLongBits = Double.doubleToLongBits(d10);
        long j10 = doubleToLongBits & d.f5375a;
        int i10 = (int) ((d.f5376b & doubleToLongBits) >> 52);
        int i11 = i10 - 1023;
        if (i11 == -1023) {
            if (d10 == 0.0d) {
                if ((doubleToLongBits & Long.MIN_VALUE) != 0) {
                    this.sign = (byte) -1;
                    return;
                }
                return;
            } else {
                i11 = i10 + Double.MIN_EXPONENT;
                while ((j10 & 4503599627370496L) == 0) {
                    i11--;
                    j10 <<= 1;
                }
                j10 &= d.f5375a;
            }
        }
        if (i11 != 1024) {
            Dfp multiply = new Dfp(dfpField, j10).divide(new Dfp(dfpField, 4503599627370496L)).add(dfpField.getOne()).multiply(DfpMath.pow(dfpField.getTwo(), i11));
            multiply = (doubleToLongBits & Long.MIN_VALUE) != 0 ? multiply.negate() : multiply;
            int[] iArr = multiply.mant;
            int[] iArr2 = this.mant;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            this.sign = multiply.sign;
            this.exp = multiply.exp;
            this.nans = multiply.nans;
            return;
        }
        if (d10 != d10) {
            this.sign = (byte) 1;
            this.nans = (byte) 3;
        } else if (d10 < 0.0d) {
            this.sign = (byte) -1;
            this.nans = (byte) 1;
        } else {
            this.sign = (byte) 1;
            this.nans = (byte) 1;
        }
    }

    @Override
    public Dfp linearCombination(Dfp dfp, Dfp dfp2, Dfp dfp3, Dfp dfp4, Dfp dfp5, Dfp dfp6, Dfp dfp7, Dfp dfp8) {
        return dfp.multiply(dfp2).add(dfp3.multiply(dfp4)).add(dfp5.multiply(dfp6)).add(dfp7.multiply(dfp8));
    }

    @Override
    public Dfp linearCombination(double d10, Dfp dfp, double d11, Dfp dfp2, double d12, Dfp dfp3, double d13, Dfp dfp4) {
        return dfp.multiply(d10).add(dfp2.multiply(d11)).add(dfp3.multiply(d12)).add(dfp4.multiply(d13));
    }

    public Dfp(Dfp dfp) {
        this.mant = (int[]) dfp.mant.clone();
        this.sign = dfp.sign;
        this.exp = dfp.exp;
        this.nans = dfp.nans;
        this.field = dfp.field;
    }

    @Override
    public Dfp multiply(int i10) {
        if (i10 >= 0 && i10 < 10000) {
            return multiplyFast(i10);
        }
        return multiply(newInstance(i10));
    }

    @Override
    public Dfp multiply(double d10) {
        return multiply(newInstance(d10));
    }

    public Dfp(DfpField dfpField, String str) {
        int i10;
        int i11;
        int[] iArr;
        String str2 = str;
        this.mant = new int[dfpField.getRadixDigits()];
        int i12 = 1;
        this.sign = (byte) 1;
        this.exp = 0;
        this.nans = (byte) 0;
        this.field = dfpField;
        int radixDigits = (getRadixDigits() * 4) + 8;
        char[] cArr = new char[radixDigits];
        if (str2.equals("Infinity")) {
            this.sign = (byte) 1;
            this.nans = (byte) 1;
            return;
        }
        if (str2.equals(NEG_INFINITY_STRING)) {
            this.sign = (byte) -1;
            this.nans = (byte) 1;
            return;
        }
        if (str2.equals(NAN_STRING)) {
            this.sign = (byte) 1;
            this.nans = (byte) 3;
            return;
        }
        int indexOf = str2.indexOf(a.f72598f);
        indexOf = indexOf == -1 ? str2.indexOf("E") : indexOf;
        if (indexOf != -1) {
            String substring = str2.substring(0, indexOf);
            String substring2 = str2.substring(indexOf + 1);
            boolean z10 = false;
            i10 = 0;
            for (int i13 = 0; i13 < substring2.length(); i13++) {
                if (substring2.charAt(i13) == '-') {
                    z10 = true;
                } else if (substring2.charAt(i13) >= '0' && substring2.charAt(i13) <= '9') {
                    i10 = ((i10 * 10) + substring2.charAt(i13)) - 48;
                }
            }
            i10 = z10 ? -i10 : i10;
            str2 = substring;
        } else {
            i10 = 0;
        }
        if (str2.indexOf("-") != -1) {
            this.sign = (byte) -1;
        }
        int i14 = 0;
        boolean z11 = false;
        int i15 = 0;
        do {
            if (str2.charAt(i14) >= '1' && str2.charAt(i14) <= '9') {
                break;
            }
            if (z11 && str2.charAt(i14) == '0') {
                i15--;
            }
            z11 = str2.charAt(i14) == '.' ? true : z11;
            i14++;
        } while (i14 != str2.length());
        cArr[0] = '0';
        cArr[1] = '0';
        cArr[2] = '0';
        cArr[3] = '0';
        int i16 = i15;
        int i17 = 4;
        int i18 = 0;
        while (true) {
            if (i14 == str2.length()) {
                i11 = 4;
                break;
            }
            i11 = 4;
            if (i17 == (this.mant.length * 4) + 5) {
                break;
            }
            if (str2.charAt(i14) == '.') {
                i14++;
                i16 = i18;
                i12 = 1;
                z11 = true;
            } else {
                if (str2.charAt(i14) < '0' || str2.charAt(i14) > '9') {
                    i14++;
                } else {
                    cArr[i17] = str2.charAt(i14);
                    i17++;
                    i14++;
                    i18++;
                }
                i12 = 1;
            }
        }
        if (z11 && i17 != i11) {
            while (true) {
                i17--;
                if (i17 == i11 || cArr[i17] != '0') {
                    break;
                }
                i18--;
                i11 = 4;
            }
        }
        if (z11 && i18 == 0) {
            i16 = 0;
        }
        i16 = z11 ? i16 : i17 - 4;
        int i19 = i18 + 3;
        for (int i20 = 4; i19 > i20 && cArr[i19] == '0'; i20 = 4) {
            i19--;
        }
        int i21 = 4;
        int i22 = ((400 - i16) - (i10 % 4)) % 4;
        int i23 = 4 - i22;
        int i24 = i16 + i22;
        while (true) {
            int i25 = i19 - i23;
            iArr = this.mant;
            if (i25 >= iArr.length * i21) {
                break;
            }
            int i26 = 0;
            while (i26 < i21) {
                i19++;
                cArr[i19] = '0';
                i26++;
                i21 = 4;
            }
        }
        for (int length = iArr.length - i12; length >= 0; length--) {
            this.mant[length] = ((cArr[i23] - '0') * 1000) + ((cArr[i23 + 1] - '0') * 100) + ((cArr[i23 + 2] - '0') * 10) + (cArr[i23 + 3] - '0');
            i23 += 4;
        }
        this.exp = (i24 + i10) / 4;
        if (i23 < radixDigits) {
            round((cArr[i23] - '0') * 1000);
        }
    }

    @Override
    public Dfp add(double d10) {
        return add(newInstance(d10));
    }

    public Dfp divide(int i10) {
        if (this.nans != 0) {
            if (isNaN()) {
                return this;
            }
            if (this.nans == 1) {
                return newInstance(this);
            }
        }
        if (i10 == 0) {
            this.field.setIEEEFlagsBits(2);
            Dfp newInstance = newInstance(getZero());
            newInstance.sign = this.sign;
            newInstance.nans = (byte) 1;
            return dotrap(2, DIVIDE_TRAP, getZero(), newInstance);
        }
        if (i10 >= 0 && i10 < 10000) {
            Dfp newInstance2 = newInstance(this);
            int i11 = 0;
            for (int length = this.mant.length - 1; length >= 0; length--) {
                int[] iArr = newInstance2.mant;
                int i12 = (i11 * 10000) + iArr[length];
                int i13 = i12 / i10;
                i11 = i12 - (i13 * i10);
                iArr[length] = i13;
            }
            if (newInstance2.mant[this.mant.length - 1] == 0) {
                newInstance2.shiftLeft();
                int i14 = i11 * 10000;
                int i15 = i14 / i10;
                i11 = i14 - (i15 * i10);
                newInstance2.mant[0] = i15;
            }
            int round = newInstance2.round((i11 * 10000) / i10);
            return round != 0 ? dotrap(round, DIVIDE_TRAP, newInstance2, newInstance2) : newInstance2;
        }
        this.field.setIEEEFlagsBits(1);
        Dfp newInstance3 = newInstance(getZero());
        newInstance3.nans = (byte) 3;
        return dotrap(1, DIVIDE_TRAP, newInstance3, newInstance3);
    }

    public Dfp(DfpField dfpField, byte b10, byte b11) {
        this.field = dfpField;
        this.mant = new int[dfpField.getRadixDigits()];
        this.sign = b10;
        this.exp = 0;
        this.nans = b11;
    }

    @Override
    public Dfp divide(double d10) {
        return divide(newInstance(d10));
    }
}
