package org.eclipse.jdt.internal.compiler.parser.diagnose;

import java.io.PrintStream;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.ConflictedParser;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;
import w2.C15883c;

public class DiagnoseParser implements ParserBasicInformation, TerminalTokens, ConflictedParser {
    private static final int BEFORE_CODE = 2;
    private static final int BUFF_SIZE = 32;
    private static final int BUFF_UBOUND = 31;
    private static final boolean DEBUG = false;
    private static final int DELETION_CODE = 6;
    private static final int EOF_CODE = 11;
    private static final int INSERTION_CODE = 3;
    private static final int INVALID_CODE = 4;
    private static final int MAX_DISTANCE = 30;
    private static final int MERGE_CODE = 7;
    private static final int MIN_DISTANCE = 3;
    private static final int MISPLACED_CODE = 8;
    private static final int NIL = -1;
    private static final int SCOPE_CODE = 9;
    private static final int SECONDARY_CODE = 10;
    private static final int STACK_INCREMENT = 256;
    private static final int SUBSTITUTION_CODE = 5;
    private boolean DEBUG_PARSECHECK;
    int[] buffer;
    private int currentToken;
    private int errorToken;
    private int errorTokenStart;
    private LexStream lexStream;
    int[] list;
    private int[] locationStack;
    private int[] locationStartStack;
    private int[] nextStack;
    private int nextStackTop;
    private CompilerOptions options;
    private Parser parser;
    private int[] prevStack;
    private int prevStackTop;
    private RecoveryScanner recoveryScanner;
    private boolean reportProblem;
    private int[] scopeIndex;
    private int[] scopePosition;
    private int scopeStackTop;
    private int[] stack;
    private int stackLength;
    StateInfo[] statePool;
    int statePoolTop;
    int[] stateSeen;
    private int stateStackTop;
    private int[] tempStack;
    private int tempStackTop;

    public static class PrimaryRepairInfo {
        public int distance = 0;
        public int misspellIndex = 0;
        public int code = 0;
        public int bufferPosition = 0;
        public int symbol = 0;

        public PrimaryRepairInfo copy() {
            PrimaryRepairInfo primaryRepairInfo = new PrimaryRepairInfo();
            primaryRepairInfo.distance = this.distance;
            primaryRepairInfo.misspellIndex = this.misspellIndex;
            primaryRepairInfo.code = this.code;
            primaryRepairInfo.bufferPosition = this.bufferPosition;
            primaryRepairInfo.symbol = this.symbol;
            return primaryRepairInfo;
        }
    }

    public static class RepairCandidate {
        public int symbol = 0;
        public int location = 0;
    }

    public static class SecondaryRepairInfo {
        public int bufferPosition;
        public int code;
        public int distance;
        public int numDeletions;
        boolean recoveryOnNextStack;
        public int stackPosition;
        public int symbol;
    }

    public static class StateInfo {
        int next;
        int state;

        public StateInfo(int i10, int i11) {
            this.state = i10;
            this.next = i11;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public DiagnoseParser(Parser parser, int i10, int i11, int i12, CompilerOptions compilerOptions) {
        this(parser, i10, i11, i12, r7, r7, r7, compilerOptions);
        int[] iArr = Util.EMPTY_INT_ARRAY;
    }

    private PrimaryRepairInfo checkPrimaryDistance(int[] iArr, int i10, PrimaryRepairInfo primaryRepairInfo) {
        int mergeCandidate;
        int parseCheck;
        int i11;
        PrimaryRepairInfo scopeTrial = scopeTrial(iArr, i10, primaryRepairInfo.copy());
        if (scopeTrial.distance > primaryRepairInfo.distance) {
            primaryRepairInfo = scopeTrial;
        }
        int[] iArr2 = this.buffer;
        int i12 = primaryRepairInfo.bufferPosition;
        if (iArr2[i12] != 0 && iArr2[i12 + 1] != 0 && (mergeCandidate = mergeCandidate(iArr[i10], i12)) != 0 && ((parseCheck = parseCheck(iArr, i10, mergeCandidate, primaryRepairInfo.bufferPosition + 2)) > (i11 = primaryRepairInfo.distance) || (parseCheck == i11 && primaryRepairInfo.misspellIndex < 10))) {
            primaryRepairInfo.misspellIndex = 10;
            primaryRepairInfo.symbol = mergeCandidate;
            primaryRepairInfo.distance = parseCheck;
            primaryRepairInfo.code = 7;
        }
        int parseCheck2 = parseCheck(iArr, i10, this.lexStream.kind(this.buffer[primaryRepairInfo.bufferPosition + 1]), primaryRepairInfo.bufferPosition + 2);
        int i13 = (this.lexStream.kind(this.buffer[primaryRepairInfo.bufferPosition]) == 61 && this.lexStream.afterEol(this.buffer[primaryRepairInfo.bufferPosition + 1])) ? 10 : 0;
        int i14 = primaryRepairInfo.distance;
        if (parseCheck2 > i14 || (parseCheck2 == i14 && i13 > primaryRepairInfo.misspellIndex)) {
            primaryRepairInfo.misspellIndex = i13;
            primaryRepairInfo.code = 6;
            primaryRepairInfo.distance = parseCheck2;
        }
        int i15 = iArr[i10];
        this.tempStackTop = i10 - 1;
        int kind = this.lexStream.kind(this.buffer[primaryRepairInfo.bufferPosition]);
        this.lexStream.reset(this.buffer[primaryRepairInfo.bufferPosition + 1]);
        int tAction = Parser.tAction(i15, kind);
        int i16 = i10;
        while (tAction <= 867) {
            do {
                int i17 = this.tempStackTop - (Parser.rhs[tAction] - 1);
                this.tempStackTop = i17;
                tAction = Parser.ntAction(i17 > i16 ? this.tempStack[i17] : iArr[i17], Parser.lhs[tAction]);
            } while (tAction <= 867);
            int i18 = this.tempStackTop;
            if (i16 >= i18) {
                i16 = i18;
            }
            this.tempStack[i18 + 1] = tAction;
            tAction = Parser.tAction(tAction, kind);
            i15 = tAction;
        }
        int asi = Parser.asi(i15);
        char c10 = 0;
        while (true) {
            char c11 = Parser.asr[asi];
            if (c11 == 0) {
                break;
            }
            if (c11 != '=' && c11 != '\u0081') {
                if (c10 == 0) {
                    this.list[c11] = c11;
                } else {
                    int[] iArr3 = this.list;
                    iArr3[c11] = iArr3[c10];
                    iArr3[c10] = c11;
                }
                c10 = c11;
            }
            asi++;
        }
        int i19 = iArr[i10];
        if (i19 != i15) {
            int asi2 = Parser.asi(i19);
            while (true) {
                char c12 = Parser.asr[asi2];
                if (c12 == 0) {
                    break;
                }
                if (c12 != '=' && c12 != '\u0081') {
                    int[] iArr4 = this.list;
                    if (iArr4[c12] == 0) {
                        if (c10 == 0) {
                            iArr4[c12] = c12;
                        } else {
                            iArr4[c12] = iArr4[c10];
                            iArr4[c10] = c12;
                        }
                        c10 = c12;
                    }
                }
                asi2++;
            }
        }
        int[] iArr5 = this.list;
        int i20 = iArr5[c10];
        iArr5[c10] = 0;
        int i21 = i20;
        while (i21 != 0) {
            int i22 = (i21 == 61 && this.lexStream.afterEol(this.buffer[primaryRepairInfo.bufferPosition])) ? 10 : 0;
            int parseCheck3 = parseCheck(iArr, i10, i21, primaryRepairInfo.bufferPosition);
            int i23 = primaryRepairInfo.distance;
            if (parseCheck3 > i23) {
                primaryRepairInfo.misspellIndex = i22;
                primaryRepairInfo.distance = parseCheck3;
                primaryRepairInfo.symbol = i21;
                primaryRepairInfo.code = 3;
            } else if (parseCheck3 == i23 && i22 > primaryRepairInfo.misspellIndex) {
                primaryRepairInfo.misspellIndex = i22;
                primaryRepairInfo.distance = parseCheck3;
                primaryRepairInfo.symbol = i21;
                primaryRepairInfo.code = 3;
            }
            i21 = this.list[i21];
        }
        if (this.buffer[primaryRepairInfo.bufferPosition] != 0) {
            while (i20 != 0) {
                int misspell = (i20 == 61 && this.lexStream.afterEol(this.buffer[primaryRepairInfo.bufferPosition + 1])) ? 10 : misspell(i20, this.buffer[primaryRepairInfo.bufferPosition]);
                int parseCheck4 = parseCheck(iArr, i10, i20, primaryRepairInfo.bufferPosition + 1);
                int i24 = primaryRepairInfo.distance;
                if (parseCheck4 > i24) {
                    primaryRepairInfo.misspellIndex = misspell;
                    primaryRepairInfo.distance = parseCheck4;
                    primaryRepairInfo.symbol = i20;
                    primaryRepairInfo.code = 5;
                } else if (parseCheck4 == i24 && misspell > primaryRepairInfo.misspellIndex) {
                    primaryRepairInfo.misspellIndex = misspell;
                    primaryRepairInfo.symbol = i20;
                    primaryRepairInfo.code = 5;
                }
                int[] iArr6 = this.list;
                int i25 = iArr6[i20];
                iArr6[i20] = 0;
                i20 = i25;
            }
        }
        int nasi = Parser.nasi(iArr[i10]);
        while (true) {
            char c13 = Parser.nasr[nasi];
            if (c13 == 0) {
                return primaryRepairInfo;
            }
            int i26 = c13 + '\u0081';
            int parseCheck5 = parseCheck(iArr, i10, i26, primaryRepairInfo.bufferPosition + 1);
            if (parseCheck5 > primaryRepairInfo.distance) {
                primaryRepairInfo.misspellIndex = 0;
                primaryRepairInfo.distance = parseCheck5;
                primaryRepairInfo.symbol = i26;
                primaryRepairInfo.code = 4;
            }
            int parseCheck6 = parseCheck(iArr, i10, i26, primaryRepairInfo.bufferPosition);
            int i27 = primaryRepairInfo.distance;
            if (parseCheck6 > i27 || (parseCheck6 == i27 && primaryRepairInfo.code == 4)) {
                primaryRepairInfo.misspellIndex = 0;
                primaryRepairInfo.distance = parseCheck6;
                primaryRepairInfo.symbol = i26;
                primaryRepairInfo.code = 3;
            }
            nasi++;
        }
    }

    private static char[] displayEscapeCharacters(char[] cArr, int i10, int i11) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i12 = 0; i12 < i10; i12++) {
            stringBuffer.append(cArr[i12]);
        }
        while (i10 < i11) {
            Util.appendEscapedChar(stringBuffer, cArr[i10], true);
            i10++;
        }
        while (i11 < cArr.length) {
            stringBuffer.append(cArr[i11]);
            i11++;
        }
        return stringBuffer.toString().toCharArray();
    }

