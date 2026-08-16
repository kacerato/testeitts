package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;

public class RecoveryScanner extends Scanner {
    public static final char[] FAKE_IDENTIFIER = "$missing$".toCharArray();
    private RecoveryScannerData data;
    private char[] fakeTokenSource;
    private boolean isInserted;
    private int[] pendingTokens;
    private int pendingTokensPtr;
    private boolean precededByRemoved;
    public boolean record;
    private int skipNextInsertedTokens;

    public RecoveryScanner(Scanner scanner, RecoveryScannerData recoveryScannerData) {
        super(false, scanner.tokenizeWhiteSpace, scanner.checkNonExternalizedStringLiterals, scanner.sourceLevel, scanner.complianceLevel, scanner.taskTags, scanner.taskPriorities, scanner.isTaskCaseSensitive);
        this.pendingTokensPtr = -1;
        this.fakeTokenSource = null;
        this.isInserted = true;
        this.precededByRemoved = false;
        this.skipNextInsertedTokens = -1;
        this.record = true;
        setData(recoveryScannerData);
    }

    private int[] reverse(int[] iArr) {
        int length = iArr.length;
        int i10 = length / 2;
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = iArr[i11];
            int i13 = (length - i11) - 1;
            iArr[i11] = iArr[i13];
            iArr[i13] = i12;
        }
        return iArr;
    }

    @Override
    public char[] getCurrentIdentifierSource() {
        char[] cArr = this.fakeTokenSource;
        return cArr != null ? cArr : super.getCurrentIdentifierSource();
    }

    @Override
    public char[] getCurrentTokenSource() {
        char[] cArr = this.fakeTokenSource;
        return cArr != null ? cArr : super.getCurrentTokenSource();
    }

    @Override
    public char[] getCurrentTokenSourceString() {
        char[] cArr = this.fakeTokenSource;
        return cArr != null ? cArr : super.getCurrentTokenSourceString();
    }

    public RecoveryScannerData getData() {
        return this.data;
    }

    @Override
    public int getNextToken0() throws InvalidInputException {
        int i10;
        int i11;
        int i12 = this.pendingTokensPtr;
        if (i12 > -1) {
            int[] iArr = this.pendingTokens;
            this.pendingTokensPtr = i12 - 1;
            int i13 = iArr[i12];
            if (i13 == 22) {
                this.fakeTokenSource = FAKE_IDENTIFIER;
            } else {
                this.fakeTokenSource = CharOperation.NO_CHAR;
            }
            return i13;
        }
        this.fakeTokenSource = null;
        this.precededByRemoved = false;
        if (this.data.insertedTokens != null) {
            int i14 = 0;
            while (true) {
                RecoveryScannerData recoveryScannerData = this.data;
                if (i14 > recoveryScannerData.insertedTokensPtr) {
                    this.skipNextInsertedTokens = -1;
                    break;
                }
                int i15 = recoveryScannerData.insertedTokensPosition[i14];
                int i16 = this.currentPosition;
                if (i15 == i16 - 1 && i14 > this.skipNextInsertedTokens) {
                    recoveryScannerData.insertedTokenUsed[i14] = true;
                    int[] iArr2 = recoveryScannerData.insertedTokens[i14];
                    this.pendingTokens = iArr2;
                    int length = iArr2.length;
                    this.isInserted = true;
                    this.startPosition = i16;
                    this.skipNextInsertedTokens = i14;
                    this.pendingTokensPtr = length - 2;
                    int i17 = iArr2[length - 1];
                    if (i17 == 22) {
                        this.fakeTokenSource = FAKE_IDENTIFIER;
                    } else {
                        this.fakeTokenSource = CharOperation.NO_CHAR;
                    }
                    return i17;
                }
                i14++;
            }
        }
        int i18 = this.currentPosition;
        int nextToken0 = super.getNextToken0();
        if (this.data.replacedTokens != null) {
            int i19 = 0;
            while (true) {
                RecoveryScannerData recoveryScannerData2 = this.data;
                if (i19 > recoveryScannerData2.replacedTokensPtr) {
                    break;
                }
                int i20 = recoveryScannerData2.replacedTokensStart[i19];
                if (i20 >= i18 && i20 <= this.startPosition && (i11 = recoveryScannerData2.replacedTokensEnd[i19]) >= this.currentPosition - 1) {
                    recoveryScannerData2.replacedTokenUsed[i19] = true;
                    int[] iArr3 = recoveryScannerData2.replacedTokens[i19];
                    this.pendingTokens = iArr3;
                    int length2 = iArr3.length;
                    int i21 = length2 - 1;
                    this.pendingTokensPtr = i21;
                    char[] cArr = FAKE_IDENTIFIER;
                    this.fakeTokenSource = cArr;
                    this.isInserted = false;
                    this.currentPosition = i11 + 1;
                    this.pendingTokensPtr = length2 - 2;
                    int i22 = iArr3[i21];
                    if (i22 == 22) {
                        this.fakeTokenSource = cArr;
                    } else {
                        this.fakeTokenSource = CharOperation.NO_CHAR;
                    }
                    return i22;
                }
                i19++;
            }
        }
        if (this.data.removedTokensStart != null) {
            int i23 = 0;
            while (true) {
                RecoveryScannerData recoveryScannerData3 = this.data;
                if (i23 > recoveryScannerData3.removedTokensPtr) {
                    break;
                }
                int i24 = recoveryScannerData3.removedTokensStart[i23];
                if (i24 >= i18 && i24 <= this.startPosition && (i10 = recoveryScannerData3.removedTokensEnd[i23]) >= this.currentPosition - 1) {
                    recoveryScannerData3.removedTokenUsed[i23] = true;
                    this.currentPosition = i10 + 1;
                    this.precededByRemoved = false;
                    return getNextToken0();
                }
                i23++;
            }
        }
        return nextToken0;
    }

    public void insertToken(int i10, int i11, int i12) {
        insertTokens(new int[]{i10}, i11, i12);
    }

    public void insertTokenAhead(int i10, int i11) {
        if (this.record) {
            int[] iArr = this.data.insertedTokens[i11];
            int length = iArr.length;
            int[] iArr2 = new int[length + 1];
            System.arraycopy(iArr, 0, iArr2, 1, length);
            iArr2[0] = i10;
            this.data.insertedTokens[i11] = iArr2;
        }
    }

    public void insertTokens(int[] iArr, int i10, int i11) {
        if (this.record) {
            if (i10 <= -1 || Parser.statements_recovery_filter[i10] == 0) {
                RecoveryScannerData recoveryScannerData = this.data;
                int i12 = recoveryScannerData.insertedTokensPtr + 1;
                recoveryScannerData.insertedTokensPtr = i12;
                int[][] iArr2 = recoveryScannerData.insertedTokens;
                if (iArr2 == null) {
                    recoveryScannerData.insertedTokens = new int[10];
                    recoveryScannerData.insertedTokensPosition = new int[10];
                    recoveryScannerData.insertedTokenUsed = new boolean[10];
                } else if (iArr2.length == i12) {
                    int length = iArr2.length;
                    int i13 = length * 2;
                    int[][] iArr3 = new int[i13];
                    recoveryScannerData.insertedTokens = iArr3;
                    System.arraycopy(iArr2, 0, iArr3, 0, length);
                    RecoveryScannerData recoveryScannerData2 = this.data;
                    int[] iArr4 = recoveryScannerData2.insertedTokensPosition;
                    int[] iArr5 = new int[i13];
                    recoveryScannerData2.insertedTokensPosition = iArr5;
                    System.arraycopy(iArr4, 0, iArr5, 0, length);
                    RecoveryScannerData recoveryScannerData3 = this.data;
                    boolean[] zArr = recoveryScannerData3.insertedTokenUsed;
                    boolean[] zArr2 = new boolean[i13];
                    recoveryScannerData3.insertedTokenUsed = zArr2;
                    System.arraycopy(zArr, 0, zArr2, 0, length);
                }
                RecoveryScannerData recoveryScannerData4 = this.data;
                recoveryScannerData4.insertedTokens[recoveryScannerData4.insertedTokensPtr] = reverse(iArr);
                RecoveryScannerData recoveryScannerData5 = this.data;
                int[] iArr6 = recoveryScannerData5.insertedTokensPosition;
                int i14 = recoveryScannerData5.insertedTokensPtr;
                iArr6[i14] = i11;
                recoveryScannerData5.insertedTokenUsed[i14] = false;
            }
        }
    }

    public boolean isFakeToken() {
        return this.fakeTokenSource != null;
    }

    public boolean isInsertedToken() {
        return this.fakeTokenSource != null && this.isInserted;
    }

    public boolean isPrecededByRemovedToken() {
        return this.precededByRemoved;
    }

    public boolean isReplacedToken() {
        return (this.fakeTokenSource == null || this.isInserted) ? false : true;
    }

    public void removeTokens(int i10, int i11) {
        if (this.record) {
            RecoveryScannerData recoveryScannerData = this.data;
            int i12 = recoveryScannerData.removedTokensPtr + 1;
            recoveryScannerData.removedTokensPtr = i12;
            int[] iArr = recoveryScannerData.removedTokensStart;
            if (iArr == null) {
                recoveryScannerData.removedTokensStart = new int[10];
                recoveryScannerData.removedTokensEnd = new int[10];
                recoveryScannerData.removedTokenUsed = new boolean[10];
            } else if (iArr.length == i12) {
                int length = iArr.length;
                int i13 = length * 2;
                int[] iArr2 = new int[i13];
                recoveryScannerData.removedTokensStart = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
                RecoveryScannerData recoveryScannerData2 = this.data;
                int[] iArr3 = recoveryScannerData2.removedTokensEnd;
                int[] iArr4 = new int[i13];
                recoveryScannerData2.removedTokensEnd = iArr4;
                System.arraycopy(iArr3, 0, iArr4, 0, length);
                RecoveryScannerData recoveryScannerData3 = this.data;
                boolean[] zArr = recoveryScannerData3.removedTokenUsed;
                boolean[] zArr2 = new boolean[i13];
                recoveryScannerData3.removedTokenUsed = zArr2;
                System.arraycopy(zArr, 0, zArr2, 0, length);
            }
            RecoveryScannerData recoveryScannerData4 = this.data;
            int[] iArr5 = recoveryScannerData4.removedTokensStart;
            int i14 = recoveryScannerData4.removedTokensPtr;
            iArr5[i14] = i10;
            recoveryScannerData4.removedTokensEnd[i14] = i11;
            recoveryScannerData4.removedTokenUsed[i14] = false;
        }
    }

    public void replaceTokens(int i10, int i11, int i12) {
        replaceTokens(new int[]{i10}, i11, i12);
    }

    public void setData(RecoveryScannerData recoveryScannerData) {
        if (recoveryScannerData == null) {
            this.data = new RecoveryScannerData();
        } else {
            this.data = recoveryScannerData;
        }
    }

    public void setPendingTokens(int[] iArr) {
        this.pendingTokens = iArr;
        this.pendingTokensPtr = iArr.length - 1;
    }

    public void replaceTokens(int[] iArr, int i10, int i11) {
        if (this.record) {
            RecoveryScannerData recoveryScannerData = this.data;
            int i12 = recoveryScannerData.replacedTokensPtr + 1;
            recoveryScannerData.replacedTokensPtr = i12;
            int[] iArr2 = recoveryScannerData.replacedTokensStart;
            if (iArr2 == null) {
                recoveryScannerData.replacedTokens = new int[10];
                recoveryScannerData.replacedTokensStart = new int[10];
                recoveryScannerData.replacedTokensEnd = new int[10];
                recoveryScannerData.replacedTokenUsed = new boolean[10];
            } else if (iArr2.length == i12) {
                int length = iArr2.length;
                int[][] iArr3 = recoveryScannerData.replacedTokens;
                int i13 = length * 2;
                int[][] iArr4 = new int[i13];
                recoveryScannerData.replacedTokens = iArr4;
                System.arraycopy(iArr3, 0, iArr4, 0, length);
                RecoveryScannerData recoveryScannerData2 = this.data;
                int[] iArr5 = recoveryScannerData2.replacedTokensStart;
                int[] iArr6 = new int[i13];
                recoveryScannerData2.replacedTokensStart = iArr6;
                System.arraycopy(iArr5, 0, iArr6, 0, length);
                RecoveryScannerData recoveryScannerData3 = this.data;
                int[] iArr7 = recoveryScannerData3.replacedTokensEnd;
                int[] iArr8 = new int[i13];
                recoveryScannerData3.replacedTokensEnd = iArr8;
                System.arraycopy(iArr7, 0, iArr8, 0, length);
                RecoveryScannerData recoveryScannerData4 = this.data;
                boolean[] zArr = recoveryScannerData4.replacedTokenUsed;
                boolean[] zArr2 = new boolean[i13];
                recoveryScannerData4.replacedTokenUsed = zArr2;
                System.arraycopy(zArr, 0, zArr2, 0, length);
            }
            RecoveryScannerData recoveryScannerData5 = this.data;
            recoveryScannerData5.replacedTokens[recoveryScannerData5.replacedTokensPtr] = reverse(iArr);
            RecoveryScannerData recoveryScannerData6 = this.data;
            int[] iArr9 = recoveryScannerData6.replacedTokensStart;
            int i14 = recoveryScannerData6.replacedTokensPtr;
            iArr9[i14] = i10;
            recoveryScannerData6.replacedTokensEnd[i14] = i11;
            recoveryScannerData6.replacedTokenUsed[i14] = false;
        }
    }

    public RecoveryScanner(boolean z10, boolean z11, long j10, long j11, char[][] cArr, char[][] cArr2, boolean z12, RecoveryScannerData recoveryScannerData) {
        super(false, z10, z11, j10, j11, cArr, cArr2, z12);
        this.pendingTokensPtr = -1;
        this.fakeTokenSource = null;
        this.isInserted = true;
        this.precededByRemoved = false;
        this.skipNextInsertedTokens = -1;
        this.record = true;
        setData(recoveryScannerData);
    }
}
