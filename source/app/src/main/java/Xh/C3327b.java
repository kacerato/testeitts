package Xh;

import oh.AbstractC14545v;
import oh.C14517g0;
import oh.V0;

public class C3327b extends AbstractC14545v {

    public g[] f28957b;

    public boolean f28958c;

    public C3327b(oh.E e10) {
        this.f28958c = true;
        this.f28957b = new g[e10.size()];
        int i10 = 0;
        while (true) {
            g[] gVarArr = this.f28957b;
            if (i10 == gVarArr.length) {
                this.f28958c = e10 instanceof C14517g0;
                return;
            } else {
                gVarArr[i10] = g.w(e10.I(i10));
                i10++;
            }
        }
    }

    public static C3327b w(Object obj) {
        if (obj instanceof C3327b) {
            return (C3327b) obj;
        }
        if (obj != null) {
            return new C3327b(oh.E.G(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f28958c ? new C14517g0(this.f28957b) : new V0(this.f28957b);
    }

    public final g[] u(g[] gVarArr) {
        int length = gVarArr.length;
        g[] gVarArr2 = new g[length];
        System.arraycopy(gVarArr, 0, gVarArr2, 0, length);
        return gVarArr2;
    }

    public g[] v() {
        return u(this.f28957b);
    }

    public C3327b(g[] gVarArr) {
        this.f28958c = true;
        this.f28957b = u(gVarArr);
    }
}
