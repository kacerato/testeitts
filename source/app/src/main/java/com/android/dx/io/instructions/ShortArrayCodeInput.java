package com.android.dx.io.instructions;

import java.io.EOFException;

public final class ShortArrayCodeInput extends BaseCodeCursor implements CodeInput {
    private final short[] array;

    public ShortArrayCodeInput(short[] sArr) {
        if (sArr == null) {
            throw new NullPointerException("array == null");
        }
        this.array = sArr;
    }

    @Override
    public boolean hasMore() {
        return cursor() < this.array.length;
    }

    @Override
    public int read() throws EOFException {
        try {
            short s10 = this.array[cursor()];
            advance(1);
            return s10 & 65535;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new EOFException();
        }
    }

    @Override
    public int readInt() throws EOFException {
        return read() | (read() << 16);
    }

    @Override
    public long readLong() throws EOFException {
        return read() | (read() << 16) | (read() << 32) | (read() << 48);
    }
}
