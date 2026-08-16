package com.github.javaparser.resolution.types.parametrization;

import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.ResolvedTypeVariable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import org.eclipse.jdt.internal.core.JavaElement;

public class ResolvedTypeParametersMap {
    private Map<String, ResolvedTypeParameterDeclaration> nameToDeclaration;
    private Map<String, ResolvedType> nameToValue;

    public static class Builder {
        private Map<String, ResolvedTypeParameterDeclaration> nameToDeclaration;
        private Map<String, ResolvedType> nameToValue;

        public ResolvedTypeParametersMap build() {
            return new ResolvedTypeParametersMap(this.nameToValue, this.nameToDeclaration);
        }

        public Builder setValue(ResolvedTypeParameterDeclaration typeParameter, ResolvedType value) {
            String qualifiedName = typeParameter.getQualifiedName();
            this.nameToValue.put(qualifiedName, value);
            this.nameToDeclaration.put(qualifiedName, typeParameter);
            return this;
        }

        public Builder() {
            this.nameToValue = new HashMap();
            this.nameToDeclaration = new HashMap();
        }

        private Builder(Map<String, ResolvedType> nameToValue, Map<String, ResolvedTypeParameterDeclaration> nameToDeclaration) {
            HashMap hashMap = new HashMap();
            this.nameToValue = hashMap;
            hashMap.putAll(nameToValue);
            HashMap hashMap2 = new HashMap();
            this.nameToDeclaration = hashMap2;
            hashMap2.putAll(nameToDeclaration);
        }
    }

    public static ResolvedTypeParametersMap empty() {
        return new Builder().build();
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (!(o10 instanceof ResolvedTypeParametersMap)) {
            return false;
        }
        ResolvedTypeParametersMap resolvedTypeParametersMap = (ResolvedTypeParametersMap) o10;
        return this.nameToValue.equals(resolvedTypeParametersMap.nameToValue) && this.nameToDeclaration.equals(resolvedTypeParametersMap.nameToDeclaration);
    }

    public List<String> getNames() {
        return new ArrayList(this.nameToValue.o());
    }

    public List<ResolvedType> getTypes() {
        return new ArrayList(this.nameToValue.values());
    }

    public ResolvedType getValue(ResolvedTypeParameterDeclaration typeParameter) {
        String qualifiedName = typeParameter.getQualifiedName();
        return this.nameToValue.containsKey(qualifiedName) ? this.nameToValue.get(qualifiedName) : new ResolvedTypeVariable(typeParameter);
    }

    public Optional<ResolvedType> getValueBySignature(String signature) {
        return this.nameToValue.containsKey(signature) ? Optional.of(this.nameToValue.get(signature)) : Optional.empty();
    }

    public int hashCode() {
        return this.nameToValue.hashCode();
    }

    public boolean isEmpty() {
        return this.nameToValue.isEmpty();
    }

    public ResolvedType replaceAll(ResolvedType type) {
        HashMap hashMap = new HashMap();
        for (ResolvedTypeParameterDeclaration resolvedTypeParameterDeclaration : this.nameToDeclaration.values()) {
            type = type.replaceTypeVariables(resolvedTypeParameterDeclaration, getValue(resolvedTypeParameterDeclaration), hashMap);
        }
        return type;
    }

    public Builder toBuilder() {
        return new Builder(this.nameToValue, this.nameToDeclaration);
    }

    public String toString() {
        return "TypeParametersMap{nameToValue=" + ((Object) this.nameToValue) + JavaElement.JEM_ANNOTATION;
    }

    private ResolvedTypeParametersMap(Map<String, ResolvedType> nameToValue, Map<String, ResolvedTypeParameterDeclaration> nameToDeclaration) {
        HashMap hashMap = new HashMap();
        this.nameToValue = hashMap;
        hashMap.putAll(nameToValue);
        HashMap hashMap2 = new HashMap();
        this.nameToDeclaration = hashMap2;
        hashMap2.putAll(nameToDeclaration);
    }
}
