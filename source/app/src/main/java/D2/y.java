package D2;

import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
@InterfaceC15800a
public final class y extends FilterInputStream implements DataInput {
    public y(InputStream inputStream) {
        super((InputStream) H.E(inputStream));
    }

    public final byte c() throws IOException, EOFException {
        int read = this.f92730in.read();
        if (-1 != read) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override
    @I2.a
    public boolean readBoolean() throws IOException {
        return readUnsignedByte() != 0;
    }

    @Override
    @I2.a
    public byte readByte() throws IOException {
        return (byte) readUnsignedByte();
    }

    @Override
    @I2.a
    public char readChar() throws IOException {
        return (char) readUnsignedShort();
    }

    @Override
    @I2.a
    public double readDouble() throws IOException {
        return Double.longBitsToDouble(readLong());
    }

    @Override
    @I2.a
    public float readFloat() throws IOException {
        return Float.intBitsToFloat(readInt());
    }

    @Override
    public void readFully(byte[] bArr) throws IOException {
        C2489g.p(this, bArr);
    }

    @Override
    @I2.a
    public int readInt() throws IOException {
        byte c10 = c();
        byte c11 = c();
        return com.google.common.primitives.l.k(c(), c(), c11, c10);
    }

    @Override
    @I2.a
    @I2.e("Always throws UnsupportedOperationException")
    public String readLine() {
        throw new UnsupportedOperationException("readLine is not supported");
    }

    @Override
    @I2.a
    public long readLong() throws IOException {
        byte c10 = c();
        byte c11 = c();
        byte c12 = c();
        byte c13 = c();
        byte c14 = c();
        byte c15 = c();
        return com.google.common.primitives.n.j(c(), c(), c15, c14, c13, c12, c11, c10);
    }

    @Override
    @I2.a
    public short readShort() throws IOException {
        return (short) readUnsignedShort();
    }

    @Override
    @I2.a
    public String readUTF() throws IOException {
        return new DataInputStream(this.f92730in).readUTF();
    }

    @Override
    @I2.a
    public int readUnsignedByte() throws IOException {
        int read = this.f92730in.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override
    @I2.a
    public int readUnsignedShort() throws IOException {
        return com.google.common.primitives.l.k((byte) 0, (byte) 0, c(), c());
    }

    @Override
    public int skipBytes(int i10) throws IOException {
        return (int) this.f92730in.skip(i10);
    }

    @Override
    public void readFully(byte[] bArr, int i10, int i11) throws IOException {
        C2489g.q(this, bArr, i10, i11);
    }
}
