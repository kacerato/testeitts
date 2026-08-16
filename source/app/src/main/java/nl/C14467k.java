package nl;

import Li.C2792q;
import Xi.C3360o0;
import Xi.w0;
import nl.l;
import org.bouncycastle.util.p;

public class C14467k {
    public static void a(C14457a c14457a, byte[] bArr, int i10, byte[] bArr2, l.a aVar) {
        byte[] bArr3 = new byte[40];
        for (int i11 = 0; i11 < 32; i11++) {
            bArr3[i11] = bArr2[i11];
        }
        p.J((aVar.f98330c << 59) | aVar.f98328a | (aVar.f98329b << 4), bArr3, 32);
        c14457a.f(bArr, i10, bArr3, 40);
    }

    public static void b(byte[] bArr, int i10, long j10, byte[] bArr2, int i11) {
        C2792q c2792q = new C2792q(12);
        c2792q.a(true, new w0(new C3360o0(bArr2, i11, 32), new byte[8]));
        c2792q.f(bArr, i10, (int) j10, bArr, i10);
    }
}
