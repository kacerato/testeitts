package com.android.dx.util;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;

public final class IndentingWriter extends FilterWriter {
    private boolean collectingIndent;
    private int column;
    private int indent;
    private final int maxIndent;
    private final String prefix;
    private final int width;

    public IndentingWriter(Writer writer, int i10, String str) {
        super(writer);
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("width < 0");
        }
        if (str != null) {
            this.width = i10 != 0 ? i10 : Integer.MAX_VALUE;
            this.maxIndent = i10 >> 1;
            this.prefix = str.length() == 0 ? null : str;
            bol();
            return;
        }
        throw new NullPointerException("prefix == null");
    }

    private void bol() {
        this.column = 0;
        this.collectingIndent = this.maxIndent != 0;
        this.indent = 0;
    }

    @Override
    public void write(int i10) throws IOException {
        int i11;
        synchronized (this.lock) {
            try {
                int i12 = 0;
                if (this.collectingIndent) {
                    if (i10 == 32) {
                        int i13 = this.indent + 1;
                        this.indent = i13;
                        int i14 = this.maxIndent;
                        if (i13 >= i14) {
                            this.indent = i14;
                            this.collectingIndent = false;
                        }
                    } else {
                        this.collectingIndent = false;
                    }
                }
                if (this.column == this.width && i10 != 10) {
                    this.out.write(10);
                    this.column = 0;
                }
                if (this.column == 0) {
                    String str = this.prefix;
                    if (str != null) {
                        this.out.write(str);
                    }
                    if (!this.collectingIndent) {
                        while (true) {
                            i11 = this.indent;
                            if (i12 >= i11) {
                                break;
                            }
                            this.out.write(32);
                            i12++;
                        }
                        this.column = i11;
                    }
                }
                this.out.write(i10);
                if (i10 == 10) {
                    bol();
                } else {
                    this.column++;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public IndentingWriter(Writer writer, int i10) {
        this(writer, i10, "");
    }

    @Override
    public void write(char[] cArr, int i10, int i11) throws IOException {
        synchronized (this.lock) {
            while (i11 > 0) {
                try {
                    write(cArr[i10]);
                    i10++;
                    i11--;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public void write(String str, int i10, int i11) throws IOException {
        synchronized (this.lock) {
            while (i11 > 0) {
                try {
                    write(str.charAt(i10));
                    i10++;
                    i11--;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
