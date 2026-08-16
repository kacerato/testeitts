package pn;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public abstract class a {
    public void a(OutputStream stream, byte value) throws IOException {
        stream.write(value);
    }

    public void b(OutputStream stream, float value, ByteOrder order) throws IOException {
        c(stream, Float.floatToIntBits(value), order);
    }

    public void c(OutputStream stream, int value, ByteOrder order) throws IOException {
        if (order == ByteOrder.BIG_ENDIAN) {
            stream.write((value >> 24) & 255);
            stream.write((value >> 16) & 255);
            stream.write((value >> 8) & 255);
            stream.write(value & 255);
            return;
        }
        stream.write(value & 255);
        stream.write((value >> 8) & 255);
        stream.write((value >> 16) & 255);
        stream.write((value >> 24) & 255);
    }

    public void d(OutputStream stream, long value, ByteOrder order) throws IOException {
        if (order == ByteOrder.BIG_ENDIAN) {
            c(stream, (int) (value >>> 32), order);
            c(stream, (int) value, order);
        } else {
            c(stream, (int) value, order);
            c(stream, (int) (value >>> 32), order);
        }
    }

    public void e(OutputStream stream, ByteBuffer data) throws IOException {
        data.position(0);
        byte[] bArr = new byte[data.remaining()];
        data.get(bArr);
        stream.write(bArr);
    }

    public void f(OutputStream stream, short value, ByteOrder order) throws IOException {
        if (order == ByteOrder.BIG_ENDIAN) {
            stream.write((value >> 8) & 255);
            stream.write(value & 255);
        } else {
            stream.write(value & 255);
            stream.write((value >> 8) & 255);
        }
    }

    public void g(OutputStream outputStream, boolean z10) throws IOException {
        a(outputStream, z10 ? (byte) 1 : (byte) 0);
    }
}
