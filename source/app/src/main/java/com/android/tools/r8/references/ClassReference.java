package com.android.tools.r8.references;

import com.android.tools.r8.internal.C4932Bl;

public final class ClassReference implements TypeReference {

    private final String f56191a;

    private ClassReference(String str) {
        this.f56191a = str;
    }

    public static ClassReference a(String str) {
        return new ClassReference(str);
    }

    @Override
    public ClassReference asClass() {
        return this;
    }

    @Override
    public PrimitiveReference asPrimitive() {
        return super.asPrimitive();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassReference) {
            return this.f56191a.equals(((ClassReference) obj).f56191a);
        }
        return false;
    }

    public String getBinaryName() {
        return C4932Bl.f(this.f56191a);
    }

    @Override
    public String getDescriptor() {
        return this.f56191a;
    }

    public int hashCode() {
        return this.f56191a.hashCode();
    }

    @Override
    public boolean isClass() {
        return true;
    }

    public String toString() {
        return getDescriptor();
    }
}
