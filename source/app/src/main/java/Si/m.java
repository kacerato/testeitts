package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Ti.y;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class m implements I {

    public final y f23448a;

    public final int f23449b;

    public m(y yVar) {
        this.f23448a = yVar;
        this.f23449b = yVar.d().c() * 8;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("KGMAC requires ParametersWithIV");
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        this.f23448a.a(true, new C3331a((C3360o0) w0Var.b(), this.f23449b, a10));
    }

    @Override
    public String b() {
        return this.f23448a.d().b() + "-KGMAC";
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        try {
            return this.f23448a.c(bArr, i10);
        } catch (InvalidCipherTextException e10) {
            throw new IllegalStateException(e10.toString());
        }
    }

    @Override
    public int d() {
        return this.f23449b / 8;
    }

    @Override
    public void reset() {
        this.f23448a.reset();
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        this.f23448a.k(b10);
    }

    public m(y yVar, int i10) {
        this.f23448a = yVar;
        this.f23449b = i10;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        this.f23448a.j(bArr, i10, i11);
    }
}
