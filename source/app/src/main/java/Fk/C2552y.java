package Fk;

import java.util.Arrays;
import oh.AbstractC14545v;
import oh.C0;

public class C2552y extends AbstractC14545v {

    public final byte[] f7191b;

    public C2552y(byte[] bArr) {
        this.f7191b = org.bouncycastle.util.a.p(bArr);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && super.equals(obj)) {
            return Arrays.equals(this.f7191b, ((C2552y) obj).f7191b);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(this.f7191b);
    }

    @Override
    public oh.B r() {
        return new C0(this.f7191b);
    }

    public byte[] u() {
        return org.bouncycastle.util.a.p(this.f7191b);
    }
}
