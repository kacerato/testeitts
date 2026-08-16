package com.android.tools.r8.internal;

import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.Reference;

public final class C6670bw extends AbstractC6836cw {

    public final FieldReference f46892a;

    public C6670bw(FieldReference fieldReference) {
        this.f46892a = fieldReference;
    }

    @Override
    public final C6670bw a() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C6670bw.class != obj.getClass()) {
            return false;
        }
        return this.f46892a.equals(((C6670bw) obj).f46892a);
    }

    @Override
    public final ClassReference getHolderClass() {
        return this.f46892a.getHolderClass();
    }

    @Override
    public final String getName() {
        return this.f46892a.getFieldName();
    }

    public final int hashCode() {
        return this.f46892a.hashCode();
    }

    @Override
    public final AbstractC6836cw a(ClassReference classReference) {
        return new C6670bw(Reference.field(classReference, this.f46892a.getFieldName(), this.f46892a.getFieldType()));
    }
}
