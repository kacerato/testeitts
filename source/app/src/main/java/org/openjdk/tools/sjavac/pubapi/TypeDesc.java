package org.openjdk.tools.sjavac.pubapi;

import java.io.Serializable;
import okhttp3.v;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ErrorType;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.TypeVariable;
import org.openjdk.javax.lang.model.util.SimpleTypeVisitor9;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.util.StringUtils;
import yd.C16181m;

public abstract class TypeDesc implements Serializable {
    private static final long serialVersionUID = -8201634143915519172L;
    TypeKind typeKind;

    public TypeDesc(TypeKind typeKind) {
        this.typeKind = typeKind;
    }

    public static TypeDesc decodeString(String str) {
        String trim = str.trim();
        return trim.endsWith(v.f99450n) ? new ArrayTypeDesc(decodeString(trim.substring(0, trim.length() - 2))) : trim.startsWith(C16181m.f130230g) ? new TypeVarTypeDesc(trim.substring(1)) : trim.matches("boolean|byte|char|double|float|int|long|short|void") ? new PrimitiveTypeDesc(TypeKind.valueOf(StringUtils.toUpperCase(trim))) : new ReferenceTypeDesc(trim);
    }

    public static String encodeAsString(TypeDesc typeDesc) {
        TypeKind typeKind;
        if (typeDesc.typeKind.isPrimitive() || (typeKind = typeDesc.typeKind) == TypeKind.VOID) {
            return StringUtils.toLowerCase(typeDesc.typeKind.toString());
        }
        if (typeKind == TypeKind.ARRAY) {
            return encodeAsString(((ArrayTypeDesc) typeDesc).compTypeDesc) + v.f99450n;
        }
        if (typeKind == TypeKind.TYPEVAR) {
            return C16181m.f130230g + ((TypeVarTypeDesc) typeDesc).identifier;
        }
        if (typeKind == TypeKind.DECLARED) {
            return ((ReferenceTypeDesc) typeDesc).javaType.toString();
        }
        throw new AssertionError((Object) ("Unhandled type: " + ((Object) typeDesc.typeKind)));
    }

    public static TypeDesc fromType(TypeMirror typeMirror) {
        TypeDesc visit = new SimpleTypeVisitor9<TypeDesc, Void>() {
            @Override
            public TypeDesc visitArray(ArrayType arrayType, Void r32) {
                return new ArrayTypeDesc((TypeDesc) arrayType.getComponentType().accept(this, r32));
            }

            @Override
            public TypeDesc visitDeclared(DeclaredType declaredType, Void r22) {
                return new ReferenceTypeDesc(((Type.ClassType) declaredType).tsym.flatName().toString());
            }

            @Override
            public TypeDesc visitError(ErrorType errorType, Void r22) {
                return new ReferenceTypeDesc("<error type>");
            }

            @Override
            public TypeDesc visitNoType(NoType noType, Void r22) {
                return new PrimitiveTypeDesc(TypeKind.VOID);
            }

            @Override
            public TypeDesc visitPrimitive(PrimitiveType primitiveType, Void r22) {
                return new PrimitiveTypeDesc(primitiveType.getKind());
            }

            @Override
            public TypeDesc visitTypeVariable(TypeVariable typeVariable, Void r22) {
                return new TypeVarTypeDesc(typeVariable.toString());
            }
        }.visit(typeMirror);
        if (visit != null) {
            return visit;
        }
        throw new AssertionError((Object) ("Unhandled type mirror: " + ((Object) typeMirror) + " (" + ((Object) typeMirror.getClass()) + ")"));
    }

    public boolean equals(Object obj) {
        if (getClass() != obj.getClass()) {
            return false;
        }
        return this.typeKind.equals(((TypeDesc) obj).typeKind);
    }

    public int hashCode() {
        return this.typeKind.hashCode();
    }
}
