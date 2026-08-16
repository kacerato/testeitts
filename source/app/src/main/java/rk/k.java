package Rk;

import Bi.InterfaceC2392y;
import hi.C13486b;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.operator.OperatorCreationException;

public class k implements Qk.q {

    public l f22857a = j.f22854b;

    public class a implements Qk.p {

        public final C13486b f22858a;

        public final b f22859b;

        public a(C13486b c13486b, b bVar) {
            this.f22858a = c13486b;
            this.f22859b = bVar;
        }

        @Override
        public C13486b a() {
            return this.f22858a;
        }

        @Override
        public byte[] b() {
            return this.f22859b.c();
        }

        @Override
        public OutputStream getOutputStream() {
            return this.f22859b;
        }
    }

    public static class b extends OutputStream {

        public InterfaceC2392y f22861b;

        public b(InterfaceC2392y interfaceC2392y) {
            this.f22861b = interfaceC2392y;
        }

        public byte[] c() {
            byte[] bArr = new byte[this.f22861b.f()];
            this.f22861b.c(bArr, 0);
            return bArr;
        }

        @Override
        public void write(int i10) throws IOException {
            this.f22861b.update((byte) i10);
        }

        @Override
        public void write(byte[] bArr) throws IOException {
            this.f22861b.update(bArr, 0, bArr.length);
        }

        @Override
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.f22861b.update(bArr, i10, i11);
        }
    }

    @Override
    public Qk.p a(C13486b c13486b) throws OperatorCreationException {
        return new a(c13486b, new b(this.f22857a.a(c13486b)));
    }
}
