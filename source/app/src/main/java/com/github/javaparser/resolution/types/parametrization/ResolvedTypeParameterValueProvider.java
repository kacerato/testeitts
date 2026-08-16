package com.github.javaparser.resolution.types.parametrization;

import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeTransformer;
import com.github.javaparser.resolution.types.ResolvedWildcard;
import java.util.Optional;

public interface ResolvedTypeParameterValueProvider {
    Optional<ResolvedType> getGenericParameterByName(String name);

    Optional<ResolvedType> typeParamValue(ResolvedTypeParameterDeclaration typeParameterDeclaration);

    default ResolvedType useThisTypeParametersOnTheGivenType(ResolvedType type) {
        if (type.isTypeVariable()) {
            ResolvedTypeParameterDeclaration asTypeParameter = type.asTypeParameter();
            if (asTypeParameter.declaredOnType()) {
                Optional<ResolvedType> typeParamValue = typeParamValue(asTypeParameter);
                if (typeParamValue.isPresent()) {
                    ResolvedType resolvedType = typeParamValue.get();
                    if (resolvedType.isWildcard() && !resolvedType.asWildcard().equals(ResolvedWildcard.UNBOUNDED) && type.equals(resolvedType.asWildcard().getBoundedType())) {
                        return type;
                    }
                    type = resolvedType;
                }
            }
        }
        return (type.isWildcard() && type.asWildcard().isBounded()) ? type.asWildcard().isExtends() ? ResolvedWildcard.extendsBound(useThisTypeParametersOnTheGivenType(type.asWildcard().getBoundedType())) : ResolvedWildcard.superBound(useThisTypeParametersOnTheGivenType(type.asWildcard().getBoundedType())) : type.isReferenceType() ? type.asReferenceType().transformTypeParameters(new ResolvedTypeTransformer() {
            @Override
            public final ResolvedType transform(ResolvedType resolvedType2) {
                return ResolvedTypeParameterValueProvider.this.useThisTypeParametersOnTheGivenType(resolvedType2);
            }
        }) : type;
    }
}
