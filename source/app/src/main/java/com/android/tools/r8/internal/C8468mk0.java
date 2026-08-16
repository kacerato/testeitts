package com.android.tools.r8.internal;

import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetracedClassReference;
import com.android.tools.r8.retrace.RetracedFieldReference;
import java.util.Objects;

public final class C8468mk0 extends AbstractC8802ok0 implements RetracedFieldReference.KnownRetracedFieldReference {

    public final FieldReference f50410b;

    public C8468mk0(FieldReference fieldReference) {
        this.f50410b = fieldReference;
    }

    @Override
    public final RetracedFieldReference.KnownRetracedFieldReference asKnown() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C8468mk0.class != obj.getClass()) {
            return false;
        }
        return this.f50410b.equals(((C8468mk0) obj).f50410b);
    }

    @Override
    public final String getFieldName() {
        return this.f50410b.getFieldName();
    }

    @Override
    public final FieldReference getFieldReference() {
        return this.f50410b;
    }

    @Override
    public final TypeReference getFieldType() {
        return this.f50410b.getFieldType();
    }

    @Override
    public final RetracedClassReference getHolderClass() {
        return new C8301lk0(true, this.f50410b.getHolderClass());
    }

    public final int hashCode() {
        return Objects.hash(this.f50410b);
    }
}
