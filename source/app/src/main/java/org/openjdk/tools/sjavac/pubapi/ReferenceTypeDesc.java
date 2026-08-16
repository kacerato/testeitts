package org.openjdk.tools.sjavac.pubapi;

import java.io.Serializable;
import org.openjdk.javax.lang.model.type.TypeKind;

public class ReferenceTypeDesc extends TypeDesc implements Serializable {
    private static final long serialVersionUID = 3357616754544796372L;
    String javaType;

    public ReferenceTypeDesc(String str) {
        super(TypeKind.DECLARED);
        this.javaType = str;
    }

    @Override
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return this.javaType.equals(((ReferenceTypeDesc) obj).javaType);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return super.hashCode() ^ this.javaType.hashCode();
    }

    public String toString() {
        return String.format("%s[type: %s]", getClass().getSimpleName(), this.javaType);
    }
}
