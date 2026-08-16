package org.eclipse.jdt.internal.core.search.matching;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.TypeDeclarationMatch;
import org.eclipse.jdt.core.search.TypeReferenceMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;

public class TypeReferenceLocator extends PatternLocator {
    private final int fineGrain;
    protected boolean isDeclarationOfReferencedTypesPattern;
    protected TypeReferencePattern pattern;
    private Map recordedResolutions;

    public TypeReferenceLocator(TypeReferencePattern typeReferencePattern) {
        super(typeReferencePattern);
        this.recordedResolutions = new HashMap();
        this.pattern = typeReferencePattern;
        this.fineGrain = typeReferencePattern == null ? 0 : typeReferencePattern.fineGrain;
        this.isDeclarationOfReferencedTypesPattern = typeReferencePattern instanceof DeclarationOfReferencedTypesPattern;
    }

    public IJavaElement findElement(IJavaElement iJavaElement, int i10) {
        if (i10 != 0) {
            return null;
        }
        DeclarationOfReferencedTypesPattern declarationOfReferencedTypesPattern = (DeclarationOfReferencedTypesPattern) this.pattern;
        while (iJavaElement != null && !declarationOfReferencedTypesPattern.enclosingElement.equals(iJavaElement)) {
            iJavaElement = iJavaElement.getParent();
        }
        return iJavaElement;
    }

    @Override
    public int fineGrain() {
        return this.fineGrain;
    }

    @Override
    public int match(Annotation annotation, MatchingNodeSet matchingNodeSet) {
        return match(annotation.type, matchingNodeSet);
    }

    @Override
    public int matchLevel(ImportReference importReference) {
        TypeReferencePattern typeReferencePattern = this.pattern;
        char[] cArr = typeReferencePattern.qualification;
        if (cArr != null) {
            char[][] cArr2 = importReference.tokens;
            char[] cArr3 = typeReferencePattern.simpleName;
            if (cArr3 != null) {
                cArr = CharOperation.concat(cArr, cArr3, '.');
            }
            char[] concatWith = CharOperation.concatWith(cArr2, '.');
            if (cArr == null) {
                return 3;
            }
            if (concatWith == null) {
                return 0;
            }
            if (concatWith.length == 0) {
                return cArr.length == 0 ? 3 : 0;
            }
            boolean z10 = this.isCaseSensitive;
            boolean z11 = !z10 || cArr[0] == concatWith[0];
            int i10 = this.matchMode;
            if (i10 == 0 || i10 == 1) {
                if (CharOperation.prefixEquals(cArr, concatWith, z10)) {
                    return 2;
                }
            } else if (i10 != 2) {
                if (i10 != 128) {
                    if (i10 == 256 && z11 && CharOperation.camelCaseMatch(cArr, concatWith, true)) {
                        return 2;
                    }
                } else {
                    if (z11 && CharOperation.camelCaseMatch(cArr, concatWith, false)) {
                        return 2;
                    }
                    if (!this.isCaseSensitive && CharOperation.prefixEquals(cArr, concatWith, false)) {
                        return 2;
                    }
                }
            } else if (CharOperation.match(cArr, concatWith, z10)) {
                return 2;
            }
        } else {
            if (typeReferencePattern.simpleName == null) {
                return 3;
            }
            char[][] cArr4 = importReference.tokens;
            boolean z12 = (importReference.bits & 131072) != 0;
            boolean isStatic = importReference.isStatic();
            if (!isStatic && z12) {
                return 0;
            }
            int length = cArr4.length;
            if (matchesName(this.pattern.simpleName, cArr4[length - 1])) {
                return 3;
            }
            if (isStatic && !z12 && length > 1 && matchesName(this.pattern.simpleName, cArr4[length - 2])) {
                return 3;
            }
        }
        return 0;
    }

