package org.apache.commons.math3.dfp;

import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;

public class DfpField implements Field<Dfp> {
    public static final int FLAG_DIV_ZERO = 2;
    public static final int FLAG_INEXACT = 16;
    public static final int FLAG_INVALID = 1;
    public static final int FLAG_OVERFLOW = 4;
    public static final int FLAG_UNDERFLOW = 8;
    private static String eString;
    private static String ln10String;
    private static String ln2String;
    private static String ln5String;
    private static String piString;
    private static String sqr2ReciprocalString;
    private static String sqr2String;
    private static String sqr3ReciprocalString;
    private static String sqr3String;

    private final Dfp f100148e;
    private final Dfp[] eSplit;
    private int ieeeFlags;
    private final Dfp ln10;
    private final Dfp ln2;
    private final Dfp[] ln2Split;
    private final Dfp ln5;
    private final Dfp[] ln5Split;
    private final Dfp one;

    private final Dfp f100149pi;
    private final Dfp[] piSplit;
    private RoundingMode rMode;
    private final int radixDigits;
    private final Dfp sqr2;
    private final Dfp sqr2Reciprocal;
    private final Dfp[] sqr2Split;
    private final Dfp sqr3;
    private final Dfp sqr3Reciprocal;
    private final Dfp two;
    private final Dfp zero;

    public enum RoundingMode {
        ROUND_DOWN,
        ROUND_UP,
        ROUND_HALF_UP,
        ROUND_HALF_DOWN,
        ROUND_HALF_EVEN,
        ROUND_HALF_ODD,
        ROUND_CEIL,
        ROUND_FLOOR
    }

    public DfpField(int i10) {
        this(i10, true);
    }

    public static Dfp computeExp(Dfp dfp, Dfp dfp2) {
        Dfp dfp3 = new Dfp(dfp2);
        Dfp dfp4 = new Dfp(dfp2);
        Dfp dfp5 = new Dfp(dfp2);
        Dfp dfp6 = new Dfp(dfp2);
        Dfp dfp7 = new Dfp(dfp2);
        for (int i10 = 0; i10 < 10000; i10++) {
            dfp7 = dfp7.multiply(dfp);
            dfp3 = dfp3.add(dfp7.divide(dfp5));
            dfp6 = dfp6.add(dfp2);
            dfp5 = dfp5.multiply(dfp6);
            if (dfp3.equals(dfp4)) {
                break;
            }
            dfp4 = new Dfp(dfp3);
        }
        return dfp3;
    }

    public static Dfp computeLn(Dfp dfp, Dfp dfp2, Dfp dfp3) {
        Dfp divide = dfp.add(new Dfp(dfp.getField(), -1)).divide(dfp.add(dfp2));
        Dfp dfp4 = new Dfp(divide);
        Dfp dfp5 = new Dfp(divide);
        Dfp dfp6 = new Dfp(dfp4);
        int i10 = 1;
        for (int i11 = 0; i11 < 10000; i11++) {
            dfp5 = dfp5.multiply(divide).multiply(divide);
            i10 += 2;
            dfp4 = dfp4.add(dfp5.divide(i10));
            if (dfp4.equals(dfp6)) {
                break;
            }
            dfp6 = new Dfp(dfp4);
        }
        return dfp4.multiply(dfp3);
    }

    private static Dfp computePi(Dfp dfp, Dfp dfp2, Dfp dfp3) {
        Dfp sqrt = dfp2.sqrt();
        Dfp subtract = sqrt.subtract(dfp);
        Dfp add = dfp2.add(dfp2);
        Dfp multiply = dfp2.multiply(dfp3.subtract(dfp2.multiply(sqrt)));
        int i10 = 1;
        while (i10 < 20) {
            Dfp multiply2 = subtract.multiply(subtract);
            Dfp sqrt2 = dfp.subtract(multiply2.multiply(multiply2)).sqrt().sqrt();
            Dfp divide = dfp.subtract(sqrt2).divide(dfp.add(sqrt2));
            dfp2 = dfp2.multiply(add);
            Dfp add2 = dfp.add(divide);
            Dfp multiply3 = add2.multiply(add2);
            multiply = multiply.multiply(multiply3.multiply(multiply3)).subtract(dfp2.multiply(divide).multiply(dfp.add(divide).add(divide.multiply(divide))));
            if (divide.equals(subtract)) {
                break;
            }
            i10++;
            subtract = divide;
        }
        return dfp.divide(multiply);
    }

    private static void computeStringConstants(int i10) {
        String str = sqr2String;
        if (str == null || str.length() < i10 - 3) {
            DfpField dfpField = new DfpField(i10, false);
            Dfp dfp = new Dfp(dfpField, 1);
            Dfp dfp2 = new Dfp(dfpField, 2);
            Dfp dfp3 = new Dfp(dfpField, 3);
            Dfp sqrt = dfp2.sqrt();
            sqr2String = sqrt.toString();
            sqr2ReciprocalString = dfp.divide(sqrt).toString();
            Dfp sqrt2 = dfp3.sqrt();
            sqr3String = sqrt2.toString();
            sqr3ReciprocalString = dfp.divide(sqrt2).toString();
            piString = computePi(dfp, dfp2, dfp3).toString();
            eString = computeExp(dfp, dfp).toString();
            ln2String = computeLn(dfp2, dfp, dfp2).toString();
            ln5String = computeLn(new Dfp(dfpField, 5), dfp, dfp2).toString();
            ln10String = computeLn(new Dfp(dfpField, 10), dfp, dfp2).toString();
        }
    }

