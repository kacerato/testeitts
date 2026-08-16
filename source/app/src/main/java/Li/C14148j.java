package li;

import Qk.p;
import hi.C13478B;
import hi.C13481E;
import hi.C13482F;
import hi.C13499k;
import hi.g0;
import hi.h0;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import oh.AbstractC14551y;
import org.bouncycastle.cert.CertRuntimeException;

public class C14148j {

    public p f96481a;

    public C14148j(p pVar) {
        this.f96481a = pVar;
    }

    public final byte[] a(h0 h0Var) {
        byte[] F10 = h0Var.z().F();
        OutputStream outputStream = this.f96481a.getOutputStream();
        try {
            outputStream.write(F10);
            outputStream.close();
            return this.f96481a.b();
        } catch (IOException e10) {
            throw new CertRuntimeException("unable to calculate identifier: " + e10.getMessage(), e10);
        }
    }

    public C13499k b(h0 h0Var) {
        return new C13499k(a(h0Var));
    }

    public C13499k c(h0 h0Var, C13482F c13482f, BigInteger bigInteger) {
        return new C13499k(a(h0Var), c13482f, bigInteger);
    }

    public C13499k d(C14146h c14146h) {
        return new C13499k(g(c14146h), new C13482F(new C13481E(c14146h.e())), c14146h.i());
    }

    public g0 e(h0 h0Var) {
        return new g0(a(h0Var));
    }

    public g0 f(h0 h0Var) {
        byte[] a10 = a(h0Var);
        byte[] bArr = new byte[8];
        System.arraycopy(a10, a10.length - 8, bArr, 0, 8);
        byte b10 = (byte) (bArr[0] & 15);
        bArr[0] = b10;
        bArr[0] = (byte) (b10 | 64);
        return new g0(bArr);
    }

    public final byte[] g(C14146h c14146h) {
        C13478B b10;
        if (c14146h.o() == 3 && (b10 = c14146h.b(C13478B.f90530f)) != null) {
            return AbstractC14551y.F(b10.A()).H();
        }
        return a(c14146h.m());
    }
}
