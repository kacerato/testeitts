package Si;

import Bi.I;
import Bi.InterfaceC2379k;
import Xi.C3331a;
import Xi.C3360o0;
import Xi.w0;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class i implements I {

    public final Ti.s f23418a;

    public final int f23419b;

    public i(Ti.s sVar) {
        this.f23418a = sVar;
        this.f23419b = 128;
    }

    @Override
    public void a(InterfaceC2379k interfaceC2379k) throws IllegalArgumentException {
        if (!(interfaceC2379k instanceof w0)) {
            throw new IllegalArgumentException("GMAC requires ParametersWithIV");
        }
        w0 w0Var = (w0) interfaceC2379k;
        byte[] a10 = w0Var.a();
        this.f23418a.a(true, new C3331a((C3360o0) w0Var.b(), this.f23419b, a10));
    }

    @Override
    public String b() {
        return this.f23418a.d().b() + "-GMAC";
    }

    @Override
    public int c(byte[] bArr, int i10) throws DataLengthException, IllegalStateException {
        try {
            return this.f23418a.c(bArr, i10);
        } catch (InvalidCipherTextException e10) {
            throw new IllegalStateException(e10.toString());
        }
    }

    @Override
    public int d() {
        return this.f23419b / 8;
    }

    @Override
    public void reset() {
        this.f23418a.reset();
    }

    @Override
    public void update(byte b10) throws IllegalStateException {
        this.f23418a.k(b10);
    }

    public i(Ti.s sVar, int i10) {
        this.f23418a = sVar;
        this.f23419b = i10;
    }

    @Override
    public void update(byte[] bArr, int i10, int i11) throws DataLengthException, IllegalStateException {
        this.f23418a.j(bArr, i10, i11);
    }
}
