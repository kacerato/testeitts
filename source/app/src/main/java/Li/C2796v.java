package Li;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;

public class C2796v extends C2794t implements InterfaceC2374f {

    public static final int f14266s = 8;

    public int[] f14267o = null;

    public int[] f14268p = null;

    public int[] f14269q = null;

    public boolean f14270r;

    public C2796v() {
        Bi.r.a(new Hi.c(b(), j()));
    }

    private int j() {
        int[] iArr = this.f14267o;
        return (iArr == null || iArr != this.f14269q) ? 112 : 80;
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to DESede init - " + interfaceC2379k.getClass().getName());
        }
        byte[] b10 = ((C3360o0) interfaceC2379k).b();
        if (b10.length != 24 && b10.length != 16) {
            throw new IllegalArgumentException("key size must be 16 or 24 bytes.");
        }
        this.f14270r = z10;
        byte[] bArr = new byte[8];
        System.arraycopy(b10, 0, bArr, 0, 8);
        this.f14267o = i(z10, bArr);
        byte[] bArr2 = new byte[8];
        System.arraycopy(b10, 8, bArr2, 0, 8);
        this.f14268p = i(!z10, bArr2);
        if (b10.length == 24) {
            byte[] bArr3 = new byte[8];
            System.arraycopy(b10, 16, bArr3, 0, 8);
            this.f14269q = i(z10, bArr3);
        } else {
            this.f14269q = this.f14267o;
        }
        Bi.r.a(new Hi.c(b(), j(), interfaceC2379k, x0.a(this.f14270r)));
    }

    @Override
    public String b() {
        return "DESede";
    }

    @Override
    public int c() {
        return 8;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[] iArr = this.f14267o;
        if (iArr == null) {
            throw new IllegalStateException("DESede engine not initialised");
        }
        if (i10 + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        }
        byte[] bArr3 = new byte[8];
        if (this.f14270r) {
            f(iArr, bArr, i10, bArr3, 0);
            f(this.f14268p, bArr3, 0, bArr3, 0);
            f(this.f14269q, bArr3, 0, bArr2, i11);
        } else {
            f(this.f14269q, bArr, i10, bArr3, 0);
            f(this.f14268p, bArr3, 0, bArr3, 0);
            f(this.f14267o, bArr3, 0, bArr2, i11);
        }
        return 8;
    }

    @Override
    public void reset() {
    }
}
