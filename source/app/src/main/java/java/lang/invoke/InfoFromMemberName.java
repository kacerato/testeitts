package java.lang.invoke;

import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

public final class InfoFromMemberName implements MethodHandleInfo {
    private final MemberName member;
    private final int referenceKind;
    static final boolean $assertionsDisabled;

    static {
        $assertionsDisabled = !InfoFromMemberName.class.desiredAssertionStatus();
    }

    public InfoFromMemberName(MethodHandles.Lookup lookup, MemberName member, byte referenceKind) {
        if (!$assertionsDisabled && !member.isResolved() && !member.isMethodHandleInvoke() && !member.isVarHandleMethodInvoke()) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && !member.referenceKindIsConsistentWith(referenceKind)) {
            throw new AssertionError();
        }
        this.member = member;
        this.referenceKind = referenceKind;
    }

    @Override
    public Class<?> getDeclaringClass() {
        return this.member.getDeclaringClass();
    }

    @Override
    public String getName() {
        return this.member.getName();
    }

    @Override
    public MethodType getMethodType() {
        return this.member.getMethodOrFieldType();
    }

    @Override
    public int getModifiers() {
        return this.member.getModifiers();
    }

    @Override
    public int getReferenceKind() {
        return this.referenceKind;
    }

    public String toString() {
        return MethodHandleInfo.toString(getReferenceKind(), getDeclaringClass(), getName(), getMethodType());
    }

    @Override
    public <T extends Member> T reflectAs(Class<T> expected, MethodHandles.Lookup lookup) {
        if ((this.member.isMethodHandleInvoke() || this.member.isVarHandleMethodInvoke()) && !this.member.isVarargs()) {
            throw new IllegalArgumentException("cannot reflect signature polymorphic method");
        }
        try {
            Member mem = reflectUnchecked();
            try {
                Class<?> defc = getDeclaringClass();
                byte refKind = (byte) getReferenceKind();
                lookup.checkAccess(refKind, defc, convertToMemberName(refKind, mem));
                return expected.cast(mem);
            } catch (IllegalAccessException ex) {
                throw new IllegalArgumentException(ex);
            }
        } catch (ReflectiveOperationException ex2) {
            throw new IllegalArgumentException(ex2);
        }
    }

    private Member reflectUnchecked() throws ReflectiveOperationException {
        byte refKind = (byte) getReferenceKind();
        Class<?> defc = getDeclaringClass();
        boolean isPublic = Modifier.isPublic(getModifiers());
        if (MethodHandleNatives.refKindIsMethod(refKind)) {
            if (isPublic) {
                return defc.getMethod(getName(), getMethodType().parameterArray());
            }
            return defc.getDeclaredMethod(getName(), getMethodType().parameterArray());
        }
        if (MethodHandleNatives.refKindIsConstructor(refKind)) {
            if (isPublic) {
                return defc.getConstructor(getMethodType().parameterArray());
            }
            return defc.getDeclaredConstructor(getMethodType().parameterArray());
        }
        if (MethodHandleNatives.refKindIsField(refKind)) {
            if (isPublic) {
                return defc.getField(getName());
            }
            return defc.getDeclaredField(getName());
        }
        throw new IllegalArgumentException("referenceKind=" + ((int) refKind));
    }

    private static MemberName convertToMemberName(byte refKind, Member mem) throws IllegalAccessException {
        if (mem instanceof Method) {
            Method mth = (Method) mem;
            boolean wantSpecial = refKind == 7;
            return new MemberName(mth, wantSpecial);
        }
        if (mem instanceof Constructor) {
            Constructor<?> ctor = (Constructor) mem;
            return new MemberName(ctor);
        }
        if (mem instanceof Field) {
            boolean isSetter = refKind == 3 || refKind == 4;
            return new MemberName((Field) mem, isSetter);
        }
        throw new InternalError(mem.getClass().getName());
    }
}
