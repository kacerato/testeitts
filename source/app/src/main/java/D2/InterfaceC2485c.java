package D2;

import java.io.DataOutput;

@v2.c
@p
public interface InterfaceC2485c extends DataOutput {
    byte[] toByteArray();

    @Override
    void write(int i10);

    @Override
    void write(byte[] bArr);

    @Override
    void write(byte[] bArr, int i10, int i11);

    @Override
    void writeBoolean(boolean z10);

    @Override
    void writeByte(int i10);

    @Override
    @Deprecated
    void writeBytes(String str);

    @Override
    void writeChar(int i10);

    @Override
    void writeChars(String str);

    @Override
    void writeDouble(double d10);

    @Override
    void writeFloat(float f10);

    @Override
    void writeInt(int i10);

    @Override
    void writeLong(long j10);

    @Override
    void writeShort(int i10);

    @Override
    void writeUTF(String str);
}
