package org.openjdk.javax.lang.model.type;

public interface TypeVisitor<R, P> {
    default R visit(TypeMirror typeMirror) {
        return visit(typeMirror, null);
    }

    R visit(TypeMirror typeMirror, P p10);

    R visitArray(ArrayType arrayType, P p10);

    R visitDeclared(DeclaredType declaredType, P p10);

    R visitError(ErrorType errorType, P p10);

    R visitExecutable(ExecutableType executableType, P p10);

    R visitIntersection(IntersectionType intersectionType, P p10);

    R visitNoType(NoType noType, P p10);

    R visitNull(NullType nullType, P p10);

    R visitPrimitive(PrimitiveType primitiveType, P p10);

    R visitTypeVariable(TypeVariable typeVariable, P p10);

    R visitUnion(UnionType unionType, P p10);

    R visitUnknown(TypeMirror typeMirror, P p10);

    R visitWildcard(WildcardType wildcardType, P p10);
}
