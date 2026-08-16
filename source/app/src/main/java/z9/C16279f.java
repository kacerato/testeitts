package z9;

import java.util.ArrayDeque;
import ob.b;

public final class C16279f {

    public static boolean f130782c;

    public static final Object f130780a = new Object();

    public static final ArrayDeque<b> f130781b = new ArrayDeque<>();

    public static final ob.b f130783d = new ob.b(new a());

    public class a implements b.a {
        @Override
        public boolean run() {
            boolean z10;
            do {
                synchronized (C16279f.f130780a) {
                    try {
                        b bVar = (b) C16279f.f130781b.poll();
                        if (bVar == null) {
                            boolean unused = C16279f.f130782c = false;
                            return false;
                        }
                        try {
                            z10 = bVar.a();
                        } catch (RuntimeException e10) {
                            e10.printStackTrace();
                            z10 = true;
                        }
                    } finally {
                    }
                }
            } while (!z10);
            synchronized (C16279f.f130780a) {
                try {
                    if (!C16279f.f130781b.isEmpty()) {
                        return true;
                    }
                    boolean unused2 = C16279f.f130782c = false;
                    return false;
                } finally {
                }
            }
        }
    }

    public interface b {
        boolean a();
    }

    public static void d(b job) {
        boolean z10;
        if (job == null) {
            throw new NullPointerException("job can't be null");
        }
        synchronized (f130780a) {
            try {
                f130781b.add(job);
                if (f130782c) {
                    z10 = false;
                } else {
                    z10 = true;
                    f130782c = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            K8.a.J(f130783d);
        }
    }
}
