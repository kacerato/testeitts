package z2;

import com.google.common.util.concurrent.C12612g0;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import w2.H;
import w2.z;

@InterfaceC16248e
public class C16249f {

    public static final Logger f130598f = Logger.getLogger(C16249f.class.getName());

    public final String f130599a;

    public final Executor f130600b;

    public final InterfaceC16255l f130601c;

    public final C16256m f130602d;

    public final AbstractC16247d f130603e;

    public static final class a implements InterfaceC16255l {

        public static final a f130604a = new a();

        public static Logger b(C16254k c16254k) {
            String name = C16249f.class.getName();
            String c10 = c16254k.b().c();
            StringBuilder sb2 = new StringBuilder(name.length() + 1 + String.valueOf(c10).length());
            sb2.append(name);
            sb2.append(".");
            sb2.append(c10);
            return Logger.getLogger(sb2.toString());
        }

        public static String c(C16254k c16254k) {
            Method d10 = c16254k.d();
            String name = d10.getName();
            String name2 = d10.getParameterTypes()[0].getName();
            String valueOf = String.valueOf(c16254k.c());
            String valueOf2 = String.valueOf(c16254k.a());
            StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 80 + name2.length() + valueOf.length() + valueOf2.length());
            sb2.append("Exception thrown by subscriber method ");
            sb2.append(name);
            sb2.append('(');
            sb2.append(name2);
            sb2.append(')');
            sb2.append(" on subscriber ");
            sb2.append(valueOf);
            sb2.append(" when dispatching event: ");
            sb2.append(valueOf2);
            return sb2.toString();
        }

        @Override
        public void a(Throwable th2, C16254k c16254k) {
            Logger b10 = b(c16254k);
            Level level = Level.SEVERE;
            if (b10.isLoggable(level)) {
                b10.log(level, c(c16254k), th2);
            }
        }
    }

    public C16249f() {
        this("default");
    }

    public final Executor a() {
        return this.f130600b;
    }

    public void b(Throwable th2, C16254k c16254k) {
        H.E(th2);
        H.E(c16254k);
        try {
            this.f130601c.a(th2, c16254k);
        } catch (Throwable th3) {
            f130598f.log(Level.SEVERE, String.format(Locale.ROOT, "Exception %s thrown while handling exception: %s", th3, th2), th3);
        }
    }

    public final String c() {
        return this.f130599a;
    }

    public void d(Object obj) {
        Iterator<C16253j> f10 = this.f130602d.f(obj);
        if (f10.hasNext()) {
            this.f130603e.a(obj, f10);
        } else {
            if (obj instanceof C16246c) {
                return;
            }
            d(new C16246c(this, obj));
        }
    }

    public void e(Object obj) {
        this.f130602d.h(obj);
    }

    public void f(Object obj) {
        this.f130602d.i(obj);
    }

    public String toString() {
        return z.c(this).s(this.f130599a).toString();
    }

    public C16249f(String str) {
        this(str, C12612g0.c(), AbstractC16247d.d(), a.f130604a);
    }

    public C16249f(InterfaceC16255l interfaceC16255l) {
        this("default", C12612g0.c(), AbstractC16247d.d(), interfaceC16255l);
    }

    public C16249f(String str, Executor executor, AbstractC16247d abstractC16247d, InterfaceC16255l interfaceC16255l) {
        this.f130602d = new C16256m(this);
        this.f130599a = (String) H.E(str);
        this.f130600b = (Executor) H.E(executor);
        this.f130603e = (AbstractC16247d) H.E(abstractC16247d);
        this.f130601c = (InterfaceC16255l) H.E(interfaceC16255l);
    }
}
