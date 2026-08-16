package sd;

import qd.InterfaceC15056A;
import qd.InterfaceC15066i;
import qd.InterfaceRunnableC15067j;
import qd.K;
import qd.z;

public class C15275d<T> {

    public final C15274c<T> f109438a;

    public final C15273b<T> f109439b;

    public final z[] f109440c;

    public C15275d(C15274c<T> c15274c, C15273b<T> c15273b, z[] zVarArr) {
        this.f109438a = c15274c;
        this.f109439b = c15273b;
        this.f109440c = zVarArr;
    }

    public C15275d<T> a(C15275d<T> c15275d) {
        z[] zVarArr = this.f109440c;
        z[] zVarArr2 = new z[zVarArr.length + c15275d.f109440c.length];
        System.arraycopy(zVarArr, 0, zVarArr2, 0, zVarArr.length);
        z[] zVarArr3 = c15275d.f109440c;
        System.arraycopy(zVarArr3, 0, zVarArr2, this.f109440c.length, zVarArr3.length);
        return new C15275d<>(this.f109438a, this.f109439b, zVarArr2);
    }

    public C15275d<T> b(InterfaceRunnableC15067j... interfaceRunnableC15067jArr) {
        z[] zVarArr = new z[this.f109440c.length + interfaceRunnableC15067jArr.length];
        for (int i10 = 0; i10 < interfaceRunnableC15067jArr.length; i10++) {
            this.f109439b.a(interfaceRunnableC15067jArr[i10]);
            zVarArr[i10] = interfaceRunnableC15067jArr[i10].R();
        }
        z[] zVarArr2 = this.f109440c;
        System.arraycopy(zVarArr2, 0, zVarArr, interfaceRunnableC15067jArr.length, zVarArr2.length);
        return new C15275d<>(this.f109438a, this.f109439b, zVarArr);
    }

    public InterfaceC15056A c() {
        return this.f109438a.k().i(this.f109440c);
    }

    public C15275d<T> d(InterfaceC15066i<T>... interfaceC15066iArr) {
        return this.f109438a.e(this.f109440c, interfaceC15066iArr);
    }

    public C15275d<T> e(K<T>... kArr) {
        return this.f109438a.f(this.f109440c, kArr);
    }

    public C15275d<T> f(InterfaceC15066i<T>... interfaceC15066iArr) {
        return d(interfaceC15066iArr);
    }

    public C15275d<T> g(K<T>... kArr) {
        return e(kArr);
    }
}
