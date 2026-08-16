package java.lang;

import java.lang.invoke.MethodType;
import java.lang.reflect.Modifier;
import jdk.internal.vm.ContinuationScope;

public class StackFrameInfo extends ClassFrameInfo {
    private String name;
    private Object type;
    private int bci;
    private ContinuationScope contScope;
    private volatile StackTraceElement ste;
    static final boolean $assertionsDisabled;

    private native void expandStackFrameInfo();

    static {
        $assertionsDisabled = !StackFrameInfo.class.desiredAssertionStatus();
    }

    public StackFrameInfo(StackWalker walker) {
        super(walker);
    }

    @Override
    Class<?> declaringClass() {
        return JLIA.getDeclaringClass(this.classOrMemberName);
    }

    @Override
    public String getClassName() {
        return declaringClass().getName();
    }

    @Override
    public String getMethodName() {
        if (this.name == null) {
            expandStackFrameInfo();
            if (!$assertionsDisabled && this.name == null) {
                throw new AssertionError();
            }
        }
        return this.name;
    }

    @Override
    public MethodType getMethodType() {
        ensureRetainClassRefEnabled();
        if (this.type == null) {
            expandStackFrameInfo();
            if (!$assertionsDisabled && this.type == null) {
                throw new AssertionError();
            }
        }
        Object obj = this.type;
        if (obj instanceof MethodType) {
            MethodType mt = (MethodType) obj;
            return mt;
        }
        synchronized (this) {
            Object obj2 = this.type;
            if (obj2 instanceof String) {
                String sig = (String) obj2;
                this.type = JLIA.getMethodType(sig, declaringClass().getClassLoader());
            }
        }
        return (MethodType) this.type;
    }

    @Override
    public String getDescriptor() {
        return getMethodType().descriptorString();
    }

    @Override
    public int getByteCodeIndex() {
        if (isNativeMethod()) {
            return -1;
        }
        return this.bci;
    }

    @Override
    public String getFileName() {
        return toStackTraceElement().getFileName();
    }

    @Override
    public int getLineNumber() {
        if (isNativeMethod()) {
            return -2;
        }
        return toStackTraceElement().getLineNumber();
    }

    @Override
    public boolean isNativeMethod() {
        return Modifier.isNative(this.flags);
    }

    private String getContinuationScopeName() {
        if (this.contScope != null) {
            return this.contScope.getName();
        }
        return null;
    }

    @Override
    public String toString() {
        return toStackTraceElement().toString();
    }

    @Override
    public StackTraceElement toStackTraceElement() {
        StackTraceElement s10 = this.ste;
        if (s10 == null) {
            synchronized (this) {
                s10 = this.ste;
                if (s10 == null) {
                    StackTraceElement of2 = StackTraceElement.of(this);
                    s10 = of2;
                    this.ste = of2;
                }
            }
        }
        return s10;
    }
}
