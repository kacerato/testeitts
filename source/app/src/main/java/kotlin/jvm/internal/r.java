package kotlin.jvm.internal;

import java.io.ObjectStreamException;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.jvm.KotlinReflectionNotSupportedError;
import nf.InterfaceC14422l0;

public abstract class r implements Wf.c, Serializable {

    @InterfaceC14422l0(version = "1.1")
    public static final Object NO_RECEIVER = a.f95767b;

    @InterfaceC14422l0(version = "1.4")
    private final boolean isTopLevel;

    @InterfaceC14422l0(version = "1.4")
    private final String name;

    @InterfaceC14422l0(version = "1.4")
    private final Class owner;

    @InterfaceC14422l0(version = "1.1")
    protected final Object receiver;
    private transient Wf.c reflected;

    @InterfaceC14422l0(version = "1.4")
    private final String signature;

    @InterfaceC14422l0(version = "1.2")
    public static class a implements Serializable {

        public static final a f95767b = new a();

        public final Object b() throws ObjectStreamException {
            return f95767b;
        }
    }

    public r() {
        this(NO_RECEIVER);
    }

    @Override
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    @InterfaceC14422l0(version = "1.1")
    public Wf.c compute() {
        Wf.c cVar = this.reflected;
        if (cVar != null) {
            return cVar;
        }
        Wf.c computeReflected = computeReflected();
        this.reflected = computeReflected;
        return computeReflected;
    }

    public abstract Wf.c computeReflected();

    @Override
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    @InterfaceC14422l0(version = "1.1")
    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override
    public String getName() {
        return this.name;
    }

    public Wf.g getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        return this.isTopLevel ? n0.g(cls) : n0.d(cls);
    }

    @Override
    public List<Wf.m> getParameters() {
        return getReflected().getParameters();
    }

    @InterfaceC14422l0(version = "1.1")
    public Wf.c getReflected() {
        Wf.c compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new KotlinReflectionNotSupportedError();
    }

    @Override
    public Wf.r getReturnType() {
        return getReflected().getReturnType();
    }

    public String getSignature() {
        return this.signature;
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public List<Wf.s> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public Wf.v getVisibility() {
        return getReflected().getVisibility();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override
    @InterfaceC14422l0(version = "1.1")
    public boolean isOpen() {
        return getReflected().isOpen();
    }

    @Override
    @InterfaceC14422l0(version = "1.3")
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    @InterfaceC14422l0(version = "1.1")
    public r(Object obj) {
        this(obj, null, null, null, false);
    }

    @InterfaceC14422l0(version = "1.4")
    public r(Object obj, Class cls, String str, String str2, boolean z10) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z10;
    }
}
