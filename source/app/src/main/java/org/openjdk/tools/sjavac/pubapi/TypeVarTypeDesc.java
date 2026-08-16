package org.openjdk.tools.sjavac.pubapi;

import java.io.Serializable;
import org.openjdk.javax.lang.model.type.TypeKind;

public class TypeVarTypeDesc extends TypeDesc implements Serializable {
    private static final long serialVersionUID = 3357616754544796373L;
    String identifier;

    public TypeVarTypeDesc(String str) {
        super(TypeKind.TYPEVAR);
        this.identifier = str;
    }

    @Override
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return this.identifier.equals(((TypeVarTypeDesc) obj).identifier);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return super.hashCode() ^ this.identifier.hashCode();
    }

    public String toString() {
        return String.format("%s[identifier: %s]", getClass().getSimpleName(), this.identifier);
    }
}