    @Override
    public void matchLevelAndReportImportRef(ImportReference importReference, Binding binding, MatchLocator matchLocator) throws CoreException {
        Binding binding2;
        if (!importReference.isStatic()) {
            super.matchLevelAndReportImportRef(importReference, binding, matchLocator);
            return;
        }
        if (binding instanceof FieldBinding) {
            FieldBinding fieldBinding = (FieldBinding) binding;
            if (!fieldBinding.isStatic()) {
                return;
            } else {
                binding2 = fieldBinding.declaringClass;
            }
        } else if (binding instanceof MethodBinding) {
            MethodBinding methodBinding = (MethodBinding) binding;
            if (!methodBinding.isStatic()) {
                return;
            } else {
                binding2 = methodBinding.declaringClass;
            }
        } else if ((binding instanceof MemberTypeBinding) && !((MemberTypeBinding) binding).isStatic()) {
            return;
        } else {
            binding2 = binding;
        }
        int resolveLevel = resolveLevel(binding2);
        if (resolveLevel >= 1) {
            matchReportImportRef(importReference, binding, matchLocator.createImportHandle(importReference), resolveLevel == 3 ? 0 : 1, matchLocator);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0077, code lost:
    
        if ((r5.bits & 131072) == 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0079, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x008c, code lost:
    
        if ((r5.bits & 131072) == 0) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0093  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchReportImportRef(ImportReference importReference, Binding binding, IJavaElement iJavaElement, int i10, MatchLocator matchLocator) throws CoreException {
        TypeBinding typeBinding;
        boolean z10;
        if (this.isDeclarationOfReferencedTypesPattern) {
            if (findElement(iJavaElement, i10) != null) {
                SimpleSet simpleSet = ((DeclarationOfReferencedTypesPattern) this.pattern).knownTypes;
                while (binding instanceof ReferenceBinding) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) binding;
                    reportDeclaration(referenceBinding, 1, matchLocator, simpleSet);
                    binding = referenceBinding.enclosingType();
                }
                return;
            }
            return;
        }
        if (!this.pattern.hasTypeArguments() || this.isEquivalentMatch || this.isErasureMatch) {
            int i11 = this.pattern.fineGrain;
            if (i11 == 0 || (i11 & 32768) != 0) {
                TypeReferenceMatch newTypeReferenceMatch = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, importReference);
                this.match = newTypeReferenceMatch;
                newTypeReferenceMatch.setRaw(true);
                if (this.pattern.hasTypeArguments()) {
                    SearchMatch searchMatch = this.match;
                    searchMatch.setRule(searchMatch.getRule() & (-65));
                }
                if (!(binding instanceof ReferenceBinding)) {
                    if (binding instanceof FieldBinding) {
                        typeBinding = ((FieldBinding) binding).declaringClass;
                        if (importReference.isStatic()) {
                        }
                    } else if (binding instanceof MethodBinding) {
                        typeBinding = ((MethodBinding) binding).declaringClass;
                        if (importReference.isStatic()) {
                        }
                    } else {
                        typeBinding = null;
                    }
                    if (typeBinding != null) {
                        int length = importReference.tokens.length;
                        int i12 = length - 1;
                        if (z10) {
                            i12 = length - 2;
                        }
                        if (typeBinding instanceof ProblemReferenceBinding) {
                            ProblemReferenceBinding problemReferenceBinding = (ProblemReferenceBinding) typeBinding;
                            TypeBinding closestMatch = problemReferenceBinding.closestMatch();
                            i12 = problemReferenceBinding.compoundName.length - 1;
                            typeBinding = closestMatch;
                        }
                        while (typeBinding != null && i12 >= 0) {
                            if (resolveLevelForType(typeBinding) != 0) {
                                if (matchLocator.encloses(iJavaElement)) {
                                    long[] jArr = importReference.sourcePositions;
                                    TypeReferencePattern typeReferencePattern = this.pattern;
                                    int i13 = typeReferencePattern.qualification != null ? i12 - typeReferencePattern.segmentsSize : i12;
                                    int i14 = (int) (jArr[i13 >= 0 ? i13 : 0] >>> 32);
                                    int i15 = (int) jArr[i12];
                                    this.match.setOffset(i14);
                                    this.match.setLength((i15 - i14) + 1);
                                    matchLocator.report(this.match);
                                    return;
                                }
                                return;
                            }
                            i12--;
                            typeBinding = typeBinding.enclosingType();
                        }
                    }
                    matchLocator.reportAccurateTypeReference(this.match, importReference, this.pattern.simpleName);
                }
                typeBinding = (ReferenceBinding) binding;
                z10 = false;
                if (typeBinding != null) {
                }
                matchLocator.reportAccurateTypeReference(this.match, importReference, this.pattern.simpleName);
            }
        }
    }

