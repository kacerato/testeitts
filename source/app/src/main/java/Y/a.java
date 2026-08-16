package Y;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

public final class a {

    public static final int f29653a = 16384;

    public static final AtomicReference<byte[]> f29654b = new AtomicReference<>();

    public static final class b {

        public final int f29658a;

        public final int f29659b;

        public final byte[] f29660c;

        public b(@NonNull byte[] bArr, int i10, int i11) {
            this.f29660c = bArr;
            this.f29658a = i10;
            this.f29659b = i11;
        }
    }

    @NonNull
    public static ByteBuffer a(@NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, com.itsmagic.engine.Engines.Engine.Animation.a.f72595c);
            try {
                fileChannel = randomAccessFile.getChannel();
                MappedByteBuffer load = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return load;
            } catch (Throwable th2) {
                th = th2;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static ByteBuffer b(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f29654b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(andSet);
            if (read < 0) {
                f29654b.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(andSet, 0, read);
        }
    }

    @Nullable
    public static b c(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    @NonNull
    public static byte[] d(@NonNull ByteBuffer byteBuffer) {
        b c10 = c(byteBuffer);
        if (c10 != null && c10.f29658a == 0 && c10.f29659b == c10.f29660c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void e(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws IOException {
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
        }
    }

    @NonNull
    public static InputStream f(@NonNull ByteBuffer byteBuffer) {
        return new C0788a(byteBuffer);
    }

    public static void g(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        b c10 = c(byteBuffer);
        if (c10 != null) {
            byte[] bArr = c10.f29660c;
            int i10 = c10.f29658a;
            outputStream.write(bArr, i10, c10.f29659b + i10);
            return;
        }
        byte[] andSet = f29654b.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int min = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, min);
            outputStream.write(andSet, 0, min);
        }
        f29654b.set(andSet);
    }

    public static class C0788a extends InputStream {

        public static final int f29655d = -1;

        @NonNull
        public final ByteBuffer f29656b;

        public int f29657c = -1;

        public C0788a(@NonNull ByteBuffer byteBuffer) {
            this.f29656b = byteBuffer;
        }

        @Override
        public int available() {
            return this.f29656b.remaining();
        }

        @Override
        public synchronized void mark(int i10) {
            this.f29657c = this.f29656b.position();
        }

        @Override
        public boolean markSupported() {
            return true;
        }

        @Override
        public int read() {
            if (this.f29656b.hasRemaining()) {
                return this.f29656b.get() & 255;
            }
            return -1;
        }

        @Override
        public synchronized void reset() throws IOException {
            int i10 = this.f29657c;
            if (i10 == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f29656b.position(i10);
        }

        @Override
        public long skip(long j10) throws IOException {
            if (!this.f29656b.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j10, available());
            this.f29656b.position((int) (r0.position() + min));
            return min;
        }

        @Override
        public int read(@NonNull byte[] bArr, int i10, int i11) throws IOException {
            if (!this.f29656b.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i11, available());
            this.f29656b.get(bArr, i10, min);
            return min;
        }
    }
}
