package D2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@p
@InterfaceC15800a
public final class q extends OutputStream {

    public final int f4789b;

    public final boolean f4790c;

    public final AbstractC2488f f4791d;

    @CheckForNull
    public final File f4792e;

    @J2.a("this")
    public OutputStream f4793f;

    @CheckForNull
    @J2.a("this")
    public c f4794g;

    @CheckForNull
    @J2.a("this")
    public File f4795h;

    public class a extends AbstractC2488f {
        public a() {
        }

        public void finalize() {
            try {
                q.this.f();
            } catch (Throwable th2) {
                th2.printStackTrace(System.err);
            }
        }

        @Override
        public InputStream m() throws IOException {
            return q.this.e();
        }
    }

    public class b extends AbstractC2488f {
        public b() {
        }

        @Override
        public InputStream m() throws IOException {
            return q.this.e();
        }
    }

    public static class c extends ByteArrayOutputStream {
        public c() {
        }

        public byte[] c() {
            return this.buf;
        }

        public int getCount() {
            return this.count;
        }

        public c(a aVar) {
            this();
        }
    }

    public q(int i10) {
        this(i10, false);
    }

    public AbstractC2488f c() {
        return this.f4791d;
    }

    @Override
    public synchronized void close() throws IOException {
        this.f4793f.close();
    }

    @v2.d
    @CheckForNull
    public synchronized File d() {
        return this.f4795h;
    }

    public final synchronized InputStream e() throws IOException {
        if (this.f4795h != null) {
            return new FileInputStream(this.f4795h);
        }
        Objects.requireNonNull(this.f4794g);
        return new ByteArrayInputStream(this.f4794g.c(), 0, this.f4794g.getCount());
    }

    public synchronized void f() throws IOException {
        a aVar = null;
        try {
            close();
            c cVar = this.f4794g;
            if (cVar == null) {
                this.f4794g = new c(aVar);
            } else {
                cVar.reset();
            }
            this.f4793f = this.f4794g;
            File file = this.f4795h;
            if (file != null) {
                this.f4795h = null;
                if (!file.delete()) {
                    String valueOf = String.valueOf(file);
                    StringBuilder sb2 = new StringBuilder(valueOf.length() + 18);
                    sb2.append("Could not delete: ");
                    sb2.append(valueOf);
                    throw new IOException(sb2.toString());
                }
            }
        } catch (Throwable th2) {
            if (this.f4794g == null) {
                this.f4794g = new c(aVar);
            } else {
                this.f4794g.reset();
            }
            this.f4793f = this.f4794g;
            File file2 = this.f4795h;
            if (file2 != null) {
                this.f4795h = null;
                if (!file2.delete()) {
                    String valueOf2 = String.valueOf(file2);
                    StringBuilder sb3 = new StringBuilder(valueOf2.length() + 18);
                    sb3.append("Could not delete: ");
                    sb3.append(valueOf2);
                    throw new IOException(sb3.toString());
                }
            }
            throw th2;
        } finally {
        }
    }

    @Override
    public synchronized void flush() throws IOException {
        this.f4793f.flush();
    }

    @J2.a("this")
    public final void g(int i10) throws IOException {
        c cVar = this.f4794g;
        if (cVar == null || cVar.getCount() + i10 <= this.f4789b) {
            return;
        }
        File createTempFile = File.createTempFile("FileBackedOutputStream", null, this.f4792e);
        if (this.f4790c) {
            createTempFile.deleteOnExit();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(this.f4794g.c(), 0, this.f4794g.getCount());
            fileOutputStream.flush();
            this.f4793f = fileOutputStream;
            this.f4795h = createTempFile;
            this.f4794g = null;
        } catch (IOException e10) {
            createTempFile.delete();
            throw e10;
        }
    }

    @Override
    public synchronized void write(int i10) throws IOException {
        g(1);
        this.f4793f.write(i10);
    }

    public q(int i10, boolean z10) {
        this(i10, z10, null);
    }

    public q(int i10, boolean z10, @CheckForNull File file) {
        this.f4789b = i10;
        this.f4790c = z10;
        this.f4792e = file;
        c cVar = new c(null);
        this.f4794g = cVar;
        this.f4793f = cVar;
        if (z10) {
            this.f4791d = new a();
        } else {
            this.f4791d = new b();
        }
    }

    @Override
    public synchronized void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override
    public synchronized void write(byte[] bArr, int i10, int i11) throws IOException {
        g(i11);
        this.f4793f.write(bArr, i10, i11);
    }
}
