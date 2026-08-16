package com.ardor3d.util;

import com.ardor3d.util.export.ByteUtils;
import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public class LittleEndianRandomAccessDataInput implements DataInput {
    public int CHAR_SIZE = 2;
    private final ByteBuffer _contents;

    public LittleEndianRandomAccessDataInput(InputStream inputStream) throws IOException {
        this._contents = ByteBuffer.wrap(ByteUtils.getByteContent(inputStream));
    }

    public int capacity() {
        return this._contents.capacity();
    }

    public final LittleEndianRandomAccessDataInput mark() {
        this._contents.mark();
        return this;
    }

    public int position() {
        return this._contents.position();
    }

    @Override
    public final boolean readBoolean() throws IOException {
        return readByte() != 0;
    }

    @Override
    public final byte readByte() throws IOException {
        return this._contents.get();
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
        return (readByte() & 255) | ((readByte() & 255) << 8) | ((readByte() & 255) << 16) | ((readByte() & 255) << 24);
    }

    @Override
    public final String readLine() throws IOException {
        throw new IOException("operation unsupported.");
    }

    @Override
    public final long readLong() throws IOException {
        return (readByte() & 255) | ((readByte() & 255) << 8) | ((readByte() & 255) << 16) | ((readByte() & 255) << 24) | ((readByte() & 255) << 32) | ((readByte() & 255) << 40) | ((readByte() & 255) << 48) | ((readByte() & 255) << 56);
    }

    @Override
    public final short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    public String readString(int i10, Charset charset) throws IOException {
        int position = position();
        byte[] bArr = new byte[i10];
        readFully(bArr);
        seek(position + i10);
        int i11 = 0;
        while (true) {
            if (i11 >= i10) {
                break;
            }
            if (bArr[i11] == 0) {
                i10 = i11;
                break;
            }
            i11++;
        }
        return new String(bArr, 0, i10, charset);
    }

    @Override
    public final String readUTF() throws IOException {
        throw new IOException("operation unsupported.");
    }

    @Override
    public final int readUnsignedByte() throws IOException {
        return readByte() & 255;
    }

    public final long readUnsignedInt() throws IOException {
        return (readByte() & 255) | ((readByte() & 255) << 8) | ((readByte() & 255) << 16) | ((readByte() & 255) << 24);
    }

    @Override
    public final int readUnsignedShort() throws IOException {
        return (readByte() & 255) | ((readByte() & 255) << 8);
    }

    public final LittleEndianRandomAccessDataInput reset() {
        this._contents.reset();
        return this;
    }

    public final void seek(int i10) throws IOException {
        this._contents.position(i10);
    }

    @Override
    public final int skipBytes(int i10) throws IOException {
        if (this._contents.remaining() >= i10) {
            ByteBuffer byteBuffer = this._contents;
            byteBuffer.position(byteBuffer.position() + i10);
            return i10;
        }
        int remaining = this._contents.remaining();
        ByteBuffer byteBuffer2 = this._contents;
        byteBuffer2.position(byteBuffer2.limit());
        return remaining;
    }

    @Override
    public final void readFully(byte[] bArr, int i10, int i11) throws IOException {
        if ((i11 - i10) + this._contents.position() <= this._contents.capacity()) {
            this._contents.get(bArr, i10, i11);
            return;
        }
        throw new EOFException("EOF reached");
    }

    public LittleEndianRandomAccessDataInput(ByteBuffer byteBuffer) throws IOException {
        this._contents = byteBuffer;
    }

    public String readString(int i10) throws IOException {
        return readString(i10, Charset.defaultCharset());
    }
}
