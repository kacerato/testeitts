package org.eclipse.jdt.internal.compiler.flow;

import java.util.Arrays;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.openjdk.tools.doclint.DocLint;

public class UnconditionalFlowInfo extends FlowInfo {
    public static final int BitCacheSize = 64;
    public static final boolean COVERAGE_TEST_FLAG = false;
    public static int CoverageTestId = 0;
    public static final int IN = 6;
    public static final int INN = 7;
    public static final int extraLength = 8;
    public long definiteInits;
    public long[][] extra;
    public long iNBit;
    public long iNNBit;
    public int maxFieldCount;
    public long nullBit1;
    public long nullBit2;
    public long nullBit3;
    public long nullBit4;
    public long potentialInits;

    public static class AssertionFailedException extends RuntimeException {
        private static final long serialVersionUID = 1827352841030089703L;

        public AssertionFailedException(String str) {
            super(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0285 A[LOOP:3: B:53:0x026a->B:54:0x0285, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0270  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private FlowInfo addInfoFrom(FlowInfo flowInfo, boolean z10) {
        UnconditionalFlowInfo unconditionalFlowInfo;
        boolean z11;
        boolean z12;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        UnconditionalFlowInfo unconditionalFlowInfo2 = this;
        UnconditionalFlowInfo unconditionalFlowInfo3 = FlowInfo.DEAD_END;
        if (unconditionalFlowInfo2 == unconditionalFlowInfo3 || flowInfo == unconditionalFlowInfo3) {
            return unconditionalFlowInfo2;
        }
        UnconditionalFlowInfo unconditionalInits = flowInfo.unconditionalInits();
        if (z10) {
            unconditionalFlowInfo2.definiteInits |= unconditionalInits.definiteInits;
            unconditionalFlowInfo2.potentialInits |= unconditionalInits.potentialInits;
        }
        int i15 = unconditionalFlowInfo2.tagBits;
        boolean z13 = (i15 & 4) != 0;
        boolean z14 = (unconditionalInits.tagBits & 4) != 0;
        if (z14) {
            if (z13) {
                long j10 = unconditionalFlowInfo2.nullBit1;
                long j11 = unconditionalFlowInfo2.nullBit2;
                long j12 = unconditionalFlowInfo2.nullBit3;
                long j13 = unconditionalFlowInfo2.nullBit4;
                long j14 = j10 & j11 & j12 & j13;
                long j15 = unconditionalInits.iNNBit;
                z11 = z13;
                long j16 = unconditionalInits.iNBit;
                long j17 = j16 | j14;
                long j18 = (~j14) | j15;
                long j19 = j10 & j18;
                long j20 = j18 & j17 & j11;
                long j21 = j18 & j15 & j12;
                long j22 = j18 & j13;
                long j23 = j19 & (j20 | j21 | j22);
                z12 = z14;
                long j24 = unconditionalInits.nullBit1;
                long j25 = j21 & j22;
                i14 = i15;
                long j26 = unconditionalInits.nullBit2;
                long j27 = ~j26;
                long j28 = unconditionalInits.nullBit4;
                long j29 = ~j28;
                long j30 = ~j22;
                long j31 = ~j21;
                long j32 = ~j20;
                long j33 = j32 & j27;
                long j34 = unconditionalInits.nullBit3;
                unconditionalFlowInfo = unconditionalInits;
                long j35 = ~j34;
                unconditionalFlowInfo2.nullBit1 = j24 | (j23 & ((j25 & j27 & j29) | ((j30 | j31) & (j33 | (j20 & j35 & j29)))));
                long j36 = (j29 | j35 | (j31 & j30)) & j26;
                long j37 = j35 & j29;
                long j38 = ~j24;
                long j39 = ~j23;
                unconditionalFlowInfo2.nullBit2 = j36 | (j20 & (j37 | (j38 & (j31 | j39)) | (j23 & j26)));
                long j40 = j21 & j27;
                unconditionalFlowInfo2.nullBit3 = (j34 & (((j26 | j20 | j39) & j38) | (j24 & (j28 | j27 | (j23 & j21))) | (j39 & j32 & j30))) | (j40 & j29) | (j38 & ((((j32 & j22) | j39) & j21) | (j23 & j32 & j30 & j26)));
                long j41 = j31 & j35;
                unconditionalFlowInfo2.nullBit4 = (j24 & (((j25 | (j32 & j30 & j35)) & j28) | ((((j34 | j22) & j28) | (j31 & j22 & j26 & j34)) & j20) | (j39 & (j28 | ((j22 | j20) & j26 & j34))))) | (j38 & ((j22 & (j41 | ((j21 | j32) & j27))) | (j23 & ((j40 & j28) | (j20 & j26 & (j28 | (j21 & j30 & j35))))))) | ((((j41 | j33) & j39) | (((j27 & j35) | (j20 & j21)) & j23)) & j28);
                unconditionalFlowInfo2.iNBit &= j16;
                unconditionalFlowInfo2.iNNBit &= j15;
            } else {
                unconditionalFlowInfo2.nullBit1 = unconditionalInits.nullBit1;
                unconditionalFlowInfo2.nullBit2 = unconditionalInits.nullBit2;
                unconditionalFlowInfo2.nullBit3 = unconditionalInits.nullBit3;
                unconditionalFlowInfo2.nullBit4 = unconditionalInits.nullBit4;
                unconditionalFlowInfo2.iNBit = unconditionalInits.iNBit;
                unconditionalFlowInfo2.iNNBit = unconditionalInits.iNNBit;
                unconditionalFlowInfo = unconditionalInits;
                i14 = i15;
                z11 = z13;
                z12 = z14;
            }
            unconditionalFlowInfo2.tagBits = i14 | 4;
        } else {
            unconditionalFlowInfo = unconditionalInits;
            z11 = z13;
            z12 = z14;
        }
        long[][] jArr = unconditionalFlowInfo2.extra;
        UnconditionalFlowInfo unconditionalFlowInfo4 = unconditionalFlowInfo;
        if (jArr != null || unconditionalFlowInfo4.extra != null) {
            char c10 = 7;
            char c11 = 6;
            int i16 = 2;
            int i17 = 8;
            if (jArr != null) {
                long[][] jArr2 = unconditionalFlowInfo4.extra;
                if (jArr2 != null) {
                    int length = jArr[0].length;
                    i10 = jArr2[0].length;
                    if (length < i10) {
                        for (int i18 = 0; i18 < 8; i18++) {
                            long[][] jArr3 = unconditionalFlowInfo2.extra;
                            long[] jArr4 = jArr3[i18];
                            long[] jArr5 = new long[i10];
                            jArr3[i18] = jArr5;
                            System.arraycopy(jArr4, 0, jArr5, 0, length);
                        }
                        i11 = length;
                    } else {
                        i11 = i10;
                        i10 = 0;
                    }
                    if (z10) {
                        int i19 = 0;
                        while (i19 < i11) {
                            long[][] jArr6 = unconditionalFlowInfo2.extra;
                            long[] jArr7 = jArr6[0];
                            long j42 = jArr7[i19];
                            long[][] jArr8 = unconditionalFlowInfo4.extra;
                            jArr7[i19] = j42 | jArr8[0][i19];
                            long[] jArr9 = jArr6[1];
                            jArr9[i19] = jArr9[i19] | jArr8[1][i19];
                            i19++;
                        }
                        while (i19 < i10) {
                            long[][] jArr10 = unconditionalFlowInfo2.extra;
                            long[] jArr11 = jArr10[0];
                            long[][] jArr12 = unconditionalFlowInfo4.extra;
                            jArr11[i19] = jArr12[0][i19];
                            jArr10[1][i19] = jArr12[1][i19];
                            i19++;
                        }
                    }
                    i12 = 0;
                    if (!z11) {
                        if (i10 >= i11) {
                            i11 = i10;
                        }
                        i10 = i11;
                        i11 = 0;
                    }
                    if (!z12) {
                        i10 = 0;
                        i11 = 0;
                    }
                    while (i12 < i11) {
                        long[][] jArr13 = unconditionalFlowInfo2.extra;
                        long[] jArr14 = jArr13[i16];
                        long j43 = jArr14[i12];
                        long[] jArr15 = jArr13[3];
                        long j44 = jArr15[i12];
                        long[] jArr16 = jArr13[4];
                        long j45 = jArr16[i12];
                        long[] jArr17 = jArr13[5];
                        long j46 = jArr17[i12];
                        int i20 = i10;
                        long j47 = j43 & j44 & j45 & j46;
                        long[][] jArr18 = unconditionalFlowInfo4.extra;
                        long[] jArr19 = jArr18[c10];
                        long j48 = jArr19[i12];
                        long[] jArr20 = jArr18[c11];
                        long j49 = jArr20[i12] | j47;
                        long j50 = (~j47) | j48;
                        long j51 = j43 & j50;
                        long j52 = j50 & j49 & j44;
                        long j53 = j50 & j48 & j45;
                        long j54 = j46 & j50;
                        long j55 = j51 & (j52 | j53 | j54);
                        long j56 = jArr18[i16][i12];
                        long j57 = j53 & j54;
                        long j58 = jArr18[3][i12];
                        long j59 = ~j58;
                        long j60 = jArr18[5][i12];
                        long j61 = ~j60;
                        long j62 = j57 & j59 & j61;
                        long j63 = ~j54;
                        long j64 = ~j53;
                        long j65 = ~j52;
                        long j66 = j65 & j59;
                        long j67 = jArr18[4][i12];
                        long j68 = ~j67;
                        jArr14[i12] = j56 | (j55 & (j62 | ((j63 | j64) & (j66 | (j52 & j68 & j61)))));
                        long j69 = (j61 | j68 | (j64 & j63)) & j58;
                        long j70 = j68 & j61;
                        long j71 = ~j56;
                        long j72 = ~j55;
                        jArr15[i12] = j69 | (j52 & (j70 | (j71 & (j64 | j72)) | (j55 & j58)));
                        long j73 = j53 & j59;
                        jArr16[i12] = (j67 & ((j71 & (j58 | j52 | j72)) | (j56 & (j60 | j59 | (j55 & j53))) | (j72 & j65 & j63))) | (j73 & j61) | (j71 & ((((j65 & j54) | j72) & j53) | (j55 & j65 & j63 & j58)));
                        long j74 = j64 & j68;
                        jArr17[i12] = (j71 & ((j54 & (j74 | ((j53 | j65) & j59))) | (j55 & ((j73 & j60) | (j52 & j58 & (j60 | (j53 & j63 & j68))))))) | ((((j57 | (j65 & j63 & j68)) & j60) | ((((j67 | j54) & j60) | (j64 & j54 & j58 & j67)) & j52) | (j72 & (j60 | ((j54 | j52) & j58 & j67)))) & j56) | (((((j52 & j53) | (j59 & j68)) & j55) | ((j74 | j66) & j72)) & j60);
                        long[] jArr21 = jArr13[6];
                        jArr21[i12] = jArr21[i12] & jArr20[i12];
                        long[] jArr22 = jArr13[7];
                        jArr22[i12] = jArr22[i12] & jArr19[i12];
                        i12++;
                        c11 = 6;
                        c10 = 7;
                        i11 = i11;
                        i10 = i20;
                        i16 = 2;
                        i17 = 8;
                        unconditionalFlowInfo2 = this;
                    }
                    for (i13 = i12; i13 < i10; i13++) {
                        for (int i21 = i16; i21 < i17; i21++) {
                            unconditionalFlowInfo2.extra[i21][i13] = unconditionalFlowInfo4.extra[i21][i13];
                        }
                    }
                }
            } else {
                int i22 = 0;
                if (unconditionalFlowInfo4.extra != null) {
                    long[][] jArr23 = new long[8];
                    unconditionalFlowInfo2.extra = jArr23;
                    long[] jArr24 = unconditionalFlowInfo4.extra[0];
                    int length2 = jArr24.length;
                    long[] jArr25 = new long[length2];
                    jArr23[0] = jArr25;
                    System.arraycopy(jArr24, 0, jArr25, 0, length2);
                    long[] jArr26 = unconditionalFlowInfo4.extra[1];
                    long[] jArr27 = new long[length2];
                    unconditionalFlowInfo2.extra[1] = jArr27;
                    System.arraycopy(jArr26, 0, jArr27, 0, length2);
                    if (z12) {
                        for (int i23 = 2; i23 < 8; i23++) {
                            long[] jArr28 = unconditionalFlowInfo4.extra[i23];
                            long[] jArr29 = new long[length2];
                            unconditionalFlowInfo2.extra[i23] = jArr29;
                            System.arraycopy(jArr28, 0, jArr29, 0, length2);
                        }
                    } else {
                        int i24 = 2;
                        while (i24 < 8) {
                            unconditionalFlowInfo2.extra[i24] = new long[length2];
                            i24++;
                            i22 = 0;
                        }
                        System.arraycopy(unconditionalFlowInfo4.extra[6], i22, unconditionalFlowInfo2.extra[6], i22, length2);
                        System.arraycopy(unconditionalFlowInfo4.extra[7], i22, unconditionalFlowInfo2.extra[7], i22, length2);
                    }
                }
            }
            i10 = 0;
            i11 = 0;
            if (z10) {
            }
            i12 = 0;
            if (!z11) {
            }
            if (!z12) {
            }
            while (i12 < i11) {
            }
            while (i13 < i10) {
            }
        }
        return unconditionalFlowInfo2;
    }

    private void createExtraSpace(int i10) {
        this.extra = new long[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.extra[i11] = new long[i10];
        }
        if ((this.tagBits & 64) != 0) {
            Arrays.fill(this.extra[6], -1L);
            Arrays.fill(this.extra[7], -1L);
        }
    }

    public static UnconditionalFlowInfo fakeInitializedFlowInfo(int i10, int i11) {
        UnconditionalFlowInfo unconditionalFlowInfo = new UnconditionalFlowInfo();
        unconditionalFlowInfo.maxFieldCount = i11;
        for (int i12 = 0; i12 < i10; i12++) {
            unconditionalFlowInfo.markAsDefinitelyAssigned(i12 + i11);
        }
        return unconditionalFlowInfo;
    }

    private final boolean isDefinitelyAssigned(int i10) {
        if (i10 < 64) {
            return ((1 << i10) & this.definiteInits) != 0;
        }
        long[][] jArr = this.extra;
        if (jArr == null) {
            return false;
        }
        int i11 = (i10 / 64) - 1;
        long[] jArr2 = jArr[0];
        if (i11 >= jArr2.length) {
            return false;
        }
        return ((1 << (i10 % 64)) & jArr2[i11]) != 0;
    }

    private final boolean isPotentiallyAssigned(int i10) {
        int i11;
        if (i10 < 64) {
            return ((1 << i10) & this.potentialInits) != 0;
        }
        long[][] jArr = this.extra;
        if (jArr != null && (i11 = (i10 / 64) - 1) < jArr[0].length) {
            return ((1 << (i10 % 64)) & jArr[1][i11]) != 0;
        }
        return false;
    }

    public static boolean isTrue(boolean z10, String str) {
        if (z10) {
            return z10;
        }
        throw new AssertionFailedException("assertion failed: " + str);
    }

    private final void markAsDefinitelyAssigned(int i10) {
        if (this != FlowInfo.DEAD_END) {
            if (i10 < 64) {
                long j10 = 1 << i10;
                this.definiteInits |= j10;
                this.potentialInits = j10 | this.potentialInits;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[0];
            long j11 = 1 << (i10 % 64);
            jArr6[i12] = jArr6[i12] | j11;
            long[] jArr7 = jArr5[1];
            jArr7[i12] = j11 | jArr7[i12];
        }
    }

    public static int numberOfEnclosingFields(ReferenceBinding referenceBinding) {
        int i10 = 0;
        for (ReferenceBinding enclosingType = referenceBinding.enclosingType(); enclosingType != null; enclosingType = enclosingType.enclosingType()) {
            i10 += enclosingType.fieldCount();
        }
        return i10;
    }

    @Override
    public FlowInfo addInitializationsFrom(FlowInfo flowInfo) {
        return addInfoFrom(flowInfo, true);
    }

    @Override
    public FlowInfo addNullInfoFrom(FlowInfo flowInfo) {
        return addInfoFrom(flowInfo, false);
    }

    @Override
    public FlowInfo addPotentialInitializationsFrom(FlowInfo flowInfo) {
        UnconditionalFlowInfo unconditionalFlowInfo = FlowInfo.DEAD_END;
        if (this == unconditionalFlowInfo || flowInfo == unconditionalFlowInfo) {
            return this;
        }
        UnconditionalFlowInfo unconditionalInits = flowInfo.unconditionalInits();
        this.potentialInits |= unconditionalInits.potentialInits;
        long[][] jArr = this.extra;
        int i10 = 0;
        if (jArr != null) {
            long[][] jArr2 = unconditionalInits.extra;
            if (jArr2 != null) {
                int length = jArr[0].length;
                int length2 = jArr2[0].length;
                if (length < length2) {
                    for (int i11 = 0; i11 < 8; i11++) {
                        long[][] jArr3 = this.extra;
                        long[] jArr4 = jArr3[i11];
                        long[] jArr5 = new long[length2];
                        jArr3[i11] = jArr5;
                        System.arraycopy(jArr4, 0, jArr5, 0, length);
                    }
                    while (i10 < length) {
                        long[] jArr6 = this.extra[1];
                        jArr6[i10] = jArr6[i10] | unconditionalInits.extra[1][i10];
                        i10++;
                    }
                    while (i10 < length2) {
                        this.extra[1][i10] = unconditionalInits.extra[1][i10];
                        i10++;
                    }
                } else {
                    while (i10 < length2) {
                        long[] jArr7 = this.extra[1];
                        jArr7[i10] = jArr7[i10] | unconditionalInits.extra[1][i10];
                        i10++;
                    }
                }
            }
        } else {
            long[][] jArr8 = unconditionalInits.extra;
            if (jArr8 != null) {
                int length3 = jArr8[0].length;
                createExtraSpace(length3);
                System.arraycopy(unconditionalInits.extra[1], 0, this.extra[1], 0, length3);
            }
        }
        addPotentialNullInfoFrom(unconditionalInits);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0126, code lost:
    
        if ((r1 | (r14 | r5)) != 0) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UnconditionalFlowInfo addPotentialNullInfoFrom(UnconditionalFlowInfo unconditionalFlowInfo) {
        UnconditionalFlowInfo unconditionalFlowInfo2;
        boolean z10;
        UnconditionalFlowInfo unconditionalFlowInfo3;
        boolean z11;
        int i10;
        int i11;
        char c10;
        char c11;
        int i12 = this.tagBits;
        if ((i12 & 3) != 0) {
            return this;
        }
        int i13 = unconditionalFlowInfo.tagBits;
        if ((i13 & 3) != 0 || (i13 & 4) == 0) {
            return this;
        }
        boolean z12 = (i12 & 4) != 0;
        if (z12) {
            long j10 = this.nullBit1;
            long j11 = this.nullBit3;
            long j12 = this.nullBit4;
            long j13 = unconditionalFlowInfo.nullBit2;
            long j14 = ~j13;
            long j15 = unconditionalFlowInfo.nullBit4;
            z10 = z12;
            long j16 = ~j15;
            long j17 = j14 & j16;
            long j18 = unconditionalFlowInfo.nullBit1;
            long j19 = unconditionalFlowInfo.nullBit3;
            long j20 = j18 & j19;
            long j21 = j11 & j12 & (j17 | j20);
            long j22 = this.nullBit2;
            long j23 = ~j22;
            long j24 = ~j12;
            long j25 = ~j11;
            long j26 = j24 | j25;
            long j27 = j21 | (j23 & (j20 | (j26 & j14)));
            long j28 = ~j19;
            long j29 = j28 & j16;
            long j30 = j18 & j13;
            unconditionalFlowInfo2 = this;
            unconditionalFlowInfo2.nullBit1 = j10 & (j27 | (j22 & j26 & (j29 | j30)));
            long j31 = ~j18;
            long j32 = j13 & (j28 | j31);
            long j33 = ~j10;
            long j34 = j32 | (j22 & (j29 | j13 | j25 | j33));
            unconditionalFlowInfo2.nullBit2 = j34;
            long j35 = j10 & j23 & j24;
            long j36 = (j19 & ((j31 & j13) | (j22 & (j14 | j11)) | (j33 & j14) | (j35 & j18))) | ((j17 | (j23 & j12) | j33) & j11) | (j35 & j13);
            unconditionalFlowInfo2.nullBit3 = j36;
            long j37 = j25 & ((j31 & j28 & j15) | (j12 & (j28 | j30)));
            long j38 = j31 & j15;
            long j39 = j37 | (j14 & ((j25 & j18 & j28) | (j23 & (j38 | (j18 & j28) | j12)))) | ((((j38 | (j24 & (j13 | j18) & j28)) & j10 & j22) | (j12 & (j14 | j20))) & j11);
            unconditionalFlowInfo2.nullBit4 = j39;
            if ((j36 | j34 | j39) != 0) {
                unconditionalFlowInfo3 = unconditionalFlowInfo;
                z11 = true;
            } else {
                unconditionalFlowInfo3 = unconditionalFlowInfo;
                z11 = false;
            }
        } else {
            unconditionalFlowInfo2 = this;
            z10 = z12;
            unconditionalFlowInfo2.nullBit1 = 0L;
            unconditionalFlowInfo3 = unconditionalFlowInfo;
            long j40 = unconditionalFlowInfo3.nullBit2;
            long j41 = unconditionalFlowInfo3.nullBit3;
            long j42 = ~j41;
            long j43 = unconditionalFlowInfo3.nullBit1;
            long j44 = ~j43;
            long j45 = (j42 | j44) & j40;
            unconditionalFlowInfo2.nullBit2 = j45;
            long j46 = ~j40;
            long j47 = j41 & (j44 | j46);
            unconditionalFlowInfo2.nullBit3 = j47;
            long j48 = unconditionalFlowInfo3.nullBit4;
            long j49 = (j44 & j42 & j48) | (j46 & ((j48 & j44) | (j42 & j43)));
            unconditionalFlowInfo2.nullBit4 = j49;
        }
        long[][] jArr = unconditionalFlowInfo3.extra;
        if (jArr != null) {
            int length = jArr[0].length;
            long[][] jArr2 = unconditionalFlowInfo2.extra;
            if (jArr2 == null) {
                unconditionalFlowInfo2.createExtraSpace(length);
                i11 = 0;
                i10 = 0;
            } else {
                long[] jArr3 = jArr2[0];
                if (length > jArr3.length) {
                    i11 = jArr3.length;
                    for (int i14 = 0; i14 < 8; i14++) {
                        long[][] jArr4 = unconditionalFlowInfo2.extra;
                        long[] jArr5 = jArr4[i14];
                        long[] jArr6 = new long[length];
                        jArr4[i14] = jArr6;
                        System.arraycopy(jArr5, 0, jArr6, 0, i11);
                    }
                    if (!z10) {
                        i11 = 0;
                    }
                    i10 = 0;
                } else {
                    i10 = 0;
                    i11 = length;
                }
            }
            int i15 = i10;
            while (true) {
                c10 = 2;
                c11 = 3;
                if (i15 >= i11) {
                    break;
                }
                int i16 = length;
                long[][] jArr7 = unconditionalFlowInfo2.extra;
                long[] jArr8 = jArr7[2];
                long j50 = jArr8[i15];
                long[] jArr9 = jArr7[4];
                long j51 = jArr9[i15];
                long[] jArr10 = jArr7[5];
                long j52 = jArr10[i15];
                long j53 = j51 & j52;
                long[][] jArr11 = unconditionalFlowInfo3.extra;
                boolean z13 = z11;
                long j54 = jArr11[3][i15];
                int i17 = i11;
                long j55 = ~j54;
                long j56 = jArr11[5][i15];
                long j57 = ~j56;
                long j58 = j55 & j57;
                long j59 = jArr11[2][i15];
                long j60 = jArr11[4][i15];
                long j61 = j59 & j60;
                long[] jArr12 = jArr7[3];
                long j62 = jArr12[i15];
                long j63 = ~j62;
                long j64 = ~j52;
                long j65 = ~j51;
                long j66 = j64 | j65;
                long j67 = ~j60;
                long j68 = j57 & j67;
                long j69 = j59 & j54;
                jArr8[i15] = j50 & ((j53 & (j58 | j61)) | (j63 & (j61 | (j66 & j55))) | (j62 & j66 & (j68 | j69)));
                long j70 = ~j59;
                long j71 = j54 & (j67 | j70);
                long j72 = ~j50;
                jArr12[i15] = j71 | (j62 & (j68 | j54 | j65 | j72));
                long j73 = j50 & j63 & j64;
                jArr9[i15] = (j60 & ((j70 & j54) | (j62 & (j55 | j51)) | (j72 & j55) | (j73 & j59))) | ((j58 | (j63 & j52) | j72) & j51) | (j73 & j54);
                long j74 = j65 & ((j70 & j67 & j56) | (j52 & (j67 | j69)));
                long j75 = j70 & j56;
                long j76 = (j51 & ((j52 & (j55 | j61)) | (j50 & j62 & ((j64 & (j54 | j59) & j67) | j75)))) | j74 | (((j65 & j59 & j67) | (j63 & (j75 | (j59 & j67) | j52))) & j55);
                jArr10[i15] = j76;
                z11 = (j76 | (jArr12[i15] | jArr9[i15])) != 0 ? true : z13;
                i15++;
                unconditionalFlowInfo2 = this;
                unconditionalFlowInfo3 = unconditionalFlowInfo;
                i11 = i17;
                length = i16;
            }
            while (i15 < length) {
                long[][] jArr13 = unconditionalFlowInfo2.extra;
                jArr13[c10][i15] = 0;
                long[] jArr14 = jArr13[c11];
                long[][] jArr15 = unconditionalFlowInfo3.extra;
                long j77 = jArr15[c11][i15];
                long j78 = jArr15[4][i15];
                long j79 = ~j78;
                long j80 = jArr15[c10][i15];
                long j81 = ~j80;
                jArr14[i15] = j77 & (j79 | j81);
                long[] jArr16 = jArr13[4];
                boolean z14 = z11;
                int i18 = length;
                long j82 = ~j77;
                jArr16[i15] = j78 & (j81 | j82);
                long[] jArr17 = jArr13[5];
                long j83 = jArr15[5][i15];
                long j84 = (j82 & ((j80 & j79) | (j81 & j83))) | (j81 & j79 & j83);
                jArr17[i15] = j84;
                z11 = (j84 | (jArr14[i15] | jArr16[i15])) != 0 ? true : z14;
                i15++;
                length = i18;
                c10 = 2;
                c11 = 3;
            }
        }
        if (z11) {
            this.tagBits |= 4;
            return this;
        }
        this.tagBits &= 4;
        return this;
    }

    @Override
    public final boolean canOnlyBeNull(LocalVariableBinding localVariableBinding) {
        int i10;
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                return ((1 << i11) & ((this.nullBit1 & this.nullBit2) & ((~this.nullBit3) | (~this.nullBit4)))) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null || (i10 = (i11 / 64) - 1) >= jArr[0].length) {
                return false;
            }
            if (((1 << (i11 % 64)) & ((~jArr[5][i10]) | (~jArr[4][i10])) & jArr[2][i10] & jArr[3][i10]) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean cannotBeDefinitelyNullOrNonNull(LocalVariableBinding localVariableBinding) {
        int i10;
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                long j10 = ~this.nullBit1;
                long j11 = this.nullBit2;
                long j12 = this.nullBit3;
                long j13 = this.nullBit4;
                return (((j13 & ((~j11) & (~j12))) | (j10 & ((j11 & j12) | j13))) & (1 << i11)) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null || (i10 = (i11 / 64) - 1) >= jArr[0].length) {
                return false;
            }
            long j14 = ~jArr[2][i10];
            long j15 = jArr[3][i10];
            long j16 = jArr[4][i10];
            long j17 = jArr[5][i10];
            if ((((((j15 & j16) | j17) & j14) | ((~j16) & (~j15) & j17)) & (1 << (i11 % 64))) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean cannotBeNull(LocalVariableBinding localVariableBinding) {
        int i10;
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                long j10 = this.nullBit1 & this.nullBit3;
                long j11 = this.nullBit2;
                return ((1 << i11) & (j10 & ((~j11) | (this.nullBit4 & j11)))) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null || (i10 = (i11 / 64) - 1) >= jArr[0].length) {
                return false;
            }
            long j12 = jArr[2][i10] & jArr[4][i10];
            long j13 = jArr[3][i10];
            if (((1 << (i11 % 64)) & ((jArr[5][i10] & j13) | (~j13)) & j12) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public FlowInfo copy() {
        if (this == FlowInfo.DEAD_END) {
            return this;
        }
        UnconditionalFlowInfo unconditionalFlowInfo = new UnconditionalFlowInfo();
        unconditionalFlowInfo.definiteInits = this.definiteInits;
        unconditionalFlowInfo.potentialInits = this.potentialInits;
        int i10 = this.tagBits;
        boolean z10 = (i10 & 4) != 0;
        if (z10) {
            unconditionalFlowInfo.nullBit1 = this.nullBit1;
            unconditionalFlowInfo.nullBit2 = this.nullBit2;
            unconditionalFlowInfo.nullBit3 = this.nullBit3;
            unconditionalFlowInfo.nullBit4 = this.nullBit4;
        }
        unconditionalFlowInfo.iNBit = this.iNBit;
        unconditionalFlowInfo.iNNBit = this.iNNBit;
        unconditionalFlowInfo.tagBits = i10;
        unconditionalFlowInfo.maxFieldCount = this.maxFieldCount;
        if (this.extra != null) {
            long[][] jArr = new long[8];
            unconditionalFlowInfo.extra = jArr;
            long[] jArr2 = this.extra[0];
            int length = jArr2.length;
            long[] jArr3 = new long[length];
            jArr[0] = jArr3;
            System.arraycopy(jArr2, 0, jArr3, 0, length);
            long[] jArr4 = this.extra[1];
            long[] jArr5 = new long[length];
            unconditionalFlowInfo.extra[1] = jArr5;
            System.arraycopy(jArr4, 0, jArr5, 0, length);
            int i11 = 2;
            if (z10) {
                while (i11 < 6) {
                    long[] jArr6 = this.extra[i11];
                    long[] jArr7 = new long[length];
                    unconditionalFlowInfo.extra[i11] = jArr7;
                    System.arraycopy(jArr6, 0, jArr7, 0, length);
                    i11++;
                }
            } else {
                while (i11 < 6) {
                    unconditionalFlowInfo.extra[i11] = new long[length];
                    i11++;
                }
            }
            long[] jArr8 = this.extra[6];
            long[] jArr9 = new long[length];
            unconditionalFlowInfo.extra[6] = jArr9;
            System.arraycopy(jArr8, 0, jArr9, 0, length);
            long[] jArr10 = this.extra[7];
            long[] jArr11 = new long[length];
            unconditionalFlowInfo.extra[7] = jArr11;
            System.arraycopy(jArr10, 0, jArr11, 0, length);
        }
        return unconditionalFlowInfo;
    }

    public UnconditionalFlowInfo discardInitializationInfo() {
        if (this == FlowInfo.DEAD_END) {
            return this;
        }
        this.potentialInits = 0L;
        this.definiteInits = 0L;
        long[][] jArr = this.extra;
        if (jArr != null) {
            int length = jArr[0].length;
            for (int i10 = 0; i10 < length; i10++) {
                long[][] jArr2 = this.extra;
                long[] jArr3 = jArr2[0];
                jArr2[1][i10] = 0;
                jArr3[i10] = 0;
            }
        }
        return this;
    }

    public UnconditionalFlowInfo discardNonFieldInitializations() {
        int length;
        int i10;
        int i11;
        int i12 = this.maxFieldCount;
        if (i12 < 64) {
            long j10 = (1 << i12) - 1;
            this.definiteInits &= j10;
            this.potentialInits &= j10;
            this.nullBit1 &= j10;
            this.nullBit2 &= j10;
            this.nullBit3 &= j10;
            this.nullBit4 &= j10;
            this.iNBit &= j10;
            this.iNNBit = j10 & this.iNNBit;
        }
        long[][] jArr = this.extra;
        if (jArr == null || (i12 / 64) - 1 >= (length = jArr[0].length)) {
            return this;
        }
        if (i10 >= 0) {
            long j11 = (1 << (i12 % 64)) - 1;
            for (int i13 = 0; i13 < 8; i13++) {
                long[] jArr2 = this.extra[i13];
                jArr2[i10] = jArr2[i10] & j11;
            }
        }
        while (i11 < length) {
            for (int i14 = 0; i14 < 8; i14++) {
                this.extra[i14][i11] = 0;
            }
            i11++;
        }
        return this;
    }

    @Override
    public final boolean hasNullInfoFor(LocalVariableBinding localVariableBinding) {
        int i10 = this.tagBits;
        if ((i10 & 3) == 0 && (i10 & 4) != 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                return ((1 << i11) & (((this.nullBit1 | this.nullBit2) | this.nullBit3) | this.nullBit4)) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null) {
                return false;
            }
            int i12 = (i11 / 64) - 1;
            long[] jArr2 = jArr[2];
            if (i12 >= jArr2.length) {
                return false;
            }
            if (((1 << (i11 % 64)) & (jArr[5][i12] | jArr2[i12] | jArr[3][i12] | jArr[4][i12])) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public FlowInfo initsWhenFalse() {
        return this;
    }

    @Override
    public FlowInfo initsWhenTrue() {
        return this;
    }

    @Override
    public final boolean isDefinitelyNonNull(LocalVariableBinding localVariableBinding) {
        int i10 = this.tagBits;
        if ((i10 & 3) != 0 || (i10 & 4) == 0) {
            return false;
        }
        if ((localVariableBinding.type.tagBits & 2) != 0 || localVariableBinding.constant() != Constant.NotAConstant) {
            return true;
        }
        int i11 = localVariableBinding.f102483id + this.maxFieldCount;
        if (i11 < 64) {
            return (((this.nullBit1 & this.nullBit3) & ((~this.nullBit2) | this.nullBit4)) & (1 << i11)) != 0;
        }
        long[][] jArr = this.extra;
        if (jArr == null) {
            return false;
        }
        int i12 = (i11 / 64) - 1;
        long[] jArr2 = jArr[2];
        if (i12 >= jArr2.length) {
            return false;
        }
        return ((1 << (i11 % 64)) & ((jArr2[i12] & jArr[4][i12]) & ((~jArr[3][i12]) | jArr[5][i12]))) != 0;
    }

    @Override
    public final boolean isDefinitelyNull(LocalVariableBinding localVariableBinding) {
        int i10 = this.tagBits;
        if ((i10 & 3) == 0 && (i10 & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                return ((1 << i11) & ((this.nullBit1 & this.nullBit2) & ((~this.nullBit3) | (~this.nullBit4)))) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null) {
                return false;
            }
            int i12 = (i11 / 64) - 1;
            long[] jArr2 = jArr[2];
            if (i12 >= jArr2.length) {
                return false;
            }
            if (((1 << (i11 % 64)) & ((~jArr[5][i12]) | (~jArr[4][i12])) & jArr2[i12] & jArr[3][i12]) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isDefinitelyUnknown(LocalVariableBinding localVariableBinding) {
        int i10 = this.tagBits;
        if ((i10 & 3) != 0 || (i10 & 4) == 0) {
            return false;
        }
        int i11 = localVariableBinding.f102483id + this.maxFieldCount;
        if (i11 < 64) {
            return ((1 << i11) & (((this.nullBit1 & this.nullBit4) & (~this.nullBit2)) & (~this.nullBit3))) != 0;
        }
        long[][] jArr = this.extra;
        if (jArr == null) {
            return false;
        }
        int i12 = (i11 / 64) - 1;
        long[] jArr2 = jArr[2];
        if (i12 >= jArr2.length) {
            return false;
        }
        return ((((~jArr[3][i12]) & (jArr2[i12] & jArr[5][i12])) & (~jArr[4][i12])) & (1 << (i11 % 64))) != 0;
    }

    @Override
    public final boolean isPotentiallyNonNull(LocalVariableBinding localVariableBinding) {
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                return ((1 << i10) & (this.nullBit3 & ((~this.nullBit1) | (~this.nullBit2)))) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null) {
                return false;
            }
            int i11 = (i10 / 64) - 1;
            long[] jArr2 = jArr[2];
            if (i11 >= jArr2.length) {
                return false;
            }
            if ((((~jArr2[i11]) | (~jArr[3][i11])) & jArr[4][i11] & (1 << (i10 % 64))) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isPotentiallyNull(LocalVariableBinding localVariableBinding) {
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                return ((1 << i10) & (this.nullBit2 & ((~this.nullBit1) | (~this.nullBit3)))) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null) {
                return false;
            }
            int i11 = (i10 / 64) - 1;
            long[] jArr2 = jArr[2];
            if (i11 >= jArr2.length) {
                return false;
            }
            if (((1 << (i10 % 64)) & ((~jArr2[i11]) | (~jArr[4][i11])) & jArr[3][i11]) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isPotentiallyUnknown(LocalVariableBinding localVariableBinding) {
        int i10 = this.tagBits;
        if ((i10 & 3) != 0 || (i10 & 4) == 0) {
            return false;
        }
        int i11 = localVariableBinding.f102483id + this.maxFieldCount;
        if (i11 < 64) {
            long j10 = this.nullBit4;
            return (((((~this.nullBit3) & (~this.nullBit2)) | (~this.nullBit1)) & j10) & (1 << i11)) != 0;
        }
        long[][] jArr = this.extra;
        if (jArr == null) {
            return false;
        }
        int i12 = (i11 / 64) - 1;
        long[] jArr2 = jArr[2];
        if (i12 >= jArr2.length) {
            return false;
        }
        long j11 = jArr[5][i12];
        return (((((~jArr[4][i12]) & (~jArr[3][i12])) | (~jArr2[i12])) & j11) & (1 << (i11 % 64))) != 0;
    }

    @Override
    public final boolean isProtectedNonNull(LocalVariableBinding localVariableBinding) {
        int i10;
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                return ((1 << i11) & ((this.nullBit1 & this.nullBit3) & this.nullBit4)) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null || (i10 = (i11 / 64) - 1) >= jArr[0].length) {
                return false;
            }
            if (((1 << (i11 % 64)) & jArr[5][i10] & jArr[2][i10] & jArr[4][i10]) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean isProtectedNull(LocalVariableBinding localVariableBinding) {
        int i10;
        if ((this.tagBits & 4) != 0 && (localVariableBinding.type.tagBits & 2) == 0) {
            int i11 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i11 < 64) {
                return ((1 << i11) & ((this.nullBit1 & this.nullBit2) & (this.nullBit3 ^ this.nullBit4))) != 0;
            }
            long[][] jArr = this.extra;
            if (jArr == null || (i10 = (i11 / 64) - 1) >= jArr[0].length) {
                return false;
            }
            if (((1 << (i11 % 64)) & (jArr[5][i10] ^ jArr[4][i10]) & jArr[2][i10] & jArr[3][i10]) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void markAsComparedEqualToNonNull(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                long j11 = this.nullBit1;
                long j12 = j10 & j11;
                long j13 = this.nullBit2;
                long j14 = (~j13) & j12;
                long j15 = this.nullBit3;
                long j16 = j14 & (~j15);
                long j17 = this.nullBit4;
                if ((j16 & j17) != 0) {
                    this.nullBit4 = j17 & (~j10);
                } else if ((j14 & j15) == 0) {
                    this.nullBit4 = j17 | j10;
                    if (j12 == 0) {
                        if ((j10 & j13 & (j15 ^ j17)) != 0) {
                            this.nullBit2 = (~j10) & j13;
                        } else if (((j17 | j13 | j15) & j10) == 0) {
                            this.nullBit2 = j13 | j10;
                        }
                    }
                }
                this.nullBit1 = j11 | j10;
                this.nullBit3 = j15 | j10;
                this.iNBit = (~j10) & this.iNBit;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long j18 = 1 << (i10 % 64);
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[2];
            long j19 = jArr6[i12] & j18;
            long[] jArr7 = jArr5[3];
            long j20 = jArr7[i12];
            long j21 = (~j20) & j19;
            long[] jArr8 = jArr5[4];
            long j22 = jArr8[i12];
            long j23 = (~j22) & j21;
            long[] jArr9 = jArr5[5];
            long j24 = jArr9[i12];
            if ((j23 & j24) != 0) {
                jArr9[i12] = j24 & (~j18);
            } else if ((j21 & j22) == 0) {
                jArr9[i12] = j24 | j18;
                if (j19 == 0) {
                    if ((j18 & j20 & (j22 ^ j24)) != 0) {
                        jArr7[i12] = jArr7[i12] & (~j18);
                    } else if (((j20 | j22 | j24) & j18) == 0) {
                        jArr7[i12] = jArr7[i12] | j18;
                    }
                }
            }
            jArr6[i12] = jArr6[i12] | j18;
            jArr8[i12] = jArr8[i12] | j18;
            long[] jArr10 = jArr5[6];
            jArr10[i12] = (~j18) & jArr10[i12];
        }
    }

    @Override
    public void markAsComparedEqualToNull(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                long j11 = this.nullBit1;
                if ((j10 & j11) != 0) {
                    long j12 = (~this.nullBit2) | this.nullBit3;
                    long j13 = this.nullBit4;
                    if (((j12 | (~j13)) & j10) != 0) {
                        this.nullBit4 = (~j10) & j13;
                    }
                } else {
                    long j14 = this.nullBit4;
                    if ((j10 & j14) != 0) {
                        this.nullBit3 &= ~j10;
                    } else if ((this.nullBit2 & j10) != 0) {
                        this.nullBit3 &= ~j10;
                        this.nullBit4 = j14 | j10;
                    } else {
                        this.nullBit3 |= j10;
                    }
                }
                this.nullBit1 = j11 | j10;
                this.nullBit2 |= j10;
                this.iNNBit = (~j10) & this.iNNBit;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long j15 = 1 << (i10 % 64);
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[2];
            if ((jArr6[i12] & j15) != 0) {
                long j16 = (~jArr5[3][i12]) | jArr5[4][i12];
                long[] jArr7 = jArr5[5];
                long j17 = jArr7[i12];
                if ((((~j17) | j16) & j15) != 0) {
                    jArr7[i12] = (~j15) & j17;
                }
            } else {
                long[] jArr8 = jArr5[5];
                if ((jArr8[i12] & j15) != 0) {
                    long[] jArr9 = jArr5[4];
                    jArr9[i12] = jArr9[i12] & (~j15);
                } else if ((j15 & jArr5[3][i12]) != 0) {
                    long[] jArr10 = jArr5[4];
                    jArr10[i12] = jArr10[i12] & (~j15);
                    jArr8[i12] = jArr8[i12] | j15;
                } else {
                    long[] jArr11 = jArr5[4];
                    jArr11[i12] = jArr11[i12] | j15;
                }
            }
            jArr6[i12] = jArr6[i12] | j15;
            long[] jArr12 = jArr5[3];
            jArr12[i12] = jArr12[i12] | j15;
            long[] jArr13 = jArr5[7];
            jArr13[i12] = (~j15) & jArr13[i12];
        }
    }

    @Override
    public void markAsDefinitelyNonNull(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                this.nullBit1 |= j10;
                this.nullBit3 |= j10;
                long j11 = this.nullBit2;
                long j12 = ~j10;
                this.nullBit2 = j11 & j12;
                this.nullBit4 &= j12;
                this.iNBit &= j12;
                this.iNNBit &= j12;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[2];
            long j13 = 1 << (i10 % 64);
            jArr6[i12] = jArr6[i12] | j13;
            long[] jArr7 = jArr5[4];
            jArr7[i12] = jArr7[i12] | j13;
            long[] jArr8 = jArr5[3];
            long j14 = jArr8[i12];
            long j15 = ~j13;
            jArr8[i12] = j14 & j15;
            long[] jArr9 = jArr5[5];
            jArr9[i12] = jArr9[i12] & j15;
            long[] jArr10 = jArr5[6];
            jArr10[i12] = jArr10[i12] & j15;
            long[] jArr11 = jArr5[7];
            jArr11[i12] = jArr11[i12] & j15;
        }
    }

    @Override
    public void markAsDefinitelyNull(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                this.nullBit1 |= j10;
                this.nullBit2 |= j10;
                long j11 = this.nullBit3;
                long j12 = ~j10;
                this.nullBit3 = j11 & j12;
                this.nullBit4 &= j12;
                this.iNBit &= j12;
                this.iNNBit &= j12;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[2];
            long j13 = 1 << (i10 % 64);
            jArr6[i12] = jArr6[i12] | j13;
            long[] jArr7 = jArr5[3];
            jArr7[i12] = jArr7[i12] | j13;
            long[] jArr8 = jArr5[4];
            long j14 = jArr8[i12];
            long j15 = ~j13;
            jArr8[i12] = j14 & j15;
            long[] jArr9 = jArr5[5];
            jArr9[i12] = jArr9[i12] & j15;
            long[] jArr10 = jArr5[6];
            jArr10[i12] = jArr10[i12] & j15;
            long[] jArr11 = jArr5[7];
            jArr11[i12] = jArr11[i12] & j15;
        }
    }

    @Override
    public void markAsDefinitelyUnknown(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                this.nullBit1 |= j10;
                this.nullBit4 |= j10;
                long j11 = this.nullBit2;
                long j12 = ~j10;
                this.nullBit2 = j11 & j12;
                this.nullBit3 &= j12;
                this.iNBit &= j12;
                this.iNNBit &= j12;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[2];
            long j13 = 1 << (i10 % 64);
            jArr6[i12] = jArr6[i12] | j13;
            long[] jArr7 = jArr5[5];
            jArr7[i12] = jArr7[i12] | j13;
            long[] jArr8 = jArr5[3];
            long j14 = jArr8[i12];
            long j15 = ~j13;
            jArr8[i12] = j14 & j15;
            long[] jArr9 = jArr5[4];
            jArr9[i12] = jArr9[i12] & j15;
            long[] jArr10 = jArr5[6];
            jArr10[i12] = jArr10[i12] & j15;
            long[] jArr11 = jArr5[7];
            jArr11[i12] = jArr11[i12] & j15;
        }
    }

    @Override
    public void markPotentiallyNonNullBit(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                isTrue((this.nullBit1 & j10) == 0, "Adding 'potentially non-null' mark in unexpected state");
                this.nullBit3 = j10 | this.nullBit3;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long j11 = 1 << (i10 % 64);
            isTrue((this.extra[2][i12] & j11) == 0, "Adding 'potentially non-null' mark in unexpected state");
            long[] jArr5 = this.extra[4];
            jArr5[i12] = j11 | jArr5[i12];
        }
    }

    @Override
    public void markPotentiallyNullBit(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                isTrue((this.nullBit1 & j10) == 0, "Adding 'potentially null' mark in unexpected state");
                this.nullBit2 |= j10;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long j11 = 1 << (i10 % 64);
            long[][] jArr5 = this.extra;
            long[] jArr6 = jArr5[3];
            jArr6[i12] = jArr6[i12] | j11;
            isTrue((j11 & jArr5[2][i12]) == 0, "Adding 'potentially null' mark in unexpected state");
        }
    }

    @Override
    public void markPotentiallyUnknownBit(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = 1 << i10;
                isTrue((this.nullBit1 & j10) == 0, "Adding 'unknown' mark in unexpected state");
                this.nullBit4 |= j10;
                return;
            }
            int i11 = i10 / 64;
            int i12 = i11 - 1;
            long[][] jArr = this.extra;
            if (jArr == null) {
                createExtraSpace(i11);
            } else {
                int length = jArr[0].length;
                if (i12 >= length) {
                    for (int i13 = 0; i13 < 8; i13++) {
                        long[][] jArr2 = this.extra;
                        long[] jArr3 = jArr2[i13];
                        long[] jArr4 = new long[i11];
                        jArr2[i13] = jArr4;
                        System.arraycopy(jArr3, 0, jArr4, 0, length);
                    }
                }
            }
            long j11 = 1 << (i10 % 64);
            isTrue((this.extra[2][i12] & j11) == 0, "Adding 'unknown' mark in unexpected state");
            long[] jArr5 = this.extra[5];
            jArr5[i12] = jArr5[i12] | j11;
        }
    }

    @Override
    public UnconditionalFlowInfo mergeDefiniteInitsWith(UnconditionalFlowInfo unconditionalFlowInfo) {
        if ((unconditionalFlowInfo.tagBits & 1) != 0 && this != FlowInfo.DEAD_END) {
            return this;
        }
        if ((this.tagBits & 1) != 0) {
            return (UnconditionalFlowInfo) unconditionalFlowInfo.copy();
        }
        this.definiteInits &= unconditionalFlowInfo.definiteInits;
        long[][] jArr = this.extra;
        if (jArr != null) {
            long[][] jArr2 = unconditionalFlowInfo.extra;
            if (jArr2 != null) {
                int length = jArr[0].length;
                int length2 = jArr2[0].length;
                if (length < length2) {
                    for (int i10 = 0; i10 < 8; i10++) {
                        long[][] jArr3 = this.extra;
                        long[] jArr4 = jArr3[i10];
                        long[] jArr5 = new long[length2];
                        jArr3[i10] = jArr5;
                        System.arraycopy(jArr4, 0, jArr5, 0, length);
                    }
                    int i11 = 0;
                    while (i11 < length) {
                        long[] jArr6 = this.extra[0];
                        jArr6[i11] = jArr6[i11] & unconditionalFlowInfo.extra[0][i11];
                        i11++;
                    }
                    while (i11 < length2) {
                        this.extra[0][i11] = unconditionalFlowInfo.extra[0][i11];
                        i11++;
                    }
                } else {
                    for (int i12 = 0; i12 < length2; i12++) {
                        long[] jArr7 = this.extra[0];
                        jArr7[i12] = jArr7[i12] & unconditionalFlowInfo.extra[0][i12];
                    }
                }
            } else {
                int i13 = 0;
                while (true) {
                    long[] jArr8 = this.extra[0];
                    if (i13 >= jArr8.length) {
                        break;
                    }
                    jArr8[i13] = 0;
                    i13++;
                }
            }
        } else {
            long[][] jArr9 = unconditionalFlowInfo.extra;
            if (jArr9 != null) {
                int length3 = jArr9[0].length;
                createExtraSpace(length3);
                System.arraycopy(unconditionalFlowInfo.extra[0], 0, this.extra[0], 0, length3);
            }
        }
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0541 A[LOOP:1: B:41:0x027d->B:42:0x0541, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x051b A[LOOP:2: B:44:0x027f->B:45:0x051b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x04fc A[LOOP:3: B:47:0x0281->B:48:0x04fc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0298 A[EDGE_INSN: B:72:0x0298->B:73:0x0298 BREAK  A[LOOP:4: B:57:0x0295->B:69:0x04ea], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ab  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public UnconditionalFlowInfo mergedWith(UnconditionalFlowInfo unconditionalFlowInfo) {
        UnconditionalFlowInfo unconditionalFlowInfo2;
        boolean z10;
        boolean z11;
        UnconditionalFlowInfo unconditionalFlowInfo3;
        UnconditionalFlowInfo unconditionalFlowInfo4;
        boolean z12;
        long[][] jArr;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        char c10;
        int i19 = unconditionalFlowInfo.tagBits;
        if ((i19 & 1) != 0 && this != FlowInfo.DEAD_END) {
            return this;
        }
        int i20 = this.tagBits;
        if ((i20 & 1) != 0) {
            return (UnconditionalFlowInfo) unconditionalFlowInfo.copy();
        }
        this.definiteInits &= unconditionalFlowInfo.definiteInits;
        this.potentialInits |= unconditionalFlowInfo.potentialInits;
        boolean z13 = (i20 & 4) != 0;
        boolean z14 = (i19 & 4) != 0;
        if ((i19 & 2) == 0) {
            if ((i20 & 2) != 0) {
                this.nullBit1 = unconditionalFlowInfo.nullBit1;
                this.nullBit2 = unconditionalFlowInfo.nullBit2;
                this.nullBit3 = unconditionalFlowInfo.nullBit3;
                this.nullBit4 = unconditionalFlowInfo.nullBit4;
                this.iNBit = unconditionalFlowInfo.iNBit;
                this.iNNBit = unconditionalFlowInfo.iNNBit;
                this.tagBits = i19;
                unconditionalFlowInfo3 = this;
                z12 = z14;
                z11 = z12;
                z10 = false;
                unconditionalFlowInfo4 = unconditionalFlowInfo;
            } else {
                if (z13) {
                    if (z14) {
                        long j10 = this.nullBit1;
                        long j11 = unconditionalFlowInfo.nullBit1;
                        long j12 = j10 & j11;
                        long j13 = this.nullBit2;
                        long j14 = unconditionalFlowInfo.nullBit2;
                        long j15 = this.nullBit3;
                        long j16 = this.nullBit4;
                        long j17 = j15 & j16;
                        long j18 = unconditionalFlowInfo.nullBit3;
                        long j19 = unconditionalFlowInfo.nullBit4;
                        long j20 = j18 & j19;
                        long j21 = (~(j17 ^ j20)) & j14;
                        long j22 = ~j14;
                        long j23 = (j21 | (j17 & j22)) & j13;
                        long j24 = ~j13;
                        z10 = z13;
                        long j25 = ~j15;
                        z11 = z14;
                        this.nullBit1 = j12 & (j23 | (j24 & ((j14 & j18 & j19) | (j22 & (j25 ^ j18)))));
                        long j26 = ~j18;
                        long j27 = ~j11;
                        long j28 = ~j10;
                        long j29 = j15 & (j16 | j28);
                        long j30 = ~j19;
                        long j31 = j14 & (j26 | j27 | (j29 & j30));
                        long j32 = ~j16;
                        long j33 = j31 | (j13 & (j14 | (j32 & j18 & (j19 | j27)) | j25 | j28));
                        unconditionalFlowInfo3 = this;
                        unconditionalFlowInfo3.nullBit2 = j33;
                        long j34 = j11 & j22;
                        unconditionalFlowInfo3.nullBit3 = (j15 & ((j10 & j24) | j28 | (j18 & (j32 ^ j19)))) | (j18 & (j27 | j34));
                        long j35 = (j27 & j26 & j19) | (j11 & ((j22 & j26) | (j16 & j14 & j30)));
                        long j36 = j16 & j28;
                        long j37 = j11 & j14;
                        long j38 = (j17 & (j20 | j34 | (j28 & j13))) | (j25 & (j35 | (j36 & (j26 | j37))));
                        long j39 = j27 & j19;
                        unconditionalFlowInfo3.nullBit4 = j38 | (j24 & (j39 | (j11 & j26) | j36) & j22) | (j10 & ((j13 & ((j15 & j32 & j11) | j39) & j26) | (j25 & ((j26 & j19) | (j37 & j18 & j30) | (j24 & (j26 | j22)))) | (j24 & j18 & j19))) | (j18 & j27 & j14 & j19);
                    } else {
                        z10 = z13;
                        z11 = z14;
                        unconditionalFlowInfo3 = this;
                        long j40 = unconditionalFlowInfo3.nullBit1;
                        unconditionalFlowInfo3.nullBit1 = 0L;
                        long j41 = unconditionalFlowInfo3.nullBit2;
                        long j42 = unconditionalFlowInfo3.nullBit3;
                        long j43 = ~j42;
                        long j44 = ~j40;
                        long j45 = j43 | j44;
                        unconditionalFlowInfo3.nullBit2 = j41 & j45;
                        long j46 = ~j41;
                        long j47 = unconditionalFlowInfo3.nullBit4;
                        unconditionalFlowInfo3.nullBit3 = ((~j47) & j40 & j46) | (j42 & ((j46 & j47) | j44));
                        unconditionalFlowInfo3.nullBit4 = ((j45 | j46) & j44 & j47) | (j46 & j40 & j45);
                    }
                    unconditionalFlowInfo2 = unconditionalFlowInfo;
                    unconditionalFlowInfo3.iNBit |= unconditionalFlowInfo2.iNBit;
                    unconditionalFlowInfo3.iNNBit |= unconditionalFlowInfo2.iNNBit;
                } else {
                    unconditionalFlowInfo2 = unconditionalFlowInfo;
                    z10 = z13;
                    z11 = z14;
                    unconditionalFlowInfo3 = this;
                    if (z11) {
                        unconditionalFlowInfo3.nullBit1 = 0L;
                        long j48 = unconditionalFlowInfo2.nullBit2;
                        long j49 = unconditionalFlowInfo2.nullBit3;
                        long j50 = ~j49;
                        long j51 = unconditionalFlowInfo2.nullBit1;
                        long j52 = ~j51;
                        long j53 = j50 | j52;
                        long j54 = j48 & j53;
                        unconditionalFlowInfo3.nullBit2 = j54;
                        long j55 = ~j48;
                        long j56 = unconditionalFlowInfo2.nullBit4;
                        long j57 = (j51 & j55 & (~j56)) | (j49 & ((j55 & j56) | j52));
                        unconditionalFlowInfo3.nullBit3 = j57;
                        long j58 = (j55 & j53 & j51) | ((j53 | j55) & j52 & j56);
                        unconditionalFlowInfo3.nullBit4 = j58;
                        unconditionalFlowInfo4 = unconditionalFlowInfo;
                        unconditionalFlowInfo3.iNBit |= unconditionalFlowInfo4.iNBit;
                        unconditionalFlowInfo3.iNNBit |= unconditionalFlowInfo4.iNNBit;
                        z12 = (j54 == 0 && j57 == 0 && j58 == 0) ? false : true;
                    }
                }
                unconditionalFlowInfo4 = unconditionalFlowInfo2;
            }
            jArr = unconditionalFlowInfo3.extra;
            i10 = 4;
            if (jArr == null || unconditionalFlowInfo4.extra != null) {
                char c11 = 7;
                char c12 = 6;
                if (jArr == null) {
                    long[][] jArr2 = unconditionalFlowInfo4.extra;
                    if (jArr2 != null) {
                        i13 = 0;
                        i11 = jArr[0].length;
                        int length = jArr2[0].length;
                        if (i11 < length) {
                            for (int i21 = 0; i21 < 8; i21++) {
                                long[][] jArr3 = unconditionalFlowInfo3.extra;
                                long[] jArr4 = jArr3[i21];
                                long[] jArr5 = new long[length];
                                jArr3[i21] = jArr5;
                                System.arraycopy(jArr4, 0, jArr5, 0, i11);
                            }
                            i12 = 0;
                            i13 = length;
                        } else {
                            i12 = i11;
                            i11 = length;
                        }
                    } else {
                        i13 = 0;
                        i12 = jArr[0].length;
                        i11 = 0;
                    }
                } else {
                    int i22 = 0;
                    long[][] jArr6 = unconditionalFlowInfo4.extra;
                    if (jArr6 != null) {
                        int length2 = jArr6[0].length;
                        unconditionalFlowInfo3.extra = new long[8];
                        int i23 = 0;
                        while (i23 < 8) {
                            unconditionalFlowInfo3.extra[i23] = new long[length2];
                            i23++;
                            i22 = 0;
                        }
                        System.arraycopy(unconditionalFlowInfo4.extra[1], i22, unconditionalFlowInfo3.extra[1], i22, length2);
                        System.arraycopy(unconditionalFlowInfo4.extra[6], i22, unconditionalFlowInfo3.extra[6], i22, length2);
                        System.arraycopy(unconditionalFlowInfo4.extra[7], i22, unconditionalFlowInfo3.extra[7], i22, length2);
                        i13 = length2;
                        i11 = 0;
                        i12 = 0;
                    } else {
                        i11 = 0;
                        i12 = 0;
                        i13 = 0;
                    }
                }
                i14 = 0;
                while (i14 < i11) {
                    int i24 = i10;
                    UnconditionalFlowInfo unconditionalFlowInfo5 = unconditionalFlowInfo4;
                    char c13 = c11;
                    UnconditionalFlowInfo unconditionalFlowInfo6 = unconditionalFlowInfo3;
                    long[][] jArr7 = unconditionalFlowInfo6.extra;
                    long[] jArr8 = jArr7[0];
                    long j59 = jArr8[i14];
                    long[][] jArr9 = unconditionalFlowInfo5.extra;
                    jArr8[i14] = j59 & jArr9[0][i14];
                    long[] jArr10 = jArr7[1];
                    jArr10[i14] = jArr10[i14] | jArr9[1][i14];
                    i14++;
                    unconditionalFlowInfo4 = unconditionalFlowInfo5;
                    i10 = i24;
                    c12 = 6;
                    c11 = c13;
                    unconditionalFlowInfo3 = unconditionalFlowInfo6;
                }
                while (i14 < i13) {
                    char c14 = c11;
                    UnconditionalFlowInfo unconditionalFlowInfo7 = unconditionalFlowInfo3;
                    unconditionalFlowInfo7.extra[1][i14] = unconditionalFlowInfo.extra[1][i14];
                    i14++;
                    c12 = c12;
                    unconditionalFlowInfo4 = unconditionalFlowInfo;
                    i10 = i10;
                    c11 = c14;
                    unconditionalFlowInfo3 = unconditionalFlowInfo7;
                }
                while (i14 < i12) {
                    char c15 = c11;
                    UnconditionalFlowInfo unconditionalFlowInfo8 = unconditionalFlowInfo3;
                    unconditionalFlowInfo8.extra[0][i14] = 0;
                    i14++;
                    unconditionalFlowInfo4 = unconditionalFlowInfo;
                    c12 = c12;
                    i10 = i10;
                    c11 = c15;
                    unconditionalFlowInfo3 = unconditionalFlowInfo8;
                }
                if (z11) {
                    if (i12 >= i11) {
                        i11 = i12;
                    }
                    i15 = 0;
                    i16 = 0;
                } else {
                    i15 = i11;
                    i11 = i12;
                    i16 = i13;
                }
                i17 = z10 ? 0 : i11;
                i18 = 0;
                while (true) {
                    c10 = 3;
                    if (i18 < i15) {
                        break;
                    }
                    int i25 = i16;
                    int i26 = i17;
                    long[][] jArr11 = unconditionalFlowInfo3.extra;
                    long[] jArr12 = jArr11[2];
                    long j60 = jArr12[i18];
                    long[][] jArr13 = unconditionalFlowInfo.extra;
                    long j61 = jArr13[2][i18];
                    long j62 = j60 & j61;
                    long[] jArr14 = jArr11[3];
                    long j63 = jArr14[i18];
                    int i27 = i15;
                    long j64 = jArr13[3][i18];
                    long[] jArr15 = jArr11[4];
                    long j65 = jArr15[i18];
                    long[] jArr16 = jArr11[5];
                    long j66 = jArr16[i18];
                    long j67 = j65 & j66;
                    long j68 = jArr13[4][i18];
                    long j69 = jArr13[5][i18];
                    long j70 = j68 & j69;
                    boolean z15 = z12;
                    int i28 = i18;
                    long j71 = (~(j67 ^ j70)) & j64;
                    long j72 = ~j64;
                    long j73 = (j71 | (j67 & j72)) & j63;
                    long j74 = ~j63;
                    long j75 = ~j65;
                    jArr12[i28] = j62 & (j73 | (j74 & ((j64 & j68 & j69) | (j72 & (j75 ^ j68)))));
                    long j76 = ~j68;
                    long j77 = ~j61;
                    long j78 = ~j60;
                    long j79 = j65 & (j66 | j78);
                    long j80 = ~j69;
                    long j81 = j64 & (j76 | j77 | (j79 & j80));
                    long j82 = ~j66;
                    jArr14[i28] = j81 | (j63 & (j64 | (j82 & j68 & (j69 | j77)) | j75 | j78));
                    long j83 = j61 & j72;
                    jArr15[i28] = (j65 & (j78 | (j60 & j74) | (j68 & (j82 ^ j69)))) | (j68 & (j77 | j83));
                    long j84 = (j77 & j76 & j69) | (j61 & ((j72 & j76) | (j66 & j64 & j80)));
                    long j85 = j66 & j78;
                    long j86 = j61 & j64;
                    long j87 = (j75 & (j84 | (j85 & (j76 | j86)))) | (j67 & (j70 | j83 | (j78 & j63)));
                    long j88 = j77 & j69;
                    jArr16[i28] = j87 | (j74 & (j88 | (j61 & j76) | j85) & j72) | (j60 & ((j75 & ((j76 & j69) | (j86 & j68 & j80) | (j74 & (j76 | j72)))) | (j74 & j68 & j69) | (j63 & (j88 | (j65 & j82 & j61)) & j76))) | (j68 & j77 & j64 & j69);
                    long[] jArr17 = jArr11[6];
                    jArr17[i28] = jArr17[i28] | jArr13[6][i28];
                    long[] jArr18 = jArr11[7];
                    jArr18[i28] = jArr18[i28] | jArr13[7][i28];
                    z12 = (!z15 && jArr14[i28] == 0 && jArr15[i28] == 0 && jArr16[i28] == 0) ? false : true;
                    i18 = i28 + 1;
                    unconditionalFlowInfo4 = unconditionalFlowInfo;
                    i10 = 4;
                    i17 = i26;
                    i15 = i27;
                    i16 = i25;
                    unconditionalFlowInfo3 = this;
                }
                while (i18 < i16) {
                    UnconditionalFlowInfo unconditionalFlowInfo9 = unconditionalFlowInfo3;
                    int i29 = i17;
                    long[][] jArr19 = unconditionalFlowInfo9.extra;
                    jArr19[2][i18] = 0;
                    long[] jArr20 = jArr19[3];
                    long[][] jArr21 = unconditionalFlowInfo4.extra;
                    long j89 = jArr21[3][i18];
                    long j90 = jArr21[4][i18];
                    long j91 = ~j90;
                    long j92 = jArr21[2][i18];
                    long j93 = ~j92;
                    long j94 = j91 | j93;
                    jArr20[i18] = j89 & j94;
                    long[] jArr22 = jArr19[4];
                    long j95 = ~j89;
                    int i30 = i16;
                    long j96 = jArr21[5][i18];
                    jArr22[i18] = (j90 & ((j95 & j96) | j93)) | (j92 & j95 & (~j96));
                    long[] jArr23 = jArr19[5];
                    jArr23[i18] = ((j94 | j95) & j93 & j96) | (j92 & j94 & j95);
                    long[] jArr24 = jArr19[6];
                    jArr24[i18] = jArr24[i18] | jArr21[6][i18];
                    long[] jArr25 = jArr19[7];
                    jArr25[i18] = jArr25[i18] | jArr21[7][i18];
                    z12 = (!z12 && jArr20[i18] == 0 && jArr22[i18] == 0 && jArr23[i18] == 0) ? false : true;
                    i18++;
                    unconditionalFlowInfo4 = unconditionalFlowInfo;
                    unconditionalFlowInfo3 = unconditionalFlowInfo9;
                    i17 = i29;
                    i16 = i30;
                    i10 = 4;
                    c10 = 3;
                }
                while (i18 < i17) {
                    long[][] jArr26 = unconditionalFlowInfo3.extra;
                    long[] jArr27 = jArr26[2];
                    long j97 = jArr27[i18];
                    jArr27[i18] = 0;
                    long[] jArr28 = jArr26[c10];
                    long j98 = jArr28[i18];
                    long[] jArr29 = jArr26[i10];
                    long j99 = jArr29[i18];
                    long j100 = ~j99;
                    int i31 = i17;
                    long j101 = ~j97;
                    long j102 = j100 | j101;
                    jArr28[i18] = j98 & j102;
                    long j103 = ~j98;
                    long[] jArr30 = jArr26[5];
                    long j104 = jArr30[i18];
                    jArr29[i18] = (j97 & j103 & (~j104)) | (j99 & ((j103 & j104) | j101));
                    long j105 = (j104 & (j102 | j103) & j101) | (j97 & j102 & j103);
                    jArr30[i18] = j105;
                    z12 = (!z12 && jArr28[i18] == 0 && jArr29[i18] == 0 && j105 == 0) ? false : true;
                    i18++;
                    unconditionalFlowInfo3 = this;
                    i17 = i31;
                    i10 = 4;
                    c10 = 3;
                }
            }
            if (z12) {
                unconditionalFlowInfo3.tagBits &= -5;
            } else {
                unconditionalFlowInfo3.tagBits |= i10;
            }
            return unconditionalFlowInfo3;
        }
        unconditionalFlowInfo4 = unconditionalFlowInfo;
        z10 = z13;
        z11 = false;
        unconditionalFlowInfo3 = this;
        z12 = z10;
        jArr = unconditionalFlowInfo3.extra;
        i10 = 4;
        if (jArr == null) {
        }
        char c112 = 7;
        char c122 = 6;
        if (jArr == null) {
        }
        i14 = 0;
        while (i14 < i11) {
        }
        while (i14 < i13) {
        }
        while (i14 < i12) {
        }
        if (z11) {
        }
        if (z10) {
        }
        i18 = 0;
        while (true) {
            c10 = 3;
            if (i18 < i15) {
            }
            i18 = i28 + 1;
            unconditionalFlowInfo4 = unconditionalFlowInfo;
            i10 = 4;
            i17 = i26;
            i15 = i27;
            i16 = i25;
            unconditionalFlowInfo3 = this;
        }
        while (i18 < i16) {
        }
        while (i18 < i17) {
        }
        if (z12) {
        }
        return unconditionalFlowInfo3;
    }

    @Override
    public UnconditionalFlowInfo nullInfoLessUnconditionalCopy() {
        if (this == FlowInfo.DEAD_END) {
            return this;
        }
        UnconditionalFlowInfo unconditionalFlowInfo = new UnconditionalFlowInfo();
        unconditionalFlowInfo.definiteInits = this.definiteInits;
        unconditionalFlowInfo.potentialInits = this.potentialInits;
        unconditionalFlowInfo.iNBit = -1L;
        unconditionalFlowInfo.iNNBit = -1L;
        unconditionalFlowInfo.tagBits = (this.tagBits & (-5)) | 64;
        unconditionalFlowInfo.maxFieldCount = this.maxFieldCount;
        if (this.extra != null) {
            long[][] jArr = new long[8];
            unconditionalFlowInfo.extra = jArr;
            long[] jArr2 = this.extra[0];
            int length = jArr2.length;
            long[] jArr3 = new long[length];
            jArr[0] = jArr3;
            System.arraycopy(jArr2, 0, jArr3, 0, length);
            long[] jArr4 = this.extra[1];
            long[] jArr5 = new long[length];
            unconditionalFlowInfo.extra[1] = jArr5;
            System.arraycopy(jArr4, 0, jArr5, 0, length);
            for (int i10 = 2; i10 < 8; i10++) {
                unconditionalFlowInfo.extra[i10] = new long[length];
            }
            Arrays.fill(unconditionalFlowInfo.extra[6], -1L);
            Arrays.fill(unconditionalFlowInfo.extra[7], -1L);
        }
        return unconditionalFlowInfo;
    }

    @Override
    public void resetAssignmentInfo(LocalVariableBinding localVariableBinding) {
        resetAssignmentInfo(localVariableBinding.f102483id + this.maxFieldCount);
    }

    @Override
    public void resetNullInfo(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            this.tagBits |= 4;
            int i10 = localVariableBinding.f102483id + this.maxFieldCount;
            if (i10 < 64) {
                long j10 = this.nullBit1;
                long j11 = ~(1 << i10);
                this.nullBit1 = j10 & j11;
                this.nullBit2 &= j11;
                this.nullBit3 &= j11;
                this.nullBit4 &= j11;
                this.iNBit &= j11;
                this.iNNBit &= j11;
                return;
            }
            int i11 = (i10 / 64) - 1;
            long[][] jArr = this.extra;
            if (jArr != null) {
                long[] jArr2 = jArr[2];
                if (i11 >= jArr2.length) {
                    return;
                }
                long j12 = jArr2[i11];
                long j13 = ~(1 << (i10 % 64));
                jArr2[i11] = j12 & j13;
                long[] jArr3 = jArr[3];
                jArr3[i11] = jArr3[i11] & j13;
                long[] jArr4 = jArr[4];
                jArr4[i11] = jArr4[i11] & j13;
                long[] jArr5 = jArr[5];
                jArr5[i11] = jArr5[i11] & j13;
                long[] jArr6 = jArr[6];
                jArr6[i11] = jArr6[i11] & j13;
                long[] jArr7 = jArr[7];
                jArr7[i11] = jArr7[i11] & j13;
            }
        }
    }

    @Override
    public FlowInfo safeInitsWhenTrue() {
        return copy();
    }

    @Override
    public FlowInfo setReachMode(int i10) {
        if (this == FlowInfo.DEAD_END) {
            return this;
        }
        if (i10 == 0) {
            this.tagBits &= -4;
        } else if (i10 == 2) {
            this.tagBits |= 2;
        } else {
            if ((this.tagBits & 3) == 0) {
                this.potentialInits = 0L;
                long[][] jArr = this.extra;
                if (jArr != null) {
                    int length = jArr[0].length;
                    for (int i11 = 0; i11 < length; i11++) {
                        this.extra[1][i11] = 0;
                    }
                }
            }
            this.tagBits = i10 | this.tagBits;
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v3 */
    @Override
    public String toString() {
        if (this == FlowInfo.DEAD_END) {
            return "FlowInfo.DEAD_END";
        }
        char c10 = 4;
        String str = "], reachable:";
        ?? r13 = 0;
        if ((this.tagBits & 4) == 0) {
            if (this.extra == null) {
                StringBuilder sb2 = new StringBuilder("FlowInfo<def: ");
                sb2.append(this.definiteInits);
                sb2.append(", pot: ");
                sb2.append(this.potentialInits);
                sb2.append(", reachable:");
                sb2.append((this.tagBits & 3) == 0);
                sb2.append(", no null info>");
                return sb2.toString();
            }
            String str2 = "FlowInfo<def:[" + this.definiteInits;
            String str3 = "], pot:[" + this.potentialInits;
            char c11 = 0;
            long[] jArr = this.extra[0];
            int length = jArr.length > 3 ? 3 : jArr.length;
            int i10 = 0;
            while (i10 < length) {
                str2 = String.valueOf(str2) + DocLint.SEPARATOR + this.extra[0][i10];
                str3 = String.valueOf(str3) + DocLint.SEPARATOR + this.extra[1][i10];
                i10++;
                c11 = 0;
            }
            if (length < this.extra[c11].length) {
                str2 = String.valueOf(str2) + ",...";
                str3 = String.valueOf(str3) + ",...";
            }
            StringBuilder sb3 = new StringBuilder(String.valueOf(str2));
            sb3.append(str3);
            sb3.append("], reachable:");
            sb3.append((this.tagBits & 3) == 0);
            sb3.append(", no null info>");
            return sb3.toString();
        }
        String str4 = ", incoming: ";
        if (this.extra == null) {
            StringBuilder sb4 = new StringBuilder("FlowInfo<def: ");
            sb4.append(this.definiteInits);
            sb4.append(", pot: ");
            sb4.append(this.potentialInits);
            sb4.append(", reachable:");
            sb4.append((this.tagBits & 3) == 0);
            sb4.append(", null: ");
            sb4.append(this.nullBit1);
            sb4.append(this.nullBit2);
            sb4.append(this.nullBit3);
            sb4.append(this.nullBit4);
            sb4.append(", incoming: ");
            sb4.append(this.iNBit);
            sb4.append(this.iNNBit);
            sb4.append(">");
            return sb4.toString();
        }
        String str5 = "FlowInfo<def:[" + this.definiteInits;
        String str6 = "], pot:[" + this.potentialInits;
        String str7 = ", null:[" + this.nullBit1 + this.nullBit2 + this.nullBit3 + this.nullBit4;
        long[] jArr2 = this.extra[0];
        int length2 = jArr2.length > 3 ? 3 : jArr2.length;
        int i11 = 0;
        while (i11 < length2) {
            StringBuilder sb5 = new StringBuilder(String.valueOf(str5));
            sb5.append(DocLint.SEPARATOR);
            String str8 = str4;
            sb5.append(this.extra[r13][i11]);
            str5 = sb5.toString();
            str6 = String.valueOf(str6) + DocLint.SEPARATOR + this.extra[1][i11];
            str7 = String.valueOf(str7) + DocLint.SEPARATOR + this.extra[2][i11] + this.extra[3][i11] + this.extra[c10][i11] + this.extra[5][i11] + str8 + this.extra[6][i11] + ((Object) this.extra[7]);
            i11++;
            str4 = str8;
            str = str;
            c10 = 4;
            r13 = 0;
        }
        if (length2 < this.extra[r13].length) {
            str5 = String.valueOf(str5) + ",...";
            str6 = String.valueOf(str6) + ",...";
            str7 = String.valueOf(str7) + ",...";
        }
        StringBuilder sb6 = new StringBuilder(String.valueOf(str5));
        sb6.append(str6);
        sb6.append(str);
        sb6.append((this.tagBits & 3) != 0 ? r13 : true);
        sb6.append(str7);
        sb6.append("]>");
        return sb6.toString();
    }

    @Override
    public UnconditionalFlowInfo unconditionalCopy() {
        return (UnconditionalFlowInfo) copy();
    }

    @Override
    public UnconditionalFlowInfo unconditionalFieldLessCopy() {
        UnconditionalFlowInfo unconditionalFlowInfo = new UnconditionalFlowInfo();
        unconditionalFlowInfo.tagBits = this.tagBits;
        unconditionalFlowInfo.maxFieldCount = this.maxFieldCount;
        int i10 = this.maxFieldCount;
        if (i10 < 64) {
            long j10 = this.definiteInits;
            long j11 = ~((1 << i10) - 1);
            unconditionalFlowInfo.definiteInits = j10 & j11;
            unconditionalFlowInfo.potentialInits = this.potentialInits & j11;
            unconditionalFlowInfo.nullBit1 = this.nullBit1 & j11;
            unconditionalFlowInfo.nullBit2 = this.nullBit2 & j11;
            unconditionalFlowInfo.nullBit3 = this.nullBit3 & j11;
            unconditionalFlowInfo.nullBit4 = this.nullBit4 & j11;
            unconditionalFlowInfo.iNBit = this.iNBit & j11;
            unconditionalFlowInfo.iNNBit = this.iNNBit & j11;
        }
        long[][] jArr = this.extra;
        if (jArr == null) {
            return unconditionalFlowInfo;
        }
        int i11 = i10 / 64;
        int i12 = i11 - 1;
        int length = jArr[0].length;
        if (i12 >= length) {
            return unconditionalFlowInfo;
        }
        unconditionalFlowInfo.extra = new long[8];
        if (i11 < length) {
            int i13 = length - i11;
            for (int i14 = 0; i14 < 8; i14++) {
                long[] jArr2 = this.extra[i14];
                long[] jArr3 = new long[length];
                unconditionalFlowInfo.extra[i14] = jArr3;
                System.arraycopy(jArr2, i11, jArr3, i11, i13);
            }
        } else if (i12 >= 0) {
            unconditionalFlowInfo.createExtraSpace(length);
        }
        if (i12 >= 0) {
            long j12 = ~((1 << (i10 % 64)) - 1);
            for (int i15 = 0; i15 < 8; i15++) {
                unconditionalFlowInfo.extra[i15][i12] = this.extra[i15][i12] & j12;
            }
        }
        return unconditionalFlowInfo;
    }

    @Override
    public UnconditionalFlowInfo unconditionalInits() {
        return this;
    }

    @Override
    public UnconditionalFlowInfo unconditionalInitsWithoutSideEffect() {
        return this;
    }

    public void resetAssignmentInfo(int i10) {
        if (this != FlowInfo.DEAD_END) {
            if (i10 < 64) {
                long j10 = this.definiteInits;
                long j11 = ~(1 << i10);
                this.definiteInits = j10 & j11;
                this.potentialInits = j11 & this.potentialInits;
                return;
            }
            int i11 = (i10 / 64) - 1;
            long[][] jArr = this.extra;
            if (jArr != null) {
                long[] jArr2 = jArr[0];
                if (i11 >= jArr2.length) {
                    return;
                }
                long j12 = jArr2[i11];
                long j13 = ~(1 << (i10 % 64));
                jArr2[i11] = j12 & j13;
                long[] jArr3 = jArr[1];
                jArr3[i11] = j13 & jArr3[i11];
            }
        }
    }

    @Override
    public final boolean isDefinitelyAssigned(FieldBinding fieldBinding) {
        if ((this.tagBits & 1) != 0) {
            return true;
        }
        return isDefinitelyAssigned(fieldBinding.f102483id);
    }

    @Override
    public final boolean isPotentiallyAssigned(FieldBinding fieldBinding) {
        return isPotentiallyAssigned(fieldBinding.f102483id);
    }

    @Override
    public final boolean isPotentiallyAssigned(LocalVariableBinding localVariableBinding) {
        if (localVariableBinding.constant() != Constant.NotAConstant) {
            return true;
        }
        return isPotentiallyAssigned(localVariableBinding.f102483id + this.maxFieldCount);
    }

    @Override
    public final boolean isDefinitelyAssigned(LocalVariableBinding localVariableBinding) {
        if ((this.tagBits & 1) == 0 || (localVariableBinding.declaration.bits & 1073741824) == 0) {
            return isDefinitelyAssigned(localVariableBinding.f102483id + this.maxFieldCount);
        }
        return true;
    }

    @Override
    public void markAsDefinitelyAssigned(FieldBinding fieldBinding) {
        if (this != FlowInfo.DEAD_END) {
            markAsDefinitelyAssigned(fieldBinding.f102483id);
        }
    }

    @Override
    public void markAsDefinitelyAssigned(LocalVariableBinding localVariableBinding) {
        if (this != FlowInfo.DEAD_END) {
            markAsDefinitelyAssigned(localVariableBinding.f102483id + this.maxFieldCount);
        }
    }
}
