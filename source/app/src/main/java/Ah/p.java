package Ah;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.AbstractC14551y;
import oh.B;
import oh.C0;
import oh.InterfaceC14516g;
import oh.K0;
import oh.M;

public class p extends AbstractC14545v {

    public int f783b;

    public BigInteger f784c;

    public p(int i10, BigInteger bigInteger) {
        this.f783b = i10;
        this.f784c = bigInteger;
    }

    public static p v(Object obj) {
        if (obj instanceof p) {
            return (p) obj;
        }
        if (obj != null) {
            return new p(M.R(obj));
        }
        return null;
    }

    public int g() {
        return this.f783b;
    }

    @Override
    public B r() {
        return new K0(false, this.f783b, (InterfaceC14516g) new C0(u()));
    }

    public final byte[] u() {
        byte[] byteArray = this.f784c.toByteArray();
        if (byteArray[0] != 0) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    public BigInteger x() {
        return this.f784c;
    }

    public p(M m10) {
        this.f783b = m10.g();
        this.f784c = new BigInteger(1, AbstractC14551y.G(m10, false).H());
    }
}
