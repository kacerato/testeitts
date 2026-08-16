package D2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import v2.InterfaceC15800a;
import w2.H;

@v2.c
@p
public final class C2489g {

    public static final int f4756a = 8192;

    public static final int f4757b = 524288;

    public static final int f4758c = 2147483639;

    public static final int f4759d = 20;

    public static final OutputStream f4760e = new a();

    public class a extends OutputStream {
        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override
        public void write(int i10) {
        }

        @Override
        public void write(byte[] bArr) {
            H.E(bArr);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) {
            H.E(bArr);
            H.f0(i10, i11 + i10, bArr.length);
        }
    }

    public static byte[] a(Queue<byte[]> queue, int i10) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] remove = queue.remove();
        if (remove.length == i10) {
            return remove;
        }
        int length = i10 - remove.length;
        byte[] copyOf = Arrays.copyOf(remove, i10);
        while (length > 0) {
            byte[] remove2 = queue.remove();
            int min = Math.min(length, remove2.length);
            System.arraycopy(remove2, 0, copyOf, i10 - length, min);
            length -= min;
        }
        return copyOf;
    }

    @I2.a
    public static long b(InputStream inputStream, OutputStream outputStream) throws IOException {
        H.E(inputStream);
        H.E(outputStream);
        byte[] d10 = d();
        long j10 = 0;
        while (true) {
            int read = inputStream.read(d10);
            if (read == -1) {
                return j10;
            }
            outputStream.write(d10, 0, read);
            j10 += read;
        }
    }

    @I2.a
    public static long c(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        H.E(readableByteChannel);
        H.E(writableByteChannel);
        long j10 = 0;
        if (!(readableByteChannel instanceof FileChannel)) {
            ByteBuffer wrap = ByteBuffer.wrap(d());
            while (readableByteChannel.read(wrap) != -1) {
                u.b(wrap);
                while (wrap.hasRemaining()) {
                    j10 += writableByteChannel.write(wrap);
                }
                u.a(wrap);
            }
            return j10;
        }
        FileChannel fileChannel = (FileChannel) readableByteChannel;
        long position = fileChannel.position();
        long j11 = position;
        while (true) {
            long transferTo = fileChannel.transferTo(j11, TagBits.PauseHierarchyCheck, writableByteChannel);
            j11 += transferTo;
            fileChannel.position(j11);
            if (transferTo <= 0 && j11 >= fileChannel.size()) {
                return j11 - position;
            }
        }
    }

    public static byte[] d() {
        return new byte[8192];
    }

    @I2.a
    @InterfaceC15800a
    public static long e(InputStream inputStream) throws IOException {
        byte[] d10 = d();
        long j10 = 0;
        while (true) {
            long read = inputStream.read(d10);
            if (read == -1) {
                return j10;
            }
            j10 += read;
        }
    }

    @InterfaceC15800a
    public static InputStream f(InputStream inputStream, long j10) {
        return new d(inputStream, j10);
    }

    @InterfaceC15800a
    public static InterfaceC2484b g(ByteArrayInputStream byteArrayInputStream) {
        return new b((ByteArrayInputStream) H.E(byteArrayInputStream));
    }

    @InterfaceC15800a
    public static InterfaceC2484b h(byte[] bArr) {
        return g(new ByteArrayInputStream(bArr));
    }

    @InterfaceC15800a
    public static InterfaceC2484b i(byte[] bArr, int i10) {
        H.d0(i10, bArr.length);
        return g(new ByteArrayInputStream(bArr, i10, bArr.length - i10));
    }

    @InterfaceC15800a
    public static InterfaceC2485c j() {
        return l(new ByteArrayOutputStream());
    }

    @InterfaceC15800a
    public static InterfaceC2485c k(int i10) {
        if (i10 >= 0) {
            return l(new ByteArrayOutputStream(i10));
        }
        throw new IllegalArgumentException(String.format("Invalid size: %s", Integer.valueOf(i10)));
    }

    @InterfaceC15800a
    public static InterfaceC2485c l(ByteArrayOutputStream byteArrayOutputStream) {
        return new c((ByteArrayOutputStream) H.E(byteArrayOutputStream));
    }

    @InterfaceC15800a
    public static OutputStream m() {
        return f4760e;
    }

    @I2.a
    @InterfaceC15800a
    public static int n(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        H.E(inputStream);
        H.E(bArr);
        if (i11 < 0) {
            throw new IndexOutOfBoundsException(String.format("len (%s) cannot be negative", Integer.valueOf(i11)));
        }
        H.f0(i10, i10 + i11, bArr.length);
        int i12 = 0;
        while (i12 < i11) {
            int read = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (read == -1) {
                break;
            }
            i12 += read;
        }
        return i12;
    }

    @I2.a
    @C
    @InterfaceC15800a
    public static <T> T o(InputStream inputStream, InterfaceC2486d<T> interfaceC2486d) throws IOException {
        int read;
        H.E(inputStream);
        H.E(interfaceC2486d);
        byte[] d10 = d();
        do {
            read = inputStream.read(d10);
            if (read == -1) {
                break;
            }
        } while (interfaceC2486d.a(d10, 0, read));
        return interfaceC2486d.getResult();
    }

    @InterfaceC15800a
    public static void p(InputStream inputStream, byte[] bArr) throws IOException {
        q(inputStream, bArr, 0, bArr.length);
    }

    @InterfaceC15800a
    public static void q(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        int n10 = n(inputStream, bArr, i10, i11);
        if (n10 == i11) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(81);
        sb2.append("reached end of stream after reading ");
        sb2.append(n10);
        sb2.append(" bytes; ");
        sb2.append(i11);
        sb2.append(" bytes expected");
        throw new EOFException(sb2.toString());
    }

    @InterfaceC15800a
    public static void r(InputStream inputStream, long j10) throws IOException {
        long t10 = t(inputStream, j10);
        if (t10 >= j10) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(100);
        sb2.append("reached end of stream after skipping ");
        sb2.append(t10);
        sb2.append(" bytes; ");
        sb2.append(j10);
        sb2.append(" bytes expected");
        throw new EOFException(sb2.toString());
    }

    public static long s(InputStream inputStream, long j10) throws IOException {
        int available = inputStream.available();
        if (available == 0) {
            return 0L;
        }
        return inputStream.skip(Math.min(available, j10));
    }

    public static long t(InputStream inputStream, long j10) throws IOException {
        byte[] bArr = null;
        long j11 = 0;
        while (j11 < j10) {
            long j12 = j10 - j11;
            long s10 = s(inputStream, j12);
            if (s10 == 0) {
                int min = (int) Math.min(j12, 8192L);
                if (bArr == null) {
                    bArr = new byte[min];
                }
                s10 = inputStream.read(bArr, 0, min);
                if (s10 == -1) {
                    break;
                }
            }
            j11 += s10;
        }
        return j11;
    }

    public static byte[] u(InputStream inputStream) throws IOException {
        H.E(inputStream);
        return w(inputStream, new ArrayDeque(20), 0);
    }

    public static byte[] v(InputStream inputStream, long j10) throws IOException {
        H.p(j10 >= 0, "expectedSize (%s) must be non-negative", j10);
        if (j10 > 2147483639) {
            StringBuilder sb2 = new StringBuilder(62);
            sb2.append(j10);
            sb2.append(" bytes is too large to fit in a byte array");
            throw new OutOfMemoryError(sb2.toString());
        }
        int i10 = (int) j10;
        byte[] bArr = new byte[i10];
        int i11 = i10;
        while (i11 > 0) {
            int i12 = i10 - i11;
            int read = inputStream.read(bArr, i12, i11);
            if (read == -1) {
                return Arrays.copyOf(bArr, i12);
            }
            i11 -= read;
        }
        int read2 = inputStream.read();
        if (read2 == -1) {
            return bArr;
        }
        ArrayDeque arrayDeque = new ArrayDeque(22);
        arrayDeque.add(bArr);
        arrayDeque.add(new byte[]{(byte) read2});
        return w(inputStream, arrayDeque, i10 + 1);
    }

    public static byte[] w(InputStream inputStream, Queue<byte[]> queue, int i10) throws IOException {
        int min = Math.min(8192, Math.max(128, Integer.highestOneBit(i10) * 2));
        while (i10 < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i10);
            byte[] bArr = new byte[min2];
            queue.add(bArr);
            int i11 = 0;
            while (i11 < min2) {
                int read = inputStream.read(bArr, i11, min2 - i11);
                if (read == -1) {
                    return a(queue, i10);
                }
                i11 += read;
                i10 += read;
            }
            min = E2.f.u(min, min < 4096 ? 4 : 2);
        }
        if (inputStream.read() == -1) {
            return a(queue, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    public static class b implements InterfaceC2484b {

        public final DataInput f4761b;

        public b(ByteArrayInputStream byteArrayInputStream) {
            this.f4761b = new DataInputStream(byteArrayInputStream);
        }

        @Override
        public boolean readBoolean() {
            try {
                return this.f4761b.readBoolean();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public byte readByte() {
            try {
                return this.f4761b.readByte();
            } catch (EOFException e10) {
                throw new IllegalStateException(e10);
            } catch (IOException e11) {
                throw new AssertionError(e11);
            }
        }

        @Override
        public char readChar() {
            try {
                return this.f4761b.readChar();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public double readDouble() {
            try {
                return this.f4761b.readDouble();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public float readFloat() {
            try {
                return this.f4761b.readFloat();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public void readFully(byte[] bArr) {
            try {
                this.f4761b.readFully(bArr);
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public int readInt() {
            try {
                return this.f4761b.readInt();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        @CheckForNull
        public String readLine() {
            try {
                return this.f4761b.readLine();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public long readLong() {
            try {
                return this.f4761b.readLong();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public short readShort() {
            try {
                return this.f4761b.readShort();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public String readUTF() {
            try {
                return this.f4761b.readUTF();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public int readUnsignedByte() {
            try {
                return this.f4761b.readUnsignedByte();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public int readUnsignedShort() {
            try {
                return this.f4761b.readUnsignedShort();
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public int skipBytes(int i10) {
            try {
                return this.f4761b.skipBytes(i10);
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }

        @Override
        public void readFully(byte[] bArr, int i10, int i11) {
            try {
                this.f4761b.readFully(bArr, i10, i11);
            } catch (IOException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public static class c implements InterfaceC2485c {

        public final DataOutput f4762b;

        public final ByteArrayOutputStream f4763c;

        public c(ByteArrayOutputStream byteArrayOutputStream) {
            this.f4763c = byteArrayOutputStream;
            this.f4762b = new DataOutputStream(byteArrayOutputStream);
        }

        @Override
        public byte[] toByteArray() {
            return this.f4763c.toByteArray();
        }

        @Override
        public void write(int i10) {
            try {
                this.f4762b.write(i10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeBoolean(boolean z10) {
            try {
                this.f4762b.writeBoolean(z10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeByte(int i10) {
            try {
                this.f4762b.writeByte(i10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeBytes(String str) {
            try {
                this.f4762b.writeBytes(str);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeChar(int i10) {
            try {
                this.f4762b.writeChar(i10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeChars(String str) {
            try {
                this.f4762b.writeChars(str);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeDouble(double d10) {
            try {
                this.f4762b.writeDouble(d10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeFloat(float f10) {
            try {
                this.f4762b.writeFloat(f10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeInt(int i10) {
            try {
                this.f4762b.writeInt(i10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeLong(long j10) {
            try {
                this.f4762b.writeLong(j10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeShort(int i10) {
            try {
                this.f4762b.writeShort(i10);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void writeUTF(String str) {
            try {
                this.f4762b.writeUTF(str);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void write(byte[] bArr) {
            try {
                this.f4762b.write(bArr);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) {
            try {
                this.f4762b.write(bArr, i10, i11);
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public static final class d extends FilterInputStream {

        public long f4764b;

        public long f4765c;

        public d(InputStream inputStream, long j10) {
            super(inputStream);
            this.f4765c = -1L;
            H.E(inputStream);
            H.e(j10 >= 0, "limit must be non-negative");
            this.f4764b = j10;
        }

        @Override
        public int available() throws IOException {
            return (int) Math.min(this.f92730in.available(), this.f4764b);
        }

        @Override
        public synchronized void mark(int i10) {
            this.f92730in.mark(i10);
            this.f4765c = this.f4764b;
        }

        @Override
        public int read() throws IOException {
            if (this.f4764b == 0) {
                return -1;
            }
            int read = this.f92730in.read();
            if (read != -1) {
                this.f4764b--;
            }
            return read;
        }

        @Override
        public synchronized void reset() throws IOException {
            if (!this.f92730in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f4765c == -1) {
                throw new IOException("Mark not set");
            }
            this.f92730in.reset();
            this.f4764b = this.f4765c;
        }

        @Override
        public long skip(long j10) throws IOException {
            long skip = this.f92730in.skip(Math.min(j10, this.f4764b));
            this.f4764b -= skip;
            return skip;
        }

        @Override
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            long j10 = this.f4764b;
            if (j10 == 0) {
                return -1;
            }
            int read = this.f92730in.read(bArr, i10, (int) Math.min(i11, j10));
            if (read != -1) {
                this.f4764b -= read;
            }
            return read;
        }
    }
}
