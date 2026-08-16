package kotlin.io;

import java.io.InputStream;
import java.nio.charset.Charset;
import kotlin.jvm.internal.M;
import nf.InterfaceC14422l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Lf.j(name = "ConsoleKt")
public final class c {
    @Ef.f
    public static final void a(byte b10) {
        System.out.print(Byte.valueOf(b10));
    }

    @Ef.f
    public static final void b(char c10) {
        System.out.print(c10);
    }

    @Ef.f
    public static final void c(double d10) {
        System.out.print(d10);
    }

    @Ef.f
    public static final void d(float f10) {
        System.out.print(f10);
    }

    @Ef.f
    public static final void e(int i10) {
        System.out.print(i10);
    }

    @Ef.f
    public static final void f(long j10) {
        System.out.print(j10);
    }

    @Ef.f
    public static final void g(Object obj) {
        System.out.print(obj);
    }

    @Ef.f
    public static final void h(short s10) {
        System.out.print(Short.valueOf(s10));
    }

    @Ef.f
    public static final void i(boolean z10) {
        System.out.print(z10);
    }

    @Ef.f
    public static final void j(char[] message) {
        M.p(message, "message");
        System.out.print(message);
    }

    @Ef.f
    public static final void k() {
        System.out.println();
    }

    @Ef.f
    public static final void l(byte b10) {
        System.out.println(Byte.valueOf(b10));
    }

    @Ef.f
    public static final void m(char c10) {
        System.out.println(c10);
    }

    @Ef.f
    public static final void n(double d10) {
        System.out.println(d10);
    }

    @Ef.f
    public static final void o(float f10) {
        System.out.println(f10);
    }

    @Ef.f
    public static final void p(int i10) {
        System.out.println(i10);
    }

    @Ef.f
    public static final void q(long j10) {
        System.out.println(j10);
    }

    @Ef.f
    public static final void r(Object obj) {
        System.out.println(obj);
    }

    @Ef.f
    public static final void s(short s10) {
        System.out.println(Short.valueOf(s10));
    }

    @Ef.f
    public static final void t(boolean z10) {
        System.out.println(z10);
    }

    @Ef.f
    public static final void u(char[] message) {
        M.p(message, "message");
        System.out.println(message);
    }

    @Nullable
    public static final String v() {
        r rVar = r.f95678a;
        InputStream in2 = System.f92798in;
        M.o(in2, "in");
        Charset defaultCharset = Charset.defaultCharset();
        M.o(defaultCharset, "defaultCharset(...)");
        return rVar.d(in2, defaultCharset);
    }

    @InterfaceC14422l0(version = "1.6")
    @NotNull
    public static final String w() {
        String x10 = x();
        if (x10 != null) {
            return x10;
        }
        throw new ReadAfterEOFException("EOF has already been reached");
    }

    @InterfaceC14422l0(version = "1.6")
    @Nullable
    public static final String x() {
        return v();
    }
}
