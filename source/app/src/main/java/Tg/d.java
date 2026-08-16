package Tg;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;

public interface d extends x, WritableByteChannel {
    C3089c C();

    d D(f fVar) throws IOException;

    d E(long j10) throws IOException;

    d F(String str, int i10, int i11) throws IOException;

    long H(y yVar) throws IOException;

    d I(String str, int i10, int i11, Charset charset) throws IOException;

    d J(long j10) throws IOException;

    d M(int i10) throws IOException;

    d O(int i10) throws IOException;

    d P(long j10) throws IOException;

    d T() throws IOException;

    d U(int i10) throws IOException;

    d W() throws IOException;

    d X(String str) throws IOException;

    @Override
    void flush() throws IOException;

    d l0(String str, Charset charset) throws IOException;

    OutputStream s0();

    d t0(y yVar, long j10) throws IOException;

    d write(byte[] bArr) throws IOException;

    d write(byte[] bArr, int i10, int i11) throws IOException;

    d writeByte(int i10) throws IOException;

    d writeInt(int i10) throws IOException;

    d writeLong(long j10) throws IOException;

    d writeShort(int i10) throws IOException;
}
