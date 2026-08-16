package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;
import org.bouncycastle.util.MemoableResetException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class P extends AbstractC2664w {

    public int f9562r;

    public long f9563s;

    public long f9564t;

    public long f9565u;

    public long f9566v;

    public long f9567w;

    public long f9568x;

    public long f9569y;

    public long f9570z;

    public P(int i10) {
        this(i10, EnumC2383o.ANY);
    }

    public static void A(long j10, byte[] bArr, int i10, int i11) {
        if (i11 > 0) {
            z((int) (j10 >>> 32), bArr, i10, i11);
            if (i11 > 4) {
                z((int) (j10 & 4294967295L), bArr, i10 + 4, i11 - 4);
            }
        }
    }

    public static int B(byte[] bArr) {
        return org.bouncycastle.util.p.a(bArr, bArr.length - 5);
    }

    public static void z(int i10, byte[] bArr, int i11, int i12) {
        int min = Math.min(4, i12);
        while (true) {
            min--;
            if (min < 0) {
                return;
            } else {
                bArr[i11 + min] = (byte) (i10 >>> ((3 - min) * 8));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x007f, code lost:
    
        if (r4 > 10) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void C(int i10) {
        this.f9982f = -3482333909917012819L;
        this.f9983g = 2216346199247487646L;
        this.f9984h = -7364697282686394994L;
        this.f9985i = 65953792586715988L;
        this.f9986j = -816286391624063116L;
        this.f9987k = 4512832404995164602L;
        this.f9988l = -5033199132376557362L;
        this.f9989m = -124578254951840548L;
        update(Opcodes.OPC_aastore);
        update((byte) 72);
        update(Opcodes.OPC_lstore_2);
        update(Opcodes.OPC_aload_3);
        update(Opcodes.OPC_saload);
        update(Opcodes.OPC_daload);
        update((byte) 50);
        update(Opcodes.OPC_laload);
        if (i10 > 100) {
            update((byte) ((i10 / 100) + 48));
            i10 %= 100;
        }
        update((byte) ((i10 / 10) + 48));
        i10 %= 10;
        update((byte) (i10 + 48));
        s();
        this.f9563s = this.f9982f;
        this.f9564t = this.f9983g;
        this.f9565u = this.f9984h;
        this.f9566v = this.f9985i;
        this.f9567w = this.f9986j;
        this.f9568x = this.f9987k;
        this.f9569y = this.f9988l;
        this.f9570z = this.f9989m;
    }

    @Override
    public byte[] a() {
        int t10 = t();
        byte[] bArr = new byte[t10 + 5];
        u(bArr);
        org.bouncycastle.util.p.h(this.f9562r * 8, bArr, t10);
        bArr[t10 + 4] = (byte) this.f9977a.ordinal();
        return bArr;
    }

    @Override
    public String b() {
        return "SHA-512/" + Integer.toString(this.f9562r * 8);
    }

    @Override
    public int c(byte[] bArr, int i10) {
        s();
        A(this.f9982f, bArr, i10, this.f9562r);
        A(this.f9983g, bArr, i10 + 8, this.f9562r - 8);
        A(this.f9984h, bArr, i10 + 16, this.f9562r - 16);
        A(this.f9985i, bArr, i10 + 24, this.f9562r - 24);
        A(this.f9986j, bArr, i10 + 32, this.f9562r - 32);
        A(this.f9987k, bArr, i10 + 40, this.f9562r - 40);
        A(this.f9988l, bArr, i10 + 48, this.f9562r - 48);
        A(this.f9989m, bArr, i10 + 56, this.f9562r - 56);
        reset();
        return this.f9562r;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new P(this);
    }

    @Override
    public int f() {
        return this.f9562r;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        P p10 = (P) nVar;
        if (this.f9562r != p10.f9562r) {
            throw new MemoableResetException("digestLength inappropriate in other");
        }
        super.q(p10);
        this.f9563s = p10.f9563s;
        this.f9564t = p10.f9564t;
        this.f9565u = p10.f9565u;
        this.f9566v = p10.f9566v;
        this.f9567w = p10.f9567w;
        this.f9568x = p10.f9568x;
        this.f9569y = p10.f9569y;
        this.f9570z = p10.f9570z;
    }

    @Override
    public InterfaceC2382n r() {
        return Z.a(this, f() * 8, this.f9977a);
    }

    @Override
    public void reset() {
        super.reset();
        this.f9982f = this.f9563s;
        this.f9983g = this.f9564t;
        this.f9984h = this.f9565u;
        this.f9985i = this.f9566v;
        this.f9986j = this.f9567w;
        this.f9987k = this.f9568x;
        this.f9988l = this.f9569y;
        this.f9989m = this.f9570z;
    }

    public P(int i10, EnumC2383o enumC2383o) {
        if (i10 >= 512) {
            throw new IllegalArgumentException("bitLength cannot be >= 512");
        }
        if (i10 % 8 != 0) {
            throw new IllegalArgumentException("bitLength needs to be a multiple of 8");
        }
        if (i10 == 384) {
            throw new IllegalArgumentException("bitLength cannot be 384 use SHA384 instead");
        }
        this.f9562r = i10 / 8;
        Bi.r.a(r());
        C(this.f9562r * 8);
        reset();
    }

    public P(P p10) {
        super(p10);
        this.f9562r = p10.f9562r;
        Bi.r.a(r());
        j(p10);
    }

    public P(byte[] bArr) {
        this(B(bArr), EnumC2383o.values()[bArr[bArr.length - 1]]);
        Bi.r.a(r());
        y(bArr);
    }
}
