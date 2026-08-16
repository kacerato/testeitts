package org.openjdk.tools.sjavac.pubapi;

import java.io.Serializable;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.tools.javac.util.StringUtils;

public class PrimitiveTypeDesc extends TypeDesc implements Serializable {
    private static final long serialVersionUID = 6051065543149129106L;

    public PrimitiveTypeDesc(TypeKind typeKind) {
        super(typeKind);
        if (!typeKind.isPrimitive() && typeKind != TypeKind.VOID) {
            throw new IllegalArgumentException("Only primitives or void accepted");
        }
    }

    public String toString() {
        return StringUtils.toLowerCase(this.typeKind.toString());
    }
}
