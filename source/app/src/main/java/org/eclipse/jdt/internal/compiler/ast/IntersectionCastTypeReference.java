package org.eclipse.jdt.internal.compiler.ast;

import java.util.HashMap;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class IntersectionCastTypeReference extends TypeReference {
    public TypeReference[] typeReferences;

    public IntersectionCastTypeReference(TypeReference[] typeReferenceArr) {
        this.typeReferences = typeReferenceArr;
        this.sourceStart = typeReferenceArr[0].sourceStart;
        this.sourceEnd = typeReferenceArr[typeReferenceArr.length - 1].sourceEnd;
        for (TypeReference typeReference : typeReferenceArr) {
            if ((typeReference.bits & 1048576) != 0) {
                this.bits |= 1048576;
                return;
            }
        }
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        throw new UnsupportedOperationException();
    }

    @Override
    public char[] getLastToken() {
        return null;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        return null;
    }

    @Override
    public char[][] getTypeName() {
        return this.typeReferences[0].getTypeName();
    }

    @Override
    public TypeReference[] getTypeReferences() {
        return this.typeReferences;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        TypeReference[] typeReferenceArr = this.typeReferences;
        int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
        ASTNode.printIndent(i10, stringBuffer);
        for (int i11 = 0; i11 < length; i11++) {
            this.typeReferences[i11].printExpression(0, stringBuffer);
            if (i11 != length - 1) {
                stringBuffer.append(" & ");
            }
        }
        return stringBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e4 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding referenceBinding;
        int i11;
        int i12;
        int i13;
        int length = this.typeReferences.length;
        ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
        int i14 = 0;
        int i15 = 0;
        boolean z11 = false;
        int i16 = 0;
        while (i15 < length) {
            TypeReference typeReference = this.typeReferences[i15];
            TypeBinding resolveType = typeReference.resolveType(blockScope, z10, i10);
            if (resolveType != null && (resolveType.tagBits & 128) == 0) {
                if (i15 != 0) {
                    if (!resolveType.isInterface()) {
                        blockScope.problemReporter().boundMustBeAnInterface(typeReference, resolveType);
                    }
                    i13 = 0;
                    while (true) {
                        if (i13 < i16) {
                        }
                        i13++;
                    }
                } else if (resolveType.isBaseType()) {
                    blockScope.problemReporter().onlyReferenceTypesInIntersectionCast(typeReference);
                } else {
                    if (resolveType.isArrayType()) {
                        blockScope.problemReporter().illegalArrayTypeInIntersectionCast(typeReference);
                    }
                    i13 = 0;
                    while (true) {
                        if (i13 < i16) {
                            referenceBindingArr2[i16] = (ReferenceBinding) resolveType;
                            i16++;
                            break;
                        }
                        ReferenceBinding referenceBinding2 = referenceBindingArr2[i13];
                        if (TypeBinding.equalsEquals(referenceBinding2, resolveType)) {
                            blockScope.problemReporter().duplicateBoundInIntersectionCast(typeReference);
                            z11 = true;
                        } else if (!referenceBinding2.isInterface()) {
                            continue;
                        } else {
                            if (TypeBinding.equalsEquals(resolveType.findSuperTypeOriginatingFrom(referenceBinding2), referenceBinding2)) {
                                referenceBindingArr2[i13] = (ReferenceBinding) resolveType;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding2.findSuperTypeOriginatingFrom(resolveType), resolveType)) {
                                break;
                            }
                        }
                        i13++;
                    }
                }
                i15++;
                i14 = 0;
            }
            z11 = true;
            i15++;
            i14 = 0;
        }
        if (z11) {
            return null;
        }
        if (i16 != length) {
            if (i16 == 1) {
                ReferenceBinding referenceBinding3 = referenceBindingArr2[i14];
                this.resolvedType = referenceBinding3;
                return referenceBinding3;
            }
            ReferenceBinding[] referenceBindingArr3 = new ReferenceBinding[i16];
            System.arraycopy(referenceBindingArr2, i14, referenceBindingArr3, i14, i16);
            referenceBindingArr2 = referenceBindingArr3;
        }
        IntersectionTypeBinding18 intersectionTypeBinding18 = (IntersectionTypeBinding18) blockScope.environment().createIntersectionType18(referenceBindingArr2);
        ReferenceBinding referenceBinding4 = referenceBindingArr2[i14];
        if (referenceBinding4.isClass()) {
            ReferenceBinding superclass = referenceBinding4.superclass();
            int i17 = i16 - 1;
            ReferenceBinding[] referenceBindingArr4 = new ReferenceBinding[i17];
            System.arraycopy(referenceBindingArr2, 1, referenceBindingArr4, i14, i17);
            referenceBinding = superclass;
            referenceBindingArr = referenceBindingArr4;
        } else {
            referenceBindingArr = referenceBindingArr2;
            referenceBinding = null;
        }
        HashMap hashMap = new HashMap(2);
        int length2 = referenceBindingArr.length;
        int i18 = i14;
        while (i18 < length2) {
            ReferenceBinding referenceBinding5 = referenceBindingArr[i18];
            if (referenceBinding5 == null) {
                i11 = i18;
            } else {
                if (referenceBinding != null) {
                    i11 = i18;
                    if (blockScope.hasErasedCandidatesCollisions(referenceBinding, referenceBinding5, hashMap, intersectionTypeBinding18, this)) {
                    }
                } else {
                    i11 = i18;
                }
                int i19 = 0;
                while (i19 < i11) {
                    ReferenceBinding referenceBinding6 = referenceBindingArr[i19];
                    if (referenceBinding6 == null) {
                        i12 = i19;
                    } else {
                        i12 = i19;
                        if (blockScope.hasErasedCandidatesCollisions(referenceBinding5, referenceBinding6, hashMap, intersectionTypeBinding18, this)) {
                            break;
                        }
                    }
                    i19 = i12 + 1;
                }
            }
            i18 = i11 + 1;
        }
        if ((intersectionTypeBinding18.tagBits & 131072) != 0) {
            return null;
        }
        this.resolvedType = intersectionTypeBinding18;
        return intersectionTypeBinding18;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            TypeReference[] typeReferenceArr = this.typeReferences;
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.typeReferences[i10].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        throw new UnsupportedOperationException("Unexpected traversal request: IntersectionTypeReference in class scope");
    }
}
