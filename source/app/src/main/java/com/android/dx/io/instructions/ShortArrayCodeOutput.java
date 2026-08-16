package com.android.dx.io.instructions;

public final class ShortArrayCodeOutput extends BaseCodeCursor implements CodeOutput {
    private final short[] array;

    public ShortArrayCodeOutput(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("maxSize < 0");
        }
        this.array = new short[i10];
    }

    public short[] getArray() {
        int cursor = cursor();
        short[] sArr = this.array;
        if (cursor == sArr.length) {
            return sArr;
        }
        short[] sArr2 = new short[cursor];
        System.arraycopy(sArr, 0, sArr2, 0, cursor);
        return sArr2;
    }

    @Override
    public void write(short s10) {
        this.array[cursor()] = s10;
        advance(1);
    }

    @Override
    public void writeInt(int i10) {
        write((short) i10);
        write((short) (i10 >> 16));
    }

    @Override
    public void writeLong(long j10) {
        write((short) j10);
        write((short) (j10 >> 16));
        write((short) (j10 >> 32));
        write((short) (j10 >> 48));
    }

    @Override
    public void write(short s10, short s11) {
        write(s10);
        write(s11);
    }

    @Override
    public void write(short s10, short s11, short s12) {
        write(s10);
        write(s11);
        write(s12);
    }

    @Override
    public void write(short s10, short s11, short s12, short s13) {
        write(s10);
        write(s11);
        write(s12);
        write(s13);
    }

    @Override
    public void write(short s10, short s11, short s12, short s13, short s14) {
        write(s10);
        write(s11);
        write(s12);
        write(s13);
        write(s14);
    }

    @Override
    public void write(byte[] bArr) {
        int i10 = 0;
        boolean z10 = true;
        for (byte b10 : bArr) {
            if (z10) {
                i10 = b10 & 255;
                z10 = false;
            } else {
                int i11 = (b10 << 8) | i10;
                write((short) i11);
                i10 = i11;
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        write((short) i10);
    }

    @Override
    public void write(short[] sArr) {
        for (short s10 : sArr) {
            write(s10);
        }
    }

    @Override
    public void write(int[] iArr) {
        for (int i10 : iArr) {
            writeInt(i10);
        }
    }

    @Override
    public void write(long[] jArr) {
        for (long j10 : jArr) {
            writeLong(j10);
        }
    }
}
