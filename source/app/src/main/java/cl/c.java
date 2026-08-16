package Cl;

import Bi.InterfaceC2392y;
import Bi.a0;

public class c {
    public static byte[] a(InterfaceC2392y interfaceC2392y) {
        int f10 = interfaceC2392y.f();
        byte[] bArr = new byte[f10];
        if (interfaceC2392y instanceof a0) {
            ((a0) interfaceC2392y).e(bArr, 0, f10);
        } else {
            interfaceC2392y.c(bArr, 0);
        }
        return bArr;
    }
}
