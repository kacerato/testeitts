package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.FieldDeclarationMatch;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;

public class FieldLocator extends VariableLocator {
    protected boolean isDeclarationOfAccessedFieldsPattern;

    public FieldLocator(FieldPattern fieldPattern) {
        super(fieldPattern);
        this.isDeclarationOfAccessedFieldsPattern = this.pattern instanceof DeclarationOfAccessedFieldsPattern;
    }

    @Override
    public int fineGrain() {
        return this.pattern.fineGrain;
    }

    @Override
    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        int i10 = 0;
        if (this.pattern.findReferences && (aSTNode instanceof ImportReference)) {
            ImportReference importReference = (ImportReference) aSTNode;
            int length = importReference.tokens.length - 1;
            if (importReference.isStatic() && (importReference.bits & 131072) == 0 && matchesName(this.pattern.name, importReference.tokens[length])) {
                char[][] cArr = new char[length];
                System.arraycopy(importReference.tokens, 0, cArr, 0, length);
                FieldPattern fieldPattern = (FieldPattern) this.pattern;
                if (matchesName(CharOperation.concat(fieldPattern.declaringQualification, fieldPattern.declaringSimpleName, '.'), CharOperation.concatWith(cArr, '.'))) {
                    i10 = this.pattern.mustResolve ? 2 : 3;
                }
            }
        }
        return matchingNodeSet.addMatch(aSTNode, i10);
    }

    @Override
    public int matchContainer() {
        VariablePattern variablePattern = this.pattern;
        return (variablePattern.findReferences || variablePattern.fineGrain != 0) ? 15 : 2;
    }

    public int matchField(FieldBinding fieldBinding, boolean z10) {
        if (fieldBinding == null) {
            return 1;
        }
        if (z10 && !matchesName(this.pattern.name, fieldBinding.readableName())) {
            return 0;
        }
        FieldPattern fieldPattern = (FieldPattern) this.pattern;
        ReferenceBinding referenceBinding = fieldBinding.declaringClass;
        if (referenceBinding == null) {
            if (fieldBinding == ArrayBinding.ArrayLength) {
                return (fieldPattern.declaringQualification == null && fieldPattern.declaringSimpleName == null) ? 3 : 0;
            }
            return 1;
        }
        int resolveLevelForType = resolveLevelForType(fieldPattern.declaringSimpleName, fieldPattern.declaringQualification, referenceBinding);
        if (resolveLevelForType == 0) {
            return 0;
        }
        if (fieldPattern.declaringSimpleName == null) {
            return resolveLevelForType;
        }
        if (fieldBinding instanceof ParameterizedFieldBinding) {
            fieldBinding = ((ParameterizedFieldBinding) fieldBinding).originalField;
        }
        int resolveLevelForType2 = resolveLevelForType(fieldBinding.type);
        return resolveLevelForType > resolveLevelForType2 ? resolveLevelForType2 : resolveLevelForType;
    }

    @Override
    public void matchLevelAndReportImportRef(ImportReference importReference, Binding binding, MatchLocator matchLocator) throws CoreException {
        if (importReference.isStatic() && (binding instanceof FieldBinding)) {
            super.matchLevelAndReportImportRef(importReference, binding, matchLocator);
        }
    }

    @Override
    public int matchReference(Reference reference, MatchingNodeSet matchingNodeSet, boolean z10) {
        if (!(reference instanceof FieldReference)) {
            return super.matchReference(reference, matchingNodeSet, z10);
        }
        if (matchesName(this.pattern.name, ((FieldReference) reference).token)) {
            return matchingNodeSet.addMatch(reference, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, null, null, binding, i10, matchLocator);
    }

    @Override
    public int referenceType() {
        return 8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void reportDeclaration(FieldBinding fieldBinding, MatchLocator matchLocator, SimpleSet simpleSet) throws CoreException {
        ReferenceBinding referenceBinding;
        IType lookupType;
        FieldDeclaration fieldDeclaration;
        if (fieldBinding == ArrayBinding.ArrayLength || (lookupType = matchLocator.lookupType((referenceBinding = fieldBinding.declaringClass))) == null) {
            return;
        }
        char[] cArr = fieldBinding.name;
        IField field = lookupType.getField(new String(cArr));
        if (simpleSet.addIfNotIncluded(field) == null) {
            return;
        }
        IResource resource = lookupType.getResource();
        if (lookupType.isBinary()) {
            IResource project = resource == null ? lookupType.getJavaProject().getProject() : resource;
            matchLocator.reportBinaryMemberDeclaration(project, field, fieldBinding, matchLocator.getBinaryInfo((ClassFile) lookupType.getClassFile(), project), 0);
        } else {
            if (referenceBinding instanceof ParameterizedTypeBinding) {
                referenceBinding = ((ParameterizedTypeBinding) referenceBinding).genericType();
            }
            ClassScope classScope = ((SourceTypeBinding) referenceBinding).scope;
            if (classScope != null) {
                FieldDeclaration[] fieldDeclarationArr = classScope.referenceContext.fields;
                int i10 = 0;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                while (true) {
                    if (i10 >= length) {
                        fieldDeclaration = null;
                        break;
                    } else {
                        if (CharOperation.equals(cArr, fieldDeclarationArr[i10].name)) {
                            fieldDeclaration = fieldDeclarationArr[i10];
                            break;
                        }
                        i10++;
                    }
                }
                if (fieldDeclaration != null) {
                    int i11 = fieldDeclaration.sourceStart;
                    SearchMatch fieldDeclarationMatch = new FieldDeclarationMatch(((JavaElement) field).resolved(fieldBinding), 0, i11, (fieldDeclaration.sourceEnd - i11) + 1, matchLocator.getParticipant(), resource);
                    this.match = fieldDeclarationMatch;
                    matchLocator.report(fieldDeclarationMatch);
                }
            }
        }
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        VariablePattern variablePattern = this.pattern;
        if (variablePattern.findReferences || variablePattern.fineGrain != 0) {
            if (aSTNode instanceof FieldReference) {
                return matchField(((FieldReference) aSTNode).binding, true);
            }
            if (aSTNode instanceof NameReference) {
                return resolveLevel((NameReference) aSTNode);
            }
        }
        if (aSTNode instanceof FieldDeclaration) {
            return matchField(((FieldDeclaration) aSTNode).binding, true);
        }
        return 0;
    }

    public int resolveLevelForType(TypeBinding typeBinding) {
        FieldPattern fieldPattern = (FieldPattern) this.pattern;
        if (typeBinding != null && typeBinding.isParameterizedType()) {
            typeBinding = typeBinding.erasure();
        }
        return resolveLevelForType(fieldPattern.typeSimpleName, fieldPattern.typeQualification, fieldPattern.getTypeArguments(), 0, typeBinding);
    }

    @Override
    public void updateMatch(ParameterizedTypeBinding parameterizedTypeBinding, char[][][] cArr, MatchLocator matchLocator) {
        if (matchLocator.unitScope == null) {
            return;
        }
        updateMatch(parameterizedTypeBinding, cArr, false, 0, matchLocator);
        if (this.match.isExact()) {
            return;
        }
        this.match.setRule(0);
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        if (this.isDeclarationOfAccessedFieldsPattern) {
            if (i10 != 0) {
                return;
            }
            DeclarationOfAccessedFieldsPattern declarationOfAccessedFieldsPattern = (DeclarationOfAccessedFieldsPattern) this.pattern;
            IJavaElement iJavaElement3 = iJavaElement;
            while (iJavaElement3 != null && !declarationOfAccessedFieldsPattern.enclosingElement.equals(iJavaElement3)) {
                iJavaElement3 = iJavaElement3.getParent();
            }
            if (iJavaElement3 != null) {
                if (aSTNode instanceof FieldReference) {
                    reportDeclaration(((FieldReference) aSTNode).binding, matchLocator, declarationOfAccessedFieldsPattern.knownFields);
                    return;
                }
                if (aSTNode instanceof QualifiedNameReference) {
                    QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) aSTNode;
                    Binding binding2 = qualifiedNameReference.binding;
                    if (binding2 instanceof FieldBinding) {
                        reportDeclaration((FieldBinding) binding2, matchLocator, declarationOfAccessedFieldsPattern.knownFields);
                    }
                    FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
                    int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        reportDeclaration(qualifiedNameReference.otherBindings[i11], matchLocator, declarationOfAccessedFieldsPattern.knownFields);
                    }
                    return;
                }
                if (aSTNode instanceof SingleNameReference) {
                    reportDeclaration((FieldBinding) ((SingleNameReference) aSTNode).binding, matchLocator, declarationOfAccessedFieldsPattern.knownFields);
                    return;
                }
                return;
            }
            return;
        }
        int i12 = 1;
        if (aSTNode instanceof ImportReference) {
            ImportReference importReference = (ImportReference) aSTNode;
            long j10 = importReference.sourcePositions[importReference.tokens.length - 1];
            int i13 = (int) (j10 >>> 32);
            SearchMatch newFieldReferenceMatch = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, i10, i13, (((int) j10) - i13) + 1, importReference);
            this.match = newFieldReferenceMatch;
            matchLocator.report(newFieldReferenceMatch);
            return;
        }
        if (aSTNode instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference) aSTNode;
            long j11 = fieldReference.nameSourcePosition;
            int i14 = (int) (j11 >>> 32);
            SearchMatch newFieldReferenceMatch2 = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, i10, i14, (((int) j11) - i14) + 1, fieldReference);
            this.match = newFieldReferenceMatch2;
            matchLocator.report(newFieldReferenceMatch2);
            return;
        }
        if (aSTNode instanceof SingleNameReference) {
            int i15 = aSTNode.sourceStart;
            SearchMatch newFieldReferenceMatch3 = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, i10, i15, (aSTNode.sourceEnd - i15) + 1, aSTNode);
            this.match = newFieldReferenceMatch3;
            matchLocator.report(newFieldReferenceMatch3);
            return;
        }
        if (aSTNode instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference2 = (QualifiedNameReference) aSTNode;
            char[][] cArr = qualifiedNameReference2.tokens;
            int length2 = cArr.length;
            SearchMatch[] searchMatchArr = new SearchMatch[length2];
            Binding binding3 = qualifiedNameReference2.binding;
            int i16 = qualifiedNameReference2.indexOfFirstFieldBinding;
            int i17 = i16 > 0 ? i16 - 1 : 0;
            if (matchesName(this.pattern.name, cArr[i17]) && !(binding3 instanceof LocalVariableBinding)) {
                FieldBinding fieldBinding = binding3 instanceof FieldBinding ? (FieldBinding) binding3 : null;
                if (fieldBinding == null) {
                    searchMatchArr[i17] = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, i10, -1, -1, aSTNode);
                } else {
                    int matchField = matchField(fieldBinding, false);
                    if (matchField == 1) {
                        FieldBinding fieldBinding2 = fieldBinding;
                        this.match = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, 1, -1, -1, aSTNode);
                        TypeBinding typeBinding = fieldBinding2.type;
                        if (typeBinding != null && typeBinding.isParameterizedType() && this.pattern.hasTypeArguments()) {
                            updateMatch((ParameterizedTypeBinding) fieldBinding2.type, this.pattern.getTypeArguments(), matchLocator);
                        }
                        searchMatchArr[i17] = this.match;
                    } else if (matchField == 3) {
                        searchMatchArr[i17] = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, 0, -1, -1, aSTNode);
                    }
                }
            }
            int i18 = i17 + 1;
            int i19 = i18;
            while (i19 < length2) {
                if (matchesName(this.pattern.name, qualifiedNameReference2.tokens[i19])) {
                    FieldBinding[] fieldBindingArr2 = qualifiedNameReference2.otherBindings;
                    FieldBinding fieldBinding3 = fieldBindingArr2 == null ? null : fieldBindingArr2[i19 - i18];
                    if (fieldBinding3 == null) {
                        searchMatchArr[i19] = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, i10, -1, -1, aSTNode);
                    } else {
                        int matchField2 = matchField(fieldBinding3, false);
                        if (matchField2 == i12) {
                            FieldBinding fieldBinding4 = fieldBinding3;
                            this.match = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, 1, -1, -1, aSTNode);
                            TypeBinding typeBinding2 = fieldBinding4.type;
                            if (typeBinding2 != null && typeBinding2.isParameterizedType() && this.pattern.hasTypeArguments()) {
                                updateMatch((ParameterizedTypeBinding) fieldBinding4.type, this.pattern.getTypeArguments(), matchLocator);
                            }
                            searchMatchArr[i19] = this.match;
                        } else if (matchField2 == 3) {
                            searchMatchArr[i19] = matchLocator.newFieldReferenceMatch(iJavaElement, iJavaElement2, binding, 0, -1, -1, aSTNode);
                        }
                        i19++;
                        i12 = 1;
                    }
                }
                i19++;
                i12 = 1;
            }
            matchLocator.reportAccurateFieldReference(searchMatchArr, qualifiedNameReference2);
        }
    }

    @Override
    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (binding instanceof FieldBinding) {
            return matchField((FieldBinding) binding, true);
        }
        return 0;
    }

    public int resolveLevel(NameReference nameReference) {
        int matchField;
        int matchField2;
        if (nameReference instanceof SingleNameReference) {
            return resolveLevel(nameReference.binding);
        }
        Binding binding = nameReference.binding;
        QualifiedNameReference qualifiedNameReference = (QualifiedNameReference) nameReference;
        if (binding instanceof FieldBinding) {
            FieldBinding fieldBinding = (FieldBinding) binding;
            char[] cArr = fieldBinding.name;
            int lastIndexOf = CharOperation.lastIndexOf('.', cArr);
            if (lastIndexOf > -1) {
                cArr = CharOperation.subarray(cArr, lastIndexOf + 1, cArr.length);
            }
            if (matchesName(this.pattern.name, cArr) && (matchField2 = matchField(fieldBinding, false)) != 0) {
                return matchField2;
            }
        }
        FieldBinding[] fieldBindingArr = qualifiedNameReference.otherBindings;
        int length = fieldBindingArr == null ? 0 : fieldBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (matchesName(this.pattern.name, qualifiedNameReference.tokens[qualifiedNameReference.indexOfFirstFieldBinding + i10]) && (matchField = matchField(qualifiedNameReference.otherBindings[i10], false)) != 0) {
                return matchField;
            }
        }
        return 0;
    }

    @Override
    public int match(FieldDeclaration fieldDeclaration, MatchingNodeSet matchingNodeSet) {
        int i10;
        int kind;
        VariablePattern variablePattern = this.pattern;
        int i11 = 0;
        if (variablePattern.findReferences && variablePattern.writeAccess && !variablePattern.readAccess && fieldDeclaration.initialization != null && matchesName(variablePattern.name, fieldDeclaration.name)) {
            i10 = this.pattern.mustResolve ? 2 : 3;
        } else {
            i10 = 0;
        }
        if (this.pattern.findDeclarations && (((kind = fieldDeclaration.getKind()) == 1 || kind == 3) && matchesName(this.pattern.name, fieldDeclaration.name) && matchesTypeReference(((FieldPattern) this.pattern).typeSimpleName, fieldDeclaration.type))) {
            i11 = this.pattern.mustResolve ? 2 : 3;
        }
        if (i10 < i11) {
            i10 = i11;
        }
        return matchingNodeSet.addMatch(fieldDeclaration, i10);
    }
}
