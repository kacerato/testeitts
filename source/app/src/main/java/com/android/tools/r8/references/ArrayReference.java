package com.android.tools.r8.references;

import com.android.tools.r8.internal.AbstractC8552nC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5417Jv0;
import java.util.Objects;

public final class ArrayReference implements TypeReference {

    static final boolean f56187d = true;

    private final int f56188a;

    private final TypeReference f56189b;

    private final String f56190c;

    private ArrayReference(int i10, TypeReference typeReference, String str) {
        if (!f56187d && i10 <= 0) {
            throw new AssertionError();
        }
        this.f56188a = i10;
        this.f56189b = typeReference;
        this.f56190c = str;
    }

    public static ArrayReference a(String str) {
        int i10 = 0;
        while (true) {
            if (i10 >= str.length()) {
                break;
            }
            if (str.charAt(i10) == '[') {
                i10++;
            } else if (i10 > 0) {
                return new ArrayReference(i10, Reference.typeFromDescriptor(str.substring(i10)), str);
            }
        }
        throw new C5417Jv0("Invalid array type descriptor: " + str);
    }

    @Override
    public ArrayReference asArray() {
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
        if (!(obj instanceof ArrayReference)) {
            return false;
        }
        ArrayReference arrayReference = (ArrayReference) obj;
        return this.f56188a == arrayReference.f56188a && this.f56189b.equals(arrayReference.f56189b);
    }

    public TypeReference getBaseType() {
        return this.f56189b;
    }

    @Override
    public String getDescriptor() {
        return this.f56190c;
    }

    public int getDimensions() {
        return this.f56188a;
    }

    public TypeReference getMemberType() {
        return Reference.arrayFromDescriptor(this.f56190c.substring(1));
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f56188a), this.f56189b);
    }

    @Override
    public boolean isArray() {
        return true;
    }

    public static ArrayReference a(TypeReference typeReference, int i10) {
        String descriptor = typeReference.getDescriptor();
        AbstractC8552nC abstractC8552nC = C4932Bl.f39005a;
        StringBuilder sb2 = new StringBuilder();
        for (int i11 = 0; i11 < i10; i11++) {
            sb2.append('[');
        }
        sb2.append(descriptor);
        return new ArrayReference(i10, typeReference, sb2.toString());
    }
}
