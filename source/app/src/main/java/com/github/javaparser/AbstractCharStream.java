package com.github.javaparser;

import java.io.IOException;

public abstract class AbstractCharStream implements CharStream {
    public static final int DEFAULT_BUF_SIZE = 4096;
    protected int available;
    protected char[] buffer;
    protected int bufpos;
    protected int bufsize;
    protected int inBuf;
    private int[] m_aBufColumn;
    private int[] m_aBufLine;
    private boolean m_bPrevCharIsCR;
    private boolean m_bPrevCharIsLF;
    private int m_nColumnNo;
    private int m_nLineNo;
    protected int maxNextCharInd;
    protected int tokenBegin;
    private int m_nTabSize = 1;
    private boolean m_bTrackLineColumn = true;

    public AbstractCharStream(final int nStartLine, final int nStartColumn, final int nBufferSize) {
        reInit(nStartLine, nStartColumn, nBufferSize);
    }

    public static final int hexval(final char c10) throws IOException {
        switch (c10) {
            case '0':
                return 0;
            case '1':
                return 1;
            case '2':
                return 2;
            case '3':
                return 3;
            case '4':
                return 4;
            case '5':
                return 5;
            case '6':
                return 6;
            case '7':
                return 7;
            case '8':
                return 8;
            case '9':
                return 9;
            default:
                switch (c10) {
                    case 'A':
                        return 10;
                    case 'B':
                        return 11;
                    case 'C':
                        return 12;
                    case 'D':
                        return 13;
                    case 'E':
                        return 14;
                    case 'F':
                        return 15;
                    default:
                        switch (c10) {
                            case 'a':
                                return 10;
                            case 'b':
                                return 11;
                            case 'c':
                                return 12;
                            case 'd':
                                return 13;
                            case 'e':
                                return 14;
                            case 'f':
                                return 15;
                            default:
                                throw new IOException("Invalid hex char '" + c10 + "' (=" + ((int) c10) + ") provided!");
                        }
                }
        }
    }

    public final void adjustBeginLineColumn(final int nNewLine, final int newCol) {
        int i10;
        int i11 = this.tokenBegin;
        int i12 = this.bufpos;
        if (i12 >= i11) {
            i10 = (i12 - i11) + this.inBuf + 1;
        } else {
            i10 = this.inBuf + (this.bufsize - i11) + i12 + 1;
        }
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        while (true) {
            if (i13 >= i10) {
                break;
            }
            int[] iArr = this.m_aBufLine;
            int i16 = this.bufsize;
            int i17 = i11 % i16;
            i11++;
            int i18 = i11 % i16;
            if (iArr[i17] != iArr[i18]) {
                i14 = i17;
                break;
            }
            iArr[i17] = nNewLine;
            int[] iArr2 = this.m_aBufColumn;
            int i19 = (iArr2[i18] + i15) - iArr2[i17];
            iArr2[i17] = i15 + newCol;
            i13++;
            i15 = i19;
            i14 = i17;
        }
        if (i13 < i10) {
            int i20 = nNewLine + 1;
            this.m_aBufLine[i14] = nNewLine;
            this.m_aBufColumn[i14] = newCol + i15;
            while (true) {
                int i21 = i13 + 1;
                if (i13 >= i10) {
                    break;
                }
                int[] iArr3 = this.m_aBufLine;
                int i22 = this.bufsize;
                i14 = i11 % i22;
                i11++;
                if (iArr3[i14] != iArr3[i11 % i22]) {
                    iArr3[i14] = i20;
                    i20++;
                } else {
                    iArr3[i14] = i20;
                }
                i13 = i21;
            }
        }
        this.m_nLineNo = this.m_aBufLine[i14];
        this.m_nColumnNo = this.m_aBufColumn[i14];
    }

    @Override
    public void backup(final int nAmount) {
        int i10 = this.bufsize;
        if (nAmount <= i10) {
            this.inBuf += nAmount;
            int i11 = this.bufpos - nAmount;
            this.bufpos = i11;
            if (i11 < 0) {
                this.bufpos = i11 + i10;
                return;
            }
            return;
        }
        throw new IllegalStateException("Cannot back " + nAmount + " chars which is larger than the internal buffer size (" + this.bufsize + ")");
    }

