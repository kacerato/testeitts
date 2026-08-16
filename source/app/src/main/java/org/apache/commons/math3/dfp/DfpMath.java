package org.apache.commons.math3.dfp;

import Dd.c;

public class DfpMath {
    private static final String POW_TRAP = "pow";

    private DfpMath() {
    }

    public static Dfp acos(Dfp dfp) {
        boolean lessThan = dfp.lessThan(dfp.getZero());
        Dfp copysign = Dfp.copysign(dfp, dfp.getOne());
        Dfp atan = atan(copysign.getOne().subtract(copysign.multiply(copysign)).sqrt().divide(copysign));
        if (lessThan) {
            atan = copysign.getField().getPi().subtract(atan);
        }
        return copysign.newInstance(atan);
    }

    public static Dfp asin(Dfp dfp) {
        return atan(dfp.divide(dfp.getOne().subtract(dfp.multiply(dfp)).sqrt()));
    }

    public static Dfp atan(Dfp dfp) {
        boolean z10;
        boolean z11;
        boolean z12;
        Dfp zero = dfp.getField().getZero();
        Dfp one = dfp.getField().getOne();
        Dfp[] sqr2Split = dfp.getField().getSqr2Split();
        Dfp[] piSplit = dfp.getField().getPiSplit();
        Dfp add = sqr2Split[0].subtract(one).add(sqr2Split[1]);
        Dfp dfp2 = new Dfp(dfp);
        if (dfp2.lessThan(zero)) {
            dfp2 = dfp2.negate();
            z10 = true;
        } else {
            z10 = false;
        }
        if (dfp2.greaterThan(one)) {
            dfp2 = one.divide(dfp2);
            z11 = true;
        } else {
            z11 = false;
        }
        if (dfp2.greaterThan(add)) {
            Dfp[] dfpArr = {sqr2Split[0].subtract(one), sqr2Split[1]};
            Dfp[] split = split(dfp2);
            Dfp[] splitMult = splitMult(split, dfpArr);
            splitMult[0] = splitMult[0].add(one);
            split[0] = split[0].subtract(dfpArr[0]);
            split[1] = split[1].subtract(dfpArr[1]);
            Dfp[] splitDiv = splitDiv(split, splitMult);
            dfp2 = splitDiv[0].add(splitDiv[1]);
            z12 = true;
        } else {
            z12 = false;
        }
        Dfp atanInternal = atanInternal(dfp2);
        if (z12) {
            atanInternal = atanInternal.add(piSplit[0].divide(8)).add(piSplit[1].divide(8));
        }
        if (z11) {
            atanInternal = piSplit[0].divide(2).subtract(atanInternal).add(piSplit[1].divide(2));
        }
        if (z10) {
            atanInternal = atanInternal.negate();
        }
        return dfp.newInstance(atanInternal);
    }

    public static Dfp atanInternal(Dfp dfp) {
        Dfp dfp2 = new Dfp(dfp);
        Dfp dfp3 = new Dfp(dfp2);
        Dfp dfp4 = new Dfp(dfp2);
        for (int i10 = 3; i10 < 90; i10 += 2) {
            dfp3 = dfp3.multiply(dfp).multiply(dfp).negate();
            dfp2 = dfp2.add(dfp3.divide(i10));
            if (dfp2.equals(dfp4)) {
                break;
            }
            dfp4 = new Dfp(dfp2);
        }
        return dfp2;
    }

    public static Dfp cos(Dfp dfp) {
        boolean z10;
        Dfp sinInternal;
        Dfp pi2 = dfp.getField().getPi();
        Dfp zero = dfp.getField().getZero();
        Dfp remainder = dfp.remainder(pi2.multiply(2));
        if (remainder.lessThan(zero)) {
            remainder = remainder.negate();
        }
        if (remainder.greaterThan(pi2.divide(2))) {
            remainder = pi2.subtract(remainder);
            z10 = true;
        } else {
            z10 = false;
        }
        if (remainder.lessThan(pi2.divide(4))) {
            sinInternal = cosInternal(new Dfp[]{remainder, zero});
        } else {
            Dfp[] piSplit = dfp.getField().getPiSplit();
            sinInternal = sinInternal(new Dfp[]{piSplit[0].divide(2).subtract(remainder), piSplit[1].divide(2)});
        }
        if (z10) {
            sinInternal = sinInternal.negate();
        }
        return dfp.newInstance(sinInternal);
    }

