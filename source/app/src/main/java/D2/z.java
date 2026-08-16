package D2;

import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
@InterfaceC15800a
public final class z extends FilterOutputStream implements DataOutput {
    public z(OutputStream outputStream) {
        super(new DataOutputStream((OutputStream) H.E(outputStream)));
    }

    @Override
    public void close() throws IOException {
        this.out.close();
    }

    @Override
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.out.write(bArr, i10, i11);
    }

    @Override
    public void writeBoolean(boolean z10) throws IOException {
        ((DataOutputStream) this.out).writeBoolean(z10);
    }

    @Override
    public void writeByte(int i10) throws IOException {
        ((DataOutputStream) this.out).writeByte(i10);
    }

    @Override
    @Deprecated
    public void writeBytes(String str) throws IOException {
        ((DataOutputStream) this.out).writeBytes(str);
    }

    @Override
    public void writeChar(int i10) throws IOException {
        writeShort(i10);
    }

    @Override
    public void writeChars(String str) throws IOException {
        for (int i10 = 0; i10 < str.length(); i10++) {
            writeChar(str.charAt(i10));
        }
    }

    @Override
    public void writeDouble(double d10) throws IOException {
        writeLong(Double.doubleToLongBits(d10));
    }

    @Override
    public void writeFloat(float f10) throws IOException {
        writeInt(Float.floatToIntBits(f10));
    }

    @Override
    public void writeInt(int i10) throws IOException {
        this.out.write(i10 & 255);
        this.out.write((i10 >> 8) & 255);
        this.out.write((i10 >> 16) & 255);
        this.out.write((i10 >> 24) & 255);
    }

    @Override
    public void writeLong(long j10) throws IOException {
        byte[] A10 = com.google.common.primitives.n.A(Long.reverseBytes(j10));
        write(A10, 0, A10.length);
    }

    @Override
    public void writeShort(int i10) throws IOException {
        this.out.write(i10 & 255);
        this.out.write((i10 >> 8) & 255);
    }

    @Override
    public void writeUTF(String str) throws IOException {
        ((DataOutputStream) this.out).writeUTF(str);
    }
}
