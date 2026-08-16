package org.luaj.vm2.parser;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;

public class SimpleCharStream {
    public static final boolean staticFlag = false;
    int available;
    protected int[] bufcolumn;
    protected char[] buffer;
    protected int[] bufline;
    public int bufpos;
    int bufsize;
    protected int column;
    protected int inBuf;
    protected Reader inputStream;
    protected int line;
    protected int maxNextCharInd;
    protected boolean prevCharIsCR;
    protected boolean prevCharIsLF;
    protected int tabSize;
    int tokenBegin;

    public SimpleCharStream(InputStream inputStream) {
        this(inputStream, 1, 1, 4096);
    }

    public char BeginToken() throws IOException {
        this.tokenBegin = -1;
        char readChar = readChar();
        this.tokenBegin = this.bufpos;
        return readChar;
    }

    public void Done() {
        this.buffer = null;
        this.bufline = null;
        this.bufcolumn = null;
    }

    public void ExpandBuff(boolean z10) {
        int i10;
        int i11 = this.bufsize;
        char[] cArr = new char[i11 + 2048];
        int[] iArr = new int[i11 + 2048];
        int[] iArr2 = new int[i11 + 2048];
        try {
            if (z10) {
                char[] cArr2 = this.buffer;
                int i12 = this.tokenBegin;
                System.arraycopy(cArr2, i12, cArr, 0, i11 - i12);
                System.arraycopy(this.buffer, 0, cArr, this.bufsize - this.tokenBegin, this.bufpos);
                this.buffer = cArr;
                int[] iArr3 = this.bufline;
                int i13 = this.tokenBegin;
                System.arraycopy(iArr3, i13, iArr, 0, this.bufsize - i13);
                System.arraycopy(this.bufline, 0, iArr, this.bufsize - this.tokenBegin, this.bufpos);
                this.bufline = iArr;
                int[] iArr4 = this.bufcolumn;
                int i14 = this.tokenBegin;
                System.arraycopy(iArr4, i14, iArr2, 0, this.bufsize - i14);
                System.arraycopy(this.bufcolumn, 0, iArr2, this.bufsize - this.tokenBegin, this.bufpos);
                this.bufcolumn = iArr2;
                i10 = this.bufpos + (this.bufsize - this.tokenBegin);
                this.bufpos = i10;
            } else {
                char[] cArr3 = this.buffer;
                int i15 = this.tokenBegin;
                System.arraycopy(cArr3, i15, cArr, 0, i11 - i15);
                this.buffer = cArr;
                int[] iArr5 = this.bufline;
                int i16 = this.tokenBegin;
                System.arraycopy(iArr5, i16, iArr, 0, this.bufsize - i16);
                this.bufline = iArr;
                int[] iArr6 = this.bufcolumn;
                int i17 = this.tokenBegin;
                System.arraycopy(iArr6, i17, iArr2, 0, this.bufsize - i17);
                this.bufcolumn = iArr2;
                i10 = this.bufpos - this.tokenBegin;
                this.bufpos = i10;
            }
            this.maxNextCharInd = i10;
            int i18 = this.bufsize + 2048;
            this.bufsize = i18;
            this.available = i18;
            this.tokenBegin = 0;
        } catch (Throwable th2) {
            throw new Error(th2.getMessage());
        }
    }

