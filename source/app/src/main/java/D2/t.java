package D2;

import java.io.Flushable;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import v2.InterfaceC15800a;

@v2.c
@p
@InterfaceC15800a
public final class t {

    public static final Logger f4804a = Logger.getLogger(t.class.getName());

    public static void a(Flushable flushable, boolean z10) throws IOException {
        try {
            flushable.flush();
        } catch (IOException e10) {
            if (!z10) {
                throw e10;
            }
            f4804a.log(Level.WARNING, "IOException thrown while flushing Flushable.", (Throwable) e10);
        }
    }

    public static void b(Flushable flushable) {
        try {
            a(flushable, true);
        } catch (IOException e10) {
            f4804a.log(Level.SEVERE, "IOException should not have been thrown.", (Throwable) e10);
        }
    }
}
