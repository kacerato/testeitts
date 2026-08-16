package com.github.javaparser.resolution.declarations;

import com.github.javaparser.resolution.types.ResolvedType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

public interface ResolvedMethodLikeDeclaration extends ResolvedDeclaration, ResolvedTypeParametrizable, HasAccessSpecifier {
    ResolvedReferenceTypeDeclaration declaringType();

    @Override
    default Optional<ResolvedTypeParameterDeclaration> findTypeParameter(String name) {
        for (ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration : getTypeParameters()) {
            if (resolvedTypeParameterDeclaration.getName().equals(name)) {
                return Optional.of(resolvedTypeParameterDeclaration);
            }
        }
        return declaringType().findTypeParameter(name);
    }

    default List<ResolvedType> formalParameterTypes() {
        if (getNumberOfParams() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getNumberOfParams(); i10++) {
            arrayList.add(getParam(i10).getType());
        }
        return arrayList;
    }

    default String getClassName() {
        return declaringType().getClassName();
    }

    default ResolvedParameterDeclaration getLastParam() {
        if (getNumberOfParams() != 0) {
            return getParam(getNumberOfParams() - 1);
        }
        throw new UnsupportedOperationException("This method has no typeParametersValues, therefore it has no a last parameter");
    }

    int getNumberOfParams();

    int getNumberOfSpecifiedExceptions();

    default String getPackageName() {
        return declaringType().getPackageName();
    }

    ResolvedParameterDeclaration getParam(int i10);

    default String getQualifiedName() {
        return declaringType().getQualifiedName() + "." + getName();
    }

    default String getQualifiedSignature() {
        return declaringType().getId() + "." + getSignature();
    }

    default String getSignature() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getName());
        sb2.append("(");
        for (int i10 = 0; i10 < getNumberOfParams(); i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append(getParam(i10).describeType());
        }
        sb2.append(")");
        return sb2.toString();
    }

    ResolvedType getSpecifiedException(int index);

    default List<ResolvedType> getSpecifiedExceptions() {
        if (getNumberOfSpecifiedExceptions() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < getNumberOfSpecifiedExceptions(); i10++) {
            arrayList.add(getSpecifiedException(i10));
        }
        return arrayList;
    }

    default boolean hasVariadicParameter() {
        if (getNumberOfParams() == 0) {
            return false;
        }
        return getParam(getNumberOfParams() - 1).isVariadic();
    }
}