    public void FillBuff() throws IOException {
        int i10 = this.maxNextCharInd;
        int i11 = this.available;
        if (i10 == i11) {
            int i12 = this.bufsize;
            if (i11 == i12) {
                i12 = this.tokenBegin;
                if (i12 > 2048) {
                    this.maxNextCharInd = 0;
                    this.bufpos = 0;
                    this.available = i12;
                } else if (i12 < 0) {
                    this.maxNextCharInd = 0;
                    this.bufpos = 0;
                } else {
                    ExpandBuff(false);
                }
            } else {
                int i13 = this.tokenBegin;
                if (i11 <= i13) {
                    if (i13 - i11 < 2048) {
                        ExpandBuff(true);
                    } else {
                        this.available = i13;
                    }
                }
                this.available = i12;
            }
        }
        try {
            Reader reader = this.inputStream;
            char[] cArr = this.buffer;
            int i14 = this.maxNextCharInd;
            int read = reader.read(cArr, i14, this.available - i14);
            if (read != -1) {
                this.maxNextCharInd += read;
            } else {
                this.inputStream.close();
                throw new IOException();
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

    public String GetImage() {
        int i10 = this.bufpos;
        int i11 = this.tokenBegin;
        if (i10 >= i11) {
            return new String(this.buffer, i11, (i10 - i11) + 1);
        }
        StringBuffer stringBuffer = new StringBuffer();
        char[] cArr = this.buffer;
        int i12 = this.tokenBegin;
        stringBuffer.append(new String(cArr, i12, this.bufsize - i12));
        stringBuffer.append(new String(this.buffer, 0, this.bufpos + 1));
        return stringBuffer.toString();
    }

    public char[] GetSuffix(int i10) {
        char[] cArr = new char[i10];
        int i11 = this.bufpos;
        if (i11 + 1 >= i10) {
            System.arraycopy(this.buffer, (i11 - i10) + 1, cArr, 0, i10);
        } else {
            System.arraycopy(this.buffer, this.bufsize - ((i10 - i11) - 1), cArr, 0, (i10 - i11) - 1);
            System.arraycopy(this.buffer, 0, cArr, (i10 - r2) - 1, this.bufpos + 1);
        }
        return cArr;
    }

    public void ReInit(InputStream inputStream) {
        ReInit(inputStream, 1, 1, 4096);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void UpdateLineColumn(char c10) {
        this.column++;
        if (!this.prevCharIsLF) {
            if (this.prevCharIsCR) {
                this.prevCharIsCR = false;
                if (c10 == '\n') {
                    this.prevCharIsLF = true;
                }
            }
            if (c10 != '\t') {
                int i10 = this.column - 1;
                this.column = i10;
                int i11 = this.tabSize;
                this.column = i10 + (i11 - (i10 % i11));
            } else if (c10 == '\n') {
                this.prevCharIsLF = true;
            } else if (c10 == '\r') {
                this.prevCharIsCR = true;
            }
            int[] iArr = this.bufline;
            int i12 = this.bufpos;
            iArr[i12] = this.line;
            this.bufcolumn[i12] = this.column;
        }
        this.prevCharIsLF = false;
        int i13 = this.line;
        this.column = 1;
        this.line = i13 + 1;
        if (c10 != '\t') {
        }
        int[] iArr2 = this.bufline;
        int i122 = this.bufpos;
        iArr2[i122] = this.line;
        this.bufcolumn[i122] = this.column;
    }

    public void adjustBeginLineColumn(int i10, int i11) {
        int i12;
        int i13 = this.tokenBegin;
        int i14 = this.bufpos;
        if (i14 >= i13) {
            i12 = (i14 - i13) + this.inBuf + 1;
        } else {
            i12 = this.inBuf + (this.bufsize - i13) + i14 + 1;
        }
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (true) {
            if (i15 >= i12) {
                break;
            }
            int[] iArr = this.bufline;
            int i18 = this.bufsize;
            int i19 = i13 % i18;
            i13++;
            int i20 = i13 % i18;
            if (iArr[i19] != iArr[i20]) {
                i16 = i19;
                break;
            }
            iArr[i19] = i10;
            int[] iArr2 = this.bufcolumn;
            int i21 = (iArr2[i20] + i17) - iArr2[i19];
            iArr2[i19] = i17 + i11;
            i15++;
            i17 = i21;
            i16 = i19;
        }
        if (i15 < i12) {
            int i22 = i10 + 1;
            this.bufline[i16] = i10;
            this.bufcolumn[i16] = i11 + i17;
            while (true) {
                int i23 = i15 + 1;
                if (i15 >= i12) {
                    break;
                }
                int[] iArr3 = this.bufline;
                int i24 = this.bufsize;
                i16 = i13 % i24;
                i13++;
                if (iArr3[i16] != iArr3[i13 % i24]) {
                    iArr3[i16] = i22;
                    i22++;
                } else {
                    iArr3[i16] = i22;
                }
                i15 = i23;
            }
        }
        this.line = this.bufline[i16];
        this.column = this.bufcolumn[i16];
    }

    public void backup(int i10) {
        this.inBuf += i10;
        int i11 = this.bufpos - i10;
        this.bufpos = i11;
        if (i11 < 0) {
            this.bufpos = i11 + this.bufsize;
        }
    }

    public int getBeginColumn() {
        return this.bufcolumn[this.tokenBegin];
    }

    public int getBeginLine() {
        return this.bufline[this.tokenBegin];
    }

    public int getColumn() {
        return this.bufcolumn[this.bufpos];
    }

    public int getEndColumn() {
        return this.bufcolumn[this.bufpos];
    }

    public int getEndLine() {
        return this.bufline[this.bufpos];
    }

    public int getLine() {
        return this.bufline[this.bufpos];
    }

    public int getTabSize(int i10) {
        return this.tabSize;
    }

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
            FillBuff();
        }
        char c10 = this.buffer[this.bufpos];
        UpdateLineColumn(c10);
        return c10;
    }

    public void setTabSize(int i10) {
        this.tabSize = i10;
    }

    public SimpleCharStream(InputStream inputStream, int i10, int i11) {
        this(inputStream, i10, i11, 4096);
    }

    public void ReInit(InputStream inputStream, int i10, int i11) {
        ReInit(inputStream, i10, i11, 4096);
    }

    public SimpleCharStream(InputStream inputStream, int i10, int i11, int i12) {
        this(new InputStreamReader(inputStream), i10, i11, i12);
    }

    public void ReInit(InputStream inputStream, int i10, int i11, int i12) {
        ReInit(new InputStreamReader(inputStream), i10, i11, i12);
    }

    public SimpleCharStream(InputStream inputStream, String str) throws UnsupportedEncodingException {
        this(inputStream, str, 1, 1, 4096);
    }

    public void ReInit(InputStream inputStream, String str) throws UnsupportedEncodingException {
        ReInit(inputStream, str, 1, 1, 4096);
    }

    public SimpleCharStream(InputStream inputStream, String str, int i10, int i11) throws UnsupportedEncodingException {
        this(inputStream, str, i10, i11, 4096);
    }

    public void ReInit(InputStream inputStream, String str, int i10, int i11) throws UnsupportedEncodingException {
        ReInit(inputStream, str, i10, i11, 4096);
    }

    public SimpleCharStream(InputStream inputStream, String str, int i10, int i11, int i12) throws UnsupportedEncodingException {
        this(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), i10, i11, i12);
    }

    public void ReInit(InputStream inputStream, String str, int i10, int i11, int i12) throws UnsupportedEncodingException {
        ReInit(str == null ? new InputStreamReader(inputStream) : new InputStreamReader(inputStream, str), i10, i11, i12);
    }

    public SimpleCharStream(Reader reader) {
        this(reader, 1, 1, 4096);
    }

    public void ReInit(Reader reader) {
        ReInit(reader, 1, 1, 4096);
    }

    public SimpleCharStream(Reader reader, int i10, int i11) {
        this(reader, i10, i11, 4096);
    }

    public void ReInit(Reader reader, int i10, int i11) {
        ReInit(reader, i10, i11, 4096);
    }

    public SimpleCharStream(Reader reader, int i10, int i11, int i12) {
        this.bufpos = -1;
        this.prevCharIsCR = false;
        this.prevCharIsLF = false;
        this.maxNextCharInd = 0;
        this.inBuf = 0;
        this.tabSize = 1;
        this.inputStream = reader;
        this.line = i10;
        this.column = i11 - 1;
        this.bufsize = i12;
        this.available = i12;
        this.buffer = new char[i12];
        this.bufline = new int[i12];
        this.bufcolumn = new int[i12];
    }

    public void ReInit(Reader reader, int i10, int i11, int i12) {
        this.inputStream = reader;
        this.line = i10;
        this.column = i11 - 1;
        char[] cArr = this.buffer;
        if (cArr == null || i12 != cArr.length) {
            this.bufsize = i12;
            this.available = i12;
            this.buffer = new char[i12];
            this.bufline = new int[i12];
            this.bufcolumn = new int[i12];
        }
        this.prevCharIsCR = false;
        this.prevCharIsLF = false;
        this.maxNextCharInd = 0;
        this.inBuf = 0;
        this.tokenBegin = 0;
        this.bufpos = -1;
    }
}
