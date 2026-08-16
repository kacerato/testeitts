package org.luaj.vm2.parser;

import G0.C2595v;
import b3.s;
import java.io.IOException;
import java.io.PrintStream;
import mk.C14289h;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.openjdk.tools.doclint.DocLint;
import ve.j;
import yd.C16181m;

public class LuaParserTokenManager implements LuaParserConstants {
    protected char curChar;
    int curLexState;
    public PrintStream debugStream;
    int defaultLexState;
    private StringBuffer image;
    protected SimpleCharStream input_stream;
    private final StringBuffer jjimage;
    private int jjimageLen;
    int jjmatchedKind;
    int jjmatchedPos;
    int jjnewStateCnt;
    int jjround;
    private final int[] jjrounds;
    private final int[] jjstateSet;
    private int lengthOfMatch;
    static final long[] jjbitVec0 = {-2, -1, -1, -1};
    static final long[] jjbitVec2 = {0, 0, -1, -1};
    static final int[] jjnextStates = {62, 63, 65, 32, 49, 50, 51, 36, 37, 38, 26, 27, 29, 22, 36, 37, 38, 46, 36, 47, 37, 38, 49, 50, 51, 59, 49, 60, 50, 51, 20, 25, 23, 24, 33, 34, 39, 40, 45, 52, 53, 58, 0, 1, 3};
    public static final String[] jjstrLiteralImages = {"", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", C2595v.f7483b, "nil", "not", "or", "return", "repeat", "then", "true", "until", "while", null, null, null, null, null, null, null, null, null, null, null, null, null, null, "::", null, null, null, C16181m.f130230g, ";", "=", DocLint.SEPARATOR, ".", s.f32937c, "(", ")", "[", "]", "...", "{", VectorFormat.DEFAULT_SUFFIX, "+", "-", "*", "/", "^", j.f121589a, ClasspathEntry.DOT_DOT, "<", "<=", ">", ">=", "==", "~="};
    public static final String[] lexStateNames = {"DEFAULT", "IN_COMMENT", "IN_LC0", "IN_LC1", "IN_LC2", "IN_LC3", "IN_LCN", "IN_LS0", "IN_LS1", "IN_LS2", "IN_LS3", "IN_LSN"};
    public static final int[] jjnewLexState = {-1, -1, -1, -1, -1, -1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    static final long[] jjtoToken = {6926536226618998785L, 2147483618};
    static final long[] jjtoSkip = {8257598, 0};
    static final long[] jjtoSpecial = {8257536, 0};
    static final long[] jjtoMore = {268566464, 0};

    public LuaParserTokenManager(SimpleCharStream simpleCharStream) {
        this.debugStream = System.out;
        this.jjrounds = new int[66];
        this.jjstateSet = new int[132];
        StringBuffer stringBuffer = new StringBuffer();
        this.jjimage = stringBuffer;
        this.image = stringBuffer;
        this.curLexState = 0;
        this.defaultLexState = 0;
        this.input_stream = simpleCharStream;
    }

    private void ReInitRounds() {
        this.jjround = C14289h.f97343g;
        int i10 = 66;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            this.jjrounds[i11] = Integer.MIN_VALUE;
            i10 = i11;
        }
    }

    private void jjAddStates(int i10, int i11) {
        while (true) {
            int[] iArr = this.jjstateSet;
            int i12 = this.jjnewStateCnt;
            this.jjnewStateCnt = i12 + 1;
            iArr[i12] = jjnextStates[i10];
            int i13 = i10 + 1;
            if (i10 == i11) {
                return;
            } else {
                i10 = i13;
            }
        }
    }

    private static final boolean jjCanMove_0(int i10, int i11, int i12, long j10, long j11) {
        return i10 != 0 ? (jjbitVec0[i11] & j10) != 0 : (jjbitVec2[i12] & j11) != 0;
    }

    private void jjCheckNAdd(int i10) {
        int[] iArr = this.jjrounds;
        int i11 = iArr[i10];
        int i12 = this.jjround;
        if (i11 != i12) {
            int[] iArr2 = this.jjstateSet;
            int i13 = this.jjnewStateCnt;
            this.jjnewStateCnt = i13 + 1;
            iArr2[i13] = i10;
            iArr[i10] = i12;
        }
    }

    private void jjCheckNAddStates(int i10, int i11) {
        while (true) {
            jjCheckNAdd(jjnextStates[i10]);
            int i12 = i10 + 1;
            if (i10 == i11) {
                return;
            } else {
                i10 = i12;
            }
        }
    }

    private void jjCheckNAddTwoStates(int i10, int i11) {
        jjCheckNAdd(i10);
        jjCheckNAdd(i11);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01c7, code lost:
    
        if (r6 > r13) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01c9, code lost:
    
        r6 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01ca, code lost:
    
        r8 = 28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01d3, code lost:
    
        if (r6 > r13) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0211, code lost:
    
        if ((r21 & 43980465111040L) != 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0226, code lost:
    
        if (r31.curChar == '.') goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005d, code lost:
    
        if (r6 > r13) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005f, code lost:
    
        r6 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
    
        r8 = 64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0068, code lost:
    
        if (r6 > r13) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0381, code lost:
    
        if ((r21 & 541165879422L) != 0) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x03e1, code lost:
    
        if ((r21 & 541165879422L) != 0) goto L275;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x05b6, code lost:
    
        if (r8 != 52) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
    
        if ((r21 & 287948901175001088L) != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f5, code lost:
    
        if ((r21 & (-549755813889L)) != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00fa, code lost:
    
        if (r31.curChar == '\'') goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0118, code lost:
    
        if ((r21 & 287948901175001088L) != 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0169, code lost:
    
        if ((r21 & (-17179869185L)) != 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0173, code lost:
    
        if (r31.curChar == '\"') goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0194, code lost:
    
        if ((r21 & 43980465111040L) != 0) goto L104;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:242:0x0378. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0040. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0592 A[LOOP:2: B:215:0x0334->B:265:0x0592, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0322 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x060e A[LOOP:3: B:362:0x05a4->B:371:0x060e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0322 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int jjMoveNfa_0(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        this.jjnewStateCnt = 66;
        int i22 = 0;
        this.jjstateSet[0] = i10;
        int i23 = 1;
        int i24 = Integer.MAX_VALUE;
        int i25 = i11;
        int i26 = 1;
        int i27 = 0;
        int i28 = Integer.MAX_VALUE;
        while (true) {
            int i29 = this.jjround + i23;
            this.jjround = i29;
            if (i29 == i24) {
                ReInitRounds();
            }
            char c10 = this.curChar;
            int i30 = 32;
            int i31 = 4;
            int i32 = 52;
            if (c10 < '@') {
                long j10 = 1 << c10;
                while (true) {
                    int[] iArr = this.jjstateSet;
                    i26--;
                    switch (iArr[i26]) {
                        case 0:
                        case 1:
                            if (this.curChar == '=') {
                                jjCheckNAddTwoStates(1, 2);
                                break;
                            }
                            break;
                        case 3:
                            if (this.curChar == '=') {
                                int i33 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i33 + 1;
                                iArr[i33] = i22;
                            }
                            break;
                        case 4:
                            if (this.curChar == '=') {
                                int i34 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i34 + 1;
                                iArr[i34] = 3;
                            }
                            break;
                        case 5:
                            if (this.curChar == '=') {
                                int i35 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i35 + 1;
                                iArr[i35] = 4;
                            }
                            break;
                        case 7:
                            if (this.curChar == '-') {
                                int i36 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i36 + 1;
                                iArr[i36] = 6;
                            }
                            break;
                        case 8:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                jjCheckNAddStates(i22, 3);
                            } else {
                                char c11 = this.curChar;
                                if (c11 == '\'') {
                                    jjCheckNAddStates(4, 6);
                                } else if (c11 == '\"') {
                                    jjCheckNAddStates(7, 9);
                                } else if (c11 == '.') {
                                    jjCheckNAdd(31);
                                } else if (c11 == '-') {
                                    int i37 = this.jjnewStateCnt;
                                    this.jjnewStateCnt = i37 + 1;
                                    iArr[i37] = 7;
                                }
                            }
                            if (this.curChar == '0') {
                                int[] iArr2 = this.jjstateSet;
                                int i38 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i38 + 1;
                                iArr2[i38] = 19;
                            }
                            break;
                        case 9:
                        case 10:
                            if (this.curChar == '=') {
                                jjCheckNAddTwoStates(10, 11);
                            }
                            break;
                        case 12:
                            if (this.curChar == '=') {
                                int i39 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i39 + 1;
                                iArr[i39] = 9;
                            }
                            break;
                        case 13:
                            if (this.curChar == '=') {
                                int i40 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i40 + 1;
                                iArr[i40] = 12;
                            }
                            break;
                        case 14:
                            if (this.curChar == '=') {
                                int i41 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i41 + 1;
                                iArr[i41] = 13;
                            }
                            break;
                        case 17:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > 51) {
                                    i28 = 51;
                                }
                                int i42 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i42 + 1;
                                iArr[i42] = 17;
                            }
                            break;
                        case 18:
                            if (this.curChar == '0') {
                                int i43 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i43 + 1;
                                iArr[i43] = 19;
                            }
                            break;
                        case 20:
                            i12 = 21;
                            break;
                        case 21:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                i13 = 21;
                                jjCheckNAddTwoStates(i13, 22);
                            }
                            break;
                        case 24:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                i12 = 24;
                                jjCheckNAdd(i12);
                            }
                            break;
                        case 25:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                i14 = 13;
                                i15 = 10;
                                jjCheckNAddStates(i15, i14);
                            }
                            break;
                        case 26:
                            if ((j10 & 287948901175001088L) != 0) {
                                i16 = 26;
                                i17 = 27;
                                jjCheckNAddTwoStates(i16, i17);
                            }
                            break;
                        case 27:
                            if (this.curChar == '.') {
                            }
                            break;
                        case 28:
                            if ((j10 & 287948901175001088L) != 0) {
                            }
                            break;
                        case 29:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                i13 = 29;
                                jjCheckNAddTwoStates(i13, 22);
                            }
                            break;
                        case 30:
                            if (this.curChar == '.') {
                                i12 = 31;
                                jjCheckNAdd(i12);
                            }
                            break;
                        case 31:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                i18 = 31;
                                jjCheckNAddTwoStates(i18, 32);
                            }
                            break;
                        case 33:
                            i19 = 34;
                            break;
                        case 34:
                            i19 = 34;
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                jjCheckNAdd(i19);
                            }
                            break;
                        case 35:
                            i14 = 9;
                            i15 = 7;
                            break;
                        case 37:
                            if (this.curChar == '\"' && i28 > 61) {
                                i28 = 61;
                            }
                            break;
                        case 39:
                            i14 = 9;
                            i15 = 7;
                            jjCheckNAddStates(i15, i14);
                            break;
                        case 41:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i44 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i44 + 1;
                                iArr[i44] = 42;
                            }
                            break;
                        case 42:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i45 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i45 + 1;
                                iArr[i45] = 43;
                            }
                            break;
                        case 43:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i46 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i46 + 1;
                                iArr[i46] = 44;
                            }
                            break;
                        case 45:
                            if ((j10 & 287948901175001088L) != 0) {
                                i20 = 14;
                                i21 = 17;
                                jjCheckNAddStates(i20, i21);
                            }
                            break;
                        case 46:
                            if ((j10 & 287948901175001088L) != 0) {
                                i20 = 18;
                                i21 = 21;
                                jjCheckNAddStates(i20, i21);
                            }
                            break;
                        case 50:
                            if (this.curChar == '\'' && i28 > 62) {
                                i28 = 62;
                            }
                            break;
                        case 52:
                            jjCheckNAddStates(4, 6);
                            break;
                        case 54:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i47 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i47 + 1;
                                iArr[i47] = 55;
                            }
                            break;
                        case 55:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i48 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i48 + 1;
                                iArr[i48] = 56;
                            }
                            break;
                        case 56:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i49 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i49 + 1;
                                iArr[i49] = 57;
                            }
                            break;
                        case 58:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(22, 25);
                            }
                            break;
                        case 59:
                            if ((j10 & 287948901175001088L) != 0) {
                                i20 = 26;
                                i21 = 29;
                                jjCheckNAddStates(i20, i21);
                            }
                            break;
                        case 61:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                jjCheckNAddStates(i22, 3);
                            }
                            break;
                        case 62:
                            if ((j10 & 287948901175001088L) != 0) {
                                i16 = 62;
                                i17 = 63;
                                jjCheckNAddTwoStates(i16, i17);
                            }
                            break;
                        case 63:
                            if (this.curChar == '.') {
                            }
                            break;
                        case 64:
                            if ((j10 & 287948901175001088L) != 0) {
                            }
                            break;
                        case 65:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i28 > i32) {
                                    i28 = i32;
                                }
                                i18 = 65;
                                jjCheckNAddTwoStates(i18, 32);
                            }
                            break;
                    }
                    if (i26 != i27) {
                        i32 = 52;
                    }
                }
            } else if (c10 < '\u0080') {
                long j11 = 1 << (c10 & '?');
                while (true) {
                    int[] iArr3 = this.jjstateSet;
                    i26--;
                    int i50 = iArr3[i26];
                    if (i50 != 2) {
                        if (i50 != 6) {
                            if (i50 != 8) {
                                if (i50 != 11) {
                                    if (i50 != 19) {
                                        if (i50 != i30) {
                                            if (i50 != 36) {
                                                if (i50 != 49) {
                                                    if (i50 != 21) {
                                                        if (i50 != 22) {
                                                            if (i50 != 25) {
                                                                if (i50 != 26) {
                                                                    if (i50 != 28) {
                                                                        if (i50 != 29) {
                                                                            switch (i50) {
                                                                                case 15:
                                                                                    if (this.curChar == '[') {
                                                                                        int i51 = this.jjnewStateCnt;
                                                                                        this.jjnewStateCnt = i51 + 1;
                                                                                        iArr3[i51] = 14;
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                case 16:
                                                                                case 17:
                                                                                    if ((j11 & 576460745995190270L) != 0) {
                                                                                        if (i28 > 51) {
                                                                                            i28 = 51;
                                                                                        }
                                                                                        jjCheckNAdd(17);
                                                                                        break;
                                                                                    }
                                                                                    break;
                                                                                default:
                                                                                    switch (i50) {
                                                                                        case 38:
                                                                                            if (this.curChar == '\\') {
                                                                                                jjAddStates(36, 38);
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 39:
                                                                                            break;
                                                                                        case 40:
                                                                                            if (this.curChar == 'u') {
                                                                                                int i52 = this.jjnewStateCnt;
                                                                                                this.jjnewStateCnt = i52 + 1;
                                                                                                iArr3[i52] = 41;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 41:
                                                                                            if ((j11 & 541165879422L) != 0) {
                                                                                                int i53 = this.jjnewStateCnt;
                                                                                                this.jjnewStateCnt = i53 + 1;
                                                                                                iArr3[i53] = 42;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 42:
                                                                                            if ((j11 & 541165879422L) != 0) {
                                                                                                int i54 = this.jjnewStateCnt;
                                                                                                this.jjnewStateCnt = i54 + 1;
                                                                                                iArr3[i54] = 43;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 43:
                                                                                            if ((j11 & 541165879422L) != 0) {
                                                                                                int i55 = this.jjnewStateCnt;
                                                                                                this.jjnewStateCnt = i55 + 1;
                                                                                                iArr3[i55] = 44;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 44:
                                                                                            break;
                                                                                        default:
                                                                                            switch (i50) {
                                                                                                case 51:
                                                                                                    if (this.curChar == '\\') {
                                                                                                        jjAddStates(39, 41);
                                                                                                        break;
                                                                                                    }
                                                                                                    break;
                                                                                                case 52:
                                                                                                    jjCheckNAddStates(4, 6);
                                                                                                    break;
                                                                                                case 53:
                                                                                                    if (this.curChar == 'u') {
                                                                                                        int i56 = this.jjnewStateCnt;
                                                                                                        this.jjnewStateCnt = i56 + 1;
                                                                                                        iArr3[i56] = 54;
                                                                                                        break;
                                                                                                    }
                                                                                                    break;
                                                                                                case 54:
                                                                                                    if ((j11 & 541165879422L) != 0) {
                                                                                                        int i57 = this.jjnewStateCnt;
                                                                                                        this.jjnewStateCnt = i57 + 1;
                                                                                                        iArr3[i57] = 55;
                                                                                                        break;
                                                                                                    }
                                                                                                    break;
                                                                                                case 55:
                                                                                                    if ((j11 & 541165879422L) != 0) {
                                                                                                        int i58 = this.jjnewStateCnt;
                                                                                                        this.jjnewStateCnt = i58 + 1;
                                                                                                        iArr3[i58] = 56;
                                                                                                        break;
                                                                                                    }
                                                                                                    break;
                                                                                                case 56:
                                                                                                    if ((j11 & 541165879422L) != 0) {
                                                                                                        int i59 = this.jjnewStateCnt;
                                                                                                        this.jjnewStateCnt = i59 + 1;
                                                                                                        iArr3[i59] = 57;
                                                                                                        break;
                                                                                                    }
                                                                                                    break;
                                                                                            }
                                                                                    }
                                                                                    jjCheckNAddStates(7, 9);
                                                                                    break;
                                                                            }
                                                                        } else if ((j11 & 541165879422L) != 0) {
                                                                            int i60 = i28 > 52 ? 52 : i28;
                                                                            jjCheckNAddTwoStates(29, 22);
                                                                            i28 = i60;
                                                                        }
                                                                    } else if ((j11 & 541165879422L) != 0) {
                                                                        if (i28 > 52) {
                                                                            i28 = 52;
                                                                        }
                                                                        jjCheckNAddTwoStates(28, 22);
                                                                    }
                                                                } else if ((j11 & 541165879422L) != 0) {
                                                                    jjCheckNAddTwoStates(26, 27);
                                                                }
                                                            } else if ((j11 & 541165879422L) != 0) {
                                                                if (i28 > 52) {
                                                                    i28 = 52;
                                                                }
                                                                jjCheckNAddStates(10, 13);
                                                                if (i26 == i27) {
                                                                    i30 = 32;
                                                                }
                                                            }
                                                        } else if ((j11 & 281612415729696L) != 0) {
                                                            jjAddStates(i30, 33);
                                                        }
                                                    } else if ((j11 & 541165879422L) != 0) {
                                                        if (i28 > 52) {
                                                            i28 = 52;
                                                        }
                                                        jjCheckNAddTwoStates(21, 22);
                                                    }
                                                    if (i26 == i27) {
                                                    }
                                                } else if ((j11 & (-268435457)) != 0) {
                                                    jjCheckNAddStates(4, 6);
                                                }
                                            } else if ((j11 & (-268435457)) != 0) {
                                                jjCheckNAddStates(7, 9);
                                            }
                                            if (i26 == i27) {
                                            }
                                        } else if ((j11 & 137438953504L) != 0) {
                                            jjAddStates(34, 35);
                                        }
                                    } else if ((j11 & 72057594054705152L) != 0) {
                                        jjAddStates(30, 31);
                                    }
                                } else if (this.curChar == '[' && i28 > 15) {
                                    i28 = 15;
                                }
                            } else if ((j11 & 576460745995190270L) != 0) {
                                if (i28 > 51) {
                                    i28 = 51;
                                }
                                jjCheckNAdd(17);
                            } else if (this.curChar == '[') {
                                int i61 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i61 + 1;
                                iArr3[i61] = 14;
                            }
                        } else if (this.curChar == '[') {
                            int i62 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i62 + 1;
                            iArr3[i62] = 5;
                        }
                        if (i26 == i27) {
                        }
                    } else {
                        if (this.curChar == '[') {
                            if (i28 > 10) {
                                i28 = 10;
                            }
                            if (i26 == i27) {
                            }
                        }
                        if (i26 == i27) {
                        }
                    }
                }
            } else {
                int i63 = c10 >> '\b';
                int i64 = c10 >> 14;
                long j12 = 1 << (i63 & 63);
                int i65 = (c10 & '\u00ff') >> 6;
                long j13 = 1 << (c10 & '?');
                while (true) {
                    i26--;
                    int i66 = this.jjstateSet[i26];
                    if (i66 != 36 && i66 != 39) {
                        if (i66 == 49) {
                        }
                        if (jjCanMove_0(i63, i64, i65, j12, j13)) {
                            jjCheckNAddStates(i31, 6);
                        }
                    } else if (jjCanMove_0(i63, i64, i65, j12, j13)) {
                        jjCheckNAddStates(7, 9);
                        if (i26 == i27) {
                            i31 = 4;
                        }
                    }
                    if (i26 == i27) {
                    }
                }
            }
            if (i28 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i28;
                this.jjmatchedPos = i25;
                i28 = Integer.MAX_VALUE;
            }
            i25++;
            i26 = this.jjnewStateCnt;
            this.jjnewStateCnt = i27;
            i27 = 66 - i27;
            if (i26 == i27) {
                return i25;
            }
            try {
                this.curChar = this.input_stream.readChar();
                i24 = Integer.MAX_VALUE;
                i23 = 1;
                i22 = 0;
            } catch (IOException unused) {
                return i25;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0082, code lost:
    
        if (r7 > 17) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008c, code lost:
    
        if (r7 > 17) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a0 A[LOOP:1: B:8:0x002d->B:30:0x00a0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009c A[EDGE_INSN: B:31:0x009c->B:32:0x009c BREAK  A[LOOP:1: B:8:0x002d->B:30:0x00a0], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int jjMoveNfa_1(int i10, int i11) {
        this.jjnewStateCnt = 4;
        this.jjstateSet[0] = i10;
        int i12 = 1;
        int i13 = Integer.MAX_VALUE;
        int i14 = 1;
        int i15 = 0;
        int i16 = Integer.MAX_VALUE;
        int i17 = i11;
        while (true) {
            int i18 = this.jjround + i12;
            this.jjround = i18;
            if (i18 == i13) {
                ReInitRounds();
            }
            char c10 = this.curChar;
            if (c10 < '@') {
                long j10 = 1 << c10;
                while (true) {
                    int[] iArr = this.jjstateSet;
                    i14--;
                    int i19 = iArr[i14];
                    if (i19 == 0) {
                        if ((j10 & (-9217)) != 0) {
                            jjCheckNAddStates(42, 44);
                            i16 = 17;
                        }
                        if (i14 == i15) {
                        }
                    } else if (i19 != i12) {
                        if (i19 != 2) {
                            if (i19 != 3) {
                                if (i19 == 4) {
                                    if ((j10 & (-9217)) != 0) {
                                        if (i16 > 17) {
                                            i16 = 17;
                                        }
                                        jjCheckNAddStates(42, 44);
                                    } else if ((j10 & 9216) != 0 && i16 > 17) {
                                        i16 = 17;
                                    }
                                    if (this.curChar == '\r') {
                                        int[] iArr2 = this.jjstateSet;
                                        int i20 = this.jjnewStateCnt;
                                        this.jjnewStateCnt = i20 + 1;
                                        iArr2[i20] = 2;
                                    }
                                }
                            } else if (this.curChar == '\r') {
                                int i21 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i21 + 1;
                                iArr[i21] = 2;
                            }
                        } else if (this.curChar == '\n') {
                        }
                        if (i14 == i15) {
                            break;
                        }
                        i12 = 1;
                    } else {
                        if ((j10 & 9216) != 0) {
                        }
                        if (i14 == i15) {
                        }
                    }
                }
            } else {
                if (c10 >= '\u0080') {
                    int i22 = c10 >> '\b';
                    int i23 = c10 >> 14;
                    long j11 = 1 << (i22 & 63);
                    int i24 = (c10 & '\u00ff') >> 6;
                    long j12 = 1 << (c10 & '?');
                    do {
                        i14--;
                        int i25 = this.jjstateSet[i14];
                        if ((i25 == 0 || i25 == 4) && jjCanMove_0(i22, i23, i24, j11, j12)) {
                            if (i16 > 17) {
                                i16 = 17;
                            }
                            jjCheckNAddStates(42, 44);
                        }
                    } while (i14 != i15);
                }
                do {
                    i14--;
                    int i26 = this.jjstateSet[i14];
                    if (i26 == 0 || i26 == 4) {
                        jjCheckNAddStates(42, 44);
                        i16 = 17;
                    }
                } while (i14 != i15);
            }
            if (i16 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i16;
                this.jjmatchedPos = i17;
                i16 = Integer.MAX_VALUE;
            }
            i17++;
            i14 = this.jjnewStateCnt;
            this.jjnewStateCnt = i15;
            i15 = 4 - i15;
            if (i14 == i15) {
                return i17;
            }
            try {
                this.curChar = this.input_stream.readChar();
                i13 = Integer.MAX_VALUE;
                i12 = 1;
            } catch (IOException unused) {
                return i17;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0069, code lost:
    
        if (r5 < '\u0080') goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x006b, code lost:
    
        r5 = r12.jjstateSet;
        r2 = r2 - 1;
        r6 = r5[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0073, code lost:
    
        if (r6 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0076, code lost:
    
        if (r6 == 6) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x007b, code lost:
    
        if (r12.curChar != ']') goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x007d, code lost:
    
        r6 = r12.jjnewStateCnt;
        r12.jjnewStateCnt = r6 + 1;
        r5[r6] = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x008f, code lost:
    
        if (r2 != r3) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0088, code lost:
    
        if (r12.curChar != ']') goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x008c, code lost:
    
        if (r4 <= 27) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x008e, code lost:
    
        r4 = 27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0092, code lost:
    
        r2 = r2 - 1;
        r5 = r12.jjstateSet[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0098, code lost:
    
        if (r2 != r3) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int jjMoveNfa_11(int i10, int i11) {
        this.jjnewStateCnt = 7;
        this.jjstateSet[0] = i10;
        int i12 = 1;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        while (true) {
            int i15 = this.jjround + 1;
            this.jjround = i15;
            if (i15 == Integer.MAX_VALUE) {
                ReInitRounds();
            }
            char c10 = this.curChar;
            if (c10 >= '@') {
            }
            do {
                int[] iArr = this.jjstateSet;
                i12--;
                int i16 = iArr[i12];
                if (i16 == 0 || i16 == 1) {
                    if (this.curChar == '=') {
                        jjCheckNAddTwoStates(1, 2);
                    }
                } else if (i16 != 3) {
                    if (i16 != 4) {
                        if (i16 == 5 && this.curChar == '=') {
                            int i17 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i17 + 1;
                            iArr[i17] = 4;
                        }
                    } else if (this.curChar == '=') {
                        int i18 = this.jjnewStateCnt;
                        this.jjnewStateCnt = i18 + 1;
                        iArr[i18] = 3;
                    }
                } else if (this.curChar == '=') {
                    int i19 = this.jjnewStateCnt;
                    this.jjnewStateCnt = i19 + 1;
                    iArr[i19] = 0;
                }
            } while (i12 != i14);
            if (i13 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i13;
                this.jjmatchedPos = i11;
                i13 = Integer.MAX_VALUE;
            }
            i11++;
            i12 = this.jjnewStateCnt;
            this.jjnewStateCnt = i14;
            i14 = 7 - i14;
            if (i12 == i14) {
                return i11;
            }
            try {
                this.curChar = this.input_stream.readChar();
            } catch (IOException unused) {
                return i11;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0069, code lost:
    
        if (r5 < '\u0080') goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x006b, code lost:
    
        r5 = r12.jjstateSet;
        r2 = r2 - 1;
        r6 = r5[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0073, code lost:
    
        if (r6 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0076, code lost:
    
        if (r6 == 6) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x007b, code lost:
    
        if (r12.curChar != ']') goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x007d, code lost:
    
        r6 = r12.jjnewStateCnt;
        r12.jjnewStateCnt = r6 + 1;
        r5[r6] = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x008f, code lost:
    
        if (r2 != r3) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0088, code lost:
    
        if (r12.curChar != ']') goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x008c, code lost:
    
        if (r4 <= 22) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x008e, code lost:
    
        r4 = 22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0092, code lost:
    
        r2 = r2 - 1;
        r5 = r12.jjstateSet[r2];
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0098, code lost:
    
        if (r2 != r3) goto L82;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int jjMoveNfa_6(int i10, int i11) {
        this.jjnewStateCnt = 7;
        this.jjstateSet[0] = i10;
        int i12 = 1;
        int i13 = Integer.MAX_VALUE;
        int i14 = 0;
        while (true) {
            int i15 = this.jjround + 1;
            this.jjround = i15;
            if (i15 == Integer.MAX_VALUE) {
                ReInitRounds();
            }
            char c10 = this.curChar;
            if (c10 >= '@') {
            }
            do {
                int[] iArr = this.jjstateSet;
                i12--;
                int i16 = iArr[i12];
                if (i16 == 0 || i16 == 1) {
                    if (this.curChar == '=') {
                        jjCheckNAddTwoStates(1, 2);
                    }
                } else if (i16 != 3) {
                    if (i16 != 4) {
                        if (i16 == 5 && this.curChar == '=') {
                            int i17 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i17 + 1;
                            iArr[i17] = 4;
                        }
                    } else if (this.curChar == '=') {
                        int i18 = this.jjnewStateCnt;
                        this.jjnewStateCnt = i18 + 1;
                        iArr[i18] = 3;
                    }
                } else if (this.curChar == '=') {
                    int i19 = this.jjnewStateCnt;
                    this.jjnewStateCnt = i19 + 1;
                    iArr[i19] = 0;
                }
            } while (i12 != i14);
            if (i13 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i13;
                this.jjmatchedPos = i11;
                i13 = Integer.MAX_VALUE;
            }
            i11++;
            i12 = this.jjnewStateCnt;
            this.jjnewStateCnt = i14;
            i14 = 7 - i14;
            if (i12 == i14) {
                return i11;
            }
            try {
                this.curChar = this.input_stream.readChar();
            } catch (IOException unused) {
                return i11;
            }
        }
    }

    private int jjMoveStringLiteralDfa0_0() {
        char c10 = this.curChar;
        if (c10 == '#') {
            return jjStopAtPos(0, 69);
        }
        if (c10 == '%') {
            return jjStopAtPos(0, 87);
        }
        if (c10 == '[') {
            this.jjmatchedKind = 77;
            return jjMoveStringLiteralDfa1_0(30720L, 0L);
        }
        if (c10 == 'i') {
            return jjMoveStringLiteralDfa1_0(1649267441664L, 0L);
        }
        if (c10 == 'l') {
            return jjMoveStringLiteralDfa1_0(2199023255552L, 0L);
        }
        if (c10 == 'r') {
            return jjMoveStringLiteralDfa1_0(105553116266496L, 0L);
        }
        if (c10 == 'w') {
            return jjMoveStringLiteralDfa1_0(1125899906842624L, 0L);
        }
        if (c10 == '{') {
            return jjStopAtPos(0, 80);
        }
        if (c10 == ']') {
            return jjStopAtPos(0, 78);
        }
        if (c10 == '^') {
            return jjStopAtPos(0, 86);
        }
        if (c10 == 'a') {
            return jjMoveStringLiteralDfa1_0(TagBits.HasTypeVariable, 0L);
        }
        if (c10 == 'b') {
            return jjMoveStringLiteralDfa1_0(TagBits.HasDirectWildcard, 0L);
        }
        if (c10 == 'n') {
            return jjMoveStringLiteralDfa1_0(13194139533312L, 0L);
        }
        if (c10 == 'o') {
            return jjMoveStringLiteralDfa1_0(17592186044416L, 0L);
        }
        if (c10 == 't') {
            return jjMoveStringLiteralDfa1_0(422212465065984L, 0L);
        }
        if (c10 == 'u') {
            return jjMoveStringLiteralDfa1_0(562949953421312L, 0L);
        }
        if (c10 == '}') {
            return jjStopAtPos(0, 81);
        }
        if (c10 == '~') {
            return jjMoveStringLiteralDfa1_0(0L, TagBits.HasDirectWildcard);
        }
        switch (c10) {
            case '(':
                return jjStopAtPos(0, 75);
            case ')':
                return jjStopAtPos(0, 76);
            case '*':
                return jjStopAtPos(0, 84);
            case '+':
                return jjStopAtPos(0, 82);
            case ',':
                return jjStopAtPos(0, 72);
            case '-':
                this.jjmatchedKind = 83;
                return jjMoveStringLiteralDfa1_0(66496L, 0L);
            case '.':
                this.jjmatchedKind = 73;
                return jjMoveStringLiteralDfa1_0(0L, 16809984L);
            case '/':
                return jjStopAtPos(0, 85);
            default:
                switch (c10) {
                    case ':':
                        this.jjmatchedKind = 74;
                        return jjMoveStringLiteralDfa1_0(0L, 2L);
                    case ';':
                        return jjStopAtPos(0, 70);
                    case '<':
                        this.jjmatchedKind = 89;
                        return jjMoveStringLiteralDfa1_0(0L, TagBits.HasUnresolvedSuperinterfaces);
                    case '=':
                        this.jjmatchedKind = 71;
                        return jjMoveStringLiteralDfa1_0(0L, TagBits.HasTypeVariable);
                    case '>':
                        this.jjmatchedKind = 91;
                        return jjMoveStringLiteralDfa1_0(0L, TagBits.HasUnresolvedMemberTypes);
                    default:
                        switch (c10) {
                            case 'd':
                                return jjMoveStringLiteralDfa1_0(2147483648L, 0L);
                            case 'e':
                                return jjMoveStringLiteralDfa1_0(30064771072L, 0L);
                            case 'f':
                                return jjMoveStringLiteralDfa1_0(240518168576L, 0L);
                            case 'g':
                                return jjMoveStringLiteralDfa1_0(274877906944L, 0L);
                            default:
                                return jjMoveNfa_0(8, 0);
                        }
                }
        }
    }

    private int jjMoveStringLiteralDfa0_1() {
        return jjMoveNfa_1(4, 0);
    }

    private int jjMoveStringLiteralDfa0_10() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_10(TagBits.HasUnresolvedSuperinterfaces);
    }

    private int jjMoveStringLiteralDfa0_11() {
        return jjMoveNfa_11(6, 0);
    }

    private int jjMoveStringLiteralDfa0_2() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_2(TagBits.TypeVariablesAreConnected);
    }

    private int jjMoveStringLiteralDfa0_3() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_3(TagBits.PauseHierarchyCheck);
    }

    private int jjMoveStringLiteralDfa0_4() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_4(TagBits.HasNullTypeAnnotation);
    }

    private int jjMoveStringLiteralDfa0_5() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_5(2097152L);
    }

    private int jjMoveStringLiteralDfa0_6() {
        return jjMoveNfa_6(6, 0);
    }

    private int jjMoveStringLiteralDfa0_7() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_7(8388608L);
    }

    private int jjMoveStringLiteralDfa0_8() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_8(16777216L);
    }

    private int jjMoveStringLiteralDfa0_9() {
        if (this.curChar != ']') {
            return 1;
        }
        return jjMoveStringLiteralDfa1_9(TagBits.HasUnresolvedSuperclass);
    }

    private int jjMoveStringLiteralDfa1_0(long j10, long j11) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '-') {
                if ((65536 & j10) != 0) {
                    this.jjmatchedKind = 16;
                    this.jjmatchedPos = 1;
                }
                return jjMoveStringLiteralDfa2_0(j10, 960L, j11, 0L);
            }
            if (readChar == '.') {
                if ((16777216 & j11) != 0) {
                    this.jjmatchedKind = 88;
                    this.jjmatchedPos = 1;
                }
                return jjMoveStringLiteralDfa2_0(j10, 0L, j11, 32768L);
            }
            if (readChar != ':') {
                if (readChar == '=') {
                    return (TagBits.HasUnresolvedSuperinterfaces & j11) != 0 ? jjStopAtPos(1, 90) : (TagBits.HasUnresolvedMemberTypes & j11) != 0 ? jjStopAtPos(1, 92) : (TagBits.HasTypeVariable & j11) != 0 ? jjStopAtPos(1, 93) : (TagBits.HasDirectWildcard & j11) != 0 ? jjStopAtPos(1, 94) : jjMoveStringLiteralDfa2_0(j10, 28672L, j11, 0L);
                }
                if (readChar != '[') {
                    if (readChar == 'a') {
                        return jjMoveStringLiteralDfa2_0(j10, 34359738368L, j11, 0L);
                    }
                    if (readChar == 'l') {
                        return jjMoveStringLiteralDfa2_0(j10, 12884901888L, j11, 0L);
                    }
                    if (readChar == 'r') {
                        return (17592186044416L & j10) != 0 ? jjStartNfaWithStates_0(1, 44, 17) : jjMoveStringLiteralDfa2_0(j10, 281476050452480L, j11, 0L);
                    }
                    if (readChar == 'u') {
                        return jjMoveStringLiteralDfa2_0(j10, 137438953472L, j11, 0L);
                    }
                    if (readChar == 'e') {
                        return jjMoveStringLiteralDfa2_0(j10, 105553116266496L, j11, 0L);
                    }
                    if (readChar != 'f') {
                        if (readChar == 'h') {
                            return jjMoveStringLiteralDfa2_0(j10, 1266637395197952L, j11, 0L);
                        }
                        if (readChar == 'i') {
                            return jjMoveStringLiteralDfa2_0(j10, 4398046511104L, j11, 0L);
                        }
                        if (readChar == 'n') {
                            return (1099511627776L & j10) != 0 ? jjStartNfaWithStates_0(1, 40, 17) : jjMoveStringLiteralDfa2_0(j10, 562967670161408L, j11, 0L);
                        }
                        if (readChar == 'o') {
                            return (2147483648L & j10) != 0 ? jjStartNfaWithStates_0(1, 31, 17) : jjMoveStringLiteralDfa2_0(j10, 11338713661440L, j11, 0L);
                        }
                    } else if ((549755813888L & j10) != 0) {
                        return jjStartNfaWithStates_0(1, 39, 17);
                    }
                } else if ((2048 & j10) != 0) {
                    return jjStopAtPos(1, 11);
                }
            } else if ((2 & j11) != 0) {
                return jjStopAtPos(1, 65);
            }
            return jjStartNfa_0(0, j10, j11);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(0, j10, j11);
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_10(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_10(j10, TagBits.HasUnresolvedSuperinterfaces);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_2(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j10 & TagBits.TypeVariablesAreConnected) != 0) {
                return jjStopAtPos(1, 18);
            }
            return 2;
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_3(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_3(j10, TagBits.PauseHierarchyCheck);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_4(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_4(j10, TagBits.HasNullTypeAnnotation);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_5(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_5(j10, 2097152L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_7(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j10 & 8388608) != 0) {
                return jjStopAtPos(1, 23);
            }
            return 2;
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_8(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_8(j10, 16777216L);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_9(long j10) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 2;
            }
            return jjMoveStringLiteralDfa2_9(j10, TagBits.HasUnresolvedSuperclass);
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_0(long j10, long j11, long j12, long j13) {
        long j14 = j11 & j10;
        long j15 = j13 & j12;
        if ((j14 | j15) == 0) {
            return jjStartNfa_0(0, j10, j12);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '.') {
                if (readChar == '=') {
                    return jjMoveStringLiteralDfa3_0(j14, 24576L, j15, 0L);
                }
                if (readChar == '[') {
                    return (4096 & j14) != 0 ? jjStopAtPos(2, 12) : jjMoveStringLiteralDfa3_0(j14, 960L, j15, 0L);
                }
                if (readChar == 'i') {
                    return jjMoveStringLiteralDfa3_0(j14, 1125899906842624L, j15, 0L);
                }
                if (readChar == 'l') {
                    return (4398046511104L & j14) != 0 ? jjStartNfaWithStates_0(2, 42, 17) : jjMoveStringLiteralDfa3_0(j14, 34359738368L, j15, 0L);
                }
                if (readChar == 'n') {
                    return jjMoveStringLiteralDfa3_0(j14, 137438953472L, j15, 0L);
                }
                if (readChar == 'p') {
                    return jjMoveStringLiteralDfa3_0(j14, 70368744177664L, j15, 0L);
                }
                switch (readChar) {
                    case 'c':
                        return jjMoveStringLiteralDfa3_0(j14, 2199023255552L, j15, 0L);
                    case 'd':
                        if ((TagBits.HasTypeVariable & j14) != 0) {
                            return jjStartNfaWithStates_0(2, 29, 17);
                        }
                        if ((17179869184L & j14) != 0) {
                            return jjStartNfaWithStates_0(2, 34, 17);
                        }
                        break;
                    case 'e':
                        return jjMoveStringLiteralDfa3_0(j14, 140738562097152L, j15, 0L);
                    default:
                        switch (readChar) {
                            case 'r':
                                if ((68719476736L & j14) != 0) {
                                    return jjStartNfaWithStates_0(2, 36, 17);
                                }
                                break;
                            case 's':
                                return jjMoveStringLiteralDfa3_0(j14, 12884901888L, j15, 0L);
                            case 't':
                                return (8796093022208L & j14) != 0 ? jjStartNfaWithStates_0(2, 43, 17) : jjMoveStringLiteralDfa3_0(j14, 598409203417088L, j15, 0L);
                            case 'u':
                                return jjMoveStringLiteralDfa3_0(j14, 281474976710656L, j15, 0L);
                        }
                }
            } else if ((32768 & j15) != 0) {
                return jjStopAtPos(2, 79);
            }
            return jjStartNfa_0(1, j14, j15);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(1, j14, j15);
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_10(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 2;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_10(j12, TagBits.HasUnresolvedSuperinterfaces);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_3(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 2;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j12 & TagBits.PauseHierarchyCheck) != 0) {
                return jjStopAtPos(2, 19);
            }
            return 3;
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_4(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 2;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_4(j12, TagBits.HasNullTypeAnnotation);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_5(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 2;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_5(j12, 2097152L);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_8(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 2;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j12 & 16777216) != 0) {
                return jjStopAtPos(2, 24);
            }
            return 3;
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_9(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 2;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 3;
            }
            return jjMoveStringLiteralDfa3_9(j12, TagBits.HasUnresolvedSuperclass);
        } catch (IOException unused) {
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_0(long j10, long j11, long j12, long j13) {
        long j14 = j11 & j10;
        if (((j13 & j12) | j14) == 0) {
            return jjStartNfa_0(1, j10, j12);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '=') {
                return jjMoveStringLiteralDfa4_0(j14, 17280L);
            }
            if (readChar != '[') {
                if (readChar == 'a') {
                    return jjMoveStringLiteralDfa4_0(j14, 2200096997376L);
                }
                if (readChar == 'c') {
                    return jjMoveStringLiteralDfa4_0(j14, 137438953472L);
                }
                if (readChar == 'e') {
                    if ((4294967296L & j14) != 0) {
                        this.jjmatchedKind = 32;
                        this.jjmatchedPos = 3;
                    } else if ((281474976710656L & j14) != 0) {
                        return jjStartNfaWithStates_0(3, 48, 17);
                    }
                    return jjMoveStringLiteralDfa4_0(j14, 70377334112256L);
                }
                if (readChar == 'i') {
                    return jjMoveStringLiteralDfa4_0(j14, 562949953421312L);
                }
                if (readChar == 'l') {
                    return jjMoveStringLiteralDfa4_0(j14, 1125899906842624L);
                }
                if (readChar == 's') {
                    return jjMoveStringLiteralDfa4_0(j14, 34359738368L);
                }
                if (readChar == 'u') {
                    return jjMoveStringLiteralDfa4_0(j14, 35184372088832L);
                }
                if (readChar != 'n') {
                    if (readChar == 'o' && (274877906944L & j14) != 0) {
                        return jjStartNfaWithStates_0(3, 38, 17);
                    }
                } else if ((140737488355328L & j14) != 0) {
                    return jjStartNfaWithStates_0(3, 47, 17);
                }
            } else {
                if ((64 & j14) != 0) {
                    return jjStopAtPos(3, 6);
                }
                if ((8192 & j14) != 0) {
                    return jjStopAtPos(3, 13);
                }
            }
            return jjStartNfa_0(2, j14, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(2, j14, 0L);
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa3_10(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 3;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 4;
            }
            return jjMoveStringLiteralDfa4_10(j12, TagBits.HasUnresolvedSuperinterfaces);
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa3_4(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 3;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j12 & TagBits.HasNullTypeAnnotation) != 0) {
                return jjStopAtPos(3, 20);
            }
            return 4;
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa3_5(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 3;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '=') {
                return 4;
            }
            return jjMoveStringLiteralDfa4_5(j12, 2097152L);
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa3_9(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 3;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j12 & TagBits.HasUnresolvedSuperclass) != 0) {
                return jjStopAtPos(3, 25);
            }
            return 4;
        } catch (IOException unused) {
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa4_0(long j10, long j11) {
        long j12 = j11 & j10;
        if (j12 == 0) {
            return jjStartNfa_0(2, j10, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '=') {
                return jjMoveStringLiteralDfa5_0(j12, 768L);
            }
            if (readChar != '[') {
                if (readChar == 'a') {
                    return jjMoveStringLiteralDfa5_0(j12, 70368744177664L);
                }
                if (readChar != 'e') {
                    if (readChar == 'i') {
                        return jjMoveStringLiteralDfa5_0(j12, 8589934592L);
                    }
                    if (readChar == 'r') {
                        return jjMoveStringLiteralDfa5_0(j12, 35184372088832L);
                    }
                    if (readChar == 't') {
                        return jjMoveStringLiteralDfa5_0(j12, 137438953472L);
                    }
                    if (readChar != 'k') {
                        if (readChar == 'l') {
                            if ((2199023255552L & j12) != 0) {
                                return jjStartNfaWithStates_0(4, 41, 17);
                            }
                            if ((562949953421312L & j12) != 0) {
                                return jjStartNfaWithStates_0(4, 49, 17);
                            }
                        }
                    } else if ((TagBits.HasDirectWildcard & j12) != 0) {
                        return jjStartNfaWithStates_0(4, 30, 17);
                    }
                } else {
                    if ((34359738368L & j12) != 0) {
                        return jjStartNfaWithStates_0(4, 35, 17);
                    }
                    if ((1125899906842624L & j12) != 0) {
                        return jjStartNfaWithStates_0(4, 50, 17);
                    }
                }
            } else {
                if ((128 & j12) != 0) {
                    return jjStopAtPos(4, 7);
                }
                if ((16384 & j12) != 0) {
                    return jjStopAtPos(4, 14);
                }
            }
            return jjStartNfa_0(3, j12, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(3, j12, 0L);
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa4_10(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 4;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j12 & TagBits.HasUnresolvedSuperinterfaces) != 0) {
                return jjStopAtPos(4, 26);
            }
            return 5;
        } catch (IOException unused) {
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa4_5(long j10, long j11) {
        long j12 = j10 & j11;
        if (j12 == 0) {
            return 4;
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == ']' && (j12 & 2097152) != 0) {
                return jjStopAtPos(4, 21);
            }
            return 5;
        } catch (IOException unused) {
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa5_0(long j10, long j11) {
        long j12 = j11 & j10;
        if (j12 == 0) {
            return jjStartNfa_0(3, j10, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '=') {
                return jjMoveStringLiteralDfa6_0(j12, 512L);
            }
            if (readChar != '[') {
                if (readChar != 'f') {
                    if (readChar == 'i') {
                        return jjMoveStringLiteralDfa6_0(j12, 137438953472L);
                    }
                    if (readChar != 'n') {
                        if (readChar == 't' && (70368744177664L & j12) != 0) {
                            return jjStartNfaWithStates_0(5, 46, 17);
                        }
                    } else if ((35184372088832L & j12) != 0) {
                        return jjStartNfaWithStates_0(5, 45, 17);
                    }
                } else if ((8589934592L & j12) != 0) {
                    return jjStartNfaWithStates_0(5, 33, 17);
                }
            } else if ((256 & j12) != 0) {
                return jjStopAtPos(5, 8);
            }
            return jjStartNfa_0(4, j12, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(4, j12, 0L);
            return 5;
        }
    }

    private int jjMoveStringLiteralDfa6_0(long j10, long j11) {
        long j12 = j11 & j10;
        if (j12 == 0) {
            return jjStartNfa_0(4, j10, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '[') {
                if (readChar == 'o') {
                    return jjMoveStringLiteralDfa7_0(j12, 137438953472L);
                }
            } else if ((512 & j12) != 0) {
                return jjStopAtPos(6, 9);
            }
            return jjStartNfa_0(5, j12, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(5, j12, 0L);
            return 6;
        }
    }

    private int jjMoveStringLiteralDfa7_0(long j10, long j11) {
        long j12 = j11 & j10;
        if (j12 == 0) {
            return jjStartNfa_0(5, j10, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            return (readChar == 'n' && (137438953472L & j12) != 0) ? jjStartNfaWithStates_0(7, 37, 17) : jjStartNfa_0(6, j12, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(6, j12, 0L);
            return 7;
        }
    }

    private int jjStartNfaWithStates_0(int i10, int i11, int i12) {
        this.jjmatchedKind = i11;
        this.jjmatchedPos = i10;
        try {
            this.curChar = this.input_stream.readChar();
            return jjMoveNfa_0(i12, i10 + 1);
        } catch (IOException unused) {
            return i10 + 1;
        }
    }

    private final int jjStartNfa_0(int i10, long j10, long j11) {
        return jjMoveNfa_0(jjStopStringLiteralDfa_0(i10, j10, j11), i10 + 1);
    }

    private int jjStopAtPos(int i10, int i11) {
        this.jjmatchedKind = i11;
        this.jjmatchedPos = i10;
        return i10 + 1;
    }

    private final int jjStopStringLiteralDfa_0(int i10, long j10, long j11) {
        switch (i10) {
            case 0:
                if ((j10 & 30720) != 0 || (j11 & 8192) != 0) {
                    return 14;
                }
                if ((j11 & 16810496) != 0) {
                    return 31;
                }
                if ((j10 & 2251799276814336L) == 0) {
                    return ((j10 & 66496) == 0 && (j11 & TagBits.PauseHierarchyCheck) == 0) ? -1 : 7;
                }
                this.jjmatchedKind = 51;
                return 17;
            case 1:
                if ((j10 & 66496) != 0) {
                    return 6;
                }
                if ((j10 & 28672) != 0) {
                    return 13;
                }
                if ((j10 & 19243600969728L) != 0) {
                    return 17;
                }
                if ((j10 & 2232555675844608L) == 0) {
                    return -1;
                }
                if (this.jjmatchedPos != 1) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 1;
                }
                return 17;
            case 2:
                if ((j10 & 2219275100094464L) != 0) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 2;
                    return 17;
                }
                if ((j10 & 24576) != 0) {
                    return 12;
                }
                if ((j10 & 960) != 0) {
                    return 5;
                }
                return (j10 & 13280575750144L) != 0 ? 17 : -1;
            case 3:
                if ((j10 & 896) != 0) {
                    return 4;
                }
                if ((j10 & 1796774872219648L) == 0) {
                    if ((j10 & 422500227874816L) != 0) {
                        return 17;
                    }
                    return (j10 & 16384) != 0 ? 9 : -1;
                }
                if (this.jjmatchedPos != 3) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 3;
                }
                return 17;
            case 4:
                if ((j10 & 105699145154560L) != 0) {
                    this.jjmatchedKind = 51;
                    this.jjmatchedPos = 4;
                    return 17;
                }
                if ((j10 & 768) != 0) {
                    return 3;
                }
                return (j10 & 1691084316999680L) != 0 ? 17 : -1;
            case 5:
                if ((j10 & 512) != 0) {
                    return 0;
                }
                if ((j10 & 105561706201088L) != 0) {
                    return 17;
                }
                if ((j10 & 137438953472L) == 0) {
                    return -1;
                }
                this.jjmatchedKind = 51;
                this.jjmatchedPos = 5;
                return 17;
            case 6:
                if ((j10 & 137438953472L) == 0) {
                    return -1;
                }
                this.jjmatchedKind = 51;
                this.jjmatchedPos = 6;
                return 17;
            default:
                return -1;
        }
    }

    public void ReInit(SimpleCharStream simpleCharStream) {
        this.jjnewStateCnt = 0;
        this.jjmatchedPos = 0;
        this.curLexState = this.defaultLexState;
        this.input_stream = simpleCharStream;
        ReInitRounds();
    }

    public void SkipLexicalActions(Token token) {
    }

    public void SwitchTo(int i10) {
        if (i10 < 12 && i10 >= 0) {
            this.curLexState = i10;
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Error: Ignoring invalid lexical state : ");
        stringBuffer.append(i10);
        stringBuffer.append(". State unchanged.");
        throw new TokenMgrError(stringBuffer.toString(), 2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x0038, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003a, code lost:
    
        r22.jjmatchedKind = 28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004c, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007f, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a1, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b2, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c3, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d5, code lost:
    
        if (r22.jjmatchedKind > 28) goto L12;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0025. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:111:0x019d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0111  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Token getNextToken() {
        int i10;
        int i11;
        boolean z10;
        String str;
        String str2 = null;
        int i12 = 0;
        Token token = null;
        int i13 = 0;
        while (true) {
            try {
                this.curChar = this.input_stream.BeginToken();
                StringBuffer stringBuffer = this.jjimage;
                this.image = stringBuffer;
                stringBuffer.setLength(0);
                this.jjimageLen = 0;
                while (true) {
                    switch (this.curLexState) {
                        case 0:
                            try {
                                this.input_stream.backup(0);
                                while (true) {
                                    char c10 = this.curChar;
                                    if (c10 <= ' ' && ((1 << c10) & 4294981120L) != 0) {
                                        this.curChar = this.input_stream.BeginToken();
                                    }
                                }
                                this.jjmatchedKind = Integer.MAX_VALUE;
                                this.jjmatchedPos = 0;
                                i13 = jjMoveStringLiteralDfa0_0();
                                if (this.jjmatchedKind != Integer.MAX_VALUE) {
                                    int i14 = this.jjmatchedPos;
                                    if (i14 + 1 < i13) {
                                        this.input_stream.backup((i13 - i14) - 1);
                                    }
                                    long[] jArr = jjtoToken;
                                    int i15 = this.jjmatchedKind;
                                    if ((jArr[i15 >> 6] & (1 << (i15 & 63))) != 0) {
                                        Token jjFillToken = jjFillToken();
                                        jjFillToken.specialToken = token;
                                        int i16 = jjnewLexState[this.jjmatchedKind];
                                        if (i16 != -1) {
                                            this.curLexState = i16;
                                        }
                                        return jjFillToken;
                                    }
                                    if ((jjtoSkip[i15 >> 6] & (1 << (i15 & 63))) != 0) {
                                        if (((1 << (i15 & 63)) & jjtoSpecial[i15 >> 6]) != 0) {
                                            Token jjFillToken2 = jjFillToken();
                                            if (token != null) {
                                                jjFillToken2.specialToken = token;
                                                token.next = jjFillToken2;
                                            }
                                            SkipLexicalActions(jjFillToken2);
                                            token = jjFillToken2;
                                        } else {
                                            SkipLexicalActions(null);
                                        }
                                        int i17 = jjnewLexState[this.jjmatchedKind];
                                        if (i17 == -1) {
                                            break;
                                        } else {
                                            this.curLexState = i17;
                                            break;
                                        }
                                    } else {
                                        this.jjimageLen += this.jjmatchedPos + 1;
                                        int i18 = jjnewLexState[i15];
                                        if (i18 != -1) {
                                            this.curLexState = i18;
                                        }
                                        this.jjmatchedKind = Integer.MAX_VALUE;
                                        try {
                                            this.curChar = this.input_stream.readChar();
                                            i13 = 0;
                                        } catch (IOException unused) {
                                            i13 = 0;
                                            int endLine = this.input_stream.getEndLine();
                                            int endColumn = this.input_stream.getEndColumn();
                                            try {
                                                this.input_stream.readChar();
                                                this.input_stream.backup(1);
                                                z10 = false;
                                                i11 = endLine;
                                                i10 = endColumn;
                                            } catch (IOException unused2) {
                                                str2 = i13 <= 1 ? "" : this.input_stream.GetImage();
                                                char c11 = this.curChar;
                                                if (c11 == '\n' || c11 == '\r') {
                                                    endLine++;
                                                } else {
                                                    i12 = endColumn + 1;
                                                }
                                                i10 = i12;
                                                i11 = endLine;
                                                z10 = true;
                                            }
                                            if (z10) {
                                                str = str2;
                                            } else {
                                                this.input_stream.backup(1);
                                                str = i13 > 1 ? this.input_stream.GetImage() : "";
                                            }
                                            throw new TokenMgrError(z10, this.curLexState, i11, i10, str, this.curChar, 0);
                                        }
                                    }
                                }
                            } catch (IOException unused3) {
                                continue;
                            }
                            break;
                        case 1:
                            this.jjmatchedKind = 17;
                            this.jjmatchedPos = -1;
                            i13 = jjMoveStringLiteralDfa0_1();
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 2:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_2();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 3:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_3();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 4:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_4();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 5:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_5();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 6:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_6();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 7:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_7();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 8:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_8();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 9:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_9();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 10:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_10();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        case 11:
                            this.jjmatchedKind = Integer.MAX_VALUE;
                            this.jjmatchedPos = 0;
                            i13 = jjMoveStringLiteralDfa0_11();
                            if (this.jjmatchedPos == 0) {
                                break;
                            }
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                        default:
                            if (this.jjmatchedKind != Integer.MAX_VALUE) {
                            }
                            break;
                    }
                }
            } catch (IOException unused4) {
                this.jjmatchedKind = 0;
                Token jjFillToken3 = jjFillToken();
                jjFillToken3.specialToken = token;
                return jjFillToken3;
            }
        }
    }

    public Token jjFillToken() {
        String str;
        int beginLine;
        int beginColumn;
        int endLine;
        int endColumn;
        if (this.jjmatchedPos < 0) {
            StringBuffer stringBuffer = this.image;
            str = stringBuffer == null ? "" : stringBuffer.toString();
            beginLine = this.input_stream.getBeginLine();
            beginColumn = this.input_stream.getBeginColumn();
            endLine = beginLine;
            endColumn = beginColumn;
        } else {
            str = jjstrLiteralImages[this.jjmatchedKind];
            if (str == null) {
                str = this.input_stream.GetImage();
            }
            beginLine = this.input_stream.getBeginLine();
            beginColumn = this.input_stream.getBeginColumn();
            endLine = this.input_stream.getEndLine();
            endColumn = this.input_stream.getEndColumn();
        }
        Token newToken = Token.newToken(this.jjmatchedKind, str);
        newToken.beginLine = beginLine;
        newToken.endLine = endLine;
        newToken.beginColumn = beginColumn;
        newToken.endColumn = endColumn;
        return newToken;
    }

    public void setDebugStream(PrintStream printStream) {
        this.debugStream = printStream;
    }

    public LuaParserTokenManager(SimpleCharStream simpleCharStream, int i10) {
        this(simpleCharStream);
        SwitchTo(i10);
    }

    public void ReInit(SimpleCharStream simpleCharStream, int i10) {
        ReInit(simpleCharStream);
        SwitchTo(i10);
    }
}
