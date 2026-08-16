package com.github.javaparser.resolution;

import com.github.javaparser.resolution.declarations.ResolvedMethodDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedReferenceTypeDeclaration;
import com.github.javaparser.resolution.declarations.ResolvedTypeParameterDeclaration;
import com.github.javaparser.resolution.types.ResolvedType;
import com.github.javaparser.resolution.types.parametrization.ResolvedTypeParametersMap;
import com.github.javaparser.resolution.types.parametrization.ResolvedTypeParametrized;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public class MethodUsage implements ResolvedTypeParametrized {
    private ResolvedMethodDeclaration declaration;
    private List<ResolvedType> exceptionTypes;
    private List<ResolvedType> paramTypes;
    private ResolvedType returnType;
    private ResolvedTypeParametersMap typeParametersMap;

    public MethodUsage(ResolvedMethodDeclaration declaration) {
        this.paramTypes = new ArrayList();
        this.exceptionTypes = new ArrayList();
        this.typeParametersMap = ResolvedTypeParametersMap.empty();
        this.declaration = declaration;
        this.paramTypes.addAll(declaration.formalParameterTypes());
        this.exceptionTypes.addAll(declaration.getSpecifiedExceptions());
        this.returnType = declaration.getReturnType();
    }

    public ResolvedReferenceTypeDeclaration declaringType() {
        return this.declaration.declaringType();
    }

    public List<ResolvedType> exceptionTypes() {
        return this.exceptionTypes;
    }

    public ResolvedMethodDeclaration getDeclaration() {
        return this.declaration;
    }

    public String getErasedSignature() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getName());
        sb2.append("(");
        for (int i10 = 0; i10 < getNoParams(); i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            ResolvedType erasure = getParamType(i10).erasure();
            if (erasure.isArray() && getDeclaration().getParam(i10).isVariadic()) {
                sb2.append(erasure.asArrayType().getComponentType().describe());
                sb2.append("...");
            } else {
                sb2.append(erasure.describe());
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public String getName() {
        return this.declaration.getName();
    }

    public int getNoParams() {
        return this.paramTypes.size();
    }

    public ResolvedType getParamType(int i10) {
        return this.paramTypes.get(i10);
    }

    public List<ResolvedType> getParamTypes() {
        return this.paramTypes;
    }

    public String getQualifiedSignature() {
        return getDeclaration().declaringType().getQualifiedName() + "." + getSignature();
    }

    public String getSignature() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getName());
        sb2.append("(");
        for (int i10 = 0; i10 < getNoParams(); i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            ResolvedType paramType = getParamType(i10);
            if (paramType.isArray() && getDeclaration().getParam(i10).isVariadic()) {
                sb2.append(paramType.asArrayType().getComponentType().describe());
                sb2.append("...");
            } else {
                sb2.append(paramType.describe());
            }
        }
        sb2.append(")");
        return sb2.toString();
    }

    public boolean isReturnTypeSubstituable(MethodUsage otherMethodUsage) {
        return getDeclaration().isReturnTypeSubstituable(otherMethodUsage.getDeclaration().getReturnType());
    }

    public boolean isSameSignature(MethodUsage otherMethodUsage) {
        return getSignature().equals(otherMethodUsage.getSignature());
    }

    public boolean isSubSignature(MethodUsage otherMethodUsage) {
        return getErasedSignature().equals(otherMethodUsage.getErasedSignature());
    }

    public MethodUsage replaceExceptionType(int i10, ResolvedType replaced) {
        if (i10 < 0 || i10 >= this.exceptionTypes.size()) {
            throw new IllegalArgumentException();
        }
        if (this.exceptionTypes.get(i10) == replaced) {
            return this;
        }
        LinkedList linkedList = new LinkedList(this.exceptionTypes);
        linkedList.set(i10, replaced);
        return new MethodUsage(this.declaration, this.paramTypes, this.returnType, linkedList, this.typeParametersMap);
    }

    public MethodUsage replaceParamType(int i10, ResolvedType replaced) {
        if (i10 < 0 || i10 >= getNoParams()) {
            throw new IllegalArgumentException();
        }
        if (this.paramTypes.get(i10) == replaced) {
            return this;
        }
        LinkedList linkedList = new LinkedList(this.paramTypes);
        linkedList.set(i10, replaced);
        return new MethodUsage(this.declaration, linkedList, this.returnType, this.exceptionTypes, this.typeParametersMap);
    }

    public MethodUsage replaceReturnType(ResolvedType returnType) {
        return returnType == this.returnType ? this : new MethodUsage(this.declaration, this.paramTypes, returnType, this.exceptionTypes, this.typeParametersMap);
    }

    public MethodUsage replaceTypeParameter(ResolvedTypeParameterDeclaration typeParameter, ResolvedType type) {
        if (type == null) {
            throw new IllegalArgumentException();
        }
        MethodUsage methodUsage = new MethodUsage(this.declaration, this.paramTypes, this.returnType, this.exceptionTypes, this.typeParametersMap.toBuilder().setValue(typeParameter, type).build());
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < this.paramTypes.size(); i10++) {
            methodUsage = methodUsage.replaceParamType(i10, this.paramTypes.get(i10).replaceTypeVariables(typeParameter, type, hashMap));
        }
        for (int i11 = 0; i11 < this.exceptionTypes.size(); i11++) {
            methodUsage = methodUsage.replaceExceptionType(i11, this.exceptionTypes.get(i11).replaceTypeVariables(typeParameter, type, hashMap));
        }
        return methodUsage.replaceReturnType(methodUsage.returnType.replaceTypeVariables(typeParameter, type, hashMap));
    }

    public ResolvedType returnType() {
        return this.returnType;
    }

    public String toString() {
        return "MethodUsage{declaration=" + ((Object) this.declaration) + ", paramTypes=" + ((Object) this.paramTypes) + JavaElement.JEM_ANNOTATION;
    }

    @Override
    public ResolvedTypeParametersMap typeParametersMap() {
        return this.typeParametersMap;
    }

    public MethodUsage(ResolvedMethodDeclaration declaration, List<ResolvedType> paramTypes, ResolvedType returnType) {
        this(declaration, paramTypes, returnType, declaration.getSpecifiedExceptions(), ResolvedTypeParametersMap.empty());
    }

    public MethodUsage(ResolvedMethodDeclaration declaration, List<ResolvedType> paramTypes, ResolvedType returnType, List<ResolvedType> exceptionTypes) {
        this(declaration, paramTypes, returnType, exceptionTypes, ResolvedTypeParametersMap.empty());
    }

    private MethodUsage(ResolvedMethodDeclaration declaration, List<ResolvedType> paramTypes, ResolvedType returnType, List<ResolvedType> exceptionTypes, ResolvedTypeParametersMap typeParametersMap) {
        this.paramTypes = new ArrayList();
        new ArrayList();
        this.declaration = declaration;
        this.paramTypes = paramTypes;
        this.returnType = returnType;
        this.exceptionTypes = exceptionTypes;
        this.typeParametersMap = typeParametersMap;
    }
}
