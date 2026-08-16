package rk;

public class C15193d implements InterfaceC15195f {

    public final int[] f109079a;

    public C15193d(int[] iArr) {
        this.f109079a = org.bouncycastle.util.a.s(iArr);
    }

    @Override
    public int a() {
        return this.f109079a[r0.length - 1];
    }

    @Override
    public int[] b() {
        return org.bouncycastle.util.a.s(this.f109079a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C15193d) {
            return org.bouncycastle.util.a.i(this.f109079a, ((C15193d) obj).f109079a);
        }
        return false;
    }

    public int hashCode() {
        return org.bouncycastle.util.a.w0(this.f109079a);
    }
}
