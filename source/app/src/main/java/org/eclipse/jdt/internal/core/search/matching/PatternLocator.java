package org.eclipse.jdt.internal.core.search.matching;

import java.util.regex.Pattern;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.IQualifiedTypeResolutionListener;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public abstract class PatternLocator implements IIndexConstants, IQualifiedTypeResolutionListener {
    public static final int ACCURATE_MATCH = 3;
    public static final int ALL_CONTAINER = 15;
    public static final int CAMELCASE_FLAVOR = 256;
    public static final int CLASS_CONTAINER = 2;
    public static final int COMPILATION_UNIT_CONTAINER = 1;
    public static final int ERASURE_MATCH = 4;
    public static final int EXACT_FLAVOR = 16;
    public static final int FIELD_CONTAINER = 8;
    public static final int FLAVORS_MASK = -16;
    public static final int IMPOSSIBLE_MATCH = 0;
    public static final int INACCURATE_MATCH = 1;
    public static final int MATCH_LEVEL_MASK = 15;
    public static final int METHOD_CONTAINER = 4;
    public static final int NO_FLAVOR = 0;
    public static final int OVERRIDDEN_METHOD_FLAVOR = 2048;
    public static final int PATTERN_FLAVOR = 64;
    public static final int POSSIBLE_MATCH = 2;
    public static final int PREFIX_FLAVOR = 32;
    public static final int RAW_MASK = 48;
    public static final int REGEXP_FLAVOR = 128;
    public static final int RULE_MASK = 48;
    public static final int SUB_INVOCATION_FLAVOR = 1024;
    public static final int SUPERTYPE_REF_FLAVOR = 4096;
    public static final int SUPER_INVOCATION_FLAVOR = 512;
    protected boolean isCaseSensitive;
    protected boolean isEquivalentMatch;
    protected boolean isErasureMatch;
    protected int matchMode;
    protected boolean mayBeGeneric;
    protected boolean mustResolve;
    SearchMatch match = null;
    int flavors = 0;

    public PatternLocator(SearchPattern searchPattern) {
        int matchRule = searchPattern.getMatchRule();
        this.isCaseSensitive = (matchRule & 8) != 0;
        this.isErasureMatch = (matchRule & 16) != 0;
        this.isEquivalentMatch = (matchRule & 32) != 0;
        this.matchMode = matchRule & JavaSearchPattern.MATCH_MODE_MASK;
        this.mustResolve = searchPattern.mustResolve;
    }

    public static PatternLocator patternLocator(SearchPattern searchPattern) {
        int i10 = searchPattern.kind;
        if (i10 == 1) {
            return new PackageReferenceLocator((PackageReferencePattern) searchPattern);
        }
        if (i10 == 2) {
            return new PackageDeclarationLocator((PackageDeclarationPattern) searchPattern);
        }
        switch (i10) {
            case 4:
                return new TypeReferenceLocator((TypeReferencePattern) searchPattern);
            case 8:
                return new TypeDeclarationLocator((TypeDeclarationPattern) searchPattern);
            case 16:
                return new SuperTypeReferenceLocator((SuperTypeReferencePattern) searchPattern);
            case 32:
                return new ConstructorLocator((ConstructorPattern) searchPattern);
            case 64:
                return new FieldLocator((FieldPattern) searchPattern);
            case 128:
                return new MethodLocator((MethodPattern) searchPattern);
            case 256:
                return new OrLocator((OrPattern) searchPattern);
            case 512:
                return new LocalVariableLocator((LocalVariablePattern) searchPattern);
            case 1024:
                return new TypeParameterLocator((TypeParameterPattern) searchPattern);
            case 2048:
                return new AndLocator((AndPattern) searchPattern);
            case 8192:
                return new ModuleLocator((ModulePattern) searchPattern);
            default:
                return null;
        }
    }

    public static char[] qualifiedPattern(char[] cArr, char[] cArr2) {
        if (cArr != null) {
            return cArr2 == null ? CharOperation.concat(IIndexConstants.ONE_STAR, cArr) : CharOperation.concat(cArr2, cArr, '.');
        }
        if (cArr2 == null) {
            return null;
        }
        return CharOperation.concat(cArr2, IIndexConstants.ONE_STAR, '.');
    }

    public static char[] qualifiedSourceName(TypeBinding typeBinding) {
        if (typeBinding instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding;
            if (referenceBinding.isLocalType()) {
                return referenceBinding.isMemberType() ? CharOperation.concat(qualifiedSourceName(referenceBinding.enclosingType()), referenceBinding.sourceName(), '.') : CharOperation.concat(qualifiedSourceName(referenceBinding.enclosingType()), new char[]{'.', '1', '.'}, referenceBinding.sourceName());
            }
        }
        if (typeBinding != null) {
            return typeBinding.qualifiedSourceName();
        }
        return null;
    }

    public void clear() {
    }

    public int fineGrain() {
        return 0;
    }

    public char[] getQualifiedPattern(char[] cArr, char[] cArr2) {
        if (cArr != null) {
            return cArr2 == null ? cArr : CharOperation.concat(cArr2, cArr, '.');
        }
        if (cArr2 == null) {
            return null;
        }
        return CharOperation.concat(cArr2, IIndexConstants.ONE_STAR, '.');
    }

    public char[] getQualifiedSourceName(TypeBinding typeBinding) {
        TypeBinding typeBinding2 = typeBinding instanceof ArrayBinding ? ((ArrayBinding) typeBinding).leafComponentType : typeBinding;
        if (typeBinding2 instanceof ReferenceBinding) {
            if (typeBinding2.isLocalType()) {
                return CharOperation.concat(qualifiedSourceName(typeBinding2.enclosingType()), new char[]{'.', '1', '.'}, typeBinding.sourceName());
            }
            if (typeBinding2.isMemberType()) {
                return CharOperation.concat(qualifiedSourceName(typeBinding2.enclosingType()), typeBinding.sourceName(), '.');
            }
        }
        if (typeBinding != null) {
            return typeBinding.qualifiedSourceName();
        }
        return null;
    }

    public TypeBinding getTypeNameBinding(int i10) {
        return null;
    }

    public void initializePolymorphicSearch(MatchLocator matchLocator) {
    }

    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int matchContainer() {
        return 15;
    }

    public int matchLevel(ImportReference importReference) {
        return 0;
    }

    public void matchLevelAndReportImportRef(ImportReference importReference, Binding binding, MatchLocator matchLocator) throws CoreException {
        int resolveLevel = resolveLevel(binding);
        if (resolveLevel >= 1) {
            matchReportImportRef(importReference, binding, matchLocator.createImportHandle(importReference), resolveLevel == 3 ? 0 : 1, matchLocator);
        }
    }

    public int matchNameValue(char[] cArr, char[] cArr2) {
        if (cArr == null) {
            return 3;
        }
        if (cArr2 == null) {
            return 0;
        }
        if (cArr2.length == 0) {
            return cArr.length == 0 ? 3 : 0;
        }
        if (cArr.length == 0) {
            return 0;
        }
        boolean z10 = this.isCaseSensitive;
        boolean z11 = !z10 || cArr[0] == cArr2[0];
        boolean z12 = cArr.length == cArr2.length;
        boolean z13 = cArr2.length >= cArr.length;
        int i10 = this.matchMode;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    if (!z10) {
                        cArr = CharOperation.toLowerCase(cArr);
                    }
                    if (CharOperation.match(cArr, cArr2, this.isCaseSensitive)) {
                        return 2;
                    }
                } else if (i10 != 4) {
                    if (i10 != 128) {
                        if (i10 == 256 && CharOperation.camelCaseMatch(cArr, cArr2, true)) {
                            return 2;
                        }
                    } else {
                        if (CharOperation.camelCaseMatch(cArr, cArr2, false)) {
                            return 2;
                        }
                        if (!this.isCaseSensitive && CharOperation.prefixEquals(cArr, cArr2, false)) {
                            return 2;
                        }
                    }
                } else if (Pattern.matches(new String(cArr), new String(cArr2))) {
                    return 2;
                }
            } else if (z13 && z11 && CharOperation.prefixEquals(cArr, cArr2, z10)) {
                return 2;
            }
        } else if (z12 && z11 && CharOperation.equals(cArr, cArr2, z10)) {
            return 18;
        }
        return 0;
    }

    public void matchReportImportRef(ImportReference importReference, Binding binding, IJavaElement iJavaElement, int i10, MatchLocator matchLocator) throws CoreException {
        if (matchLocator.encloses(iJavaElement)) {
            matchReportReference(importReference, iJavaElement, null, i10, matchLocator);
        }
    }

    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        this.match = null;
        int referenceType = referenceType();
        int i11 = aSTNode.sourceStart;
        if (referenceType == 4) {
            this.match = matchLocator.newPackageReferenceMatch(iJavaElement, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
        } else if (referenceType == 17) {
            this.match = matchLocator.newModuleReferenceMatch(iJavaElement, binding, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
        } else if (referenceType == 7) {
            this.match = matchLocator.newTypeReferenceMatch(iJavaElement, binding, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
        } else if (referenceType == 8) {
            this.match = matchLocator.newFieldReferenceMatch(iJavaElement, null, binding, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
        } else if (referenceType == 14) {
            this.match = matchLocator.newLocalVariableReferenceMatch(iJavaElement, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
        } else if (referenceType == 15) {
            this.match = matchLocator.newTypeParameterReferenceMatch(iJavaElement, i10, i11, (aSTNode.sourceEnd - i11) + 1, aSTNode);
        }
        SearchMatch searchMatch = this.match;
        if (searchMatch != null) {
            matchLocator.report(searchMatch);
        }
    }

    public boolean matchesName(char[] cArr, char[] cArr2) {
        if (cArr == null) {
            return true;
        }
        return (cArr2 == null || matchNameValue(cArr, cArr2) == 0) ? false : true;
    }

    public boolean matchesTypeReference(char[] cArr, TypeReference typeReference) {
        if (cArr == null || typeReference == null) {
            return true;
        }
        char[][] typeName = typeReference.getTypeName();
        char[] cArr2 = typeName[typeName.length - 1];
        int dimensions = typeReference.dimensions() * 2;
        if (dimensions > 0) {
            int length = cArr2.length;
            int i10 = dimensions + length;
            char[] cArr3 = new char[i10];
            System.arraycopy(cArr2, 0, cArr3, 0, length);
            while (length < i10) {
                int i11 = length + 1;
                cArr3[length] = '[';
                length += 2;
                cArr3[i11] = JavaElement.JEM_TYPE_PARAMETER;
            }
            cArr2 = cArr3;
        }
        return matchesName(cArr, cArr2);
    }

    public SearchMatch newDeclarationMatch(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, int i11, MatchLocator matchLocator) {
        return matchLocator.newDeclarationMatch(iJavaElement, binding, i10, aSTNode.sourceStart, i11);
    }

    public void recordResolution(QualifiedTypeReference qualifiedTypeReference, TypeBinding typeBinding) {
    }

    public int referenceType() {
        return 0;
    }

    public int resolveLevel(ASTNode aSTNode) {
        return 0;
    }

    public int resolveLevelForType(char[] cArr, char[] cArr2, TypeBinding typeBinding) {
        char[] sourceName;
        char[] qualifiedPattern = getQualifiedPattern(cArr, cArr2);
        int resolveLevelForType = resolveLevelForType(qualifiedPattern, typeBinding);
        if (resolveLevelForType == 3 || typeBinding == null || !typeBinding.isValidBinding()) {
            return resolveLevelForType;
        }
        TypeBinding typeBinding2 = typeBinding instanceof ArrayBinding ? ((ArrayBinding) typeBinding).leafComponentType : typeBinding;
        if (!typeBinding2.isMemberType() && !typeBinding2.isLocalType()) {
            sourceName = cArr2 == null ? getQualifiedSourceName(typeBinding) : null;
        } else if (cArr2 != null) {
            sourceName = getQualifiedSourceName(typeBinding);
        } else {
            sourceName = typeBinding.sourceName();
        }
        if (sourceName == null) {
            return 0;
        }
        int i10 = this.matchMode;
        if (i10 != 1) {
            if (i10 != 128) {
                if (i10 != 256) {
                    if (CharOperation.match(qualifiedPattern, sourceName, this.isCaseSensitive)) {
                        return 3;
                    }
                } else if (qualifiedPattern.length > 0 && sourceName.length > 0 && qualifiedPattern[0] == sourceName[0] && CharOperation.camelCaseMatch(qualifiedPattern, sourceName, true)) {
                    return 3;
                }
            } else if (qualifiedPattern.length > 0 && sourceName.length > 0 && qualifiedPattern[0] == sourceName[0]) {
                if (CharOperation.camelCaseMatch(qualifiedPattern, sourceName, false)) {
                    return 3;
                }
                if (!this.isCaseSensitive && CharOperation.prefixEquals(qualifiedPattern, sourceName, false)) {
                    return 3;
                }
            }
        } else if (CharOperation.prefixEquals(qualifiedPattern, sourceName, this.isCaseSensitive)) {
            return 3;
        }
        return 0;
    }

    public void setFlavors(int i10) {
        this.flavors = i10;
    }

    public String toString() {
        return "SearchPattern";
    }

    public void updateMatch(ParameterizedTypeBinding parameterizedTypeBinding, char[][][] cArr, MatchLocator matchLocator) {
        if (matchLocator.unitScope != null) {
            updateMatch(parameterizedTypeBinding, cArr, false, 0, matchLocator);
        }
    }

    public int match(Annotation annotation, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int resolveLevel(Binding binding) {
        return 1;
    }

    public int match(ConstructorDeclaration constructorDeclaration, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public void updateMatch(ParameterizedTypeBinding parameterizedTypeBinding, char[][][] cArr, boolean z10, int i10, MatchLocator matchLocator) {
        if (matchLocator.unitScope == null) {
            return;
        }
        int i11 = 0;
        boolean z11 = cArr == null || i10 >= cArr.length;
        TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
        boolean z12 = parameterizedTypeBinding.isRawType() || (typeBindingArr == null && parameterizedTypeBinding.genericType().isGenericType());
        if (z12 && !this.match.isRaw()) {
            this.match.setRaw(z12);
        }
        if (!z11 && cArr != null) {
            if (!z12 && z10 && typeBindingArr != null) {
                TypeVariableBinding[] typeVariables = parameterizedTypeBinding.genericType().typeVariables();
                int length = typeBindingArr.length;
                if (length == typeVariables.length) {
                    while (true) {
                        if (i11 >= length) {
                            break;
                        }
                        if (TypeBinding.notEquals(typeBindingArr[i11], typeVariables[i11])) {
                            updateMatch(typeBindingArr, matchLocator, cArr[i10], z10);
                            break;
                        }
                        i11++;
                    }
                }
            } else {
                updateMatch(typeBindingArr, matchLocator, cArr[i10], z10);
            }
        }
        ReferenceBinding enclosingType = parameterizedTypeBinding.enclosingType();
        if (enclosingType != null) {
            if (enclosingType.isParameterizedType() || enclosingType.isRawType()) {
                updateMatch((ParameterizedTypeBinding) enclosingType, cArr, z10, i10 + 1, matchLocator);
            }
        }
    }

    public int match(Expression expression, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(FieldDeclaration fieldDeclaration, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(LambdaExpression lambdaExpression, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(LocalDeclaration localDeclaration, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(MemberValuePair memberValuePair, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(MessageSend messageSend, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(MethodDeclaration methodDeclaration, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(ModuleDeclaration moduleDeclaration, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(ModuleReference moduleReference, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, binding, i10, matchLocator);
    }

    public int match(Reference reference, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(ReferenceExpression referenceExpression, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(TypeDeclaration typeDeclaration, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(TypeParameter typeParameter, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int match(TypeReference typeReference, MatchingNodeSet matchingNodeSet) {
        return 0;
    }

    public int resolveLevelForType(char[] cArr, TypeBinding typeBinding) {
        if (cArr == null) {
            return 3;
        }
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return 1;
        }
        if (typeBinding.isTypeVariable()) {
            return 0;
        }
        if (typeBinding instanceof IntersectionTypeBinding18) {
            ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) typeBinding).intersectingTypes;
            int i10 = 0;
            for (ReferenceBinding referenceBinding : referenceBindingArr) {
                int resolveLevelForType = resolveLevelForType(cArr, referenceBinding);
                if (resolveLevelForType == 3) {
                    return resolveLevelForType;
                }
                if (resolveLevelForType != 0 && i10 == 0) {
                    i10 = resolveLevelForType;
                }
            }
            return i10;
        }
        char[] qualifiedPackageName = typeBinding.qualifiedPackageName();
        char[] qualifiedSourceName = qualifiedSourceName(typeBinding);
        if (qualifiedPackageName.length != 0) {
            qualifiedSourceName = CharOperation.concat(qualifiedPackageName, qualifiedSourceName, '.');
        }
        return CharOperation.match(cArr, qualifiedSourceName, this.isCaseSensitive) ? 3 : 0;
    }

    public void updateMatch(TypeBinding[] typeBindingArr, MatchLocator matchLocator, char[][] cArr, boolean z10) {
        char[] subarray;
        int i10;
        WildcardBinding wildcardBinding;
        if (matchLocator.unitScope == null) {
            return;
        }
        char c10 = 0;
        int length = cArr == null ? 0 : cArr.length;
        int length2 = typeBindingArr == null ? 0 : typeBindingArr.length;
        int rule = this.match.getRule();
        if (this.match.isRaw() && length != 0) {
            rule &= -65;
        }
        if (z10) {
            rule = 16;
        }
        if (length != length2) {
            if (length == 0) {
                if (!this.match.isRaw() || z10) {
                    this.match.setRule(rule & (-65));
                    return;
                }
                return;
            }
            if (length2 == 0) {
                this.match.setRule(rule & (-65));
                return;
            } else {
                this.match.setRule(0);
                return;
            }
        }
        if (!this.match.isRaw() && z10) {
            this.match.setRule(16);
            return;
        }
        if (typeBindingArr != null && cArr != null) {
            if (!z10 && !this.match.isRaw() && (this.match.isEquivalent() || this.match.isExact())) {
                int i11 = 0;
                while (i11 < length2) {
                    TypeBinding typeBinding = typeBindingArr[i11];
                    if ((typeBinding instanceof CaptureBinding) && (wildcardBinding = ((CaptureBinding) typeBinding).wildcard) != null) {
                        typeBinding = wildcardBinding;
                    }
                    char[] cArr2 = cArr[i11];
                    char c11 = cArr2[c10];
                    if (c11 != '*') {
                        if (c11 == '+') {
                            subarray = CharOperation.subarray(cArr2, 1, cArr2.length);
                            i10 = 1;
                        } else if (c11 != '-') {
                            subarray = cArr2;
                            i10 = -1;
                        } else {
                            subarray = CharOperation.subarray(cArr2, 1, cArr2.length);
                            i10 = 2;
                        }
                        TypeBinding type = matchLocator.getType(cArr2, Signature.toCharArray(subarray));
                        if (type != null) {
                            if (c11 != '*') {
                                if (c11 == '+') {
                                    int i12 = i10;
                                    if (typeBinding.isWildcard()) {
                                        WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding;
                                        if (wildcardBinding2.boundKind != i12 || !TypeBinding.equalsEquals(wildcardBinding2.bound, type)) {
                                            int i13 = wildcardBinding2.boundKind;
                                            if (i13 != 0) {
                                                if (i13 == 1) {
                                                    TypeBinding typeBinding2 = wildcardBinding2.bound;
                                                    if (typeBinding2 != null && !typeBinding2.isCompatibleWith(type)) {
                                                    }
                                                }
                                                this.match.setRule(16);
                                                return;
                                            }
                                        }
                                    } else if (!typeBinding.isCompatibleWith(type)) {
                                        this.match.setRule(16);
                                        return;
                                    }
                                    i11++;
                                    c10 = 0;
                                } else {
                                    if (c11 != '-') {
                                        if (typeBinding.isWildcard()) {
                                            WildcardBinding wildcardBinding3 = (WildcardBinding) typeBinding;
                                            int i14 = wildcardBinding3.boundKind;
                                            if (i14 != 0) {
                                                if (i14 == 1) {
                                                    TypeBinding typeBinding3 = wildcardBinding3.bound;
                                                    if (typeBinding3 != null && !type.isCompatibleWith(typeBinding3)) {
                                                    }
                                                } else if (i14 == 2) {
                                                    TypeBinding typeBinding4 = wildcardBinding3.bound;
                                                    if (typeBinding4 != null && !typeBinding4.isCompatibleWith(type)) {
                                                    }
                                                }
                                                i11++;
                                                c10 = 0;
                                            }
                                        } else if (TypeBinding.equalsEquals(typeBinding, type)) {
                                            i11++;
                                            c10 = 0;
                                        }
                                        this.match.setRule(16);
                                        return;
                                    }
                                    if (typeBinding.isWildcard()) {
                                        WildcardBinding wildcardBinding4 = (WildcardBinding) typeBinding;
                                        if (wildcardBinding4.boundKind != i10 || !TypeBinding.equalsEquals(wildcardBinding4.bound, type)) {
                                            int i15 = wildcardBinding4.boundKind;
                                            if (i15 != 0) {
                                                if (i15 == 2) {
                                                    TypeBinding typeBinding5 = wildcardBinding4.bound;
                                                    if (typeBinding5 != null && !type.isCompatibleWith(typeBinding5)) {
                                                    }
                                                }
                                                this.match.setRule(16);
                                                return;
                                            }
                                        }
                                    } else if (!type.isCompatibleWith(typeBinding)) {
                                        this.match.setRule(16);
                                        return;
                                    }
                                    i11++;
                                    c10 = 0;
                                }
                            }
                            rule &= -65;
                            i11++;
                            c10 = 0;
                        } else if (typeBinding.isWildcard()) {
                            if (((WildcardBinding) typeBinding).boundKind != 0) {
                                this.match.setRule(16);
                                return;
                            }
                            rule &= -65;
                            i11++;
                            c10 = 0;
                        } else {
                            continue;
                            i11++;
                            c10 = 0;
                        }
                    } else {
                        if (typeBinding.isWildcard() && ((WildcardBinding) typeBinding).boundKind == 0) {
                            i11++;
                            c10 = 0;
                        }
                        rule &= -65;
                        i11++;
                        c10 = 0;
                    }
                }
            }
            this.match.setRule(rule);
            return;
        }
        this.match.setRule(rule);
    }

    public int resolveLevelForType(char[] cArr, char[] cArr2, char[][][] cArr3, int i10, TypeBinding typeBinding) {
        TypeBinding[] typeBindingArr;
        WildcardBinding wildcardBinding;
        TypeVariableBinding[] typeVariableBindingArr;
        char[] cArr4 = cArr2;
        int resolveLevelForType = resolveLevelForType(cArr, cArr4, typeBinding);
        if (resolveLevelForType == 0) {
            return 0;
        }
        if (typeBinding != null && cArr3 != null && cArr3.length != 0 && i10 < cArr3.length) {
            int i11 = this.isErasureMatch ? 4 : 0;
            if (typeBinding.isGenericType()) {
                if (typeBinding instanceof SourceTypeBinding) {
                    typeVariableBindingArr = ((SourceTypeBinding) typeBinding).typeVariables;
                } else {
                    if (typeBinding instanceof BinaryTypeBinding) {
                        BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding) typeBinding;
                        if (this.mustResolve) {
                            typeVariableBindingArr = binaryTypeBinding.typeVariables();
                        }
                    }
                    typeVariableBindingArr = null;
                }
                char[][] cArr5 = cArr3[i10];
                if (cArr5 == null || cArr5.length <= 0 || typeVariableBindingArr == null || typeVariableBindingArr.length <= 0 || typeVariableBindingArr.length == cArr5.length) {
                    return resolveLevelForType;
                }
                return 0;
            }
            if (typeBinding.isRawType()) {
                return resolveLevelForType;
            }
            TypeBinding leafComponentType = typeBinding.leafComponentType();
            if (!leafComponentType.isParameterizedType()) {
                char[][] cArr6 = cArr3[i10];
                if (cArr6 == null || cArr6.length == 0) {
                    return resolveLevelForType;
                }
                return 0;
            }
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) leafComponentType;
            char[][] cArr7 = cArr3[i10];
            if (cArr7 != null && cArr7.length > 0 && (typeBindingArr = parameterizedTypeBinding.arguments) != null && typeBindingArr.length > 0) {
                int length = cArr7.length;
                if (typeBindingArr.length != length) {
                    return 0;
                }
                for (int i12 = 0; i12 < length; i12++) {
                    char[] cArr8 = cArr3[i10][i12];
                    TypeBinding typeBinding2 = parameterizedTypeBinding.arguments[i12];
                    char c10 = cArr8[0];
                    if (c10 != '*') {
                        if (c10 == '+') {
                            cArr8 = CharOperation.subarray(cArr8, 1, cArr8.length);
                        } else if (c10 == '-') {
                            continue;
                        }
                        char[] charArray = Signature.toCharArray(cArr8);
                        if (!this.isCaseSensitive) {
                            charArray = CharOperation.toLowerCase(charArray);
                        }
                        boolean contains = CharOperation.contains(new char[]{'*', '?'}, charArray);
                        if ((typeBinding2 instanceof CaptureBinding) && (wildcardBinding = ((CaptureBinding) typeBinding2).wildcard) != null) {
                            typeBinding2 = wildcardBinding;
                        }
                        if (typeBinding2.isWildcard()) {
                            WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding2;
                            int i13 = wildcardBinding2.boundKind;
                            if (i13 == 0) {
                                continue;
                            } else if (i13 != 1) {
                                ReferenceBinding referenceBinding = (ReferenceBinding) wildcardBinding2.bound;
                                if (!CharOperation.match(charArray, referenceBinding.shortReadableName(), this.isCaseSensitive) && !CharOperation.match(charArray, referenceBinding.readableName(), this.isCaseSensitive)) {
                                    if (contains) {
                                        return i11;
                                    }
                                    for (ReferenceBinding superclass = referenceBinding.superclass(); superclass != null; superclass = superclass.superclass()) {
                                        if (!CharOperation.equals(charArray, superclass.shortReadableName(), this.isCaseSensitive) && !CharOperation.equals(charArray, superclass.readableName(), this.isCaseSensitive) && ((!superclass.isLocalType() && !superclass.isMemberType()) || !CharOperation.match(charArray, superclass.sourceName(), this.isCaseSensitive))) {
                                        }
                                    }
                                    return i11;
                                }
                            } else if (contains) {
                                return i11;
                            }
                        } else if (!CharOperation.match(charArray, typeBinding2.shortReadableName(), this.isCaseSensitive) && !CharOperation.match(charArray, typeBinding2.readableName(), this.isCaseSensitive) && ((!typeBinding2.isLocalType() && !typeBinding2.isMemberType()) || !CharOperation.match(charArray, typeBinding2.sourceName(), this.isCaseSensitive))) {
                            if (contains) {
                                return i11;
                            }
                            TypeBinding leafComponentType2 = typeBinding2.leafComponentType();
                            if (leafComponentType2.isBaseType()) {
                                return i11;
                            }
                            for (ReferenceBinding superclass2 = ((ReferenceBinding) leafComponentType2).superclass(); superclass2 != null; superclass2 = superclass2.superclass()) {
                                if (!CharOperation.equals(charArray, superclass2.shortReadableName(), this.isCaseSensitive) && !CharOperation.equals(charArray, superclass2.readableName(), this.isCaseSensitive) && ((!superclass2.isLocalType() && !superclass2.isMemberType()) || !CharOperation.match(charArray, superclass2.sourceName(), this.isCaseSensitive))) {
                                }
                            }
                            return i11;
                        }
                    }
                }
            }
            ReferenceBinding enclosingType = parameterizedTypeBinding.enclosingType();
            if (enclosingType != null && enclosingType.isParameterizedType() && i10 < cArr3.length && cArr4 != null) {
                int lastIndexOf = CharOperation.lastIndexOf('.', cArr4);
                char[] subarray = lastIndexOf == -1 ? null : CharOperation.subarray(cArr4, 0, lastIndexOf);
                if (lastIndexOf != -1) {
                    cArr4 = CharOperation.subarray(cArr4, lastIndexOf + 1, cArr4.length);
                }
                int resolveLevelForType2 = resolveLevelForType(cArr4, subarray, cArr3, 1 + i10, enclosingType);
                if (resolveLevelForType2 == i11) {
                    return i11;
                }
                if (resolveLevelForType2 == 0) {
                    return 0;
                }
            }
        }
        return resolveLevelForType;
    }
}
