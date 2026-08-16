package eg;

import java.util.concurrent.atomic.AtomicLong;
import nf.InterfaceC14410f0;
import org.eclipse.jdt.internal.core.JavaElement;
import org.jetbrains.annotations.NotNull;

public final class V {

    @NotNull
    public static final String f85674a = "kotlinx.coroutines.debug";

    @NotNull
    public static final String f85675b = "kotlinx.coroutines.stacktrace.recovery";

    @NotNull
    public static final String f85676c = "auto";

    @NotNull
    public static final String f85677d = "on";

    @NotNull
    public static final String f85678e = "off";

    public static final boolean f85679f = false;

    public static final boolean f85680g;

    public static final boolean f85681h;

    @NotNull
    public static final AtomicLong f85682i;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0037, code lost:
    
        if (r0.equals("on") != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0040, code lost:
    
        if (r0.equals("") != false) goto L23;
     */
    static {
        String d10 = mg.W.d(f85674a);
        if (d10 != null) {
            int hashCode = d10.hashCode();
            if (hashCode != 0) {
                if (hashCode != 3551) {
                    if (hashCode == 109935) {
                    }
                }
                throw new IllegalStateException(("System property 'kotlinx.coroutines.debug' has unrecognized value '" + d10 + JavaElement.JEM_MODULAR_CLASSFILE).toString());
            }
            f85680g = r0;
            f85681h = !r0 && mg.W.f(f85675b, true);
            f85682i = new AtomicLong(0L);
        }
        boolean z10 = false;
        f85680g = z10;
        f85681h = !z10 && mg.W.f(f85675b, true);
        f85682i = new AtomicLong(0L);
    }

    @Ef.f
    public static final void a(Mf.a<Boolean> aVar) {
    }

    public static final boolean b() {
        return f85679f;
    }

    @NotNull
    public static final AtomicLong c() {
        return f85682i;
    }

    public static final boolean d() {
        return f85680g;
    }

    public static final boolean e() {
        return f85681h;
    }

    @InterfaceC14410f0
    public static void f() {
    }

    public static final void g() {
        f85682i.set(0L);
    }
}
