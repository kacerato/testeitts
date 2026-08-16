package kotlin.jvm.internal;

import java.lang.constant.ConstantDescs;
import nf.InterfaceC14422l0;

public class H extends r implements F, Wf.h {
    private final int arity;

    public H(int i10) {
        this(i10, r.NO_RECEIVER, null, null, null, 0);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Wf.c computeReflected() {
        return n0.c(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof H) {
            H h10 = (H) obj;
            return getName().equals(h10.getName()) && getSignature().equals(h10.getSignature()) && M.g(getBoundReceiver(), h10.getBoundReceiver()) && M.g(getOwner(), h10.getOwner());
        }
        if (obj instanceof Wf.h) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        Wf.c compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if (ConstantDescs.INIT_NAME.equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + n0.f95758b;
    }

    @InterfaceC14422l0(version = "1.1")
    public H(int i10, Object obj) {
        this(i10, obj, null, null, null, 0);
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Wf.h getReflected() {
        return (Wf.h) super.getReflected();
    }

    @InterfaceC14422l0(version = "1.4")
    public H(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.arity = i10;
    }
}
