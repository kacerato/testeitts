package Ti;

import Bi.InterfaceC2374f;
import Bi.InterfaceC2379k;
import Bi.X;
import Xi.C3360o0;
import Xi.w0;
import Xi.x0;
import Xi.y0;
import org.bouncycastle.crypto.DataLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class q extends X {

    public static final byte[] f25274f = {105, 0, Opcodes.OPC_frem, 34, 100, Opcodes.OPC_jsr_w, 4, Opcodes.OPC_fload_1, Opcodes.OPC_f2d, Opcodes.OPC_astore, -37, Opcodes.OPC_fcmpg, 70, -23, 42, Opcodes.OPC_wide, 24, -2, Opcodes.OPC_ireturn, Opcodes.OPC_lcmp, 0, -19, 7, 18, Opcodes.OPC_checkcast, Opcodes.OPC_i2f, -36, Opcodes.OPC_monitorenter, -17, Opcodes.OPC_astore_1, Opcodes.OPC_ret, Opcodes.OPC_aload_1};

    public final C3096g f25275b;

    public C3360o0 f25276c;

    public long f25277d;

    public boolean f25278e;

    public q(InterfaceC2374f interfaceC2374f) {
        super(interfaceC2374f);
        this.f25277d = 0L;
        this.f25275b = new C3096g(interfaceC2374f, interfaceC2374f.c() * 8);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        this.f25277d = 0L;
        this.f25275b.a(z10, interfaceC2379k);
        this.f25278e = z10;
        if (interfaceC2379k instanceof w0) {
            interfaceC2379k = ((w0) interfaceC2379k).b();
        }
        if (interfaceC2379k instanceof x0) {
            interfaceC2379k = ((x0) interfaceC2379k).a();
        }
        if (interfaceC2379k instanceof y0) {
            interfaceC2379k = ((y0) interfaceC2379k).a();
        }
        this.f25276c = (C3360o0) interfaceC2379k;
    }

    @Override
    public String b() {
        String b10 = this.f25275b.b();
        return b10.substring(0, b10.indexOf(47)) + "/G" + b10.substring(b10.indexOf(47) + 1);
    }

    @Override
    public int c() {
        return this.f25275b.c();
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) throws DataLengthException, IllegalStateException {
        f(bArr, i10, this.f25275b.c(), bArr2, i11);
        return this.f25275b.c();
    }

    @Override
    public byte k(byte b10) {
        long j10 = this.f25277d;
        if (j10 > 0 && j10 % 1024 == 0) {
            InterfaceC2374f d10 = this.f25275b.d();
            d10.a(false, this.f25276c);
            byte[] bArr = new byte[32];
            byte[] bArr2 = f25274f;
            d10.g(bArr2, 0, bArr, 0);
            d10.g(bArr2, 8, bArr, 8);
            d10.g(bArr2, 16, bArr, 16);
            d10.g(bArr2, 24, bArr, 24);
            C3360o0 c3360o0 = new C3360o0(bArr);
            this.f25276c = c3360o0;
            d10.a(true, c3360o0);
            byte[] p10 = this.f25275b.p();
            d10.g(p10, 0, p10, 0);
            this.f25275b.a(this.f25278e, new w0(this.f25276c, p10));
        }
        this.f25277d++;
        return this.f25275b.k(b10);
    }

    @Override
    public void reset() {
        this.f25277d = 0L;
        this.f25275b.reset();
    }
}