    @Override
    public char beginToken() throws IOException {
        this.tokenBegin = -1;
        char readChar = readChar();
        this.tokenBegin = this.bufpos;
        return readChar;
    }

    @Override
    public void done() {
        this.buffer = null;
        this.m_aBufLine = null;
        this.m_aBufColumn = null;
    }

    public void expandBuff(final boolean bWrapAround) {
        int bufSizeAfterExpansion = getBufSizeAfterExpansion();
        char[] cArr = new char[bufSizeAfterExpansion];
        int[] iArr = new int[bufSizeAfterExpansion];
        int[] iArr2 = new int[bufSizeAfterExpansion];
        int i10 = this.bufsize;
        int i11 = this.tokenBegin;
        int i12 = i10 - i11;
        if (bWrapAround) {
            System.arraycopy(this.buffer, i11, cArr, 0, i12);
            System.arraycopy(this.buffer, 0, cArr, i12, this.bufpos);
            this.buffer = cArr;
            System.arraycopy(this.m_aBufLine, this.tokenBegin, iArr, 0, i12);
            System.arraycopy(this.m_aBufLine, 0, iArr, i12, this.bufpos);
            this.m_aBufLine = iArr;
            System.arraycopy(this.m_aBufColumn, this.tokenBegin, iArr2, 0, i12);
            System.arraycopy(this.m_aBufColumn, 0, iArr2, i12, this.bufpos);
            this.m_aBufColumn = iArr2;
            int i13 = this.bufpos + i12;
            this.bufpos = i13;
            this.maxNextCharInd = i13;
        } else {
            System.arraycopy(this.buffer, i11, cArr, 0, i12);
            this.buffer = cArr;
            System.arraycopy(this.m_aBufLine, this.tokenBegin, iArr, 0, i12);
            this.m_aBufLine = iArr;
            System.arraycopy(this.m_aBufColumn, this.tokenBegin, iArr2, 0, i12);
            this.m_aBufColumn = iArr2;
            int i14 = this.bufpos - this.tokenBegin;
            this.bufpos = i14;
            this.maxNextCharInd = i14;
        }
        this.bufsize = bufSizeAfterExpansion;
        this.available = bufSizeAfterExpansion;
        this.tokenBegin = 0;
    }

    public void fillBuff() throws IOException {
        if (this.maxNextCharInd == this.available) {
            internalAdjustBuffSize();
        }
        try {
            char[] cArr = this.buffer;
            int i10 = this.maxNextCharInd;
            int streamRead = streamRead(cArr, i10, this.available - i10);
            if (streamRead != -1) {
                this.maxNextCharInd += streamRead;
            } else {
                streamClose();
                throw new IOException("PGCC end of stream");
            }
        } catch (IOException e10) {
            this.bufpos--;
            backup(0);
            if (this.tokenBegin == -1) {
                this.tokenBegin = this.bufpos;
            }
            throw e10;
        }
    }

    @Override
    public int getBeginColumn() {
        return this.m_aBufColumn[this.tokenBegin];
    }

    @Override
    public int getBeginLine() {
        return this.m_aBufLine[this.tokenBegin];
    }

    public int getBufSizeAfterExpansion() {
        return this.bufsize * 2;
    }

    public final int getColumn() {
        return this.m_nColumnNo;
    }

    @Override
    public int getEndColumn() {
        return this.m_aBufColumn[this.bufpos];
    }

    @Override
    public int getEndLine() {
        return this.m_aBufLine[this.bufpos];
    }

    @Override
    public String getImage() {
        int i10 = this.bufpos;
        int i11 = this.tokenBegin;
        if (i10 >= i11) {
            return new String(this.buffer, i11, (i10 - i11) + 1);
        }
        StringBuilder sb2 = new StringBuilder();
        char[] cArr = this.buffer;
        int i12 = this.tokenBegin;
        sb2.append(new String(cArr, i12, this.bufsize - i12));
        sb2.append(new String(this.buffer, 0, this.bufpos + 1));
        return sb2.toString();
    }

    public final int getLine() {
        return this.m_nLineNo;
    }

    @Override
    public char[] getSuffix(final int len) {
        char[] cArr = new char[len];
        int i10 = this.bufpos;
        if (i10 + 1 >= len) {
            System.arraycopy(this.buffer, (i10 - len) + 1, cArr, 0, len);
        } else {
            int i11 = (len - i10) - 1;
            System.arraycopy(this.buffer, this.bufsize - i11, cArr, 0, i11);
            System.arraycopy(this.buffer, 0, cArr, i11, this.bufpos + 1);
        }
        return cArr;
    }