    private RepairCandidate errorRecovery(int i10, boolean z10) {
        this.errorToken = i10;
        this.errorTokenStart = this.lexStream.start(i10);
        int previous = this.lexStream.previous(i10);
        int kind = this.lexStream.kind(previous);
        int i11 = 0;
        if (!z10) {
            RepairCandidate primaryPhase = primaryPhase(i10);
            if (primaryPhase.symbol != 0) {
                return primaryPhase;
            }
            RepairCandidate secondaryPhase = secondaryPhase(i10);
            if (secondaryPhase.symbol != 0) {
                return secondaryPhase;
            }
            if (this.lexStream.kind(i10) == 61) {
                reportError(11, Parser.terminal_index[61], previous, previous);
                secondaryPhase.symbol = 0;
                secondaryPhase.location = i10;
                return secondaryPhase;
            }
            do {
                int i12 = 31;
                if (this.lexStream.kind(this.buffer[31]) == 61) {
                    while (this.lexStream.kind(this.buffer[i12]) == 61) {
                        i12--;
                    }
                    reportError(6, Parser.terminal_index[kind], i10, this.buffer[i12]);
                    secondaryPhase.symbol = 0;
                    secondaryPhase.location = this.buffer[i12];
                    return secondaryPhase;
                }
                secondaryPhase = secondaryPhase(this.buffer[29]);
            } while (secondaryPhase.symbol == 0);
            return secondaryPhase;
        }
        reportError(3, Parser.terminal_index[49], previous, previous);
        RepairCandidate repairCandidate = new RepairCandidate();
        repairCandidate.symbol = 49;
        repairCandidate.location = i10;
        this.lexStream.reset(i10);
        this.stateStackTop = this.nextStackTop;
        while (true) {
            int i13 = this.stateStackTop;
            if (i11 > i13) {
                this.locationStack[i13] = i10;
                this.locationStartStack[i13] = this.lexStream.start(i10);
                return repairCandidate;
            }
            this.stack[i11] = this.nextStack[i11];
            i11++;
        }
    }

    private int[] getNTermTemplate(int i10) {
        char c10 = Parser.recovery_templates_index[i10];
        if (c10 <= 0) {
            return null;
        }
        int[] iArr = new int[Parser.recovery_templates.length];
        int i11 = 0;
        int i12 = c10;
        while (true) {
            char c11 = Parser.recovery_templates[i12];
            if (c11 == 0) {
                int[] iArr2 = new int[i11];
                System.arraycopy(iArr, 0, iArr2, 0, i11);
                return iArr2;
            }
            iArr[i11] = c11;
            i11++;
            i12++;
        }
    }

    private int getNtermIndex(int i10, int i11, int i12) {
        int i13 = i11 - 129;
        int kind = this.lexStream.kind(this.buffer[i12]);
        this.lexStream.reset(this.buffer[i12 + 1]);
        this.tempStackTop = 0;
        this.tempStack[0] = i10;
        int ntAction = Parser.ntAction(i10, i13);
        if (ntAction > 867) {
            this.tempStack[this.tempStackTop + 1] = ntAction;
            ntAction = Parser.tAction(ntAction, kind);
        }
        while (ntAction <= 867) {
            do {
                int i14 = this.tempStackTop - (Parser.rhs[ntAction] - 1);
                this.tempStackTop = i14;
                i13 = i13;
                if (i14 < 0) {
                    return Parser.non_terminal_index[i13];
                }
                if (i14 == 0) {
                    i13 = Parser.lhs[ntAction];
                }
                ntAction = Parser.ntAction(this.tempStack[i14], Parser.lhs[ntAction]);
            } while (ntAction <= 867);
            this.tempStack[this.tempStackTop + 1] = ntAction;
            ntAction = Parser.tAction(ntAction, kind);
        }
        return Parser.non_terminal_index[i13];
    }

    private int getTermIndex(int[] iArr, int i10, int i11, int i12) {
        int tAction;
        int i13 = iArr[i10];
        this.tempStackTop = i10 - 1;
        this.lexStream.reset(this.buffer[i12]);
        int tAction2 = Parser.tAction(i13, i11);
        while (tAction2 <= 867) {
            do {
                int i14 = this.tempStackTop - (Parser.rhs[tAction2] - 1);
                this.tempStackTop = i14;
                tAction2 = Parser.ntAction(i14 > i10 ? this.tempStack[i14] : iArr[i14], Parser.lhs[tAction2]);
            } while (tAction2 <= 867);
            int i15 = this.tempStackTop;
            if (i10 >= i15) {
                i10 = i15;
            }
            this.tempStack[i15 + 1] = tAction2;
            tAction2 = Parser.tAction(tAction2, i11);
        }
        int i16 = this.tempStackTop + 1;
        this.tempStackTop = i16;
        int kind = this.lexStream.kind(this.buffer[i12]);
        this.lexStream.reset(this.buffer[i12 + 1]);
        if (tAction2 > 16966) {
            tAction = tAction2 - 16966;
        } else {
            this.tempStack[this.tempStackTop + 1] = tAction2;
            tAction = Parser.tAction(tAction2, kind);
        }
        while (tAction <= 867) {
            do {
                int i17 = this.tempStackTop - (Parser.rhs[tAction] - 1);
                this.tempStackTop = i17;
                if (i17 < i16) {
                    return i11 > 129 ? Parser.non_terminal_index[i11 - 129] : Parser.terminal_index[i11];
                }
                char c10 = Parser.lhs[tAction];
                if (i17 == i16) {
                    i11 = c10 + '\u0081';
                }
                tAction = Parser.ntAction(i17 > i10 ? this.tempStack[i17] : iArr[i17], c10);
            } while (tAction <= 867);
            this.tempStack[this.tempStackTop + 1] = tAction;
            tAction = Parser.tAction(tAction, kind);
        }
        return i11 > 129 ? Parser.non_terminal_index[i11 - 129] : Parser.terminal_index[i11];
    }

    private int mergeCandidate(int i10, int i11) {
        char[] name = this.lexStream.name(this.buffer[i11]);
        char[] name2 = this.lexStream.name(this.buffer[i11 + 1]);
        int length = name.length + name2.length;
        char[] concat = CharOperation.concat(name, name2);
        for (int asi = Parser.asi(i10); Parser.asr[asi] != 0; asi++) {
            char c10 = Parser.terminal_index[Parser.asr[asi]];
            if (length == Parser.name[c10].length() && CharOperation.equals(concat, Parser.name[c10].toCharArray(), false)) {
                return Parser.asr[asi];
            }
        }
        return 0;
    }

    private SecondaryRepairInfo misplacementRecovery(int[] iArr, int i10, int i11, SecondaryRepairInfo secondaryRepairInfo, boolean z10) {
        int i12 = this.buffer[2];
        int i13 = i10 - 1;
        int i14 = 0;
        while (i13 >= 0) {
            int i15 = this.locationStack[i13];
            if (i15 < i12) {
                i14++;
            }
            int parseCheck = parseCheck(iArr, i13, this.lexStream.kind(this.buffer[2]), 3);
            if (parseCheck == 30) {
                parseCheck = i11;
            }
            if (parseCheck > 3 && parseCheck - i14 > secondaryRepairInfo.distance - secondaryRepairInfo.numDeletions) {
                secondaryRepairInfo.stackPosition = i13;
                secondaryRepairInfo.distance = parseCheck;
                secondaryRepairInfo.numDeletions = i14;
                secondaryRepairInfo.recoveryOnNextStack = z10;
            }
            i13--;
            i12 = i15;
        }
        return secondaryRepairInfo;
    }

    private int misspell(int i10, int i11) {
        char[] charArray = Parser.name[Parser.terminal_index[i10]].toCharArray();
        int length = charArray.length;
        char[] cArr = new char[length + 1];
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            cArr[i13] = ScannerHelper.toLowerCase(charArray[i13]);
        }
        cArr[length] = 0;
        char[] name = this.lexStream.name(i11);
        int length2 = name.length;
        int i14 = length2 < 41 ? length2 : 41;
        char[] cArr2 = new char[i14 + 1];
        for (int i15 = 0; i15 < i14; i15++) {
            cArr2[i15] = ScannerHelper.toLowerCase(name[i15]);
        }
        cArr2[i14] = 0;
        if (length == 1 && i14 == 1) {
            char c10 = cArr[0];
            if (c10 == ';' && cArr2[0] == ',') {
                return 3;
            }
            if (c10 == ',' && cArr2[0] == ';') {
                return 3;
            }
            if (c10 == ';' && cArr2[0] == ':') {
                return 3;
            }
            if (c10 == ':' && cArr2[0] == ';') {
                return 3;
            }
            if (c10 == '.' && cArr2[0] == ',') {
                return 3;
            }
            if (c10 == ',' && cArr2[0] == '.') {
                return 3;
            }
            if (c10 == '\'' && cArr2[0] == '\"') {
                return 3;
            }
            if (c10 == '\"' && cArr2[0] == '\'') {
                return 3;
            }
        }
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        while (i12 < length && i16 < i14) {
            char c11 = cArr[i12];
            char c12 = cArr2[i16];
            if (c11 == c12) {
                i18++;
                i12++;
                i16++;
                if (i17 == 0) {
                    i19++;
                }
            } else {
                int i20 = i12 + 1;
                char c13 = cArr[i20];
                if (c13 == c12 && c11 == cArr2[i16 + 1]) {
                    i18 += 2;
                    i12 += 2;
                    i16 += 2;
                } else {
                    int i21 = i16 + 1;
                    if (c13 == cArr2[i21]) {
                        i17++;
                        i16 = i21;
                        i12 = i20;
                    } else {
                        int i22 = length - i12;
                        int i23 = i14 - i16;
                        if (i22 <= i23) {
                            if (i23 > i22) {
                                i16 = i21;
                            } else {
                                i16 = i21;
                            }
                        }
                        i12 = i20;
                    }
                }
                i17++;
            }
        }
        if (i12 < length || i16 < i14) {
            i17++;
        }
        if (length < i14) {
            i14 = length;
        }
        if (i17 > (i14 / 6) + 1) {
            i18 = i19;
        }
        int i24 = i18 * 10;
        if (length < length2) {
            length = length2;
        }
        return i24 / (length + i17);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0050, code lost:
    
