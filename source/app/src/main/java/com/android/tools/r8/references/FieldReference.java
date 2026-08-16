package com.android.tools.r8.references;

import b3.s;
import java.util.Objects;

public final class FieldReference {

    static final boolean f56192d = true;

    private final ClassReference f56193a;

    private final String f56194b;

    private final TypeReference f56195c;

    public FieldReference(ClassReference classReference, String str, TypeReference typeReference) {
        boolean z10 = f56192d;
        if (!z10 && classReference == null) {
            throw new AssertionError();
        }
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        if (!z10 && typeReference == null) {
            throw new AssertionError();
        }
        this.f56193a = classReference;
        this.f56194b = str;
        this.f56195c = typeReference;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FieldReference)) {
            return false;
        }
        FieldReference fieldReference = (FieldReference) obj;
        return this.f56193a.equals(fieldReference.f56193a) && this.f56194b.equals(fieldReference.f56194b) && this.f56195c.equals(fieldReference.f56195c);
    }

    public String getFieldName() {
        return this.f56194b;
    }

    public TypeReference getFieldType() {
        return this.f56195c;
    }

    public ClassReference getHolderClass() {
        return this.f56193a;
    }

    public int hashCode() {
        return Objects.hash(this.f56193a, this.f56194b, this.f56195c);
    }

    public String toSourceString() {
        return getFieldType().getTypeName() + " " + getHolderClass().getTypeName() + "." + getFieldName();
    }

    public String toString() {
        ClassReference holderClass = getHolderClass();
        return ((Object) holderClass) + getFieldName() + s.f32937c + getFieldType().getDescriptor();
    }
}
