package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class TypeParameterLocator extends PatternLocator {
    protected TypeParameterPattern pattern;

    public TypeParameterLocator(TypeParameterPattern typeParameterPattern) {
        super(typeParameterPattern);
        this.pattern = typeParameterPattern;
    }

    @Override
    public int match(TypeReference typeReference, MatchingNodeSet matchingNodeSet) {
        TypeParameterPattern typeParameterPattern = this.pattern;
        if (typeParameterPattern.findReferences && (typeReference instanceof SingleTypeReference) && matchesName(typeParameterPattern.name, ((SingleTypeReference) typeReference).token)) {
            return matchingNodeSet.addMatch(typeReference, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int matchContainer() {
        return this.pattern.findReferences ? 15 : 6;
    }

    public int matchTypeParameter(TypeVariableBinding typeVariableBinding, boolean z10) {
        Binding binding;
        if (typeVariableBinding == null || (binding = typeVariableBinding.declaringElement) == null) {
            return 1;
        }
        if (binding instanceof ReferenceBinding) {
            if (matchesName(((ReferenceBinding) binding).sourceName, this.pattern.declaringMemberName)) {
                return 3;
            }
        } else if (binding instanceof MethodBinding) {
            MethodBinding methodBinding = (MethodBinding) binding;
            if (matchesName(methodBinding.declaringClass.sourceName, this.pattern.methodDeclaringClassName) && (methodBinding.isConstructor() || matchesName(methodBinding.selector, this.pattern.declaringMemberName))) {
                char[][] cArr = this.pattern.methodArgumentTypes;
                int length = cArr == null ? 0 : cArr.length;
                TypeBinding[] typeBindingArr = methodBinding.parameters;
                if (typeBindingArr == null) {
                    if (length == 0) {
                        return 3;
                    }
                } else if (typeBindingArr.length == length) {
                    for (int i10 = 0; i10 < length; i10++) {
                        if (!matchesName(methodBinding.parameters[i10].shortReadableName(), this.pattern.methodArgumentTypes[i10])) {
                            return 0;
                        }
                    }
                    return 3;
                }
            }
        }
        return 0;
    }

    @Override
    public int referenceType() {
        return 15;
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        TypeParameterPattern typeParameterPattern = this.pattern;
        if (typeParameterPattern.findReferences && (aSTNode instanceof SingleTypeReference)) {
            return resolveLevel(((SingleTypeReference) aSTNode).resolvedType);
        }
        if (typeParameterPattern.findDeclarations && (aSTNode instanceof TypeParameter)) {
            return matchTypeParameter(((TypeParameter) aSTNode).binding, true);
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int match(TypeParameter typeParameter, MatchingNodeSet matchingNodeSet) {
        TypeParameterPattern typeParameterPattern = this.pattern;
        if (typeParameterPattern.findDeclarations && matchesName(typeParameterPattern.name, typeParameter.name)) {
            return matchingNodeSet.addMatch(typeParameter, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (binding instanceof TypeVariableBinding) {
            return matchTypeParameter((TypeVariableBinding) binding, true);
        }
        return 0;
    }
}