        r11 = java.lang.System.out;
        r11.print(r2);
        r11.print(" (");
        r11.print(-(org.eclipse.jdt.internal.compiler.parser.Parser.rhs[r3] - 1));
        r11.print(") [max:");
        r11.print(r1);
        r11.print("]\tprocess_non_terminal\t");
        r11.print(r3);
        r11.print("\t");
        r11.print(org.eclipse.jdt.internal.compiler.parser.Parser.name[org.eclipse.jdt.internal.compiler.parser.Parser.non_terminal_index[org.eclipse.jdt.internal.compiler.parser.Parser.lhs[r3]]]);
        r11.println();
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x008d, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.Parser.rules_compliance[r3] <= r17.options.sourceLevel) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0090, code lost:
    
        r2 = org.eclipse.jdt.internal.compiler.parser.Parser.lhs[r3];
        r3 = r17.tempStackTop;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0096, code lost:
    
        if (r3 <= r1) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0098, code lost:
    
        r3 = r17.tempStack[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x009f, code lost:
    
        r3 = org.eclipse.jdt.internal.compiler.parser.Parser.ntAction(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a3, code lost:
    
        if (r3 <= 867) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a5, code lost:
    
        r2 = r17.tempStackTop;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a7, code lost:
    
        if (r1 >= r2) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00aa, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009d, code lost:
    
        r3 = r18[r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008f, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ab, code lost:
    
        r2 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x003f, code lost:
    
        if (r3 <= 867) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
    
        r2 = r17.tempStackTop - (org.eclipse.jdt.internal.compiler.parser.Parser.rhs[r3] - 1);
        r17.tempStackTop = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x004e, code lost:
    
        if (r17.DEBUG_PARSECHECK == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int parseCheck(int[] iArr, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15 = i10;
        int i16 = iArr[i15];
        if (i11 > 129) {
            this.tempStackTop = i15;
            if (this.DEBUG_PARSECHECK) {
                System.out.println(i15);
            }
            i13 = this.lexStream.kind(this.buffer[i12]);
            LexStream lexStream = this.lexStream;
            lexStream.reset(lexStream.next(this.buffer[i12]));
            i16 = Parser.ntAction(i16, i11 - 129);
        } else {
            int i17 = i15 - 1;
            this.tempStackTop = i17;
            if (this.DEBUG_PARSECHECK) {
                System.out.println(i17);
            }
            i15 = this.tempStackTop;
            this.lexStream.reset(this.buffer[i12]);
            i13 = i11;
            i14 = i12 - 1;
        }
        while (true) {
            if (this.DEBUG_PARSECHECK) {
                PrintStream printStream = System.out;
                printStream.print(this.tempStackTop + 1);
                printStream.print(" (+1) [max:");
                printStream.print(i15);
                printStream.print("]\tprocess_terminal    \t");
                printStream.print(i13);
                printStream.print("\t");
                printStream.print(Parser.name[Parser.terminal_index[i13]]);
                printStream.println();
            }
            int i18 = this.tempStackTop + 1;
            this.tempStackTop = i18;
            if (i18 >= this.stackLength) {
                return i14;
            }
            this.tempStack[i18] = i16;
            i16 = Parser.tAction(i16, i13);
            if (i16 <= 867) {
                int i19 = this.tempStackTop - 1;
                this.tempStackTop = i19;
                if (this.DEBUG_PARSECHECK) {
                    PrintStream printStream2 = System.out;
                    printStream2.print(i19);
                    printStream2.print(" (-1) [max:");
                    printStream2.print(i15);
                    printStream2.print("]\treduce");
                    printStream2.println();
                }
            } else {
                if (i16 >= 16965 && i16 <= 16966) {
                    if (i16 == 16965) {
                        return 30;
                    }
                    return i14;
                }
                if (i14 == 30) {
                    return i14;
                }
                i14++;
                i13 = this.lexStream.kind(this.buffer[i14]);
                LexStream lexStream2 = this.lexStream;
                lexStream2.reset(lexStream2.next(this.buffer[i14]));
                if (i16 > 16966) {
                    i16 -= 16966;
                    if (this.DEBUG_PARSECHECK) {
                        PrintStream printStream3 = System.out;
                        printStream3.print(this.tempStackTop);
                        printStream3.print("\tshift reduce");
                        printStream3.println();
                    }
                } else if (this.DEBUG_PARSECHECK) {
                    System.out.println("\tshift");
                }
            }
            do {
                int i20 = this.tempStackTop - (Parser.rhs[i16] - 1);
                this.tempStackTop = i20;
                if (this.DEBUG_PARSECHECK) {
                    PrintStream printStream4 = System.out;
                    printStream4.print(i20);
                    printStream4.print(" (");
                    printStream4.print(-(Parser.rhs[i16] - 1));
                    printStream4.print(") [max:");
                    printStream4.print(i15);
                    printStream4.print("]\tprocess_non_terminal\t");
                    printStream4.print(i16);
                    printStream4.print("\t");
                    printStream4.print(Parser.name[Parser.non_terminal_index[Parser.lhs[i16]]]);
                    printStream4.println();
                }
                if (i16 <= 867 && Parser.rules_compliance[i16] > this.options.sourceLevel) {
                    return 0;
                }
                char c10 = Parser.lhs[i16];
                int i21 = this.tempStackTop;
                i16 = Parser.ntAction(i21 > i15 ? this.tempStack[i21] : iArr[i21], c10);
            } while (i16 <= 867);
            int i22 = this.tempStackTop;
            if (i15 >= i22) {
                i15 = i22;
            }
        }
    }

    private RepairCandidate primaryDiagnosis(PrimaryRepairInfo primaryRepairInfo) {
        int i10;
        int i11;
        int[] iArr = this.buffer;
        int i12 = primaryRepairInfo.bufferPosition;
        int i13 = iArr[i12 - 1];
        int i14 = iArr[i12];
        int i15 = primaryRepairInfo.code;
        if (i15 == 2 || i15 == 3) {
            int i16 = primaryRepairInfo.symbol;
            int ntermIndex = i16 > 129 ? getNtermIndex(this.stack[this.stateStackTop], i16, i12) : getTermIndex(this.stack, this.stateStackTop, i16, i12);
            int i17 = primaryRepairInfo.code;
            if (i17 != 3) {
                i13 = i14;
            }
            reportError(i17, ntermIndex, i13, i13);
        } else if (i15 == 4) {
            reportError(primaryRepairInfo.code, getNtermIndex(this.stack[this.stateStackTop], primaryRepairInfo.symbol, i12 + 1), i14, i14);
        } else if (i15 == 5) {
            if (primaryRepairInfo.misspellIndex >= 6) {
                i10 = Parser.terminal_index[primaryRepairInfo.symbol];
            } else {
                int termIndex = getTermIndex(this.stack, this.stateStackTop, primaryRepairInfo.symbol, i12 + 1);
                i10 = termIndex;
                if (termIndex != Parser.terminal_index[primaryRepairInfo.symbol]) {
                    primaryRepairInfo.code = 4;
                    i10 = termIndex;
                }
            }
            reportError(primaryRepairInfo.code, i10, i14, i14);
        } else if (i15 == 7) {
            reportError(i15, Parser.terminal_index[primaryRepairInfo.symbol], i14, this.lexStream.next(i14));
        } else if (i15 != 9) {
            reportError(i15, Parser.terminal_index[129], i14, i14);
        } else {
            int i18 = 0;
            while (true) {
                i11 = this.scopeStackTop;
                if (i18 >= i11) {
                    break;
                }
                int i19 = primaryRepairInfo.code;
                int i20 = this.scopeIndex[i18];
                reportError(i19, -i20, this.locationStack[this.scopePosition[i18]], i13, Parser.non_terminal_index[Parser.scope_lhs[i20]]);
                i18++;
            }
            char[] cArr = Parser.scope_lhs;
            int i21 = this.scopeIndex[i11];
            int i22 = cArr[i21] + '\u0081';
            primaryRepairInfo.symbol = i22;
            int i23 = this.scopePosition[i11];
            this.stateStackTop = i23;
            reportError(primaryRepairInfo.code, -i21, this.locationStack[i23], i13, getNtermIndex(this.stack[i23], i22, primaryRepairInfo.bufferPosition));
        }
        RepairCandidate repairCandidate = new RepairCandidate();
        int i24 = primaryRepairInfo.code;
        if (i24 != 2 && i24 != 3) {
            if (i24 == 4 || i24 == 5) {
                repairCandidate.symbol = primaryRepairInfo.symbol;
                int[] iArr2 = this.buffer;
                int i25 = primaryRepairInfo.bufferPosition;
                repairCandidate.location = iArr2[i25];
                this.lexStream.reset(iArr2[i25 + 1]);
            } else if (i24 == 7) {
                repairCandidate.symbol = primaryRepairInfo.symbol;
                int[] iArr3 = this.buffer;
                int i26 = primaryRepairInfo.bufferPosition;
                repairCandidate.location = iArr3[i26];
                this.lexStream.reset(iArr3[i26 + 2]);
            } else if (i24 != 9) {
                int[] iArr4 = this.buffer;
                int i27 = primaryRepairInfo.bufferPosition;
                repairCandidate.location = iArr4[i27 + 1];
                repairCandidate.symbol = this.lexStream.kind(iArr4[i27 + 1]);
                this.lexStream.reset(this.buffer[primaryRepairInfo.bufferPosition + 2]);
            }
            return repairCandidate;
        }
        repairCandidate.symbol = primaryRepairInfo.symbol;
        int i28 = this.buffer[primaryRepairInfo.bufferPosition];
        repairCandidate.location = i28;
        this.lexStream.reset(i28);
        return repairCandidate;
    }

    private RepairCandidate primaryPhase(int i10) {
        int i11;
        PrimaryRepairInfo primaryRepairInfo = new PrimaryRepairInfo();
        RepairCandidate repairCandidate = new RepairCandidate();
        int i12 = this.nextStackTop >= 0 ? 3 : 2;
        this.buffer[i12] = i10;
        for (int i13 = i12; i13 > 0; i13--) {
            int[] iArr = this.buffer;
            iArr[i13 - 1] = this.lexStream.previous(iArr[i13]);
        }
        for (int i14 = i12 + 1; i14 < 32; i14++) {
            int[] iArr2 = this.buffer;
            iArr2[i14] = this.lexStream.next(iArr2[i14 - 1]);
        }
        int i15 = this.nextStackTop;
        if (i15 >= 0) {
            primaryRepairInfo.bufferPosition = 3;
            primaryRepairInfo = checkPrimaryDistance(this.nextStack, i15, primaryRepairInfo);
        }
        PrimaryRepairInfo copy = primaryRepairInfo.copy();
        copy.bufferPosition = 2;
        PrimaryRepairInfo checkPrimaryDistance = checkPrimaryDistance(this.stack, this.stateStackTop, copy);
        if (checkPrimaryDistance.distance > primaryRepairInfo.distance || checkPrimaryDistance.misspellIndex > primaryRepairInfo.misspellIndex) {
            primaryRepairInfo = checkPrimaryDistance;
        }
        if (this.prevStackTop >= 0) {
            PrimaryRepairInfo copy2 = primaryRepairInfo.copy();
            copy2.bufferPosition = 1;
            PrimaryRepairInfo checkPrimaryDistance2 = checkPrimaryDistance(this.prevStack, this.prevStackTop, copy2);
            if (checkPrimaryDistance2.distance > primaryRepairInfo.distance || checkPrimaryDistance2.misspellIndex > primaryRepairInfo.misspellIndex) {
                primaryRepairInfo = checkPrimaryDistance2;
            }
        }
        int i16 = this.nextStackTop;
        if (i16 >= 0) {
            if (secondaryCheck(this.nextStack, i16, 3, primaryRepairInfo.distance)) {
                return repairCandidate;
            }
        } else if (secondaryCheck(this.stack, this.stateStackTop, 2, primaryRepairInfo.distance)) {
            return repairCandidate;
        }
        int i17 = primaryRepairInfo.distance;
        int i18 = primaryRepairInfo.bufferPosition;
        int i19 = i17 - i18;
        primaryRepairInfo.distance = i19 + 1;
        int i20 = primaryRepairInfo.code;
        if (i20 == 4 || i20 == 6 || i20 == 5 || i20 == 7) {
            primaryRepairInfo.distance = i19;
        }
        if (primaryRepairInfo.distance < 3) {
            return repairCandidate;
        }
        if (i20 == 3 && this.buffer[i18 - 1] == 0) {
            primaryRepairInfo.code = 2;
        }
        int i21 = 0;
        if (i18 == 1) {
            this.stateStackTop = this.prevStackTop;
            while (i21 <= this.stateStackTop) {
                this.stack[i21] = this.prevStack[i21];
                i21++;
            }
        } else {
            int i22 = this.nextStackTop;
            if (i22 >= 0 && i18 >= 3) {
                this.stateStackTop = i22;
                while (true) {
                    i11 = this.stateStackTop;
                    if (i21 > i11) {
                        break;
                    }
                    this.stack[i21] = this.nextStack[i21];
                    i21++;
                }
                int[] iArr3 = this.locationStack;
                int[] iArr4 = this.buffer;
                iArr3[i11] = iArr4[3];
                this.locationStartStack[i11] = this.lexStream.start(iArr4[3]);
            }
        }
        return primaryDiagnosis(primaryRepairInfo);
    }

    private ProblemReporter problemReporter() {
        return this.parser.problemReporter();
    }

    private void reallocateStacks() {
        int i10 = this.stackLength;
        int i11 = i10 + 256;
        this.stackLength = i11;
        if (i10 == 0) {
            this.stack = new int[i11];
            this.locationStack = new int[i11];
            this.locationStartStack = new int[i11];
            this.tempStack = new int[i11];
            this.prevStack = new int[i11];
            this.nextStack = new int[i11];
            this.scopeIndex = new int[i11];
            this.scopePosition = new int[i11];
            return;
        }
        int[] iArr = this.stack;
        int[] iArr2 = new int[i11];
        this.stack = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        int[] iArr3 = this.locationStack;
        int[] iArr4 = new int[this.stackLength];
        this.locationStack = iArr4;
        System.arraycopy(iArr3, 0, iArr4, 0, i10);
        int[] iArr5 = this.locationStartStack;
        int[] iArr6 = new int[this.stackLength];
        this.locationStartStack = iArr6;
        System.arraycopy(iArr5, 0, iArr6, 0, i10);
        int[] iArr7 = this.tempStack;
        int[] iArr8 = new int[this.stackLength];
        this.tempStack = iArr8;
        System.arraycopy(iArr7, 0, iArr8, 0, i10);
        int[] iArr9 = this.prevStack;
        int[] iArr10 = new int[this.stackLength];
        this.prevStack = iArr10;
        System.arraycopy(iArr9, 0, iArr10, 0, i10);
        int[] iArr11 = this.nextStack;
        int[] iArr12 = new int[this.stackLength];
        this.nextStack = iArr12;
        System.arraycopy(iArr11, 0, iArr12, 0, i10);
        int[] iArr13 = this.scopeIndex;
        int[] iArr14 = new int[this.stackLength];
        this.scopeIndex = iArr14;
        System.arraycopy(iArr13, 0, iArr14, 0, i10);
        int[] iArr15 = this.scopePosition;
        int[] iArr16 = new int[this.stackLength];
        this.scopePosition = iArr16;
        System.arraycopy(iArr15, 0, iArr16, 0, i10);
    }

    private void reportError(int i10, int i11, int i12, int i13) {
        reportError(i10, i11, i12, i13, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void reportPrimaryError(int i10, int i11, int i12, int i13) {
        String str = i11 >= 0 ? Parser.readableName[i11] : Util.EMPTY_STRING;
        int start = this.lexStream.start(i12);
        int end = this.lexStream.end(i12);
        int kind = this.lexStream.kind(i12);
        String str2 = Parser.name[Parser.terminal_index[this.lexStream.kind(i12)]];
        char[] name = this.lexStream.name(i12);
        if (kind == 46) {
            name = displayEscapeCharacters(name, 1, name.length - 1);
        }
        char[] cArr = name;
        RecoveryScanner recoveryScanner = this.recoveryScanner;
        int i14 = (recoveryScanner == null || i11 < 0) ? -1 : Parser.reverse_index[i11];
        switch (i10) {
            case 2:
                if (recoveryScanner != null) {
                    if (i14 > -1) {
                        recoveryScanner.insertToken(i14, -1, start);
                    } else {
                        int[] nTermTemplate = getNTermTemplate(-i14);
                        if (nTermTemplate != null) {
                            this.recoveryScanner.insertTokens(nTermTemplate, -1, start);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorInsertBeforeToken(start, end, kind, cArr, str2, str);
                    return;
                }
                return;
            case 3:
                if (recoveryScanner != null) {
                    if (i14 > -1) {
                        recoveryScanner.insertToken(i14, -1, end);
                    } else {
                        int[] nTermTemplate2 = getNTermTemplate(-i14);
                        if (nTermTemplate2 != null) {
                            this.recoveryScanner.insertTokens(nTermTemplate2, -1, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorInsertAfterToken(start, end, kind, cArr, str2, str);
                    return;
                }
                return;
            case 4:
                if (str.length() == 0) {
                    RecoveryScanner recoveryScanner2 = this.recoveryScanner;
                    if (recoveryScanner2 != null) {
                        recoveryScanner2.removeTokens(start, end);
                    }
                    if (this.reportProblem) {
                        problemReporter().parseErrorReplaceToken(start, end, kind, cArr, str2, str);
                        return;
                    }
                    return;
                }
                RecoveryScanner recoveryScanner3 = this.recoveryScanner;
                if (recoveryScanner3 != null) {
                    if (i14 > -1) {
                        recoveryScanner3.replaceTokens(i14, start, end);
                    } else {
                        int[] nTermTemplate3 = getNTermTemplate(-i14);
                        if (nTermTemplate3 != null) {
                            this.recoveryScanner.replaceTokens(nTermTemplate3, start, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorInvalidToken(start, end, kind, cArr, str2, str);
                    return;
                }
                return;
            case 5:
                if (recoveryScanner != null) {
                    if (i14 > -1) {
                        recoveryScanner.replaceTokens(i14, start, end);
                    } else {
                        int[] nTermTemplate4 = getNTermTemplate(-i14);
                        if (nTermTemplate4 != null) {
                            this.recoveryScanner.replaceTokens(nTermTemplate4, start, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorReplaceToken(start, end, kind, cArr, str2, str);
                    return;
                }
                return;
            case 6:
                if (recoveryScanner != null) {
                    recoveryScanner.removeTokens(start, end);
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorDeleteToken(start, end, kind, cArr, str2);
                    return;
                }
                return;
            case 7:
                if (recoveryScanner != null) {
                    if (i14 > -1) {
                        recoveryScanner.replaceTokens(i14, start, end);
                    } else {
                        int[] nTermTemplate5 = getNTermTemplate(-i14);
                        if (nTermTemplate5 != null) {
                            this.recoveryScanner.replaceTokens(nTermTemplate5, start, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorMergeTokens(start, end, str);
                    return;
                }
                return;
            case 8:
                if (recoveryScanner != null) {
                    recoveryScanner.removeTokens(start, end);
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorMisplacedConstruct(start, end);
                    return;
                }
                return;
            case 9:
                StringBuffer stringBuffer = new StringBuffer();
                int[] iArr = this.recoveryScanner != null ? new int[Parser.scope_rhs.length - Parser.scope_suffix[-i11]] : null;
                char c10 = Parser.scope_suffix[-i11];
                int i15 = 0;
                int i16 = 0;
                while (Parser.scope_rhs[c10] != 0) {
                    stringBuffer.append(Parser.readableName[Parser.scope_rhs[c10]]);
                    int i17 = c10 + 1;
                    if (Parser.scope_rhs[i17] != 0) {
                        stringBuffer.append(C15883c.f126249O);
                    } else {
                        i16 = Parser.reverse_index[Parser.scope_rhs[c10]];
                    }
                    if (iArr != null) {
                        int i18 = Parser.reverse_index[Parser.scope_rhs[c10]];
                        if (i18 > -1) {
                            int length = iArr.length;
                            if (i15 == length) {
                                int[] iArr2 = new int[length * 2];
                                System.arraycopy(iArr, 0, iArr2, 0, length);
                                iArr = iArr2;
                            }
                            iArr[i15] = i18;
                            i15++;
                        } else {
                            int[] nTermTemplate6 = getNTermTemplate(-i18);
                            if (nTermTemplate6 != null) {
                                int i19 = 0;
                                while (i19 < nTermTemplate6.length) {
                                    int length2 = iArr.length;
                                    if (i15 == length2) {
                                        int[] iArr3 = new int[length2 * 2];
                                        System.arraycopy(iArr, 0, iArr3, 0, length2);
                                        iArr = iArr3;
                                    }
                                    iArr[i15] = nTermTemplate6[i19];
                                    i19++;
                                    i15++;
                                }
                            } else {
                                iArr = null;
                                i15 = 0;
                            }
                        }
                    }
                    c10 = i17;
                }
                if (i15 > 0) {
                    int[] iArr4 = new int[i15];
                    System.arraycopy(iArr, 0, iArr4, 0, i15);
                    this.recoveryScanner.insertTokens(iArr4, i13 != 0 ? -Parser.reverse_index[i13] : -1, end);
                }
                if (i13 == 0) {
                    if (this.reportProblem) {
                        problemReporter().parseErrorInsertToCompleteScope(start, end, stringBuffer.toString());
                        return;
                    }
                    return;
                } else {
                    if (i16 != 68 && this.reportProblem) {
                        problemReporter().parseErrorInsertToComplete(start, end, stringBuffer.toString(), Parser.readableName[i13]);
                        return;
                    }
                    return;
                }
            case 10:
            default:
                if (str.length() == 0) {
                    RecoveryScanner recoveryScanner4 = this.recoveryScanner;
                    if (recoveryScanner4 != null) {
                        recoveryScanner4.removeTokens(start, end);
                    }
                    if (this.reportProblem) {
                        problemReporter().parseErrorNoSuggestion(start, end, kind, cArr, str2);
                        return;
                    }
                    return;
                }
                RecoveryScanner recoveryScanner5 = this.recoveryScanner;
                if (recoveryScanner5 != null) {
                    if (i14 > -1) {
                        recoveryScanner5.replaceTokens(i14, start, end);
                    } else {
                        int[] nTermTemplate7 = getNTermTemplate(-i14);
                        if (nTermTemplate7 != null) {
                            this.recoveryScanner.replaceTokens(nTermTemplate7, start, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorReplaceToken(start, end, kind, cArr, str2, str);
                    return;
                }
                return;
            case 11:
                if (this.reportProblem) {
                    problemReporter().parseErrorUnexpectedEnd(start, end);
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void reportSecondaryError(int i10, int i11, int i12, int i13, int i14) {
        int i15;
        String str = i11 >= 0 ? Parser.readableName[i11] : Util.EMPTY_STRING;
        if (this.lexStream.isInsideStream(i12)) {
            i15 = i12 == 0 ? this.lexStream.start(i12 + 1) : this.lexStream.start(i12);
        } else {
            if (i12 == this.errorToken) {
                i15 = this.errorTokenStart;
            } else {
                int i16 = -1;
                for (int i17 = 0; i17 <= this.stateStackTop; i17++) {
                    if (this.locationStack[i17] == i12) {
                        i16 = this.locationStartStack[i17];
                    }
                }
                i15 = i16;
            }
            if (i15 == -1) {
                i15 = this.lexStream.start(i13);
            }
        }
        int end = this.lexStream.end(i13);
        RecoveryScanner recoveryScanner = this.recoveryScanner;
        int i18 = (recoveryScanner == null || i11 < 0) ? -1 : Parser.reverse_index[i11];
        switch (i10) {
            case 6:
                if (recoveryScanner != null) {
                    recoveryScanner.removeTokens(i15, end);
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorDeleteTokens(i15, end);
                    return;
                }
                return;
            case 7:
                if (recoveryScanner != null) {
                    if (i18 > -1) {
                        recoveryScanner.replaceTokens(i18, i15, end);
                    } else {
                        int[] nTermTemplate = getNTermTemplate(-i18);
                        if (nTermTemplate != null) {
                            this.recoveryScanner.replaceTokens(nTermTemplate, i15, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorMergeTokens(i15, end, str);
                    return;
                }
                return;
            case 8:
                if (recoveryScanner != null) {
                    recoveryScanner.removeTokens(i15, end);
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorMisplacedConstruct(i15, end);
                    return;
                }
                return;
            case 9:
                int start = this.lexStream.start(i13);
                StringBuffer stringBuffer = new StringBuffer();
                int[] iArr = this.recoveryScanner != null ? new int[Parser.scope_rhs.length - Parser.scope_suffix[-i11]] : null;
                char c10 = Parser.scope_suffix[-i11];
                int i19 = 0;
                int i20 = 0;
                while (Parser.scope_rhs[c10] != 0) {
                    stringBuffer.append(Parser.readableName[Parser.scope_rhs[c10]]);
                    int i21 = c10 + 1;
                    if (Parser.scope_rhs[i21] != 0) {
                        stringBuffer.append(C15883c.f126249O);
                    } else {
                        i20 = Parser.reverse_index[Parser.scope_rhs[c10]];
                    }
                    if (iArr != null) {
                        int i22 = Parser.reverse_index[Parser.scope_rhs[c10]];
                        if (i22 > -1) {
                            int length = iArr.length;
                            if (i19 == length) {
                                int[] iArr2 = new int[length * 2];
                                System.arraycopy(iArr, 0, iArr2, 0, length);
                                iArr = iArr2;
                            }
                            iArr[i19] = i22;
                            i19++;
                        } else {
                            int[] nTermTemplate2 = getNTermTemplate(-i22);
                            if (nTermTemplate2 != null) {
                                int i23 = 0;
                                while (i23 < nTermTemplate2.length) {
                                    int length2 = iArr.length;
                                    if (i19 == length2) {
                                        int[] iArr3 = new int[length2 * 2];
                                        System.arraycopy(iArr, 0, iArr3, 0, length2);
                                        iArr = iArr3;
                                    }
                                    iArr[i19] = nTermTemplate2[i23];
                                    i23++;
                                    i19++;
                                }
                            } else {
                                iArr = null;
                                i19 = 0;
                            }
                        }
                    }
                    c10 = i21;
                }
                if (i19 > 0) {
                    int[] iArr4 = new int[i19];
                    System.arraycopy(iArr, 0, iArr4, 0, i19);
                    this.recoveryScanner.insertTokens(iArr4, i14 != 0 ? -Parser.reverse_index[i14] : -1, end);
                }
                if (i14 == 0) {
                    if (this.reportProblem) {
                        problemReporter().parseErrorInsertToCompletePhrase(start, end, stringBuffer.toString());
                        return;
                    }
                    return;
                } else {
                    if (i20 != 68 && this.reportProblem) {
                        problemReporter().parseErrorInsertToComplete(start, end, stringBuffer.toString(), Parser.readableName[i14]);
                        return;
                    }
                    return;
                }
            default:
                if (str.length() == 0) {
                    RecoveryScanner recoveryScanner2 = this.recoveryScanner;
                    if (recoveryScanner2 != null) {
                        recoveryScanner2.removeTokens(i15, end);
                    }
                    if (this.reportProblem) {
                        problemReporter().parseErrorNoSuggestionForTokens(i15, end);
                        return;
                    }
                    return;
                }
                RecoveryScanner recoveryScanner3 = this.recoveryScanner;
                if (recoveryScanner3 != null) {
                    if (i18 > -1) {
                        recoveryScanner3.replaceTokens(i18, i15, end);
                    } else {
                        int[] nTermTemplate3 = getNTermTemplate(-i18);
                        if (nTermTemplate3 != null) {
                            this.recoveryScanner.replaceTokens(nTermTemplate3, i15, end);
                        }
                    }
                }
                if (this.reportProblem) {
                    problemReporter().parseErrorReplaceTokens(i15, end, str);
                    return;
                }
                return;
        }
    }

    private PrimaryRepairInfo scopeTrial(int[] iArr, int i10, PrimaryRepairInfo primaryRepairInfo) {
        this.stateSeen = new int[this.stackLength];
        int i11 = 0;
        while (true) {
            int i12 = this.stackLength;
            if (i11 >= i12) {
                this.statePoolTop = 0;
                this.statePool = new StateInfo[i12];
                scopeTrialCheck(iArr, i10, primaryRepairInfo, 0);
                this.stateSeen = null;
                this.statePoolTop = 0;
                primaryRepairInfo.code = 9;
                primaryRepairInfo.misspellIndex = 10;
                return primaryRepairInfo;
            }
            this.stateSeen[i11] = -1;
            i11++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0064, code lost:
    
        if (r5 == 16966) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0066, code lost:
    
        r5 = org.eclipse.jdt.internal.compiler.parser.Parser.scope_prefix[r10];
        r6 = r16.tempStackTop + 1;
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x006d, code lost:
    
        r7 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006f, code lost:
    
        if (r6 < r7) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x007d, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.Parser.in_symbol(r16.tempStack[r6]) == org.eclipse.jdt.internal.compiler.parser.Parser.scope_rhs[r5]) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0080, code lost:
    
        r6 = r6 - 1;
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0085, code lost:
    
        if (r6 != r8) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0087, code lost:
    
        r6 = r8;
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0088, code lost:
    
        if (r6 < 1) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0094, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.Parser.in_symbol(r17[r6]) == org.eclipse.jdt.internal.compiler.parser.Parser.scope_rhs[r5]) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0097, code lost:
    
        r6 = r6 - 1;
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009c, code lost:
    
        if (r8 >= r18) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009f, code lost:
    
        r7 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a4, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.Parser.scope_rhs[r5] != 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a6, code lost:
    
        if (r6 >= r7) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a8, code lost:
    
        r5 = org.eclipse.jdt.internal.compiler.parser.Parser.scope_state_set[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ac, code lost:
    
        r7 = r17[r6];
        r8 = org.eclipse.jdt.internal.compiler.parser.Parser.scope_state[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b2, code lost:
    
        if (r7 == r8) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b4, code lost:
    
        if (r8 != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b7, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ba, code lost:
    
        if (r8 == 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00bc, code lost:
    
        r5 = r19.distance;
        r7 = parseCheck(r17, r6, org.eclipse.jdt.internal.compiler.parser.Parser.scope_lhs[r10] + '\u0081', r19.bufferPosition);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00d0, code lost:
    
        if (((r7 - r19.bufferPosition) + 1) >= 3) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d2, code lost:
    
        r7 = org.eclipse.jdt.internal.compiler.parser.Parser.ntAction(r17[r6], org.eclipse.jdt.internal.compiler.parser.Parser.scope_lhs[r10]);
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00dd, code lost:
    
        if (r7 <= r9) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ee, code lost:
    
        r15 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00f9, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.Parser.rules_compliance[r7] <= r16.options.sourceLevel) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00fc, code lost:
    
        r8 = r8 - (org.eclipse.jdt.internal.compiler.parser.Parser.rhs[r7] - 1);
        r7 = org.eclipse.jdt.internal.compiler.parser.Parser.ntAction(r17[r8], org.eclipse.jdt.internal.compiler.parser.Parser.lhs[r7]);
        r10 = r15;
        r9 = org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation.NUM_RULES;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0141, code lost:
    
        r10 = r15 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00df, code lost:
    
        r8 = r8 + 1;
        r9 = r17[r8];
        r17[r8] = r7;
        scopeTrialCheck(r17, r8, r19, r20 + 1);
        r17[r8] = r9;
        r15 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0127, code lost:
    
        if (r16.lexStream.kind(r16.buffer[r19.bufferPosition]) != 61) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x012b, code lost:
    
        if (r19.distance != r5) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x012d, code lost:
    
        r16.scopeStackTop = r20;
        r19.distance = 30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0135, code lost:
    
        if (r19.distance <= r5) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0137, code lost:
    
        r16.scopeIndex[r20] = r15;
        r16.scopePosition[r20] = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x013f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0110, code lost:
    
        r15 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0113, code lost:
    
        if (r7 <= r19.distance) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0115, code lost:
    
        r16.scopeStackTop = r20;
        r19.distance = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0140, code lost:
    
        r15 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void scopeTrialCheck(int[] iArr, int i10, PrimaryRepairInfo primaryRepairInfo, int i11) {
        if (i11 > 20) {
            return;
        }
        int i12 = iArr[i10];
        int i13 = this.stateSeen[i10];
        while (i13 != -1) {
            StateInfo stateInfo = this.statePool[i13];
            if (stateInfo.state == i12) {
                return;
            } else {
                i13 = stateInfo.next;
            }
        }
        int i14 = this.statePoolTop;
        int i15 = i14 + 1;
        this.statePoolTop = i15;
        StateInfo[] stateInfoArr = this.statePool;
        int i16 = 0;
        if (i15 >= stateInfoArr.length) {
            StateInfo[] stateInfoArr2 = new StateInfo[i15 * 2];
            this.statePool = stateInfoArr2;
            System.arraycopy(stateInfoArr, 0, stateInfoArr2, 0, i15);
        }
        this.statePool[i14] = new StateInfo(i12, this.stateSeen[i10]);
        this.stateSeen[i10] = i14;
        while (i16 < 298) {
            int i17 = iArr[i10];
            this.tempStackTop = i10 - 1;
            byte b10 = Parser.scope_la[i16];
            this.lexStream.reset(this.buffer[primaryRepairInfo.bufferPosition]);
            int tAction = Parser.tAction(i17, b10);
            int i18 = i10;
            while (true) {
                int i19 = ParserBasicInformation.NUM_RULES;
                if (tAction > 867) {
                    break;
                }
                int i20 = i16;
                do {
                    int i21 = this.tempStackTop - (Parser.rhs[tAction] - 1);
                    this.tempStackTop = i21;
                    tAction = Parser.ntAction(i21 > i18 ? this.tempStack[i21] : iArr[i21], Parser.lhs[tAction]);
                } while (tAction <= 867);
                int i22 = this.tempStackTop;
                if (i22 + 1 >= this.stackLength) {
                    return;
                }
                if (i18 >= i22) {
                    i18 = i22;
                }
                this.tempStack[i22 + 1] = tAction;
                tAction = Parser.tAction(tAction, b10);
                i16 = i20;
            }
        }
    }

    private boolean secondaryCheck(int[] iArr, int i10, int i11, int i12) {
        for (int i13 = i10 - 1; i13 >= 0; i13--) {
            int parseCheck = parseCheck(iArr, i13, this.lexStream.kind(this.buffer[i11]), i11 + 1);
            if ((parseCheck - i11) + 1 > 3 && parseCheck > i12) {
                return true;
            }
        }
        PrimaryRepairInfo primaryRepairInfo = new PrimaryRepairInfo();
        primaryRepairInfo.bufferPosition = i11 + 1;
        primaryRepairInfo.distance = i12;
        int i14 = scopeTrial(iArr, i10, primaryRepairInfo).distance;
        return i14 - i11 > 3 && i14 > i12;
    }

    private void secondaryDiagnosis(SecondaryRepairInfo secondaryRepairInfo) {
        int i10 = secondaryRepairInfo.code;
        if (i10 != 9) {
            reportError(i10, i10 == 10 ? getNtermIndex(this.stack[secondaryRepairInfo.stackPosition], secondaryRepairInfo.symbol, secondaryRepairInfo.bufferPosition) : Parser.terminal_index[129], this.locationStack[secondaryRepairInfo.stackPosition], this.buffer[secondaryRepairInfo.bufferPosition - 1]);
            this.stateStackTop = secondaryRepairInfo.stackPosition;
            return;
        }
        int i11 = secondaryRepairInfo.stackPosition;
        if (i11 < this.stateStackTop) {
            reportError(6, Parser.terminal_index[129], this.locationStack[i11], this.buffer[1]);
        }
        int i12 = 0;
        while (true) {
            int i13 = this.scopeStackTop;
            if (i12 >= i13) {
                char[] cArr = Parser.scope_lhs;
                int i14 = this.scopeIndex[i13];
                int i15 = cArr[i14] + '\u0081';
                secondaryRepairInfo.symbol = i15;
                int i16 = this.scopePosition[i13];
                this.stateStackTop = i16;
                reportError(9, -i14, this.locationStack[i16], this.buffer[1], getNtermIndex(this.stack[i16], i15, secondaryRepairInfo.bufferPosition));
                return;
            }
            int i17 = this.scopeIndex[i12];
            reportError(9, -i17, this.locationStack[this.scopePosition[i12]], this.buffer[1], Parser.non_terminal_index[Parser.scope_lhs[i17]]);
            i12++;
        }
    }

    private RepairCandidate secondaryPhase(int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        SecondaryRepairInfo secondaryRepairInfo = new SecondaryRepairInfo();
        SecondaryRepairInfo secondaryRepairInfo2 = new SecondaryRepairInfo();
        RepairCandidate repairCandidate = new RepairCandidate();
        repairCandidate.symbol = 0;
        secondaryRepairInfo.code = 0;
        secondaryRepairInfo.distance = 0;
        secondaryRepairInfo.recoveryOnNextStack = false;
        secondaryRepairInfo2.distance = 0;
        secondaryRepairInfo2.recoveryOnNextStack = false;
        if (this.nextStackTop >= 0) {
            int[] iArr = this.buffer;
            iArr[2] = i10;
            iArr[1] = this.lexStream.previous(i10);
            int[] iArr2 = this.buffer;
            iArr2[0] = this.lexStream.previous(iArr2[1]);
            for (int i16 = 3; i16 < 31; i16++) {
                int[] iArr3 = this.buffer;
                iArr3[i16] = this.lexStream.next(iArr3[i16 - 1]);
            }
            this.buffer[31] = this.lexStream.badtoken();
            int i17 = 29;
            while (i17 >= 1 && this.lexStream.kind(this.buffer[i17]) == 61) {
                i17--;
            }
            i12 = i17 + 1;
            int[] iArr4 = this.locationStack;
            int i18 = this.nextStackTop;
            int i19 = iArr4[i18];
            int[] iArr5 = this.locationStartStack;
            int i20 = iArr5[i18];
            int[] iArr6 = this.buffer;
            iArr4[i18] = iArr6[2];
            iArr5[i18] = this.lexStream.start(iArr6[2]);
            int i21 = this.nextStackTop;
            secondaryRepairInfo2.numDeletions = i21;
            i11 = 1;
            SecondaryRepairInfo misplacementRecovery = misplacementRecovery(this.nextStack, i21, i12, secondaryRepairInfo2, true);
            if (misplacementRecovery.recoveryOnNextStack) {
                misplacementRecovery.distance++;
            }
            int i22 = this.nextStackTop;
            secondaryRepairInfo.numDeletions = i22 + 31;
            SecondaryRepairInfo secondaryRecovery = secondaryRecovery(this.nextStack, i22, i12, secondaryRepairInfo, true);
            if (secondaryRecovery.recoveryOnNextStack) {
                secondaryRecovery.distance++;
            }
            int[] iArr7 = this.locationStack;
            int i23 = this.nextStackTop;
            iArr7[i23] = i19;
            this.locationStartStack[i23] = i20;
            secondaryRepairInfo2 = misplacementRecovery;
            secondaryRepairInfo = secondaryRecovery;
        } else {
            i11 = 1;
            int i24 = this.stateStackTop;
            secondaryRepairInfo2.numDeletions = i24;
            secondaryRepairInfo.numDeletions = i24 + 31;
            i12 = 0;
        }
        int[] iArr8 = this.buffer;
        iArr8[3] = i10;
        iArr8[2] = this.lexStream.previous(i10);
        int[] iArr9 = this.buffer;
        iArr9[i11] = this.lexStream.previous(iArr9[2]);
        int[] iArr10 = this.buffer;
        iArr10[0] = this.lexStream.previous(iArr10[i11]);
        for (int i25 = 4; i25 < 32; i25++) {
            int[] iArr11 = this.buffer;
            iArr11[i25] = this.lexStream.next(iArr11[i25 - 1]);
        }
        int i26 = 29;
        while (i26 >= i11 && this.lexStream.kind(this.buffer[i26]) == 61) {
            i26--;
        }
        int i27 = i26 + 1;
        SecondaryRepairInfo misplacementRecovery2 = misplacementRecovery(this.stack, this.stateStackTop, i27, secondaryRepairInfo2, false);
        SecondaryRepairInfo secondaryRecovery2 = secondaryRecovery(this.stack, this.stateStackTop, i27, secondaryRepairInfo, false);
        int i28 = misplacementRecovery2.distance;
        if (i28 > 3 && ((i14 = misplacementRecovery2.numDeletions) <= (i15 = secondaryRecovery2.numDeletions) || i28 - i14 >= secondaryRecovery2.distance - i15)) {
            secondaryRecovery2.code = 8;
            secondaryRecovery2.stackPosition = misplacementRecovery2.stackPosition;
            secondaryRecovery2.bufferPosition = 2;
            secondaryRecovery2.numDeletions = i14;
            secondaryRecovery2.distance = i28;
            secondaryRecovery2.recoveryOnNextStack = misplacementRecovery2.recoveryOnNextStack;
        }
        if (secondaryRecovery2.recoveryOnNextStack) {
            this.stateStackTop = this.nextStackTop;
            for (int i29 = 0; i29 <= this.stateStackTop; i29++) {
                this.stack[i29] = this.nextStack[i29];
            }
            int[] iArr12 = this.buffer;
            iArr12[2] = i10;
            iArr12[i11] = this.lexStream.previous(i10);
            int[] iArr13 = this.buffer;
            iArr13[0] = this.lexStream.previous(iArr13[i11]);
            for (int i30 = 3; i30 < 31; i30++) {
                int[] iArr14 = this.buffer;
                iArr14[i30] = this.lexStream.next(iArr14[i30 - 1]);
            }
            this.buffer[31] = this.lexStream.badtoken();
            int[] iArr15 = this.locationStack;
            int i31 = this.nextStackTop;
            int[] iArr16 = this.buffer;
            iArr15[i31] = iArr16[2];
            this.locationStartStack[i31] = this.lexStream.start(iArr16[2]);
            i13 = i12;
        } else {
            i13 = i27;
        }
        int i32 = secondaryRecovery2.code;
        if (i32 == 10 || i32 == 6) {
            PrimaryRepairInfo primaryRepairInfo = new PrimaryRepairInfo();
            primaryRepairInfo.distance = 0;
            primaryRepairInfo.bufferPosition = 2;
            while (primaryRepairInfo.bufferPosition <= secondaryRecovery2.bufferPosition && secondaryRecovery2.code != 9) {
                primaryRepairInfo = scopeTrial(this.stack, this.stateStackTop, primaryRepairInfo);
                int i33 = primaryRepairInfo.distance;
                if (i33 == 30) {
                    i33 = i13;
                }
                int i34 = primaryRepairInfo.bufferPosition;
                int i35 = i33 - (i34 - 1);
                if (i35 > 3 && i35 > secondaryRecovery2.distance - secondaryRecovery2.numDeletions) {
                    secondaryRecovery2.code = 9;
                    secondaryRecovery2.symbol = Parser.scope_lhs[this.scopeIndex[this.scopeStackTop]] + '\u0081';
                    secondaryRecovery2.stackPosition = this.stateStackTop;
                    secondaryRecovery2.bufferPosition = i34;
                }
                primaryRepairInfo.bufferPosition = i34 + 1;
            }
        }
        if (secondaryRecovery2.code == 0 && this.lexStream.kind(this.buffer[i13]) == 61) {
            PrimaryRepairInfo primaryRepairInfo2 = new PrimaryRepairInfo();
            primaryRepairInfo2.bufferPosition = i13;
            primaryRepairInfo2.distance = 0;
            for (int i36 = this.stateStackTop; i36 >= 0 && secondaryRecovery2.code == 0; i36--) {
                primaryRepairInfo2 = scopeTrial(this.stack, i36, primaryRepairInfo2);
                if (primaryRepairInfo2.distance > 0) {
                    secondaryRecovery2.code = 9;
                    secondaryRecovery2.symbol = Parser.scope_lhs[this.scopeIndex[this.scopeStackTop]] + '\u0081';
                    secondaryRecovery2.stackPosition = i36;
                    secondaryRecovery2.bufferPosition = primaryRepairInfo2.bufferPosition;
                }
            }
        }
        if (secondaryRecovery2.code == 0) {
            return repairCandidate;
        }
        secondaryDiagnosis(secondaryRecovery2);
        int i37 = secondaryRecovery2.code;
        if (i37 == 6) {
            int i38 = this.buffer[secondaryRecovery2.bufferPosition];
            repairCandidate.location = i38;
            repairCandidate.symbol = this.lexStream.kind(i38);
            LexStream lexStream = this.lexStream;
            lexStream.reset(lexStream.next(this.buffer[secondaryRecovery2.bufferPosition]));
        } else if (i37 != 8) {
            repairCandidate.symbol = secondaryRecovery2.symbol;
            int i39 = this.buffer[secondaryRecovery2.bufferPosition];
            repairCandidate.location = i39;
            this.lexStream.reset(i39);
        } else {
            int i40 = this.buffer[2];
            repairCandidate.location = i40;
            repairCandidate.symbol = this.lexStream.kind(i40);
            LexStream lexStream2 = this.lexStream;
            lexStream2.reset(lexStream2.next(this.buffer[2]));
        }
        return repairCandidate;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r5 != (r15 - r13)) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private SecondaryRepairInfo secondaryRecovery(int[] iArr, int i10, int i11, SecondaryRepairInfo secondaryRepairInfo, boolean z10) {
        int i12;
        int i13;
        int i14 = 2;
        int i15 = 0;
        int i16 = this.buffer[2];
        int i17 = i10;
        while (i17 >= 0 && secondaryRepairInfo.numDeletions >= i15) {
            int i18 = this.locationStack[i17];
            if (i18 < i16) {
                i15++;
            }
            int i19 = i14;
            while (i19 <= i11 - 2 && secondaryRepairInfo.numDeletions >= (i15 + i19) - 1) {
                int i20 = i19 + 1;
                int parseCheck = parseCheck(iArr, i17, this.lexStream.kind(this.buffer[i19]), i20);
                if (parseCheck == 30) {
                    parseCheck = i11;
                }
                int i21 = 10;
                if ((parseCheck - i19) + 1 > 3) {
                    int i22 = secondaryRepairInfo.numDeletions;
                    if (i12 >= i22) {
                        int i23 = parseCheck - i12;
                        int i24 = secondaryRepairInfo.distance;
                        if (i23 <= i24 - i22) {
                            if (secondaryRepairInfo.code == 10) {
                            }
                        }
                    }
                    secondaryRepairInfo.code = 6;
                    secondaryRepairInfo.distance = parseCheck;
                    secondaryRepairInfo.stackPosition = i17;
                    secondaryRepairInfo.bufferPosition = i19;
                    secondaryRepairInfo.numDeletions = i12;
                    secondaryRepairInfo.recoveryOnNextStack = z10;
                }
                int nasi = Parser.nasi(iArr[i17]);
                while (nasi >= 0) {
                    char c10 = Parser.nasr[nasi];
                    if (c10 == 0) {
                        break;
                    }
                    int i25 = c10 + '\u0081';
                    int parseCheck2 = parseCheck(iArr, i17, i25, i19);
                    if (parseCheck2 == 30) {
                        parseCheck2 = i11;
                    }
                    if ((parseCheck2 - i19) + 1 > 3) {
                        int i26 = secondaryRepairInfo.numDeletions;
                        if (i12 < i26) {
                            i13 = i21;
                        } else if (parseCheck2 - i12 > secondaryRepairInfo.distance - i26) {
                            i13 = 10;
                        } else {
                            i13 = 10;
                        }
                        secondaryRepairInfo.code = i13;
                        secondaryRepairInfo.symbol = i25;
                        secondaryRepairInfo.distance = parseCheck2;
                        secondaryRepairInfo.stackPosition = i17;
                        secondaryRepairInfo.bufferPosition = i19;
                        secondaryRepairInfo.numDeletions = i12;
                        secondaryRepairInfo.recoveryOnNextStack = z10;
                    } else {
                        i13 = i21;
                    }
                    nasi++;
                    i21 = i13;
                }
                i19 = i20;
            }
            i17--;
            i16 = i18;
            i14 = 2;
        }
        return secondaryRepairInfo;
    }

    @Override
    public boolean atConflictScenario(int i10) {
        if (i10 == 23 || i10 == 37) {
            return true;
        }
        return i10 == 11 && !this.lexStream.awaitingColonColon();
    }

    public void diagnoseParse(boolean z10) {
        boolean z11;
        int i10;
        Scanner scanner;
        this.reportProblem = true;
        RecoveryScanner recoveryScanner = this.recoveryScanner;
        if (recoveryScanner != null) {
            z11 = recoveryScanner.record;
            recoveryScanner.record = z10;
        } else {
            z11 = false;
        }
        this.parser.scanner.setActiveParser(this);
        try {
            this.lexStream.reset();
            this.currentToken = this.lexStream.getToken();
            reallocateStacks();
            this.stateStackTop = 0;
            int[] iArr = this.stack;
            int i11 = ParserBasicInformation.START_STATE;
            iArr[0] = 1124;
            int kind = this.lexStream.kind(this.currentToken);
            int[] iArr2 = this.locationStack;
            int i12 = this.stateStackTop;
            int i13 = this.currentToken;
            iArr2[i12] = i13;
            this.locationStartStack[i12] = this.lexStream.start(i13);
            do {
                int i14 = -1;
                this.prevStackTop = -1;
                this.nextStackTop = -1;
                int i15 = this.stateStackTop;
                this.tempStackTop = i15 - 1;
                for (int i16 = 0; i16 <= this.stateStackTop; i16++) {
                    this.tempStack[i16] = this.stack[i16];
                }
                i11 = Parser.tAction(i11, kind);
                while (i11 <= 867) {
                    do {
                        int i17 = this.tempStackTop - (Parser.rhs[i11] - 1);
                        this.tempStackTop = i17;
                        i11 = Parser.ntAction(this.tempStack[i17], Parser.lhs[i11]);
                    } while (i11 <= 867);
                    if (this.tempStackTop + 1 >= this.stackLength) {
                        reallocateStacks();
                    }
                    int i18 = this.tempStackTop;
                    if (i15 >= i18) {
                        i15 = i18;
                    }
                    this.tempStack[i18 + 1] = i11;
                    i11 = Parser.tAction(i11, kind);
                }
                int i19 = i15;
                int i20 = -1;
                while (true) {
                    if (i11 <= 16966 && i11 >= 16965) {
                        break;
                    }
                    this.nextStackTop = this.tempStackTop + 1;
                    for (int i21 = i14 + 1; i21 <= this.nextStackTop; i21++) {
                        this.nextStack[i21] = this.tempStack[i21];
                    }
                    for (int i22 = i19 + 1; i22 <= this.nextStackTop; i22++) {
                        int[] iArr3 = this.locationStack;
                        int i23 = this.stateStackTop;
                        iArr3[i22] = iArr3[i23];
                        int[] iArr4 = this.locationStartStack;
                        iArr4[i22] = iArr4[i23];
                    }
                    if (i11 > 16966) {
                        i11 -= 16966;
                        do {
                            int i24 = this.nextStackTop - (Parser.rhs[i11] - 1);
                            this.nextStackTop = i24;
                            i11 = Parser.ntAction(this.nextStack[i24], Parser.lhs[i11]);
                        } while (i11 <= 867);
                        int i25 = this.nextStackTop;
                        if (i19 >= i25) {
                            i19 = i25;
                        }
                    }
                    if (this.nextStackTop + 1 >= this.stackLength) {
                        reallocateStacks();
                    }
                    int i26 = this.nextStackTop;
                    this.tempStackTop = i26;
                    int[] iArr5 = this.nextStack;
                    int i27 = i26 + 1;
                    this.nextStackTop = i27;
                    iArr5[i27] = i11;
                    int token = this.lexStream.getToken();
                    this.currentToken = token;
                    int kind2 = this.lexStream.kind(token);
                    i11 = Parser.tAction(i11, kind2);
                    while (i11 <= 867) {
                        do {
                            char c10 = Parser.lhs[i11];
                            int i28 = this.tempStackTop - (Parser.rhs[i11] - 1);
                            this.tempStackTop = i28;
                            i11 = Parser.ntAction(i28 > i27 ? this.tempStack[i28] : this.nextStack[i28], c10);
                        } while (i11 <= 867);
                        if (this.tempStackTop + 1 >= this.stackLength) {
                            reallocateStacks();
                        }
                        int i29 = this.tempStackTop;
                        if (i27 >= i29) {
                            i27 = i29;
                        }
                        this.tempStack[i29 + 1] = i11;
                        i11 = Parser.tAction(i11, kind2);
                    }
                    if (i11 != 16966) {
                        this.prevStackTop = this.stateStackTop;
                        while (true) {
                            i20++;
                            if (i20 > this.prevStackTop) {
                                break;
                            } else {
                                this.prevStack[i20] = this.stack[i20];
                            }
                        }
                        this.stateStackTop = this.nextStackTop;
                        int i30 = i19 + 1;
                        while (true) {
                            i10 = this.stateStackTop;
                            if (i30 > i10) {
                                break;
                            }
                            this.stack[i30] = this.nextStack[i30];
                            i30++;
                        }
                        int[] iArr6 = this.locationStack;
                        int i31 = this.currentToken;
                        iArr6[i10] = i31;
                        this.locationStartStack[i10] = this.lexStream.start(i31);
                        i20 = i19;
                        i19 = i27;
                        kind = kind2;
                        i14 = i19;
                    } else {
                        i14 = i27;
                        kind = kind2;
                    }
                }
                if (i11 == 16966) {
                    RepairCandidate errorRecovery = errorRecovery(this.currentToken, false);
                    Parser parser = this.parser;
                    if (!parser.reportOnlyOneSyntaxError) {
                        int i32 = parser.problemReporter().options.maxProblemsPerUnit;
                        Parser parser2 = this.parser;
                        if (i32 < parser2.compilationUnit.compilationResult.problemCount) {
                            RecoveryScanner recoveryScanner2 = this.recoveryScanner;
                            if (recoveryScanner2 != null && recoveryScanner2.record) {
                                this.reportProblem = false;
                            }
                            if (recoveryScanner2 != null) {
                                recoveryScanner2.record = z11;
                            }
                            scanner = parser2.scanner;
                        }
                        int[] iArr7 = this.stack;
                        int i33 = this.stateStackTop;
                        i11 = iArr7[i33];
                        int i34 = errorRecovery.symbol;
                        if (i34 == 0) {
                            break;
                        }
                        if (i34 > 129) {
                            int ntAction = Parser.ntAction(i11, i34 - 129);
                            while (ntAction <= 867) {
                                int i35 = this.stateStackTop - (Parser.rhs[ntAction] - 1);
                                this.stateStackTop = i35;
                                ntAction = Parser.ntAction(this.stack[i35], Parser.lhs[ntAction]);
                            }
                            int[] iArr8 = this.stack;
                            int i36 = this.stateStackTop + 1;
                            this.stateStackTop = i36;
                            iArr8[i36] = ntAction;
                            int token2 = this.lexStream.getToken();
                            this.currentToken = token2;
                            int kind3 = this.lexStream.kind(token2);
                            int[] iArr9 = this.locationStack;
                            int i37 = this.stateStackTop;
                            int i38 = this.currentToken;
                            iArr9[i37] = i38;
                            this.locationStartStack[i37] = this.lexStream.start(i38);
                            i11 = ntAction;
                            kind = kind3;
                        } else {
                            int[] iArr10 = this.locationStack;
                            int i39 = errorRecovery.location;
                            iArr10[i33] = i39;
                            this.locationStartStack[i33] = this.lexStream.start(i39);
                            kind = i34;
                        }
                    } else {
                        RecoveryScanner recoveryScanner3 = this.recoveryScanner;
                        if (recoveryScanner3 != null) {
                            recoveryScanner3.record = z11;
                        }
                        scanner = parser.scanner;
                    }
                    scanner.setActiveParser(null);
                }
            } while (i11 != 16965);
            RecoveryScanner recoveryScanner4 = this.recoveryScanner;
            if (recoveryScanner4 != null) {
                recoveryScanner4.record = z11;
            }
            scanner = this.parser.scanner;
            scanner.setActiveParser(null);
        } catch (Throwable th2) {
            RecoveryScanner recoveryScanner5 = this.recoveryScanner;
            if (recoveryScanner5 != null) {
                recoveryScanner5.record = z11;
            }
            this.parser.scanner.setActiveParser(null);
            throw th2;
        }
    }

    @Override
    public boolean isParsingModuleDeclaration() {
        return this.parser.isParsingModuleDeclaration();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.lexStream.toString());
        return stringBuffer.toString();
    }

    public DiagnoseParser(Parser parser, int i10, int i11, int i12, int[] iArr, int[] iArr2, int[] iArr3, CompilerOptions compilerOptions) {
        this.DEBUG_PARSECHECK = false;
        this.currentToken = 0;
        this.list = new int[527];
        this.buffer = new int[32];
        this.parser = parser;
        this.options = compilerOptions;
        this.lexStream = new LexStream(32, parser.scanner, iArr, iArr2, iArr3, i10, i11, i12);
        this.recoveryScanner = parser.recoveryScanner;
    }

    private void reportError(int i10, int i11, int i12, int i13, int i14) {
        int i15 = i12 > i13 ? i13 : i12;
        if (i15 < i13) {
            reportSecondaryError(i10, i11, i15, i13, i14);
        } else {
            reportPrimaryError(i10, i11, i13, i14);
        }
    }
}
