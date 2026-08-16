package org.openjdk.javax.lang.model.util;

import java.util.List;
import org.openjdk.javax.lang.model.element.Element;
import org.openjdk.javax.lang.model.element.TypeElement;
import org.openjdk.javax.lang.model.type.ArrayType;
import org.openjdk.javax.lang.model.type.DeclaredType;
import org.openjdk.javax.lang.model.type.ExecutableType;
import org.openjdk.javax.lang.model.type.NoType;
import org.openjdk.javax.lang.model.type.NullType;
import org.openjdk.javax.lang.model.type.PrimitiveType;
import org.openjdk.javax.lang.model.type.TypeKind;
import org.openjdk.javax.lang.model.type.TypeMirror;
import org.openjdk.javax.lang.model.type.WildcardType;

public interface Types {
    Element asElement(TypeMirror typeMirror);

    TypeMirror asMemberOf(DeclaredType declaredType, Element element);

    TypeElement boxedClass(PrimitiveType primitiveType);

    TypeMirror capture(TypeMirror typeMirror);

    boolean contains(TypeMirror typeMirror, TypeMirror typeMirror2);

    List<? extends TypeMirror> directSupertypes(TypeMirror typeMirror);

    TypeMirror erasure(TypeMirror typeMirror);

    ArrayType getArrayType(TypeMirror typeMirror);

    DeclaredType getDeclaredType(TypeElement typeElement, TypeMirror... typeMirrorArr);

    DeclaredType getDeclaredType(DeclaredType declaredType, TypeElement typeElement, TypeMirror... typeMirrorArr);

    NoType getNoType(TypeKind typeKind);

    NullType getNullType();

    PrimitiveType getPrimitiveType(TypeKind typeKind);

    WildcardType getWildcardType(TypeMirror typeMirror, TypeMirror typeMirror2);

    boolean isAssignable(TypeMirror typeMirror, TypeMirror typeMirror2);

    boolean isSameType(TypeMirror typeMirror, TypeMirror typeMirror2);

    boolean isSubsignature(ExecutableType executableType, ExecutableType executableType2);

    boolean isSubtype(TypeMirror typeMirror, TypeMirror typeMirror2);

    PrimitiveType unboxedType(TypeMirror typeMirror);
}