    public void matchReportReference(ArrayTypeReference arrayTypeReference, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        if (this.pattern.simpleName == null && matchLocator.encloses(iJavaElement)) {
            int i11 = arrayTypeReference.sourceStart;
            int i12 = (arrayTypeReference.sourceEnd - i11) + 1;
            SearchMatch searchMatch = this.match;
            if (searchMatch == null) {
                this.match = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, i11, i12, arrayTypeReference);
            } else {
                searchMatch.setOffset(i11);
                this.match.setLength(i12);
            }
            matchLocator.report(this.match);
            return;
        }
        TypeReferenceMatch newTypeReferenceMatch = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, arrayTypeReference);
        this.match = newTypeReferenceMatch;
        TypeBinding typeBinding = arrayTypeReference.resolvedType;
        if (typeBinding != null) {
            matchReportReference(arrayTypeReference, -1, typeBinding.leafComponentType(), matchLocator);
        } else {
            matchLocator.reportAccurateTypeReference(newTypeReferenceMatch, arrayTypeReference, this.pattern.simpleName);
        }
    }

    @Override
    public void recordResolution(QualifiedTypeReference qualifiedTypeReference, TypeBinding typeBinding) {
        Collection collection = (List) this.recordedResolutions.get(qualifiedTypeReference);
        if (collection == null) {
            collection = new ArrayList();
        }
        collection.add(typeBinding);
        this.recordedResolutions.put(qualifiedTypeReference, collection);
    }

    @Override
    public int referenceType() {
        return 7;
    }

    public void reportDeclaration(ASTNode aSTNode, IJavaElement iJavaElement, MatchLocator matchLocator, SimpleSet simpleSet) throws CoreException {
        int i10;
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        int length;
        if (aSTNode instanceof TypeReference) {
            typeBinding = ((TypeReference) aSTNode).resolvedType;
            i10 = Integer.MAX_VALUE;
        } else {
            int i11 = 1;
            if (aSTNode instanceof QualifiedNameReference) {
                QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
                Binding binding = qualifiedNameReference.binding;
                int length2 = qualifiedNameReference.tokens.length - 1;
                int i12 = qualifiedNameReference.bits & 7;
                if (i12 != 1) {
                    if (i12 != 7 && i12 != 3) {
                        if (i12 == 4 && (binding instanceof TypeBinding)) {
                            typeBinding = (TypeBinding) binding;
                            i10 = length2;
                        }
                    } else if (binding instanceof ProblemFieldBinding) {
                        typeBinding2 = qualifiedNameReference.actualReceiverType;
                        FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
                        if (fieldBindingArr != null) {
                            length = fieldBindingArr.length;
                            i11 = 1 + length;
                        }
                        TypeBinding typeBinding3 = typeBinding2;
                        i10 = length2 - i11;
                        typeBinding = typeBinding3;
                    } else if (binding instanceof ProblemBinding) {
                        ProblemBinding problemBinding = (ProblemBinding) binding;
                        typeBinding = problemBinding.searchType;
                        i10 = CharOperation.occurencesOf('.', problemBinding.name) - 1;
                        if (typeBinding == null || i10 < 0) {
                            return;
                        }
                    }
                    typeBinding = null;
                    i10 = length2;
                } else {
                    typeBinding2 = qualifiedNameReference.actualReceiverType;
                    FieldBinding[] fieldBindingArr2 = qualifiedNameReference.otherBindings;
                    if (fieldBindingArr2 != null) {
                        length = fieldBindingArr2.length;
                        i11 = 1 + length;
                    }
                    TypeBinding typeBinding32 = typeBinding2;
                    i10 = length2 - i11;
                    typeBinding = typeBinding32;
                }
            } else if (aSTNode instanceof SingleNameReference) {
                typeBinding = (TypeBinding) ((SingleNameReference) aSTNode).binding;
                i10 = 1;
            } else {
                i10 = -1;
                typeBinding = null;
            }
        }
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
        }
        if (typeBinding == null || (typeBinding instanceof BaseTypeBinding)) {
            return;
        }
        if ((typeBinding instanceof ProblemReferenceBinding) && (typeBinding = typeBinding.closestMatch()) == null) {
            return;
        }
        reportDeclaration((ReferenceBinding) typeBinding.erasure(), i10, matchLocator, simpleSet);
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        if (aSTNode instanceof TypeReference) {
            return resolveLevel((TypeReference) aSTNode);
        }
        if (aSTNode instanceof NameReference) {
            return resolveLevel((NameReference) aSTNode);
        }
        return 0;
    }

    public int resolveLevelForType(TypeBinding typeBinding) {
        if (typeBinding != null && typeBinding.isValidBinding()) {
            char c10 = this.pattern.typeSuffix;
            if (c10 != 'A') {
                if (c10 != 'C') {
                    if (c10 != 'E') {
                        if (c10 != 'I') {
                            switch (c10) {
                                case '\t':
                                    if (!typeBinding.isClass() && !typeBinding.isEnum()) {
                                        return 0;
                                    }
                                    break;
                                case '\n':
                                    if (!typeBinding.isClass() && (!typeBinding.isInterface() || typeBinding.isAnnotationType())) {
                                        return 0;
                                    }
                                    break;
                                case 11:
                                    if (!typeBinding.isInterface() && !typeBinding.isAnnotationType()) {
                                        return 0;
                                    }
                                    break;
                            }
                        } else if (!typeBinding.isInterface() || typeBinding.isAnnotationType()) {
                            return 0;
                        }
                    } else if (!typeBinding.isEnum()) {
                        return 0;
                    }
                } else if (!typeBinding.isClass()) {
                    return 0;
                }
            } else if (!typeBinding.isAnnotationType()) {
                return 0;
            }
        } else if (this.pattern.typeSuffix != 0) {
            return 1;
        }
        TypeReferencePattern typeReferencePattern = this.pattern;
        return resolveLevelForType(typeReferencePattern.simpleName, typeReferencePattern.qualification, typeReferencePattern.getTypeArguments(), 0, typeBinding);
    }

    public int resolveLevelForTypeOrEnclosingTypes(char[] cArr, char[] cArr2, TypeBinding typeBinding) {
        if (typeBinding == null) {
            return 1;
        }
        if (!(typeBinding instanceof ReferenceBinding)) {
            return 0;
        }
        for (ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding; referenceBinding != null; referenceBinding = referenceBinding.enclosingType()) {
            int resolveLevelForType = resolveLevelForType(referenceBinding);
            if (resolveLevelForType != 0) {
                return resolveLevelForType;
            }
        }
        return 0;
    }

    public int resolveLevelForTypeOrQualifyingTypes(TypeReference typeReference, TypeBinding typeBinding) {
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return 1;
        }
        List list = (List) this.recordedResolutions.get(typeReference);
        if (list == null) {
            return 0;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            int resolveLevelForType = resolveLevelForType((TypeBinding) it.next());
            if (resolveLevelForType != 0) {
                return resolveLevelForType;
            }
        }
        return 0;
    }

    @Override
    public String toString() {
        return "Locator for " + this.pattern.toString();
    }

    @Override
    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        if (aSTNode instanceof ImportReference) {
            return matchingNodeSet.addMatch(aSTNode, matchLevel((ImportReference) aSTNode));
        }
        return 0;
    }

    @Override
    public int match(Reference reference, MatchingNodeSet matchingNodeSet) {
        if (!(reference instanceof NameReference)) {
            return 0;
        }
        TypeReferencePattern typeReferencePattern = this.pattern;
        char[] cArr = typeReferencePattern.simpleName;
        if (cArr == null) {
            return matchingNodeSet.addMatch(reference, typeReferencePattern.mustResolve ? 2 : 3);
        }
        if (reference instanceof SingleNameReference) {
            if (matchesName(cArr, ((SingleNameReference) reference).token)) {
                return matchingNodeSet.addMatch(reference, 2);
            }
        } else {
            for (char[] cArr2 : ((QualifiedNameReference) reference).tokens) {
                if (matchesName(this.pattern.simpleName, cArr2)) {
                    return matchingNodeSet.addMatch(reference, 2);
                }
            }
        }
        return 0;
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof TypeBinding)) {
            return 0;
        }
        TypeBinding typeBinding = (TypeBinding) binding;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            typeBinding = ((ProblemReferenceBinding) typeBinding).closestMatch();
        }
        TypeReferencePattern typeReferencePattern = this.pattern;
        return resolveLevelForTypeOrEnclosingTypes(typeReferencePattern.simpleName, typeReferencePattern.qualification, typeBinding);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x003f, code lost:
    
        if (r4 != 7) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int resolveLevel(NameReference nameReference) {
        Binding binding;
        Binding binding2 = nameReference.binding;
        if (nameReference instanceof SingleNameReference) {
            if (binding2 instanceof ProblemReferenceBinding) {
                binding2 = ((ProblemReferenceBinding) binding2).closestMatch();
            }
            if (binding2 instanceof ReferenceBinding) {
                return resolveLevelForType((ReferenceBinding) binding2);
            }
            if (((SingleNameReference) nameReference).isLabel) {
                return 0;
            }
            return (binding2 == null || (binding2 instanceof ProblemBinding)) ? 1 : 0;
        }
        QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) nameReference;
        int i10 = qualifiedNameReference.bits & 7;
        if (i10 == 1) {
            int length = qualifiedNameReference.tokens.length;
            FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
            if (length < (fieldBindingArr != null ? 2 + fieldBindingArr.length : 2)) {
                return 0;
            }
            binding = nameReference.actualReceiverType;
        } else {
            if (i10 == 2) {
                return 0;
            }
            if (i10 != 3) {
                if (i10 == 4) {
                    if (binding2 instanceof TypeBinding) {
                        binding = (TypeBinding) binding2;
                    }
                }
                binding = null;
            }
            if (binding2 instanceof ProblemReferenceBinding) {
                binding = (TypeBinding) binding2;
            } else if (binding2 instanceof ProblemFieldBinding) {
                int length2 = qualifiedNameReference.tokens.length;
                FieldBinding[] fieldBindingArr2 = qualifiedNameReference.otherBindings;
                if (length2 < (fieldBindingArr2 != null ? 2 + fieldBindingArr2.length : 2)) {
                    return 0;
                }
                binding = nameReference.actualReceiverType;
            } else {
                if (binding2 instanceof ProblemBinding) {
                    ProblemBinding problemBinding = (ProblemBinding) binding2;
                    if (CharOperation.occurencesOf('.', problemBinding.name) <= 0) {
                        return 1;
                    }
                    binding = problemBinding.searchType;
                }
                binding = null;
            }
        }
        return resolveLevel(binding);
    }

    @Override
    public int match(TypeReference typeReference, MatchingNodeSet matchingNodeSet) {
        TypeReferencePattern typeReferencePattern = this.pattern;
        char[] cArr = typeReferencePattern.simpleName;
        if (cArr == null) {
            return matchingNodeSet.addMatch(typeReference, typeReferencePattern.mustResolve ? 2 : 3);
        }
        if (typeReference instanceof SingleTypeReference) {
            if (matchesName(cArr, ((SingleTypeReference) typeReference).token)) {
                return matchingNodeSet.addMatch(typeReference, this.pattern.mustResolve ? 2 : 3);
            }
        } else {
            for (char[] cArr2 : ((QualifiedTypeReference) typeReference).tokens) {
                if (matchesName(this.pattern.simpleName, cArr2)) {
                    return matchingNodeSet.addMatch(typeReference, 2);
                }
            }
        }
        return 0;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, null, null, binding, i10, matchLocator);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        TypeBinding typeBinding;
        if (this.isDeclarationOfReferencedTypesPattern) {
            IJavaElement findElement = findElement(iJavaElement, i10);
            if (findElement != null) {
                reportDeclaration(aSTNode, findElement, matchLocator, ((DeclarationOfReferencedTypesPattern) this.pattern).knownTypes);
                return;
            }
            return;
        }
        TypeReferenceMatch newTypeReferenceMatch = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, aSTNode);
        newTypeReferenceMatch.setLocalElement(iJavaElement2);
        newTypeReferenceMatch.setOtherElements(iJavaElementArr);
        this.match = newTypeReferenceMatch;
        if (aSTNode instanceof QualifiedNameReference) {
            matchReportReference((QualifiedNameReference) aSTNode, iJavaElement, binding, i10, matchLocator);
            return;
        }
        if (aSTNode instanceof QualifiedTypeReference) {
            matchReportReference((QualifiedTypeReference) aSTNode, iJavaElement, binding, i10, matchLocator);
            return;
        }
        if (aSTNode instanceof ArrayTypeReference) {
            matchReportReference((ArrayTypeReference) aSTNode, iJavaElement, binding, i10, matchLocator);
            return;
        }
        if (aSTNode instanceof Expression) {
            Expression expression = (Expression) aSTNode;
            if (expression.isTrulyExpression()) {
                typeBinding = expression.resolvedType;
                if (typeBinding == null) {
                    matchReportReference((Expression) aSTNode, -1, typeBinding, matchLocator);
                    return;
                } else {
                    matchLocator.report(this.match);
                    return;
                }
            }
        }
        typeBinding = null;
        if (typeBinding == null) {
        }
    }

    public void reportDeclaration(ReferenceBinding referenceBinding, int i10, MatchLocator matchLocator, SimpleSet simpleSet) throws CoreException {
        int i11;
        ReferenceBinding referenceBinding2;
        IType iType;
        IProject iProject;
        IBinaryType iBinaryType;
        IType lookupType = matchLocator.lookupType(referenceBinding);
        if (lookupType == null) {
            return;
        }
        IProject resource = lookupType.getResource();
        boolean isBinary = lookupType.isBinary();
        if (isBinary) {
            if (resource == null) {
                resource = lookupType.getJavaProject().getProject();
            }
            i11 = i10;
            referenceBinding2 = referenceBinding;
            iType = lookupType;
            iProject = resource;
            iBinaryType = matchLocator.getBinaryInfo((ClassFile) lookupType.getClassFile(), resource);
        } else {
            i11 = i10;
            referenceBinding2 = referenceBinding;
            iType = lookupType;
            iProject = resource;
            iBinaryType = null;
        }
        while (i11 >= 0 && iType != null) {
            if (!simpleSet.includes(iType)) {
                if (isBinary) {
                    matchLocator.reportBinaryMemberDeclaration(iProject, iType, referenceBinding2, iBinaryType, 0);
                } else {
                    if (referenceBinding2 instanceof ParameterizedTypeBinding) {
                        referenceBinding2 = ((ParameterizedTypeBinding) referenceBinding2).genericType();
                    }
                    ClassScope classScope = ((SourceTypeBinding) referenceBinding2).scope;
                    if (classScope != null) {
                        TypeDeclaration typeDeclaration = classScope.referenceContext;
                        int i12 = typeDeclaration.sourceStart;
                        TypeDeclarationMatch typeDeclarationMatch = new TypeDeclarationMatch(((JavaElement) iType).resolved(referenceBinding2), 0, i12, (typeDeclaration.sourceEnd - i12) + 1, matchLocator.getParticipant(), iProject);
                        this.match = typeDeclarationMatch;
                        matchLocator.report(typeDeclarationMatch);
                        simpleSet.add(iType);
                    }
                }
                simpleSet.add(iType);
            }
            referenceBinding2 = referenceBinding2.enclosingType();
            IJavaElement parent = iType.getParent();
            iType = parent instanceof IType ? (IType) parent : null;
            i11--;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchReportReference(QualifiedNameReference qualifiedNameReference, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        TypeBinding typeBinding;
        int length;
        int i11;
        Binding binding2 = qualifiedNameReference.binding;
        int length2 = qualifiedNameReference.tokens.length - 1;
        int i12 = qualifiedNameReference.bits & 7;
        if (i12 == 1) {
            typeBinding = qualifiedNameReference.actualReceiverType;
            FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
            if (fieldBindingArr != null) {
                length = fieldBindingArr.length;
                i11 = length + 1;
            }
            i11 = 1;
        } else {
            if (i12 != 7 && i12 != 3) {
                if (i12 == 4 && (binding2 instanceof TypeBinding)) {
                    typeBinding = (TypeBinding) binding2;
                }
                typeBinding = null;
            } else if (binding2 instanceof ProblemReferenceBinding) {
                typeBinding = (TypeBinding) binding2;
            } else if (binding2 instanceof ProblemFieldBinding) {
                typeBinding = qualifiedNameReference.actualReceiverType;
                FieldBinding[] fieldBindingArr2 = qualifiedNameReference.otherBindings;
                if (fieldBindingArr2 != null) {
                    length = fieldBindingArr2.length;
                    i11 = length + 1;
                }
                i11 = 1;
            } else {
                if (binding2 instanceof ProblemBinding) {
                    typeBinding = ((ProblemBinding) binding2).searchType;
                }
                typeBinding = null;
            }
            if (typeBinding instanceof ProblemReferenceBinding) {
                ProblemReferenceBinding problemReferenceBinding = (ProblemReferenceBinding) typeBinding;
                TypeBinding closestMatch = problemReferenceBinding.closestMatch();
                length2 = problemReferenceBinding.compoundName.length - 1;
                typeBinding = closestMatch;
            }
            if (this.match == null) {
                this.match = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, qualifiedNameReference);
            }
            if (typeBinding instanceof ReferenceBinding) {
                for (ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding; referenceBinding != null && length2 >= 0; referenceBinding = referenceBinding.enclosingType()) {
                    if (resolveLevelForType(referenceBinding) == 3) {
                        if (matchLocator.encloses(iJavaElement)) {
                            long[] jArr = qualifiedNameReference.sourcePositions;
                            TypeReferencePattern typeReferencePattern = this.pattern;
                            int i13 = typeReferencePattern.qualification != null ? length2 - typeReferencePattern.segmentsSize : length2;
                            if (i13 < 0) {
                                i13 = 0;
                            }
                            int i14 = (int) (jArr[i13] >>> 32);
                            int i15 = (int) jArr[length2];
                            this.match.setOffset(i14);
                            this.match.setLength((i15 - i14) + 1);
                            matchReportReference(qualifiedNameReference, length2, referenceBinding, matchLocator);
                            return;
                        }
                        return;
                    }
                    length2--;
                }
            }
            matchLocator.reportAccurateTypeReference(this.match, qualifiedNameReference, this.pattern.simpleName);
        }
        length2 -= i11;
        if (typeBinding instanceof ProblemReferenceBinding) {
        }
        if (this.match == null) {
        }
        if (typeBinding instanceof ReferenceBinding) {
        }
        matchLocator.reportAccurateTypeReference(this.match, qualifiedNameReference, this.pattern.simpleName);
    }

    public int resolveLevel(TypeReference typeReference) {
        TypeBinding typeBinding = typeReference.resolvedType;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            typeBinding = ((ProblemReferenceBinding) typeBinding).closestMatch();
        }
        if (typeReference instanceof SingleTypeReference) {
            return resolveLevelForType(typeBinding);
        }
        return resolveLevelForTypeOrQualifyingTypes(typeReference, typeBinding);
    }

    public void matchReportReference(QualifiedTypeReference qualifiedTypeReference, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        TypeBinding typeBinding = qualifiedTypeReference.resolvedType;
        int length = qualifiedTypeReference.tokens.length - 1;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding) typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            ProblemReferenceBinding problemReferenceBinding = (ProblemReferenceBinding) typeBinding;
            TypeBinding closestMatch = problemReferenceBinding.closestMatch();
            length = problemReferenceBinding.compoundName.length - 1;
            typeBinding = closestMatch;
        }
        if (this.match == null) {
            this.match = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, qualifiedTypeReference);
        }
        if (typeBinding instanceof ReferenceBinding) {
            for (ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding; referenceBinding != null && length >= 0; referenceBinding = referenceBinding.enclosingType()) {
                if (resolveLevelForType(referenceBinding) != 0) {
                    if (matchLocator.encloses(iJavaElement)) {
                        long[] jArr = qualifiedTypeReference.sourcePositions;
                        TypeReferencePattern typeReferencePattern = this.pattern;
                        int i11 = typeReferencePattern.qualification != null ? length - typeReferencePattern.segmentsSize : length;
                        if (i11 < 0) {
                            i11 = 0;
                        }
                        int i12 = (int) (jArr[i11] >>> 32);
                        int i13 = (int) jArr[length];
                        this.match.setOffset(i12);
                        this.match.setLength((i13 - i12) + 1);
                        matchReportReference(qualifiedTypeReference, length, referenceBinding, matchLocator);
                        return;
                    }
                    return;
                }
                length--;
            }
        }
        matchLocator.reportAccurateTypeReference(this.match, qualifiedTypeReference, this.pattern.simpleName);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void matchReportReference(Expression expression, int i10, TypeBinding typeBinding, MatchLocator matchLocator) throws CoreException {
        ParameterizedSingleTypeReference parameterizedSingleTypeReference;
        TypeReference[] typeReferenceArr;
        if (!typeBinding.isParameterizedType() && !typeBinding.isRawType()) {
            if (this.pattern.hasTypeArguments()) {
                this.match.setRule(16);
            }
        } else {
            updateMatch((ParameterizedTypeBinding) typeBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, matchLocator);
            if (this.match.getRule() == 0) {
                return;
            }
            if ((!this.isErasureMatch || !this.match.isErasure()) && ((!this.isEquivalentMatch || !this.match.isEquivalent()) && !this.match.isExact())) {
                return;
            }
            if (typeBinding.isParameterizedType() && this.pattern.hasTypeArguments()) {
                if (expression instanceof ParameterizedQualifiedTypeReference) {
                    ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) expression;
                    typeReferenceArr = parameterizedQualifiedTypeReference.typeArguments[i10];
                    parameterizedSingleTypeReference = parameterizedQualifiedTypeReference;
                } else if (expression instanceof ParameterizedSingleTypeReference) {
                    ParameterizedSingleTypeReference parameterizedSingleTypeReference2 = (ParameterizedSingleTypeReference) expression;
                    typeReferenceArr = parameterizedSingleTypeReference2.typeArguments;
                    parameterizedSingleTypeReference = parameterizedSingleTypeReference2;
                } else {
                    parameterizedSingleTypeReference = null;
                    typeReferenceArr = null;
                }
                if (parameterizedSingleTypeReference != null) {
                    matchLocator.reportAccurateParameterizedTypeReference(this.match, parameterizedSingleTypeReference, i10, typeReferenceArr);
                    return;
                }
            }
        }
        if (expression instanceof ArrayTypeReference) {
            matchLocator.reportAccurateTypeReference(this.match, expression, this.pattern.simpleName);
            return;
        }
        if (typeBinding.isLocalType()) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding) typeBinding.erasure();
            IJavaElement iJavaElement = this.pattern.focus;
            if (iJavaElement != null && localTypeBinding.enclosingMethod != null && iJavaElement.getParent().getElementType() == 9) {
                if (!CharOperation.equals(localTypeBinding.enclosingMethod.selector, ((IMethod) iJavaElement.getParent()).getElementName().toCharArray())) {
                    return;
                }
            }
        }
        if (this.pattern.simpleName == null) {
            this.match.setOffset(expression.sourceStart);
            this.match.setLength((expression.sourceEnd - expression.sourceStart) + 1);
        }
        matchLocator.report(this.match);
    }
}
