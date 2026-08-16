package D2;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;

@v2.c
@p
@InterfaceC15800a
public final class l {

    @v2.d
    public static final Logger f4779a = Logger.getLogger(l.class.getName());

    public static void a(@CheckForNull Closeable closeable, boolean z10) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException e10) {
            if (!z10) {
                throw e10;
            }
            f4779a.log(Level.WARNING, "IOException thrown while closing Closeable.", (Throwable) e10);
        }
    }

    public static void b(@CheckForNull InputStream inputStream) {
        try {
            a(inputStream, true);
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    public static void c(@CheckForNull Reader reader) {
        try {
            a(reader, true);
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
