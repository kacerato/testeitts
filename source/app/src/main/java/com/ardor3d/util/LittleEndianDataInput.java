package com.ardor3d.util;

import java.io.BufferedInputStream;
import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class LittleEndianDataInput implements DataInput {
    public int CHAR_SIZE = 2;
    private final BufferedInputStream _stream;

    public LittleEndianDataInput(InputStream inputStream) {
        this._stream = new BufferedInputStream(inputStream);
    }

    public final int available() throws IOException {
        return this._stream.available();
    }

    public final void close() throws IOException {
        this._stream.close();
    }

    @Override
    public final boolean readBoolean() throws IOException {
        return this._stream.read() != 0;
    }

    @Override
    public final byte readByte() throws IOException {
        return (byte) this._stream.read();
    }

    @Override
    public final char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override
    public final double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override
    public final float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override
    public final void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override
    public final int readInt() throws IOException {
        return (this._stream.read() & 255) | ((this._stream.read() & 255) << 8) | ((this._stream.read() & 255) << 16) | ((this._stream.read() & 255) << 24);
    }

    @Override
    public final String readLine() throws IOException {
        throw new IOException("Unsupported operation");
    }

    @Override
    public final long readLong() throws IOException {
        return (this._stream.read() & 255) | ((this._stream.read() & 255) << 8) | ((this._stream.read() & 255) << 16) | ((this._stream.read() & 255) << 24) | ((this._stream.read() & 255) << 32) | ((this._stream.read() & 255) << 40) | ((this._stream.read() & 255) << 48) | ((this._stream.read() & 255) << 56);
    }

    @Override
    public final short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    @Override
    public final String readUTF() throws IOException {
        throw new IOException("Unsupported operation");
    }

    @Override
    public final int readUnsignedByte() throws IOException {
        return this._stream.read();
    }

    public final long readUnsignedInt() throws IOException {
        return (this._stream.read() & 255) | ((this._stream.read() & 255) << 8) | ((this._stream.read() & 255) << 16) | ((this._stream.read() & 255) << 24);
    }

    @Override
    public final int readUnsignedShort() throws IOException {
        return (this._stream.read() & 255) | ((this._stream.read() & 255) << 8);
    }

    @Override
    public final int skipBytes(int i10) throws IOException {
        return (int) this._stream.skip(i10);
    }

    @Override
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        int read = this._stream.read(bArr, i10, i11);
        if (read == -1) {
            throw new EOFException("EOF reached");
        }
        if (read < i11) {
            readFully(bArr, i10 + read, i11 - read);
        }
    }
}
