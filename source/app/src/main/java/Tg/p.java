package Tg;

import com.tonyodev.fetch2core.FetchErrorStrings;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class p {

    public static final Logger f25033a = Logger.getLogger(p.class.getName());

    public class a implements x {

        public final z f25034b;

        public final OutputStream f25035c;

        public a(z zVar, OutputStream outputStream) {
            this.f25034b = zVar;
            this.f25035c = outputStream;
        }

        @Override
        public z a0() {
            return this.f25034b;
        }

        @Override
        public void close() throws IOException {
            this.f25035c.close();
        }

        @Override
        public void flush() throws IOException {
            this.f25035c.flush();
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            B.b(c3089c.f24985c, 0L, j10);
            while (j10 > 0) {
                this.f25034b.g();
                u uVar = c3089c.f24984b;
                int min = (int) Math.min(j10, uVar.f25063c - uVar.f25062b);
                this.f25035c.write(uVar.f25061a, uVar.f25062b, min);
                int i10 = uVar.f25062b + min;
                uVar.f25062b = i10;
                long j11 = min;
                j10 -= j11;
                c3089c.f24985c -= j11;
                if (i10 == uVar.f25063c) {
                    c3089c.f24984b = uVar.b();
                    v.a(uVar);
                }
            }
        }

        public String toString() {
            return "sink(" + ((Object) this.f25035c) + ")";
        }
    }

    public class b implements y {

        public final z f25036b;

        public final InputStream f25037c;

        public b(z zVar, InputStream inputStream) {
            this.f25036b = zVar;
            this.f25037c = inputStream;
        }

        @Override
        public long K(C3089c c3089c, long j10) throws IOException {
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            if (j10 == 0) {
                return 0L;
            }
            try {
                this.f25036b.g();
                u V10 = c3089c.V(1);
                int read = this.f25037c.read(V10.f25061a, V10.f25063c, (int) Math.min(j10, 8192 - V10.f25063c));
                if (read == -1) {
                    return -1L;
                }
                V10.f25063c += read;
                long j11 = read;
                c3089c.f24985c += j11;
                return j11;
            } catch (AssertionError e10) {
                if (p.e(e10)) {
                    throw new IOException(e10);
                }
                throw e10;
            }
        }

        @Override
        public z a0() {
            return this.f25036b;
        }

        @Override
        public void close() throws IOException {
            this.f25037c.close();
        }

        public String toString() {
            return "source(" + ((Object) this.f25037c) + ")";
        }
    }

    public class c implements x {
        @Override
        public z a0() {
            return z.f25073d;
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void flush() throws IOException {
        }

        @Override
        public void h0(C3089c c3089c, long j10) throws IOException {
            c3089c.skip(j10);
        }
    }

    public class d extends C3087a {

        public final Socket f25038l;

        public d(Socket socket) {
            this.f25038l = socket;
        }

        @Override
        public IOException q(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException(FetchErrorStrings.CONNECTION_TIMEOUT);
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override
        public void v() {
            try {
                this.f25038l.close();
            } catch (AssertionError e10) {
                if (!p.e(e10)) {
                    throw e10;
                }
                p.f25033a.log(Level.WARNING, "Failed to close timed out socket " + ((Object) this.f25038l), (Throwable) e10);
            } catch (Exception e11) {
                p.f25033a.log(Level.WARNING, "Failed to close timed out socket " + ((Object) this.f25038l), (Throwable) e11);
            }
        }
    }

    public static x a(File file) throws FileNotFoundException {
        if (file != null) {
            return g(new FileOutputStream(file, true));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static x b() {
        return new c();
    }

    public static Tg.d c(x xVar) {
        return new s(xVar);
    }

    public static e d(y yVar) {
        return new t(yVar);
    }

    public static boolean e(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static x f(File file) throws FileNotFoundException {
        if (file != null) {
            return g(new FileOutputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static x g(OutputStream outputStream) {
        return h(outputStream, new z());
    }

    public static x h(OutputStream outputStream, z zVar) {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        if (zVar != null) {
            return new a(zVar, outputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static x i(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getOutputStream() == null) {
            throw new IOException("socket's output stream == null");
        }
        C3087a p10 = p(socket);
        return p10.t(h(socket.getOutputStream(), p10));
    }

    @IgnoreJRERequirement
    public static x j(Path path, OpenOption... openOptionArr) throws IOException {
        if (path != null) {
            return g(Files.newOutputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static y k(File file) throws FileNotFoundException {
        if (file != null) {
            return l(new FileInputStream(file));
        }
        throw new IllegalArgumentException("file == null");
    }

    public static y l(InputStream inputStream) {
        return m(inputStream, new z());
    }

    public static y m(InputStream inputStream, z zVar) {
        if (inputStream == null) {
            throw new IllegalArgumentException("in == null");
        }
        if (zVar != null) {
            return new b(zVar, inputStream);
        }
        throw new IllegalArgumentException("timeout == null");
    }

    public static y n(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException("socket == null");
        }
        if (socket.getInputStream() == null) {
            throw new IOException("socket's input stream == null");
        }
        C3087a p10 = p(socket);
        return p10.u(m(socket.getInputStream(), p10));
    }

    @IgnoreJRERequirement
    public static y o(Path path, OpenOption... openOptionArr) throws IOException {
        if (path != null) {
            return l(Files.newInputStream(path, openOptionArr));
        }
        throw new IllegalArgumentException("path == null");
    }

    public static C3087a p(Socket socket) {
        return new d(socket);
    }
}
