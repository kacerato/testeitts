package nf;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;
import org.jetbrains.annotations.NotNull;

public class C14436t {
    @Ef.e
    @InterfaceC14422l0(version = "1.1")
    public static void a(@NotNull Throwable th2, @NotNull Throwable exception) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        kotlin.jvm.internal.M.p(exception, "exception");
        if (th2 != exception) {
            Ef.n.f5775a.a(th2, exception);
        }
    }

    @NotNull
    public static final StackTraceElement[] b(@NotNull Throwable th2) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        StackTraceElement[] stackTrace = th2.getStackTrace();
        kotlin.jvm.internal.M.m(stackTrace);
        return stackTrace;
    }

    public static void c(Throwable th2) {
    }

    @NotNull
    public static final List<Throwable> d(@NotNull Throwable th2) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        return Ef.n.f5775a.d(th2);
    }

    @InterfaceC14422l0(version = "1.4")
    public static void e(Throwable th2) {
    }

    @Ef.f
    public static final void f(Throwable th2) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        th2.printStackTrace();
    }

    @Ef.f
    public static final void g(Throwable th2, PrintStream stream) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        kotlin.jvm.internal.M.p(stream, "stream");
        th2.printStackTrace(stream);
    }

    @Ef.f
    public static final void h(Throwable th2, PrintWriter writer) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        kotlin.jvm.internal.M.p(writer, "writer");
        th2.printStackTrace(writer);
    }

    @InterfaceC14422l0(version = "1.4")
    @NotNull
    public static final String i(@NotNull Throwable th2) {
        kotlin.jvm.internal.M.p(th2, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th2.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        kotlin.jvm.internal.M.o(stringWriter2, "toString(...)");
        return stringWriter2;
    }
}
