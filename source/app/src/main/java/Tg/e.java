package Tg;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

public interface e extends y, ReadableByteChannel {
    String A1(Charset charset) throws IOException;

    int B1() throws IOException;

    C3089c C();

    f C1() throws IOException;

    String D1() throws IOException;

    String E1(long j10, Charset charset) throws IOException;

    int F1(q qVar) throws IOException;

    long G1() throws IOException;

    long H1(f fVar) throws IOException;

    long J1(byte b10, long j10, long j11) throws IOException;

    String K1(long j10) throws IOException;

    String L1() throws IOException;

    byte[] M1(long j10) throws IOException;

    void X1(long j10) throws IOException;

    long Y1(f fVar) throws IOException;

    boolean b2() throws IOException;

    long c2() throws IOException;

    long d2(x xVar) throws IOException;

    void f2(C3089c c3089c, long j10) throws IOException;

    boolean g2(long j10, f fVar) throws IOException;

    int h2() throws IOException;

    boolean i(long j10) throws IOException;

    InputStream j2();

    long p1(byte b10) throws IOException;

    long q1(byte b10, long j10) throws IOException;

    @Nullable
    String r1() throws IOException;

    int read(byte[] bArr) throws IOException;

    int read(byte[] bArr, int i10, int i11) throws IOException;

    byte readByte() throws IOException;

    void readFully(byte[] bArr) throws IOException;

    int readInt() throws IOException;

    long readLong() throws IOException;

    short readShort() throws IOException;

    long s1(f fVar, long j10) throws IOException;

    void skip(long j10) throws IOException;

    long t1(f fVar, long j10) throws IOException;

    short u1() throws IOException;

    long v1() throws IOException;

    String w1(long j10) throws IOException;

    f x1(long j10) throws IOException;

    boolean y1(long j10, f fVar, int i10, int i11) throws IOException;

    byte[] z1() throws IOException;
}
