package Hj;

import Bi.L;
import android.security.KeyChain;

public class l implements k {

    public final char[] f8519b;

    public final boolean f8520c;

    public l(char[] cArr) {
        this(cArr, false);
    }

    @Override
    public String getAlgorithm() {
        return KeyChain.EXTRA_PKCS12;
    }

    @Override
    public byte[] getEncoded() {
        return (this.f8520c && this.f8519b.length == 0) ? new byte[2] : L.a(this.f8519b);
    }

    @Override
    public String getFormat() {
        return KeyChain.EXTRA_PKCS12;
    }

    public char[] getPassword() {
        return this.f8519b;
    }

    public l(char[] cArr, boolean z10) {
        cArr = cArr == null ? new char[0] : cArr;
        char[] cArr2 = new char[cArr.length];
        this.f8519b = cArr2;
        this.f8520c = z10;
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
    }
}
