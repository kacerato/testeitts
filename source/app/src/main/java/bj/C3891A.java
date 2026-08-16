package bj;

import Bi.EnumC2383o;
import Bi.InterfaceC2379k;
import Bi.InterfaceC2382n;
import Xi.C3334b0;
import Xi.C3373x;
import Xi.J;

public class C3891A {
    public static InterfaceC2382n a(String str, int i10, InterfaceC2379k interfaceC2379k, boolean z10) {
        return new Hi.c(str, i10, interfaceC2379k, e(z10));
    }

    public static InterfaceC2382n b(String str, C3373x c3373x, boolean z10) {
        return new Hi.c(str, Hi.b.a(c3373x.d().b()), c3373x, e(z10));
    }

    public static InterfaceC2382n c(String str, J j10, boolean z10) {
        return new Hi.c(str, Hi.b.b(j10.d().a()), j10, e(z10));
    }

    public static InterfaceC2382n d(String str, C3334b0 c3334b0, boolean z10) {
        return new Hi.c(str, Hi.b.a(c3334b0.d().b()), c3334b0, e(z10));
    }

    public static EnumC2383o e(boolean z10) {
        return z10 ? EnumC2383o.SIGNING : EnumC2383o.VERIFYING;
    }
}
