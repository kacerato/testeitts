package com.android.tools.r8.internal;

public class XY extends H8 implements InterfaceC8676ny, InterfaceC9911vM {

    public final boolean f45736g;

    public XY(Class cls, String str, String str2, int i10) {
        super(cls, str, str2, (i10 & 1) == 1);
        this.f45736g = false;
    }

    @Override
    public final Object a(Object obj) {
        return b(obj);
    }

    public Object b(Object obj) {
        d();
        throw null;
    }

    public final InterfaceC9911vM c() {
        if (this.f45736g) {
            return this;
        }
        InterfaceC9911vM interfaceC9911vM = this.f40687b;
        if (interfaceC9911vM != null) {
            return interfaceC9911vM;
        }
        InterfaceC9911vM a10 = a();
        this.f40687b = a10;
        return a10;
    }

    public final void d() {
        if (this.f45736g) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        InterfaceC9911vM c10 = c();
        if (c10 == this) {
            throw new SQ();
        }
        ((XY) c10).d();
    }

    public final void e() {
        if (this.f45736g) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        InterfaceC9911vM c10 = c();
        if (c10 == this) {
            throw new SQ();
        }
        ((XY) c10).e();
    }

    public final boolean equals(Object obj) {
        InterfaceC9911vM interfaceC9911vM;
        if (obj == this) {
            return true;
        }
        boolean z10 = obj instanceof XY;
        if (z10) {
            XY xy = (XY) obj;
            if (b().equals(xy.b()) && this.f40689d.equals(xy.f40689d) && this.f40690e.equals(xy.f40690e)) {
                Object obj2 = G8.f40399b;
                if (obj2.equals(obj2)) {
                    return true;
                }
            }
            return false;
        }
        if (!z10) {
            return false;
        }
        if (this.f45736g) {
            interfaceC9911vM = this;
        } else {
            interfaceC9911vM = this.f40687b;
            if (interfaceC9911vM == null) {
                interfaceC9911vM = a();
                this.f40687b = interfaceC9911vM;
            }
        }
        return obj.equals(interfaceC9911vM);
    }

    public final int hashCode() {
        return this.f40690e.hashCode() + ((this.f40689d.hashCode() + (b().hashCode() * 31)) * 31);
    }

    public final String toString() {
        InterfaceC9911vM interfaceC9911vM;
        if (this.f45736g) {
            interfaceC9911vM = this;
        } else {
            interfaceC9911vM = this.f40687b;
            if (interfaceC9911vM == null) {
                interfaceC9911vM = a();
                this.f40687b = interfaceC9911vM;
            }
        }
        if (interfaceC9911vM != this) {
            return interfaceC9911vM.toString();
        }
        return "property " + this.f40689d + kotlin.jvm.internal.n0.f95758b;
    }

    public void a(Integer num, Object obj) {
        e();
        throw null;
    }

    @Override
    public final InterfaceC9911vM a() {
        AbstractC9618te0.f52649a.getClass();
        return this;
    }
}
