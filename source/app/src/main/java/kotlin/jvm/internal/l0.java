package kotlin.jvm.internal;

import nf.InterfaceC14422l0;

public abstract class l0 extends r implements Wf.n {

    public final boolean f95745b;

    public l0() {
        this.f95745b = false;
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Wf.n getReflected() {
        if (this.f95745b) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        return (Wf.n) super.getReflected();
    }

    @Override
    public Wf.c compute() {
        return this.f95745b ? this : super.compute();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l0) {
            l0 l0Var = (l0) obj;
            return getOwner().equals(l0Var.getOwner()) && getName().equals(l0Var.getName()) && getSignature().equals(l0Var.getSignature()) && M.g(getBoundReceiver(), l0Var.getBoundReceiver());
        }
        if (obj instanceof Wf.n) {
            return obj.equals(compute());
        }
        return false;
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean i() {
        return getReflected().i();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean o() {
        return getReflected().o();
    }

    public String toString() {
        Wf.c compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + n0.f95758b;
    }

    @InterfaceC14422l0(version = "1.1")
    public l0(Object obj) {
        super(obj);
        this.f95745b = false;
    }

    @InterfaceC14422l0(version = "1.4")
    public l0(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, (i10 & 1) == 1);
        this.f95745b = (i10 & 2) == 2;
    }
}
