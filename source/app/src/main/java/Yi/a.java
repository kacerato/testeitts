package Yi;

import Bi.H;
import Xi.C3335c;
import Xi.C3363q;
import Xi.C3366s;
import fm.C13260d;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;

public class a implements H {

    public C3363q f30601a;

    public a(C3363q c3363q) {
        this.f30601a = c3363q;
    }

    @Override
    public C3335c a(InputStream inputStream) throws IOException {
        int bitLength = (this.f30601a.f().bitLength() + 7) / 8;
        byte[] bArr = new byte[bitLength];
        C13260d.h(inputStream, bArr, 0, bitLength);
        return new C3366s(new BigInteger(1, bArr), this.f30601a);
    }
}
