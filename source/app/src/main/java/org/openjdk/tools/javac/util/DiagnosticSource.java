package org.openjdk.tools.javac.util;

import java.io.IOException;
import java.lang.ref.SoftReference;
import java.nio.CharBuffer;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.tree.EndPosTable;

public class DiagnosticSource {
    public static final DiagnosticSource NO_SOURCE = new DiagnosticSource() {
        @Override
        public boolean findLine(int i10) {
            return false;
        }
    };
    protected char[] buf;
    protected int bufLen;
    protected EndPosTable endPosTable;
    protected JavaFileObject fileObject;
    protected int line;
    protected int lineStart;
    protected AbstractLog log;
    protected SoftReference<char[]> refBuf;

    public boolean findLine(int i10) {
        int i11;
        SoftReference<char[]> softReference;
        if (i10 == -1) {
            return false;
        }
        try {
            if (this.buf == null && (softReference = this.refBuf) != null) {
                this.buf = softReference.get();
            }
            if (this.buf == null) {
                this.buf = initBuf(this.fileObject);
                this.lineStart = 0;
                this.line = 1;
            } else if (this.lineStart > i10) {
                this.lineStart = 0;
                this.line = 1;
            }
            int i12 = this.lineStart;
            while (true) {
                i11 = this.bufLen;
                if (i12 >= i11 || i12 >= i10) {
                    break;
                }
                char[] cArr = this.buf;
                int i13 = i12 + 1;
                char c10 = cArr[i12];
                if (c10 == '\n') {
                    this.line++;
                    this.lineStart = i13;
                } else if (c10 == '\r') {
                    if (i13 < i11 && cArr[i13] == '\n') {
                        i13 = i12 + 2;
                    }
                    this.line++;
                    this.lineStart = i13;
                }
                i12 = i13;
            }
            return i12 <= i11;
        } catch (IOException unused) {
            this.log.directError("source.unavailable", new Object[0]);
            this.buf = new char[0];
            return false;
        }
    }

    public int getColumnNumber(int i10, boolean z10) {
        try {
            if (!findLine(i10)) {
                return 0;
            }
            int i11 = 0;
            for (int i12 = this.lineStart; i12 < i10; i12++) {
                if (i12 >= this.bufLen) {
                    return 0;
                }
                i11 = (this.buf[i12] == '\t' && z10) ? ((i11 / 8) * 8) + 8 : i11 + 1;
            }
            return i11 + 1;
        } finally {
            this.buf = null;
        }
    }

    public EndPosTable getEndPosTable() {
        return this.endPosTable;
    }

    public JavaFileObject getFile() {
        return this.fileObject;
    }

    public String getLine(int i10) {
        char c10;
        try {
            if (!findLine(i10)) {
                this.buf = null;
                return null;
            }
            int i11 = this.lineStart;
            while (i11 < this.bufLen && (c10 = this.buf[i11]) != '\r' && c10 != '\n') {
                i11++;
            }
            int i12 = this.lineStart;
            if (i11 - i12 == 0) {
                this.buf = null;
                return null;
            }
            String str = new String(this.buf, i12, i11 - i12);
            this.buf = null;
            return str;
        } catch (Throwable th2) {
            this.buf = null;
            throw th2;
        }
    }

    public int getLineNumber(int i10) {
        try {
            if (findLine(i10)) {
                return this.line;
            }
            this.buf = null;
            return 0;
        } finally {
            this.buf = null;
        }
    }

    public char[] initBuf(JavaFileObject javaFileObject) throws IOException {
        char[] charArray;
        CharSequence charContent = javaFileObject.getCharContent(true);
        if (charContent instanceof CharBuffer) {
            CharBuffer charBuffer = (CharBuffer) charContent;
            charArray = JavacFileManager.toArray(charBuffer);
            this.bufLen = charBuffer.limit();
        } else {
            charArray = charContent.toString().toCharArray();
            this.bufLen = charArray.length;
        }
        this.refBuf = new SoftReference<>(charArray);
        return charArray;
    }

    public void setEndPosTable(EndPosTable endPosTable) {
        EndPosTable endPosTable2 = this.endPosTable;
        if (endPosTable2 != null && endPosTable2 != endPosTable) {
            throw new IllegalStateException("endPosTable already set");
        }
        this.endPosTable = endPosTable;
    }

    public DiagnosticSource(JavaFileObject javaFileObject, AbstractLog abstractLog) {
        this.fileObject = javaFileObject;
        this.log = abstractLog;
    }

    private DiagnosticSource() {
    }
}