    public static Dfp cosInternal(Dfp[] dfpArr) {
        Dfp one = dfpArr[0].getOne();
        Dfp add = dfpArr[0].add(dfpArr[1]);
        Dfp multiply = add.multiply(add);
        Dfp dfp = new Dfp(one);
        Dfp dfp2 = one;
        Dfp dfp3 = dfp2;
        for (int i10 = 2; i10 < 90; i10 += 2) {
            one = one.multiply(multiply).negate();
            dfp3 = dfp3.divide((i10 - 1) * i10);
            dfp2 = dfp2.add(one.multiply(dfp3));
            if (dfp2.equals(dfp)) {
                break;
            }
            dfp = new Dfp(dfp2);
        }
        return dfp2;
    }

    public static Dfp exp(Dfp dfp) {
        Dfp rint = dfp.rint();
        Dfp subtract = dfp.subtract(rint);
        int intValue = rint.intValue();
        return intValue > 2147483646 ? dfp.newInstance((byte) 1, (byte) 1) : intValue < -2147483646 ? dfp.newInstance() : splitPow(dfp.getField().getESplit(), intValue).multiply(expInternal(subtract));
    }

    public static Dfp expInternal(Dfp dfp) {
        Dfp one = dfp.getOne();
        Dfp one2 = dfp.getOne();
        Dfp one3 = dfp.getOne();
        Dfp dfp2 = new Dfp(one);
        for (int i10 = 1; i10 < 90; i10++) {
            one2 = one2.multiply(dfp);
            one3 = one3.divide(i10);
            one = one.add(one2.multiply(one3));
            if (one.equals(dfp2)) {
                break;
            }
            dfp2 = new Dfp(one);
        }
        return one;
    }

