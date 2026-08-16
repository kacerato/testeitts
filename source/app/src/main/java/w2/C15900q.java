package w2;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@InterfaceC15894k
@v2.c
public class C15900q implements Closeable {

    public static final String f126356f = "com.google.common.base.internal.Finalizer";

    public final ReferenceQueue<Object> f126358b;

    public final PhantomReference<Object> f126359c;

    public final boolean f126360d;

    public static final Logger f126355e = Logger.getLogger(C15900q.class.getName());

    public static final Method f126357g = e(f(new d(), new a(), new b()));

    public static class a implements c {

        public static final String f126361a = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Guava to your system class path.";

        @Override
        @CheckForNull
        public Class<?> a() {
            try {
                return c(b()).loadClass(C15900q.f126356f);
            } catch (Exception e10) {
                C15900q.f126355e.log(Level.WARNING, f126361a, (Throwable) e10);
                return null;
            }
        }

        public URL b() throws IOException {
            String concat = String.valueOf(C15900q.f126356f.replace('.', '/')).concat(".class");
            URL resource = getClass().getClassLoader().getResource(concat);
            if (resource == null) {
                throw new FileNotFoundException(concat);
            }
            String url = resource.toString();
            if (url.endsWith(concat)) {
                return new URL(resource, url.substring(0, url.length() - concat.length()));
            }
            throw new IOException(url.length() != 0 ? "Unsupported path style: ".concat(url) : new String("Unsupported path style: "));
        }

        public URLClassLoader c(URL url) {
            return new URLClassLoader(new URL[]{url}, null);
        }
    }

    public static class b implements c {
        @Override
        public Class<?> a() {
            try {
                return Class.forName("x2.a");
            } catch (ClassNotFoundException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public interface c {
        @CheckForNull
        Class<?> a();
    }

    public static class d implements c {

        @v2.d
        public static boolean f126362a;

        @Override
        @CheckForNull
        public Class<?> a() {
            if (f126362a) {
                return null;
            }
            try {
                ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
                if (systemClassLoader != null) {
                    try {
                        return systemClassLoader.loadClass(C15900q.f126356f);
                    } catch (ClassNotFoundException unused) {
                    }
                }
                return null;
            } catch (SecurityException unused2) {
                C15900q.f126355e.info("Not allowed to access system class loader.");
                return null;
            }
        }
    }

    public C15900q() {
        boolean z10;
        ReferenceQueue<Object> referenceQueue = new ReferenceQueue<>();
        this.f126358b = referenceQueue;
        PhantomReference<Object> phantomReference = new PhantomReference<>(this, referenceQueue);
        this.f126359c = phantomReference;
        try {
            f126357g.invoke(null, InterfaceC15899p.class, referenceQueue, phantomReference);
            z10 = true;
        } catch (IllegalAccessException e10) {
            throw new AssertionError(e10);
        } catch (Throwable th2) {
            f126355e.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", th2);
            z10 = false;
        }
        this.f126360d = z10;
    }

    public static Method e(Class<?> cls) {
        try {
            return cls.getMethod("startFinalizer", Class.class, ReferenceQueue.class, PhantomReference.class);
        } catch (NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
    }

    public static Class<?> f(c... cVarArr) {
        for (c cVar : cVarArr) {
            Class<?> a10 = cVar.a();
            if (a10 != null) {
                return a10;
            }
        }
        throw new AssertionError();
    }

    @Override
    public void close() {
        this.f126359c.enqueue();
        d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void d() {
        if (this.f126360d) {
            return;
        }
        while (true) {
            Reference<? extends Object> poll = this.f126358b.poll();
            if (poll == 0) {
                return;
            }
            poll.clear();
            try {
                ((InterfaceC15899p) poll).a();
            } catch (Throwable th2) {
                f126355e.log(Level.SEVERE, "Error cleaning up after reference.", th2);
            }
        }
    }
}
