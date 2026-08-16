package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class W4 extends J4 {

    public static final Logger f62157b = Logger.getLogger(W4.class.getName());

    public static final boolean f62158c = C12244z6.f();

    public static final int f62159d = 0;

    public X4 f62160a;

    public W4() {
        throw null;
    }

    public static int G(int i10) {
        return (352 - (Integer.numberOfLeadingZeros(i10) * 9)) >>> 6;
    }

    public static int a(long j10) {
        return (640 - (Long.numberOfLeadingZeros(j10) * 9)) >>> 6;
    }

    public static int b(String str) {
        int length;
        try {
            length = B6.b(str);
        } catch (zzoq unused) {
            length = str.getBytes(A5.f61885a).length;
        }
        return G(length) + length;
    }

    public static int c(W5 w52) {
        int f10 = w52.f();
        return G(f10) + f10;
    }

    public static int d(W5 w52, InterfaceC12083h6 interfaceC12083h6) {
        int h10 = ((C4) w52).h(interfaceC12083h6);
        return G(h10) + h10;
    }

    @Deprecated
    public static int g(int i10, W5 w52, InterfaceC12083h6 interfaceC12083h6) {
        int G10 = G(i10 << 3);
        return G10 + G10 + ((C4) w52).h(interfaceC12083h6);
    }

    public abstract void A(int i10) throws IOException;

    public abstract void B(long j10) throws IOException;

    public abstract void C(long j10) throws IOException;

    public abstract void D(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void E(String str) throws IOException;

    public abstract int F();

    public final void e() {
        if (F() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public final void f(String str, zzoq zzoqVar) throws IOException {
        f62157b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzoqVar);
        byte[] bytes = str.getBytes(A5.f61885a);
        try {
            int length = bytes.length;
            z(length);
            D(bytes, 0, length);
        } catch (IndexOutOfBoundsException e10) {
            throw new zzlk(e10);
        }
    }

    public abstract void i(int i10, int i11) throws IOException;

    public abstract void j(int i10, int i11) throws IOException;

    public abstract void k(int i10, int i11) throws IOException;

    public abstract void l(int i10, int i11) throws IOException;

    public abstract void m(int i10, long j10) throws IOException;

    public abstract void n(int i10, long j10) throws IOException;

    public abstract void o(int i10, boolean z10) throws IOException;

    public abstract void p(int i10, String str) throws IOException;

    public abstract void q(int i10, S4 s42) throws IOException;

    public abstract void r(S4 s42) throws IOException;

    public abstract void s(byte[] bArr, int i10, int i11) throws IOException;

    public abstract void t(int i10, W5 w52, InterfaceC12083h6 interfaceC12083h6) throws IOException;

    public abstract void u(int i10, W5 w52) throws IOException;

    public abstract void v(int i10, S4 s42) throws IOException;

    public abstract void w(W5 w52) throws IOException;

    public abstract void x(byte b10) throws IOException;

    public abstract void y(int i10) throws IOException;

    public abstract void z(int i10) throws IOException;

    public W4(byte[] bArr) {
    }
}
