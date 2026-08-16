package org.eclipse.jdt.internal.compiler.parser;

public class RecoveryScannerData {
    public boolean[] insertedTokenUsed;
    public int[][] insertedTokens;
    public int[] insertedTokensPosition;
    public boolean[] removedTokenUsed;
    public int[] removedTokensEnd;
    public int[] removedTokensStart;
    public boolean[] replacedTokenUsed;
    public int[][] replacedTokens;
    public int[] replacedTokensEnd;
    public int[] replacedTokensStart;
    public int insertedTokensPtr = -1;
    public int replacedTokensPtr = -1;
    public int removedTokensPtr = -1;

    public RecoveryScannerData removeUnused() {
        int i10 = -1;
        if (this.insertedTokens != null) {
            int i11 = -1;
            for (int i12 = 0; i12 <= this.insertedTokensPtr; i12++) {
                boolean[] zArr = this.insertedTokenUsed;
                boolean z10 = zArr[i12];
                if (z10) {
                    i11++;
                    int[][] iArr = this.insertedTokens;
                    iArr[i11] = iArr[i12];
                    int[] iArr2 = this.insertedTokensPosition;
                    iArr2[i11] = iArr2[i12];
                    zArr[i11] = z10;
                }
            }
            this.insertedTokensPtr = i11;
        }
        if (this.replacedTokens != null) {
            int i13 = -1;
            for (int i14 = 0; i14 <= this.replacedTokensPtr; i14++) {
                boolean[] zArr2 = this.replacedTokenUsed;
                boolean z11 = zArr2[i14];
                if (z11) {
                    i13++;
                    int[][] iArr3 = this.replacedTokens;
                    iArr3[i13] = iArr3[i14];
                    int[] iArr4 = this.replacedTokensStart;
                    iArr4[i13] = iArr4[i14];
                    int[] iArr5 = this.replacedTokensEnd;
                    iArr5[i13] = iArr5[i14];
                    zArr2[i13] = z11;
                }
            }
            this.replacedTokensPtr = i13;
        }
        if (this.removedTokensStart != null) {
            for (int i15 = 0; i15 <= this.removedTokensPtr; i15++) {
                boolean[] zArr3 = this.removedTokenUsed;
                boolean z12 = zArr3[i15];
                if (z12) {
                    i10++;
                    int[] iArr6 = this.removedTokensStart;
                    iArr6[i10] = iArr6[i15];
                    int[] iArr7 = this.removedTokensEnd;
                    iArr7[i10] = iArr7[i15];
                    zArr3[i10] = z12;
                }
            }
            this.removedTokensPtr = i10;
        }
        return this;
    }
}
