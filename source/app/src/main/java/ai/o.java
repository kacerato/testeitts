package Ai;

import Bi.InterfaceC2379k;
import Qk.r;
import Xi.C3360o0;

public class o {
    public static InterfaceC2379k a(r rVar) {
        if (rVar.b() instanceof InterfaceC2379k) {
            return (InterfaceC2379k) rVar.b();
        }
        if (rVar.b() instanceof byte[]) {
            return new C3360o0((byte[]) rVar.b());
        }
        throw new IllegalArgumentException("unknown generic key type");
    }
}
