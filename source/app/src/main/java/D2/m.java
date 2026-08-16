package D2;

import java.io.Closeable;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;
import w2.T;

@v2.c
@p
@InterfaceC15800a
public final class m implements Closeable {

    public static final c f4780e;

    @v2.d
    public final c f4781b;

    public final Deque<Closeable> f4782c = new ArrayDeque(4);

    @CheckForNull
    public Throwable f4783d;

    @v2.d
    public static final class a implements c {

        public static final a f4784a = new a();

        @Override
        public void a(Closeable closeable, Throwable th2, Throwable th3) {
            Logger logger = l.f4779a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(closeable);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 42);
            sb2.append("Suppressing exception thrown when closing ");
            sb2.append(valueOf);
            logger.log(level, sb2.toString(), th3);
        }
    }

    @v2.d
    public static final class b implements c {

        public final Method f4785a;

        public b(Method method) {
            this.f4785a = method;
        }

        @CheckForNull
        public static b b() {
            try {
                return new b(Throwable.class.getMethod("addSuppressed", Throwable.class));
            } catch (Throwable unused) {
                return null;
            }
        }

        @Override
        public void a(Closeable closeable, Throwable th2, Throwable th3) {
            if (th2 == th3) {
                return;
            }
            try {
                this.f4785a.invoke(th2, th3);
            } catch (Throwable unused) {
                a.f4784a.a(closeable, th2, th3);
            }
        }
    }

    @v2.d
    public interface c {
        void a(Closeable closeable, Throwable th2, Throwable th3);
    }

    static {
        c b10 = b.b();
        if (b10 == null) {
            b10 = a.f4784a;
        }
        f4780e = b10;
    }

    @v2.d
    public m(c cVar) {
        this.f4781b = (c) H.E(cVar);
    }

    public static m c() {
        return new m(f4780e);
    }

    @Override
    public void close() throws IOException {
        Throwable th2 = this.f4783d;
        while (!this.f4782c.isEmpty()) {
            Closeable removeFirst = this.f4782c.removeFirst();
            try {
                removeFirst.close();
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    this.f4781b.a(removeFirst, th2, th3);
                }
            }
        }
        if (this.f4783d != null || th2 == null) {
            return;
        }
        T.t(th2, IOException.class);
        throw new AssertionError(th2);
    }

    @I2.a
    @C
    public <C extends Closeable> C d(@C C c10) {
        if (c10 != null) {
            this.f4782c.addFirst(c10);
        }
        return c10;
    }

    public RuntimeException e(Throwable th2) throws IOException {
        H.E(th2);
        this.f4783d = th2;
        T.t(th2, IOException.class);
        throw new RuntimeException(th2);
    }

    public <X extends Exception> RuntimeException f(Throwable th2, Class<X> cls) throws IOException, Exception {
        H.E(th2);
        this.f4783d = th2;
        T.t(th2, IOException.class);
        T.t(th2, cls);
        throw new RuntimeException(th2);
    }

    public <X1 extends Exception, X2 extends Exception> RuntimeException g(Throwable th2, Class<X1> cls, Class<X2> cls2) throws IOException, Exception, Exception {
        H.E(th2);
        this.f4783d = th2;
        T.t(th2, IOException.class);
        T.u(th2, cls, cls2);
        throw new RuntimeException(th2);
    }
}
