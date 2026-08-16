package org.apache.commons.math3.dfp;

import org.apache.commons.math3.dfp.DfpField;

public class DfpDec extends Dfp {

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode;

        static {
            int[] iArr = new int[DfpField.RoundingMode.values().length];
            $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode = iArr;
            try {
                iArr[DfpField.RoundingMode.ROUND_DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_EVEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_HALF_ODD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_CEIL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[DfpField.RoundingMode.ROUND_FLOOR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public DfpDec(DfpField dfpField) {
        super(dfpField);
    }

    public int getDecimalDigits() {
        return (getRadixDigits() * 4) - 3;
    }

    @Override
    public Dfp newInstance() {
        return new DfpDec(getField());
    }

    @Override
    public Dfp nextAfter(Dfp dfp) {
        Dfp copysign;
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, "nextAfter", dfp, newInstance);
        }
        boolean lessThan = lessThan(dfp);
        if (equals(dfp)) {
            return newInstance(dfp);
        }
        if (lessThan(getZero())) {
            lessThan = !lessThan;
        }
        if (lessThan) {
            Dfp copysign2 = Dfp.copysign(power10((intLog10() - getDecimalDigits()) + 1), this);
            if (equals(getZero())) {
                copysign2 = power10K((-32768) - this.mant.length);
            }
            copysign = copysign2.equals(getZero()) ? Dfp.copysign(newInstance(getZero()), this) : add(copysign2);
        } else {
            Dfp copysign3 = Dfp.copysign(power10(intLog10()), this);
            Dfp divide = equals(copysign3) ? copysign3.divide(power10(getDecimalDigits())) : copysign3.divide(power10(getDecimalDigits() - 1));
            if (equals(getZero())) {
                divide = power10K((-32768) - this.mant.length);
            }
            copysign = divide.equals(getZero()) ? Dfp.copysign(newInstance(getZero()), this) : subtract(divide);
        }
        if (copysign.classify() == 1 && classify() != 1) {
            getField().setIEEEFlagsBits(16);
            copysign = dotrap(16, "nextAfter", dfp, copysign);
        }
        if (!copysign.equals(getZero()) || equals(getZero())) {
            return copysign;
        }
        getField().setIEEEFlagsBits(16);
        return dotrap(16, "nextAfter", dfp, copysign);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        if (r12 != 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008c, code lost:
    
        if (r12 != 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0093, code lost:
    
        if (r12 == 0) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009b, code lost:
    
        if ((r7 & 1) != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a2, code lost:
    
        if (r12 == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00aa, code lost:
    
        if ((r7 & 1) != 1) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ad, code lost:
    
        if (r10 > 5) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b0, code lost:
    
        if (r10 >= 5) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b5, code lost:
    
        if (r12 == 0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00bc A[LOOP:3: B:33:0x00b7->B:35:0x00bc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c8 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int round(int i10) {
        int i11;
        int i12;
        int[] iArr;
        int[] iArr2 = this.mant;
        int i13 = iArr2[iArr2.length - 1];
        if (i13 == 0) {
            return 0;
        }
        int length = iArr2.length * 4;
        int i14 = 1000;
        while (i14 > i13) {
            i14 /= 10;
            length--;
        }
        int decimalDigits = getDecimalDigits();
        int i15 = length - decimalDigits;
        int i16 = i15 / 4;
        int i17 = 1;
        for (int i18 = 0; i18 < i15 % 4; i18++) {
            i17 *= 10;
        }
        int[] iArr3 = this.mant;
        int i19 = iArr3[i16];
        if (i17 <= 1 && decimalDigits == (iArr3.length * 4) - 3) {
            return super.round(i10);
        }
        if (i17 == 1) {
            int i20 = i16 - 1;
            int i21 = iArr3[i20];
            i11 = (i21 / 1000) % 10;
            int i22 = i21 % 1000;
            iArr3[i20] = i22;
            i12 = i10 | i22;
        } else {
            i11 = ((i19 * 10) / i17) % 10;
            i12 = i10 | (i19 % (i17 / 10));
        }
        for (int i23 = 0; i23 < i16; i23++) {
            int[] iArr4 = this.mant;
            i12 |= iArr4[i23];
            iArr4[i23] = 0;
        }
        int i24 = i19 / i17;
        this.mant[i16] = i24 * i17;
        switch (AnonymousClass1.$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode[getField().getRoundingMode().ordinal()]) {
            case 1:
                break;
            case 2:
                if (i11 == 0) {
                }
                while (true) {
                    iArr = this.mant;
                    if (i16 < iArr.length) {
                        int i25 = iArr[i16] + i17;
                        i17 = i25 / 10000;
                        iArr[i16] = i25 % 10000;
                        i16++;
                    } else if (i17 != 0) {
                        shiftRight();
                        int[] iArr5 = this.mant;
                        iArr5[iArr5.length - 1] = i17;
                        break;
                    }
                }
                break;
            case 3:
                break;
            case 4:
                break;
            case 5:
                if (i11 <= 5) {
                    if (i11 == 5) {
                    }
                    if (i11 == 5) {
                        if (i12 == 0) {
                            break;
                        }
                    }
                }
                while (true) {
                    iArr = this.mant;
                    if (i16 < iArr.length) {
                    }
                    int i252 = iArr[i16] + i17;
                    i17 = i252 / 10000;
                    iArr[i16] = i252 % 10000;
                    i16++;
                }
                break;
            case 6:
                if (i11 <= 5) {
                    if (i11 == 5) {
                    }
                    if (i11 == 5) {
                        if (i12 == 0) {
                            break;
                        }
                    }
                }
                while (true) {
                    iArr = this.mant;
                    if (i16 < iArr.length) {
                    }
                    int i2522 = iArr[i16] + i17;
                    i17 = i2522 / 10000;
                    iArr[i16] = i2522 % 10000;
                    i16++;
                }
                break;
            case 7:
                if (this.sign == 1) {
                    if (i11 == 0) {
                    }
                    while (true) {
                        iArr = this.mant;
                        if (i16 < iArr.length) {
                        }
                        int i25222 = iArr[i16] + i17;
                        i17 = i25222 / 10000;
                        iArr[i16] = i25222 % 10000;
                        i16++;
                    }
                }
                break;
            default:
                if (this.sign == -1) {
                    if (i11 == 0) {
                    }
                    while (true) {
                        iArr = this.mant;
                        if (i16 < iArr.length) {
                        }
                        int i252222 = iArr[i16] + i17;
                        i17 = i252222 / 10000;
                        iArr[i16] = i252222 % 10000;
                        i16++;
                    }
                }
                break;
        }
        int i26 = this.exp;
        if (i26 < -32767) {
            getField().setIEEEFlagsBits(8);
            return 8;
        }
        if (i26 > 32768) {
            getField().setIEEEFlagsBits(4);
            return 4;
        }
        if (i11 == 0 && i12 == 0) {
            return 0;
        }
        getField().setIEEEFlagsBits(16);
        return 16;
    }

    public DfpDec(DfpField dfpField, byte b10) {
        super(dfpField, b10);
    }

    @Override
    public Dfp newInstance(byte b10) {
        return new DfpDec(getField(), b10);
    }

    public DfpDec(DfpField dfpField, int i10) {
        super(dfpField, i10);
    }

    @Override
    public Dfp newInstance(int i10) {
        return new DfpDec(getField(), i10);
    }

    public DfpDec(DfpField dfpField, long j10) {
        super(dfpField, j10);
    }

    @Override
    public Dfp newInstance(long j10) {
        return new DfpDec(getField(), j10);
    }

    public DfpDec(DfpField dfpField, double d10) {
        super(dfpField, d10);
        round(0);
    }

    @Override
    public Dfp newInstance(double d10) {
        return new DfpDec(getField(), d10);
    }

    @Override
    public Dfp newInstance(Dfp dfp) {
        if (getField().getRadixDigits() != dfp.getField().getRadixDigits()) {
            getField().setIEEEFlagsBits(1);
            Dfp newInstance = newInstance(getZero());
            newInstance.nans = (byte) 3;
            return dotrap(1, "newInstance", dfp, newInstance);
        }
        return new DfpDec(dfp);
    }

    public DfpDec(Dfp dfp) {
        super(dfp);
        round(0);
    }

    public DfpDec(DfpField dfpField, String str) {
        super(dfpField, str);
        round(0);
    }

    public DfpDec(DfpField dfpField, byte b10, byte b11) {
        super(dfpField, b10, b11);
    }

    @Override
    public Dfp newInstance(String str) {
        return new DfpDec(getField(), str);
    }

    @Override
    public Dfp newInstance(byte b10, byte b11) {
        return new DfpDec(getField(), b10, b11);
    }
}
