package di;

import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14549x;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C12925d extends AbstractC14545v {

    public static final byte[] f84674e = {Opcodes.OPC_ret, -42, -21, Opcodes.OPC_fstore_2, -15, 60, 112, Opcodes.OPC_ixor, Byte.MIN_VALUE, Opcodes.OPC_wide, Opcodes.OPC_fcmpg, 123, Opcodes.OPC_fload_1, 31, Opcodes.OPC_dup2_x2, Opcodes.OPC_lreturn, -10, Opcodes.OPC_pop2, -21, Opcodes.OPC_if_icmple, Opcodes.OPC_checkcast, Opcodes.OPC_lstore, 41, 29, Opcodes.OPC_fstore, -39, 107, -16, Opcodes.OPC_fload_3, -54, Opcodes.OPC_astore_3, 23, -8, -23, Opcodes.OPC_frem, 13, Opcodes.OPC_ifnull, 21, Opcodes.OPC_getfield, Opcodes.OPC_astore, 40, Opcodes.OPC_dcmpl, Opcodes.OPC_swap, 11, Opcodes.OPC_instanceof, -34, Opcodes.OPC_if_icmpgt, 100, Opcodes.OPC_fstore, Opcodes.OPC_putfield, 100, -22, Opcodes.OPC_aload_2, 23, Opcodes.OPC_if_icmpeq, -48, 18, 62, Opcodes.OPC_ldiv, Opcodes.OPC_invokestatic, -6, Opcodes.OPC_multianewarray, 121, 4};

    public C14549x f84675b;

    public C12923b f84676c;

    public byte[] f84677d;

    public C12925d(C12923b c12923b) {
        this.f84677d = f84674e;
        this.f84676c = c12923b;
    }

    public static byte[] v() {
        return org.bouncycastle.util.a.p(f84674e);
    }

    public static C12925d y(Object obj) {
        if (obj instanceof C12925d) {
            return (C12925d) obj;
        }
        if (obj == null) {
            throw new IllegalArgumentException("object parse error");
        }
        E G10 = E.G(obj);
        C12925d c12925d = G10.I(0) instanceof C14549x ? new C12925d(C14549x.K(G10.I(0))) : new C12925d(C12923b.z(G10.I(0)));
        if (G10.size() == 2) {
            byte[] H10 = AbstractC14551y.F(G10.I(1)).H();
            c12925d.f84677d = H10;
            if (H10.length != f84674e.length) {
                throw new IllegalArgumentException("object parse error");
            }
        }
        return c12925d;
    }

    public boolean A() {
        return this.f84675b != null;
    }

    @Override
    public B r() {
        C14518h c14518h = new C14518h(2);
        InterfaceC14516g interfaceC14516g = this.f84675b;
        if (interfaceC14516g == null) {
            interfaceC14516g = this.f84676c;
        }
        c14518h.a(interfaceC14516g);
        if (!org.bouncycastle.util.a.g(this.f84677d, f84674e)) {
            c14518h.a(new C0(this.f84677d));
        }
        return new G0(c14518h);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f84677d);
    }

    public C12923b x() {
        return this.f84676c;
    }

    public C14549x z() {
        return this.f84675b;
    }

    public C12925d(C14549x c14549x) {
        this.f84677d = f84674e;
        this.f84675b = c14549x;
    }

    public C12925d(C14549x c14549x, byte[] bArr) {
        this.f84677d = f84674e;
        this.f84675b = c14549x;
        this.f84677d = org.bouncycastle.util.a.p(bArr);
    }
}
