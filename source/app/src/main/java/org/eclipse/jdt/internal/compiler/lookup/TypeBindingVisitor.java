package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class TypeBindingVisitor {
    private SimpleLookupTable visitedCache;

    public void reset() {
        this.visitedCache = null;
    }

    public boolean visit(ArrayBinding arrayBinding) {
        return true;
    }

    public boolean visit(BaseTypeBinding baseTypeBinding) {
        return true;
    }

    public boolean visit(IntersectionTypeBinding18 intersectionTypeBinding18) {
        return true;
    }

    public boolean visit(ParameterizedTypeBinding parameterizedTypeBinding) {
        return true;
    }

    public boolean visit(PolyTypeBinding polyTypeBinding) {
        return true;
    }

    public boolean visit(RawTypeBinding rawTypeBinding) {
        return true;
    }

    public boolean visit(ReferenceBinding referenceBinding) {
        return true;
    }

    public boolean visit(TypeVariableBinding typeVariableBinding) {
        return true;
    }

    public boolean visit(WildcardBinding wildcardBinding) {
        return true;
    }

    public static void visit(TypeBindingVisitor typeBindingVisitor, ReferenceBinding[] referenceBindingArr) {
        int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            visit(typeBindingVisitor, referenceBindingArr[i10]);
        }
    }

    public static void visit(TypeBindingVisitor typeBindingVisitor, TypeBinding typeBinding) {
        if (typeBinding == null) {
            return;
        }
        SimpleLookupTable simpleLookupTable = typeBindingVisitor.visitedCache;
        if (simpleLookupTable == null) {
            simpleLookupTable = new SimpleLookupTable(3);
            typeBindingVisitor.visitedCache = simpleLookupTable;
        }
        Object obj = simpleLookupTable.get(typeBinding);
        Boolean bool = Boolean.TRUE;
        if (obj == bool) {
            return;
        }
        simpleLookupTable.put(typeBinding, bool);
        switch (typeBinding.kind()) {
            case 4:
            case 2052:
                ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
                if (typeBindingVisitor.visit(referenceBinding)) {
                    visit(typeBindingVisitor, referenceBinding.enclosingType());
                    visit(typeBindingVisitor, (ReferenceBinding[]) referenceBinding.typeVariables());
                    return;
                }
                return;
            case 68:
                ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
                if (typeBindingVisitor.visit(arrayBinding)) {
                    visit(typeBindingVisitor, arrayBinding.leafComponentType);
                    return;
                }
                return;
            case 132:
                typeBindingVisitor.visit((BaseTypeBinding) typeBinding);
                return;
            case 260:
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
                if (typeBindingVisitor.visit(parameterizedTypeBinding)) {
                    visit(typeBindingVisitor, parameterizedTypeBinding.enclosingType());
                    visit(typeBindingVisitor, parameterizedTypeBinding.arguments);
                    return;
                }
                return;
            case 516:
            case 8196:
                WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                if (!typeBindingVisitor.visit(wildcardBinding) || wildcardBinding.boundKind == 0) {
                    return;
                }
                visit(typeBindingVisitor, wildcardBinding.bound);
                visit(typeBindingVisitor, wildcardBinding.otherBounds);
                return;
            case 1028:
                typeBindingVisitor.visit((RawTypeBinding) typeBinding);
                return;
            case 4100:
                TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
                if (typeBindingVisitor.visit(typeVariableBinding)) {
                    visit(typeBindingVisitor, typeVariableBinding.firstBound);
                    visit(typeBindingVisitor, typeVariableBinding.superclass);
                    visit(typeBindingVisitor, typeVariableBinding.superInterfaces);
                    return;
                }
                return;
            case 32772:
                IntersectionTypeBinding18 intersectionTypeBinding18 = (IntersectionTypeBinding18) typeBinding;
                if (typeBindingVisitor.visit(intersectionTypeBinding18)) {
                    visit(typeBindingVisitor, intersectionTypeBinding18.intersectingTypes);
                    return;
                }
                return;
            case 65540:
                typeBindingVisitor.visit((PolyTypeBinding) typeBinding);
                return;
            default:
                throw new InternalError("Unexpected binding type");
        }
    }

    public static void visit(TypeBindingVisitor typeBindingVisitor, TypeBinding[] typeBindingArr) {
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            visit(typeBindingVisitor, typeBindingArr[i10]);
        }
    }
}
