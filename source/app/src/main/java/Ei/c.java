package Ei;

import Bi.InterfaceC2390w;
import Bi.InterfaceC2391x;
import Bi.InterfaceC2392y;
import java.io.IOException;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.G0;
import oh.InterfaceC14516g;
import oh.InterfaceC14520i;
import oh.K0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.util.p;

public class c implements InterfaceC2390w {

    public final InterfaceC2392y f5828a;

    public C14549x f5829b;

    public int f5830c;

    public byte[] f5831d;

    public byte[] f5832e;

    public c(InterfaceC2392y interfaceC2392y) {
        this.f5828a = interfaceC2392y;
    }

    @Override
    public int a(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalArgumentException {
        boolean z10;
        int i12 = i11;
        int i13 = i10;
        if (bArr.length - i12 < i13) {
            throw new OutputLengthException("output buffer too small");
        }
        long j10 = i12;
        int f10 = this.f5828a.f();
        if (j10 > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j11 = f10;
        int i14 = (int) (((j10 + j11) - 1) / j11);
        byte[] bArr2 = new byte[this.f5828a.f()];
        int i15 = 0;
        int i16 = 0;
        int i17 = 1;
        while (i16 < i14) {
            InterfaceC2392y interfaceC2392y = this.f5828a;
            byte[] bArr3 = this.f5831d;
            interfaceC2392y.update(bArr3, i15, bArr3.length);
            C14518h c14518h = new C14518h();
            C14518h c14518h2 = new C14518h();
            c14518h2.a(this.f5829b);
            c14518h2.a(new C0(p.k(i17)));
            c14518h.a(new G0(c14518h2));
            if (this.f5832e != null) {
                z10 = true;
                c14518h.a(new K0(true, i15, (InterfaceC14516g) new C0(this.f5832e)));
            } else {
                z10 = true;
            }
            c14518h.a(new K0(z10, 2, new C0(p.k(this.f5830c))));
            try {
                byte[] s10 = new G0(c14518h).s(InterfaceC14520i.f98892a);
                this.f5828a.update(s10, 0, s10.length);
                this.f5828a.c(bArr2, 0);
                if (i12 > f10) {
                    System.arraycopy(bArr2, 0, bArr, i13, f10);
                    i13 += f10;
                    i12 -= f10;
                } else {
                    System.arraycopy(bArr2, 0, bArr, i13, i12);
                }
                i17++;
                i16++;
                i15 = 0;
            } catch (IOException e10) {
                throw new IllegalArgumentException("unable to encode parameter info: " + e10.getMessage());
            }
        }
        this.f5828a.reset();
        return (int) j10;
    }

    public InterfaceC2392y b() {
        return this.f5828a;
    }

    @Override
    public void c(InterfaceC2391x interfaceC2391x) {
        b bVar = (b) interfaceC2391x;
        this.f5829b = bVar.a();
        this.f5830c = bVar.c();
        this.f5831d = bVar.d();
        this.f5832e = bVar.b();
    }
}
