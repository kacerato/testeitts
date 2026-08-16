package org.openjdk.tools.javac.util;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class ByteBuffer {
    public byte[] elems;
    public int length;

    public ByteBuffer() {
        this(64);
    }

    public void appendByte(int i10) {
        byte[] ensureCapacity = ArrayUtils.ensureCapacity(this.elems, this.length);
        this.elems = ensureCapacity;
        int i11 = this.length;
        this.length = i11 + 1;
        ensureCapacity[i11] = (byte) i10;
    }

    public void appendBytes(byte[] bArr, int i10, int i11) {
        byte[] ensureCapacity = ArrayUtils.ensureCapacity(this.elems, this.length + i11);
        this.elems = ensureCapacity;
        System.arraycopy(bArr, i10, ensureCapacity, this.length, i11);
        this.length += i11;
    }

    public void appendChar(int i10) {
        byte[] ensureCapacity = ArrayUtils.ensureCapacity(this.elems, this.length + 1);
        this.elems = ensureCapacity;
        int i11 = this.length;
        ensureCapacity[i11] = (byte) ((i10 >> 8) & 255);
        ensureCapacity[i11 + 1] = (byte) (i10 & 255);
        this.length = i11 + 2;
    }

    public void appendDouble(double d10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8);
        try {
            new DataOutputStream(byteArrayOutputStream).writeDouble(d10);
            appendBytes(byteArrayOutputStream.toByteArray(), 0, 8);
        } catch (IOException unused) {
            throw new AssertionError((Object) "write");
        }
    }

    public void appendFloat(float f10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(4);
        try {
            new DataOutputStream(byteArrayOutputStream).writeFloat(f10);
            appendBytes(byteArrayOutputStream.toByteArray(), 0, 4);
        } catch (IOException unused) {
            throw new AssertionError((Object) "write");
        }
    }

    public void appendInt(int i10) {
        byte[] ensureCapacity = ArrayUtils.ensureCapacity(this.elems, this.length + 3);
        this.elems = ensureCapacity;
        int i11 = this.length;
        ensureCapacity[i11] = (byte) ((i10 >> 24) & 255);
        ensureCapacity[i11 + 1] = (byte) ((i10 >> 16) & 255);
        ensureCapacity[i11 + 2] = (byte) ((i10 >> 8) & 255);
        ensureCapacity[i11 + 3] = (byte) (i10 & 255);
        this.length = i11 + 4;
    }

    public void appendLong(long j10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8);
        try {
            new DataOutputStream(byteArrayOutputStream).writeLong(j10);
            appendBytes(byteArrayOutputStream.toByteArray(), 0, 8);
        } catch (IOException unused) {
            throw new AssertionError((Object) "write");
        }
    }

    public void appendName(Name name) {
        appendBytes(name.getByteArray(), name.getByteOffset(), name.getByteLength());
    }

    public void reset() {
        this.length = 0;
    }

    public Name toName(Names names) {
        return names.fromUtf(this.elems, 0, this.length);
    }

    public ByteBuffer(int i10) {
        this.elems = new byte[i10];
        this.length = 0;
    }

    public void appendBytes(byte[] bArr) {
        appendBytes(bArr, 0, bArr.length);
    }
}
