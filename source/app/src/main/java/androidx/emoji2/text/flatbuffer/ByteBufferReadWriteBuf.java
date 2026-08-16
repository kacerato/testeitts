package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class ByteBufferReadWriteBuf implements ReadWriteBuf {
    private final ByteBuffer buffer;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override
    public byte[] data() {
        return this.buffer.array();
    }

    @Override
    public byte get(int i10) {
        return this.buffer.get(i10);
    }

    @Override
    public boolean getBoolean(int i10) {
        return get(i10) != 0;
    }

    @Override
    public double getDouble(int i10) {
        return this.buffer.getDouble(i10);
    }

    @Override
    public float getFloat(int i10) {
        return this.buffer.getFloat(i10);
    }

    @Override
    public int getInt(int i10) {
        return this.buffer.getInt(i10);
    }

    @Override
    public long getLong(int i10) {
        return this.buffer.getLong(i10);
    }

    @Override
    public short getShort(int i10) {
        return this.buffer.getShort(i10);
    }

    @Override
    public String getString(int i10, int i11) {
        return Utf8Safe.decodeUtf8Buffer(this.buffer, i10, i11);
    }

    @Override
    public int limit() {
        return this.buffer.limit();
    }

    @Override
    public void put(byte[] bArr, int i10, int i11) {
        this.buffer.put(bArr, i10, i11);
    }

    @Override
    public void putBoolean(boolean z10) {
        this.buffer.put(z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public void putDouble(double d10) {
        this.buffer.putDouble(d10);
    }

    @Override
    public void putFloat(float f10) {
        this.buffer.putFloat(f10);
    }

    @Override
    public void putInt(int i10) {
        this.buffer.putInt(i10);
    }

    @Override
    public void putLong(long j10) {
        this.buffer.putLong(j10);
    }

    @Override
    public void putShort(short s10) {
        this.buffer.putShort(s10);
    }

    @Override
    public boolean requestCapacity(int i10) {
        return i10 <= this.buffer.limit();
    }

    @Override
    public void set(int i10, byte b10) {
        requestCapacity(i10 + 1);
        this.buffer.put(i10, b10);
    }

    @Override
    public void setBoolean(int i10, boolean z10) {
        set(i10, z10 ? (byte) 1 : (byte) 0);
    }

    @Override
    public void setDouble(int i10, double d10) {
        requestCapacity(i10 + 8);
        this.buffer.putDouble(i10, d10);
    }

    @Override
    public void setFloat(int i10, float f10) {
        requestCapacity(i10 + 4);
        this.buffer.putFloat(i10, f10);
    }

    @Override
    public void setInt(int i10, int i11) {
        requestCapacity(i10 + 4);
        this.buffer.putInt(i10, i11);
    }

    @Override
    public void setLong(int i10, long j10) {
        requestCapacity(i10 + 8);
        this.buffer.putLong(i10, j10);
    }

    @Override
    public void setShort(int i10, short s10) {
        requestCapacity(i10 + 2);
        this.buffer.putShort(i10, s10);
    }

    @Override
    public int writePosition() {
        return this.buffer.position();
    }

    @Override
    public void put(byte b10) {
        this.buffer.put(b10);
    }

    @Override
    public void set(int i10, byte[] bArr, int i11, int i12) {
        requestCapacity((i12 - i11) + i10);
        int position = this.buffer.position();
        this.buffer.position(i10);
        this.buffer.put(bArr, i11, i12);
        this.buffer.position(position);
    }
}
