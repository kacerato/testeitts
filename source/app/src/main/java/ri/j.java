package ri;

import Qk.p;
import hi.C13486b;
import java.io.OutputStream;

public class j implements p {

    public final p f109050a;

    public final int f109051b;

    public j(p pVar) {
        this(pVar, 28);
    }

    @Override
    public C13486b a() {
        return this.f109050a.a();
    }

    @Override
    public byte[] b() {
        int i10 = this.f109051b;
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f109050a.b(), 0, bArr, 0, i10);
        return bArr;
    }

    @Override
    public OutputStream getOutputStream() {
        return this.f109050a.getOutputStream();
    }

    public j(p pVar, int i10) {
        this.f109050a = pVar;
        this.f109051b = i10;
    }
}
