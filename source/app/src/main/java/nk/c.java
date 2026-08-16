package nk;

import java.math.BigInteger;
import jk.InterfaceC13874d;
import jk.p;
import jk.q;

public abstract class c {

    public static final String f98276a = "bc_endo";

    public class a implements p {

        public final InterfaceC14455a f98277a;

        public final jk.i f98278b;

        public a(InterfaceC14455a interfaceC14455a, jk.i iVar) {
            this.f98277a = interfaceC14455a;
            this.f98278b = iVar;
        }

        @Override
        public q a(q qVar) {
            C14456b c14456b = qVar instanceof C14456b ? (C14456b) qVar : null;
            if (b(c14456b, this.f98277a)) {
                return c14456b;
            }
            jk.i a10 = this.f98277a.c().a(this.f98278b);
            C14456b c14456b2 = new C14456b();
            c14456b2.c(this.f98277a);
            c14456b2.d(a10);
            return c14456b2;
        }

        public final boolean b(C14456b c14456b, InterfaceC14455a interfaceC14455a) {
            return (c14456b == null || c14456b.a() != interfaceC14455a || c14456b.b() == null) ? false : true;
        }
    }

    public static BigInteger a(BigInteger bigInteger, BigInteger bigInteger2, int i10) {
        boolean z10 = bigInteger2.signum() < 0;
        BigInteger multiply = bigInteger.multiply(bigInteger2.abs());
        boolean testBit = multiply.testBit(i10 - 1);
        BigInteger shiftRight = multiply.shiftRight(i10);
        if (testBit) {
            shiftRight = shiftRight.add(InterfaceC13874d.f93854b);
        }
        return z10 ? shiftRight.negate() : shiftRight;
    }

    public static BigInteger[] b(i iVar, BigInteger bigInteger) {
        int b10 = iVar.b();
        BigInteger a10 = a(bigInteger, iVar.c(), b10);
        BigInteger a11 = a(bigInteger, iVar.d(), b10);
        return new BigInteger[]{bigInteger.subtract(a10.multiply(iVar.e()).add(a11.multiply(iVar.g()))), a10.multiply(iVar.f()).add(a11.multiply(iVar.h())).negate()};
    }

    public static jk.i c(InterfaceC14455a interfaceC14455a, jk.i iVar) {
        return ((C14456b) iVar.i().G(iVar, f98276a, new a(interfaceC14455a, iVar))).b();
    }
}
