package hm;

import hm.C13533a;
import java.math.BigInteger;

public class f extends C13533a {
    public f(int i10, byte[] bArr) {
        super(new C13533a.e[]{new C13533a.C1745a(i10, bArr)});
    }

    public f(String str) {
        this(str, 10);
    }

    public f(String str, int i10) {
        super(new C13533a.e[]{new C13533a.C1745a(org.bouncycastle.util.b.c(new BigInteger(str, i10)))});
    }

    public f(byte[] bArr) {
        super(new C13533a.e[]{new C13533a.C1745a(bArr)});
    }
}
