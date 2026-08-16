package org.openjdk.tools.sjavac.pubapi;

import java.io.Serializable;
import org.openjdk.javax.lang.model.type.TypeKind;

public class ArrayTypeDesc extends TypeDesc implements Serializable {
    private static final long serialVersionUID = -1177329549163314996L;
    TypeDesc compTypeDesc;

    public ArrayTypeDesc(TypeDesc typeDesc) {
        super(TypeKind.ARRAY);
        this.compTypeDesc = typeDesc;
    }

    @Override
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return this.compTypeDesc.equals(((ArrayTypeDesc) obj).compTypeDesc);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return super.hashCode() ^ this.compTypeDesc.hashCode();
    }
}
