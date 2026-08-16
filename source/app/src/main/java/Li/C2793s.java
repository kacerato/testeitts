package Li;

import Bi.InterfaceC2379k;
import Xi.C3360o0;

public class C2793s extends D {
    public static boolean e(byte b10, int i10) {
        return (b10 & (1 << i10)) != 0;
    }

    public static byte[] f(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i10 = 0; i10 != 8; i10++) {
            int i11 = 0;
            int i12 = 0;
            for (int i13 = 0; i13 != 8; i13++) {
                int r10 = org.bouncycastle.util.p.r(bArr, i13 * 4);
                if (e(bArr2[i10], i13)) {
                    i11 += r10;
                } else {
                    i12 += r10;
                }
            }
            byte[] bArr4 = new byte[8];
            org.bouncycastle.util.p.m(i11, bArr4, 0);
            org.bouncycastle.util.p.m(i12, bArr4, 4);
            Ti.q qVar = new Ti.q(new C());
            qVar.a(true, new Xi.w0(new Xi.y0(new C3360o0(bArr), bArr3), bArr4));
            qVar.g(bArr, 0, bArr, 0);
            qVar.g(bArr, 8, bArr, 8);
            qVar.g(bArr, 16, bArr, 16);
            qVar.g(bArr, 24, bArr, 24);
        }
        return bArr;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        C3360o0 c3360o0;
        byte[] bArr;
        if (interfaceC2379k instanceof Xi.x0) {
            interfaceC2379k = ((Xi.x0) interfaceC2379k).a();
        }
        Xi.A0 a02 = (Xi.A0) interfaceC2379k;
        if (a02.a() instanceof Xi.y0) {
            c3360o0 = (C3360o0) ((Xi.y0) a02.a()).a();
            bArr = ((Xi.y0) a02.a()).b();
        } else {
            c3360o0 = (C3360o0) a02.a();
            bArr = null;
        }
        C3360o0 c3360o02 = new C3360o0(f(c3360o0.b(), a02.b(), bArr));
        super.a(z10, bArr != null ? new Xi.A0(new Xi.y0(c3360o02, bArr), a02.b()) : new Xi.A0(c3360o02, a02.b()));
    }
}