    private Dfp[] split(String str) {
        int length = str.length();
        char[] cArr = new char[length];
        boolean z10 = true;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = 0;
                break;
            }
            char charAt = str.charAt(i10);
            cArr[i10] = charAt;
            if (charAt >= '1' && charAt <= '9') {
                z10 = false;
            }
            if (charAt == '.') {
                i11 += (400 - i11) % 4;
                z10 = false;
            }
            if (i11 == (this.radixDigits / 2) * 4) {
                break;
            }
            if (charAt >= '0' && charAt <= '9' && !z10) {
                i11++;
            }
            i10++;
        }
        Dfp dfp = new Dfp(this, new String(cArr, 0, i10));
        for (int i12 = 0; i12 < length; i12++) {
            char charAt2 = str.charAt(i12);
            cArr[i12] = charAt2;
            if (charAt2 >= '0' && charAt2 <= '9' && i12 < i10) {
                cArr[i12] = '0';
            }
        }
        return new Dfp[]{dfp, new Dfp(this, new String(cArr))};
    }

    public void clearIEEEFlags() {
        this.ieeeFlags = 0;
    }

    public Dfp getE() {
        return this.f100148e;
    }

    public Dfp[] getESplit() {
        return (Dfp[]) this.eSplit.clone();
    }

    public int getIEEEFlags() {
        return this.ieeeFlags;
    }

    public Dfp getLn10() {
        return this.ln10;
    }

    public Dfp getLn2() {
        return this.ln2;
    }

    public Dfp[] getLn2Split() {
        return (Dfp[]) this.ln2Split.clone();
    }

    public Dfp getLn5() {
        return this.ln5;
    }

    public Dfp[] getLn5Split() {
        return (Dfp[]) this.ln5Split.clone();
    }

    public Dfp getPi() {
        return this.f100149pi;
    }

    public Dfp[] getPiSplit() {
        return (Dfp[]) this.piSplit.clone();
    }

    public int getRadixDigits() {
        return this.radixDigits;
    }

    public RoundingMode getRoundingMode() {
        return this.rMode;
    }

    @Override
    public Class<? extends FieldElement<Dfp>> getRuntimeClass() {
        return Dfp.class;
    }

    public Dfp getSqr2() {
        return this.sqr2;
    }

    public Dfp getSqr2Reciprocal() {
        return this.sqr2Reciprocal;
    }

    public Dfp[] getSqr2Split() {
        return (Dfp[]) this.sqr2Split.clone();
    }

    public Dfp getSqr3() {
        return this.sqr3;
    }

    public Dfp getSqr3Reciprocal() {
        return this.sqr3Reciprocal;
    }

    public Dfp getTwo() {
        return this.two;
    }

    public Dfp newDfp() {
        return new Dfp(this);
    }

    public void setIEEEFlags(int i10) {
        this.ieeeFlags = i10 & 31;
    }

    public void setIEEEFlagsBits(int i10) {
        this.ieeeFlags = (i10 & 31) | this.ieeeFlags;
    }

    public void setRoundingMode(RoundingMode roundingMode) {
        this.rMode = roundingMode;
    }

    private DfpField(int i10, boolean z10) {
        this.radixDigits = i10 >= 13 ? (i10 + 3) / 4 : 4;
        this.rMode = RoundingMode.ROUND_HALF_EVEN;
        this.ieeeFlags = 0;
        this.zero = new Dfp(this, 0);
        this.one = new Dfp(this, 1);
        this.two = new Dfp(this, 2);
        if (z10) {
            synchronized (DfpField.class) {
                computeStringConstants(i10 < 67 ? 200 : i10 * 3);
                this.sqr2 = new Dfp(this, sqr2String);
                this.sqr2Split = split(sqr2String);
                this.sqr2Reciprocal = new Dfp(this, sqr2ReciprocalString);
                this.sqr3 = new Dfp(this, sqr3String);
                this.sqr3Reciprocal = new Dfp(this, sqr3ReciprocalString);
                this.f100149pi = new Dfp(this, piString);
                this.piSplit = split(piString);
                this.f100148e = new Dfp(this, eString);
                this.eSplit = split(eString);
                this.ln2 = new Dfp(this, ln2String);
                this.ln2Split = split(ln2String);
                this.ln5 = new Dfp(this, ln5String);
                this.ln5Split = split(ln5String);
                this.ln10 = new Dfp(this, ln10String);
            }
            return;
        }
        this.sqr2 = null;
        this.sqr2Split = null;
        this.sqr2Reciprocal = null;
        this.sqr3 = null;
        this.sqr3Reciprocal = null;
        this.f100149pi = null;
        this.piSplit = null;
        this.f100148e = null;
        this.eSplit = null;
        this.ln2 = null;
        this.ln2Split = null;
        this.ln5 = null;
        this.ln5Split = null;
        this.ln10 = null;
    }

    @Override
    public Dfp getOne() {
        return this.one;
    }

    @Override
    public Dfp getZero() {
        return this.zero;
    }

    public Dfp newDfp(byte b10) {
        return new Dfp(this, b10);
    }

    public Dfp newDfp(int i10) {
        return new Dfp(this, i10);
    }

    public Dfp newDfp(long j10) {
        return new Dfp(this, j10);
    }

    public Dfp newDfp(double d10) {
        return new Dfp(this, d10);
    }

    public Dfp newDfp(Dfp dfp) {
        return new Dfp(dfp);
    }

    public Dfp newDfp(String str) {
        return new Dfp(this, str);
    }

    public Dfp newDfp(byte b10, byte b11) {
        return new Dfp(this, b10, b11);
    }
}
