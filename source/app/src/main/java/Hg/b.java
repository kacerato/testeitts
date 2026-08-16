package hg;

import Lf.o;
import Tj.d;
import android.annotation.SuppressLint;
import ig.C13731a;
import ig.g;
import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.Instrumentation;
import java.security.ProtectionDomain;
import kotlin.jvm.internal.M;
import nf.C14416i0;
import nf.C14418j0;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sun.misc.Signal;
import sun.misc.SignalHandler;

@SuppressLint({d.f25405q})
@IgnoreJRERequirement
public final class b {

    @NotNull
    public static final b f90508a = new b();

    public static final boolean f90509b;

    public static final class a implements ClassFileTransformer {

        @NotNull
        public static final a f90510a = new a();

        @Nullable
        public byte[] a(@Nullable ClassLoader classLoader, @NotNull String str, @Nullable Class<?> cls, @NotNull ProtectionDomain protectionDomain, @Nullable byte[] bArr) {
            if (classLoader == null || !M.g(str, "kotlin/coroutines/jvm/internal/DebugProbesKt")) {
                return null;
            }
            C13731a.f92186a.b(true);
            return kotlin.io.a.p(classLoader.getResourceAsStream("DebugProbesKt.bin"));
        }
    }

    static {
        Object b10;
        try {
            C14416i0.a aVar = C14416i0.f98201c;
            String property = System.getProperty("kotlinx.coroutines.debug.enable.creation.stack.trace");
            b10 = C14416i0.b(property != null ? Boolean.valueOf(Boolean.parseBoolean(property)) : null);
        } catch (Throwable th2) {
            C14416i0.a aVar2 = C14416i0.f98201c;
            b10 = C14416i0.b(C14418j0.a(th2));
        }
        Boolean bool = (Boolean) (C14416i0.i(b10) ? null : b10);
        f90509b = bool != null ? bool.booleanValue() : g.f92239a.u();
    }

    public static final void c(Signal signal) {
        g gVar = g.f92239a;
        if (gVar.A()) {
            gVar.f(System.out);
        } else {
            System.out.println((Object) "Cannot perform coroutines dump, debug probes are disabled");
        }
    }

    @o
    public static final void d(@Nullable String str, @NotNull Instrumentation instrumentation) {
        C13731a.f92186a.b(true);
        instrumentation.addTransformer(a.f90510a);
        g gVar = g.f92239a;
        gVar.L(f90509b);
        gVar.y();
        f90508a.b();
    }

    public final void b() {
        try {
            Signal.handle(new Signal("TRAP"), new SignalHandler() {
                public final void a(Signal signal) {
                    b.c(signal);
                }
            });
        } catch (Throwable unused) {
        }
    }
}
