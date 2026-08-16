package com.android.dx.io.instructions;

public interface CodeOutput extends CodeCursor {
    void write(short s10);

    void write(short s10, short s11);

    void write(short s10, short s11, short s12);

    void write(short s10, short s11, short s12, short s13);

    void write(short s10, short s11, short s12, short s13, short s14);

    void write(byte[] bArr);

    void write(int[] iArr);

    void write(long[] jArr);

    void write(short[] sArr);

    void writeInt(int i10);

    void writeLong(long j10);
}
