package Yi;

import Bi.H;
import Xi.C3335c;
import Xi.O0;
import Xi.R0;
import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;

public class c implements H {

    public final boolean f30603a;

    public c(boolean z10) {
        this.f30603a = z10;
    }

    @Override
    public C3335c a(InputStream inputStream) throws IOException {
        int i10 = this.f30603a ? 32 : 56;
        byte[] bArr = new byte[i10];
        C13260d.h(inputStream, bArr, 0, i10);
        return this.f30603a ? new O0(bArr, 0) : new R0(bArr, 0);
    }
}
