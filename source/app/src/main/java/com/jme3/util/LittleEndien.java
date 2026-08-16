package com.jme3.util;

import java.io.BufferedInputStream;
import java.io.DataInput;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public class LittleEndien extends InputStream implements DataInput {

    protected BufferedInputStream f81656in;

    public LittleEndien(InputStream inputStream) {
        this.f81656in = new BufferedInputStream(inputStream);
    }

    @Override
    public int available() throws IOException {
        return this.f81656in.available();
    }

    @Override
    public void close() throws IOException {
        this.f81656in.close();
    }

    @Override
    public int read() throws IOException {
        return this.f81656in.read();
    }

    @Override
    public boolean readBoolean() throws IOException {
        return this.f81656in.read() != 0;
    }

    @Override
    public byte readByte() throws IOException {
        return (byte) this.f81656in.read();
    }

    @Override
    public char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override
    public void readFully(byte[] bArr) throws IOException {
        readFully(bArr, 0, bArr.length);
    }

    @Override
    public int readInt() throws IOException {
        return (this.f81656in.read() & 255) | ((this.f81656in.read() & 255) << 8) | ((this.f81656in.read() & 255) << 16) | ((this.f81656in.read() & 255) << 24);
    }

    @Override
    public String readLine() throws IOException {
        throw new IOException("Unsupported operation");
    }

    @Override
    public long readLong() throws IOException {
        return (this.f81656in.read() & 255) | ((this.f81656in.read() & 255) << 8) | ((this.f81656in.read() & 255) << 16) | ((this.f81656in.read() & 255) << 24) | ((this.f81656in.read() & 255) << 32) | ((this.f81656in.read() & 255) << 40) | ((this.f81656in.read() & 255) << 48) | ((this.f81656in.read() & 255) << 56);
    }

    @Override
    public short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    public long readUInt() throws IOException {
        return (this.f81656in.read() & 255) | ((this.f81656in.read() & 255) << 8) | ((this.f81656in.read() & 255) << 16) | ((this.f81656in.read() & 255) << 24);
    }

    @Override
    public String readUTF() throws IOException {
        throw new IOException("Unsupported operation");
    }

    @Override
    public int readUnsignedByte() throws IOException {
        return this.f81656in.read();
    }

    @Override
    public int readUnsignedShort() throws IOException {
        return (this.f81656in.read() & 255) | ((this.f81656in.read() & 255) << 8);
    }

    @Override
    public int skipBytes(int i10) throws IOException {
        return (int) this.f81656in.skip(i10);
    }

    @Override
    public int read(byte[] bArr) throws IOException {
        return this.f81656in.read(bArr);
    }

    @Override
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = 0;
        while (i12 < i11) {
            int read = this.f81656in.read(bArr, i10 + i12, i11 - i12);
            if (read < 0) {
                throw new EOFException("Reached end of stream before reading fully.");
            }
            i12 += read;
        }
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return this.f81656in.read(bArr, i10, i11);
    }
}