    @Override
    public final int getTabSize() {
        return this.m_nTabSize;
    }

    public final void internalAdjustBuffSize() {
        int i10 = this.bufsize;
        int i11 = i10 / 2;
        int i12 = this.available;
        if (i12 != i10) {
            int i13 = this.tokenBegin;
            if (i12 > i13) {
                this.available = i10;
                return;
            } else if (i13 - i12 < i11) {
                expandBuff(true);
                return;
            } else {
                this.available = i13;
                return;
            }
        }
        int i14 = this.tokenBegin;
        if (i14 < 0) {
            this.bufpos = 0;
            this.maxNextCharInd = 0;
        } else {
            if (i14 <= i11) {
                expandBuff(false);
                return;
            }
            this.bufpos = 0;
            this.maxNextCharInd = 0;
            this.available = i14;
        }
    }

    public final void internalSetBufLineColumn(final int nLine, final int nColumn) {
        int[] iArr = this.m_aBufLine;
        int i10 = this.bufpos;
        iArr[i10] = nLine;
        this.m_aBufColumn[i10] = nColumn;
    }

    public final void internalUpdateLineColumn(final char c10) {
        this.m_nColumnNo++;
        if (this.m_bPrevCharIsLF) {
            this.m_bPrevCharIsLF = false;
            this.m_nColumnNo = 1;
            this.m_nLineNo++;
        } else if (this.m_bPrevCharIsCR) {
            this.m_bPrevCharIsCR = false;
            if (c10 == '\n') {
                this.m_bPrevCharIsLF = true;
            } else {
                this.m_nColumnNo = 1;
                this.m_nLineNo++;
            }
        }
        if (c10 == '\t') {
            int i10 = this.m_nColumnNo - 1;
            this.m_nColumnNo = i10;
            int i11 = this.m_nTabSize;
            this.m_nColumnNo = i10 + (i11 - (i10 % i11));
        } else if (c10 == '\n') {
            this.m_bPrevCharIsLF = true;
        } else if (c10 == '\r') {
            this.m_bPrevCharIsCR = true;
        }
        internalSetBufLineColumn(this.m_nLineNo, this.m_nColumnNo);
    }

    @Override
    public final boolean isTrackLineColumn() {
        return this.m_bTrackLineColumn;
    }

    public final void reInit(final int nStartLine, final int nStartColumn, final int nBufferSize) {
        this.m_nLineNo = nStartLine;
        this.m_nColumnNo = nStartColumn - 1;
        this.m_bPrevCharIsCR = false;
        this.m_bPrevCharIsLF = false;
        char[] cArr = this.buffer;
        if (cArr == null || nBufferSize != cArr.length) {
            this.bufsize = nBufferSize;
            this.available = nBufferSize;
            this.buffer = new char[nBufferSize];
            this.m_aBufLine = new int[nBufferSize];
            this.m_aBufColumn = new int[nBufferSize];
        }
        this.maxNextCharInd = 0;
        this.inBuf = 0;
        this.tokenBegin = 0;
        this.bufpos = -1;
    }

    @Override
    public char readChar() throws IOException {
        int i10 = this.inBuf;
        if (i10 > 0) {
            this.inBuf = i10 - 1;
            int i11 = this.bufpos + 1;
            this.bufpos = i11;
            if (i11 == this.bufsize) {
                this.bufpos = 0;
            }
            return this.buffer[this.bufpos];
        }
        int i12 = this.bufpos + 1;
        this.bufpos = i12;
        if (i12 >= this.maxNextCharInd) {
            fillBuff();
        }
        char c10 = this.buffer[this.bufpos];
        if (this.m_bTrackLineColumn) {
            internalUpdateLineColumn(c10);
        }
        return c10;
    }

    @Override
    public final void setTabSize(final int nTabSize) {
        this.m_nTabSize = nTabSize;
    }

    @Override
    public final void setTrackLineColumn(final boolean bTrackLineColumn) {
        this.m_bTrackLineColumn = bTrackLineColumn;
    }

    public abstract void streamClose() throws IOException;

    public abstract int streamRead(char[] aBuf, int nOfs, int nLen) throws IOException;
}
