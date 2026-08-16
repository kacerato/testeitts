package com.android.dx.util;

import com.android.dex.util.ByteOutput;

public interface Output extends ByteOutput {
    void alignTo(int i10);

    void assertCursor(int i10);

    int getCursor();

    void write(ByteArray byteArray);

    void write(byte[] bArr);

    void write(byte[] bArr, int i10, int i11);

    @Override
    void writeByte(int i10);

    void writeInt(int i10);

    void writeLong(long j10);

    void writeShort(int i10);

    int writeSleb128(int i10);

    int writeUleb128(int i10);

    void writeZeroes(int i10);
}