    public static Dfp log(Dfp dfp) {
        if (dfp.equals(dfp.getZero()) || dfp.lessThan(dfp.getZero()) || dfp.isNaN()) {
            dfp.getField().setIEEEFlagsBits(1);
            return dfp.dotrap(1, "ln", dfp, dfp.newInstance((byte) 1, (byte) 3));
        }
        if (dfp.classify() == 1) {
            return dfp;
        }
        Dfp dfp2 = new Dfp(dfp);
        int log10K = dfp2.log10K();
        Dfp divide = dfp2.divide(pow(dfp.newInstance(10000), log10K));
        int intValue = divide.floor().intValue();
        int i10 = 0;
        while (intValue > 2) {
            intValue >>= 1;
            i10++;
        }
        Dfp[] split = split(divide);
        Dfp[] dfpArr = new Dfp[2];
        Dfp pow = pow(dfp.getTwo(), i10);
        dfpArr[0] = pow;
        split[0] = split[0].divide(pow);
        split[1] = split[1].divide(dfpArr[0]);
        dfpArr[0] = dfp.newInstance("1.33333");
        while (split[0].add(split[1]).greaterThan(dfpArr[0])) {
            split[0] = split[0].divide(2);
            split[1] = split[1].divide(2);
            i10++;
        }
        Dfp[] logInternal = logInternal(split);
        StringBuilder sb2 = new StringBuilder();
        int i11 = log10K * 4;
        sb2.append(i10 + i11);
        split[0] = dfp.newInstance(sb2.toString());
        split[1] = dfp.getZero();
        Dfp[] splitMult = splitMult(dfp.getField().getLn2Split(), split);
        logInternal[0] = logInternal[0].add(splitMult[0]);
        logInternal[1] = logInternal[1].add(splitMult[1]);
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i11);
        split[0] = dfp.newInstance(sb3.toString());
        split[1] = dfp.getZero();
        Dfp[] splitMult2 = splitMult(dfp.getField().getLn5Split(), split);
        logInternal[0] = logInternal[0].add(splitMult2[0]);
        Dfp add = logInternal[1].add(splitMult2[1]);
        logInternal[1] = add;
        return dfp.newInstance(logInternal[0].add(add));
    }

    public static Dfp[] logInternal(Dfp[] dfpArr) {
        int i10 = 1;
        Dfp add = dfpArr[0].divide(4).add(dfpArr[1].divide(4));
        Dfp divide = add.add(dfpArr[0].newInstance("-0.25")).divide(add.add(dfpArr[0].newInstance(c.f5124p)));
        Dfp dfp = new Dfp(divide);
        Dfp dfp2 = new Dfp(divide);
        Dfp dfp3 = new Dfp(dfp);
        for (int i11 = 0; i11 < 10000; i11++) {
            dfp2 = dfp2.multiply(divide).multiply(divide);
            i10 += 2;
            dfp = dfp.add(dfp2.divide(i10));
            if (dfp.equals(dfp3)) {
                break;
            }
            dfp3 = new Dfp(dfp);
        }
        return split(dfp.multiply(dfpArr[0].getTwo()));
    }

    public static Dfp pow(Dfp dfp, int i10) {
        boolean z10;
        Dfp dfp2;
        Dfp one = dfp.getOne();
        if (i10 == 0) {
            return one;
        }
        if (i10 < 0) {
            i10 = -i10;
            z10 = true;
        } else {
            z10 = false;
        }
        do {
            Dfp dfp3 = new Dfp(dfp);
            int i11 = 1;
            while (true) {
                dfp2 = new Dfp(dfp3);
                dfp3 = dfp3.multiply(dfp3);
                int i12 = i11 * 2;
                if (i10 <= i12) {
                    break;
                }
                i11 = i12;
            }
            i10 -= i11;
            one = one.multiply(dfp2);
        } while (i10 >= 1);
        if (z10) {
            one = dfp.getOne().divide(one);
        }
        return dfp.newInstance(one);
    }

    public static Dfp sin(Dfp dfp) {
        boolean z10;
        Dfp cosInternal;
        Dfp pi2 = dfp.getField().getPi();
        Dfp zero = dfp.getField().getZero();
        Dfp remainder = dfp.remainder(pi2.multiply(2));
        if (remainder.lessThan(zero)) {
            remainder = remainder.negate();
            z10 = true;
        } else {
            z10 = false;
        }
        if (remainder.greaterThan(pi2.divide(2))) {
            remainder = pi2.subtract(remainder);
        }
        if (remainder.lessThan(pi2.divide(4))) {
            cosInternal = sinInternal(split(remainder));
        } else {
            Dfp[] piSplit = dfp.getField().getPiSplit();
            cosInternal = cosInternal(new Dfp[]{piSplit[0].divide(2).subtract(remainder), piSplit[1].divide(2)});
        }
        if (z10) {
            cosInternal = cosInternal.negate();
        }
        return dfp.newInstance(cosInternal);
    }

    public static Dfp sinInternal(Dfp[] dfpArr) {
        Dfp add = dfpArr[0].add(dfpArr[1]);
        Dfp multiply = add.multiply(add);
        Dfp one = dfpArr[0].getOne();
        Dfp dfp = new Dfp(add);
        Dfp dfp2 = add;
        for (int i10 = 3; i10 < 90; i10 += 2) {
            add = add.multiply(multiply).negate();
            one = one.divide((i10 - 1) * i10);
            dfp2 = dfp2.add(add.multiply(one));
            if (dfp2.equals(dfp)) {
                break;
            }
            dfp = new Dfp(dfp2);
        }
        return dfp2;
    }

    public static Dfp[] split(DfpField dfpField, String str) {
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
            if (i11 == (dfpField.getRadixDigits() / 2) * 4) {
                break;
            }
            char c10 = cArr[i10];
            if (c10 >= '0' && c10 <= '9' && !z10) {
                i11++;
            }
            i10++;
        }
        Dfp newDfp = dfpField.newDfp(new String(cArr, 0, i10));
        for (int i12 = 0; i12 < length; i12++) {
            char charAt2 = str.charAt(i12);
            cArr[i12] = charAt2;
            if (charAt2 >= '0' && charAt2 <= '9' && i12 < i10) {
                cArr[i12] = '0';
            }
        }
        return new Dfp[]{newDfp, dfpField.newDfp(new String(cArr))};
    }

    public static Dfp[] splitDiv(Dfp[] dfpArr, Dfp[] dfpArr2) {
        Dfp subtract = dfpArr[1].multiply(dfpArr2[0]).subtract(dfpArr[0].multiply(dfpArr2[1]));
        Dfp[] dfpArr3 = {dfpArr[0].divide(dfpArr2[0]), subtract};
        Dfp dfp = dfpArr2[0];
        dfpArr3[1] = subtract.divide(dfp.multiply(dfp).add(dfpArr2[0].multiply(dfpArr2[1])));
        return dfpArr3;
    }

    public static Dfp[] splitMult(Dfp[] dfpArr, Dfp[] dfpArr2) {
        Dfp[] dfpArr3 = {r2, dfpArr[0].getZero()};
        Dfp multiply = dfpArr[0].multiply(dfpArr2[0]);
        if (multiply.classify() != 1 && !dfpArr3[0].equals(dfpArr3[1])) {
            dfpArr3[1] = dfpArr[0].multiply(dfpArr2[1]).add(dfpArr[1].multiply(dfpArr2[0])).add(dfpArr[1].multiply(dfpArr2[1]));
        }
        return dfpArr3;
    }

    public static Dfp splitPow(Dfp[] dfpArr, int i10) {
        boolean z10;
        Dfp[] dfpArr2 = new Dfp[2];
        Dfp zero = dfpArr[0].getZero();
        Dfp[] dfpArr3 = {dfpArr[0].getOne(), zero};
        if (i10 == 0) {
            return dfpArr3[0].add(zero);
        }
        if (i10 < 0) {
            i10 = -i10;
            z10 = true;
        } else {
            z10 = false;
        }
        do {
            dfpArr2[0] = new Dfp(dfpArr[0]);
            dfpArr2[1] = new Dfp(dfpArr[1]);
            int i11 = 1;
            while (true) {
                int i12 = i11 * 2;
                if (i12 > i10) {
                    break;
                }
                dfpArr2 = splitMult(dfpArr2, dfpArr2);
                i11 = i12;
            }
            i10 -= i11;
            dfpArr3 = splitMult(dfpArr3, dfpArr2);
        } while (i10 >= 1);
        dfpArr3[0] = dfpArr3[0].add(dfpArr3[1]);
        if (z10) {
            dfpArr3[0] = dfpArr[0].getOne().divide(dfpArr3[0]);
        }
        return dfpArr3[0];
    }

    public static Dfp tan(Dfp dfp) {
        return sin(dfp).divide(cos(dfp));
    }

    public static Dfp pow(Dfp dfp, Dfp dfp2) {
        boolean z10;
        Dfp exp;
        if (dfp.getField().getRadixDigits() != dfp2.getField().getRadixDigits()) {
            dfp.getField().setIEEEFlagsBits(1);
            Dfp newInstance = dfp.newInstance(dfp.getZero());
            newInstance.nans = (byte) 3;
            return dfp.dotrap(1, POW_TRAP, dfp, newInstance);
        }
        Dfp zero = dfp.getZero();
        Dfp one = dfp.getOne();
        Dfp two = dfp.getTwo();
        if (dfp2.equals(zero)) {
            return dfp.newInstance(one);
        }
        if (dfp2.equals(one)) {
            if (!dfp.isNaN()) {
                return dfp;
            }
            dfp.getField().setIEEEFlagsBits(1);
            return dfp.dotrap(1, POW_TRAP, dfp, dfp);
        }
        if (!dfp.isNaN() && !dfp2.isNaN()) {
            if (dfp.equals(zero)) {
                if (Dfp.copysign(one, dfp).greaterThan(zero)) {
                    if (dfp2.greaterThan(zero)) {
                        return dfp.newInstance(zero);
                    }
                    return dfp.newInstance(dfp.newInstance((byte) 1, (byte) 1));
                }
                if (dfp2.classify() == 0 && dfp2.rint().equals(dfp2) && !dfp2.remainder(two).equals(zero)) {
                    if (dfp2.greaterThan(zero)) {
                        return dfp.newInstance(zero.negate());
                    }
                    return dfp.newInstance(dfp.newInstance((byte) -1, (byte) 1));
                }
                if (dfp2.greaterThan(zero)) {
                    return dfp.newInstance(zero);
                }
                return dfp.newInstance(dfp.newInstance((byte) 1, (byte) 1));
            }
            if (dfp.lessThan(zero)) {
                dfp = dfp.negate();
                z10 = true;
            } else {
                z10 = false;
            }
            if (dfp.greaterThan(one) && dfp2.classify() == 1) {
                return dfp2.greaterThan(zero) ? dfp2 : dfp.newInstance(zero);
            }
            if (dfp.lessThan(one) && dfp2.classify() == 1) {
                if (dfp2.greaterThan(zero)) {
                    return dfp.newInstance(zero);
                }
                return dfp.newInstance(Dfp.copysign(dfp2, one));
            }
            if (dfp.equals(one) && dfp2.classify() == 1) {
                dfp.getField().setIEEEFlagsBits(1);
                return dfp.dotrap(1, POW_TRAP, dfp, dfp.newInstance((byte) 1, (byte) 3));
            }
            if (dfp.classify() == 1) {
                if (!z10) {
                    return dfp2.greaterThan(zero) ? dfp : dfp.newInstance(zero);
                }
                if (dfp2.classify() == 0 && dfp2.rint().equals(dfp2) && !dfp2.remainder(two).equals(zero)) {
                    if (dfp2.greaterThan(zero)) {
                        return dfp.newInstance(dfp.newInstance((byte) -1, (byte) 1));
                    }
                    return dfp.newInstance(zero.negate());
                }
                if (dfp2.greaterThan(zero)) {
                    return dfp.newInstance(dfp.newInstance((byte) 1, (byte) 1));
                }
                return dfp.newInstance(zero);
            }
            if (z10 && !dfp2.rint().equals(dfp2)) {
                dfp.getField().setIEEEFlagsBits(1);
                return dfp.dotrap(1, POW_TRAP, dfp, dfp.newInstance((byte) 1, (byte) 3));
            }
            if (dfp2.lessThan(dfp.newInstance(100000000)) && dfp2.greaterThan(dfp.newInstance(-100000000))) {
                Dfp rint = dfp2.rint();
                int intValue = rint.intValue();
                Dfp subtract = dfp2.subtract(rint);
                if (subtract.unequal(zero)) {
                    Dfp multiply = subtract.multiply(log(dfp));
                    Dfp rint2 = multiply.divide(dfp.getField().getLn2()).rint();
                    exp = splitPow(split(dfp), intValue).multiply(pow(two, rint2.intValue())).multiply(exp(multiply.subtract(rint2.multiply(dfp.getField().getLn2()))));
                } else {
                    exp = splitPow(split(dfp), intValue);
                }
            } else {
                exp = exp(log(dfp).multiply(dfp2));
            }
            if (z10 && dfp2.rint().equals(dfp2) && !dfp2.remainder(two).equals(zero)) {
                exp = exp.negate();
            }
            return dfp.newInstance(exp);
        }
        dfp.getField().setIEEEFlagsBits(1);
        return dfp.dotrap(1, POW_TRAP, dfp, dfp.newInstance((byte) 1, (byte) 3));
    }

    public static Dfp[] split(Dfp dfp) {
        Dfp multiply = dfp.multiply(dfp.power10K(dfp.getRadixDigits() / 2));
        Dfp subtract = dfp.add(multiply).subtract(multiply);
        return new Dfp[]{subtract, dfp.subtract(subtract)};
    }
}
