package java.lang;

import java.lang.StackWalker;
import jdk.internal.access.JavaLangInvokeAccess;
import jdk.internal.access.SharedSecrets;

public class ClassFrameInfo implements StackWalker.StackFrame {
    static final JavaLangInvokeAccess JLIA = SharedSecrets.getJavaLangInvokeAccess();
    Object classOrMemberName;
    int flags;
    private static final int MEMBER_INFO_FLAGS = 16777215;
    private static final int RETAIN_CLASS_REF_BIT = 134217728;

    public ClassFrameInfo(StackWalker walker) {
        this.flags = walker.retainClassRef ? 134217728 : 0;
    }

    public Class<?> declaringClass() {
        return (Class) this.classOrMemberName;
    }

    public boolean isCallerSensitive() {
        return JLIA.isCallerSensitive(this.flags & 16777215);
    }

    public boolean isHidden() {
        return JLIA.isHiddenMember(this.flags & 16777215);
    }

    @Override
    public String getClassName() {
        return declaringClass().getName();
    }

    @Override
    public Class<?> getDeclaringClass() {
        ensureRetainClassRefEnabled();
        return declaringClass();
    }

    @Override
    public String getMethodName() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int getByteCodeIndex() {
        throw new UnsupportedOperationException();
    }

    @Override
    public String getFileName() {
        throw new UnsupportedOperationException();
    }

    @Override
    public int getLineNumber() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isNativeMethod() {
        throw new UnsupportedOperationException();
    }

    @Override
    public StackTraceElement toStackTraceElement() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        String tags = isHidden() ? " hidden" : "";
        if (isCallerSensitive()) {
            tags = tags + " caller sensitive";
        }
        return declaringClass().getName() + " " + tags;
    }

    boolean retainClassRef() {
        return (this.flags & 134217728) == 134217728;
    }

    public void ensureRetainClassRefEnabled() {
        if (!retainClassRef()) {
            throw new UnsupportedOperationException("No access to RETAIN_CLASS_REFERENCE");
        }
    }
}
