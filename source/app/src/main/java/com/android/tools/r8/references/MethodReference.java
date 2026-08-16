package com.android.tools.r8.references;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C7660hs1;
import java.util.List;
import java.util.Objects;

public final class MethodReference {

    static final boolean f56196e = true;

    private final ClassReference f56197a;

    private final String f56198b;

    private final AbstractC7552hC f56199c;

    private final TypeReference f56200d;

    public MethodReference(ClassReference classReference, String str, AbstractC7552hC abstractC7552hC, TypeReference typeReference) {
        boolean z10 = f56196e;
        if (!z10 && classReference == null) {
            throw new AssertionError();
        }
        if (!z10 && str == null) {
            throw new AssertionError();
        }
        this.f56197a = classReference;
        this.f56198b = str;
        this.f56199c = abstractC7552hC;
        this.f56200d = typeReference;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MethodReference)) {
            return false;
        }
        MethodReference methodReference = (MethodReference) obj;
        return this.f56197a.equals(methodReference.f56197a) && this.f56198b.equals(methodReference.f56198b) && this.f56199c.equals(methodReference.f56199c) && Objects.equals(this.f56200d, methodReference.f56200d);
    }

    public List<TypeReference> getFormalTypes() {
        return this.f56199c;
    }

    public ClassReference getHolderClass() {
        return this.f56197a;
    }

    public String getMethodDescriptor() {
        return C10656zq0.a("", getFormalTypes(), new com.android.tools.r8.position.a(), C10656zq0.a.f54549b) + (getReturnType() == null ? "V" : getReturnType().getDescriptor());
    }

    public String getMethodName() {
        return this.f56198b;
    }

    public TypeReference getReturnType() {
        return this.f56200d;
    }

    public int hashCode() {
        return Objects.hash(this.f56197a, this.f56198b, this.f56199c, this.f56200d);
    }

    public String toSourceString() {
        StringBuilder sb2 = new StringBuilder();
        TypeReference typeReference = this.f56200d;
        sb2.append(typeReference == null ? "void" : typeReference.getTypeName());
        sb2.append(" ");
        sb2.append(this.f56197a.getTypeName());
        sb2.append(".");
        sb2.append(this.f56198b);
        sb2.append(C10656zq0.a(", ", getFormalTypes(), new C7660hs1(), C10656zq0.a.f54549b));
        return sb2.toString();
    }

    public String toString() {
        ClassReference holderClass = getHolderClass();
        return ((Object) holderClass) + getMethodName() + getMethodDescriptor();
    }
}
