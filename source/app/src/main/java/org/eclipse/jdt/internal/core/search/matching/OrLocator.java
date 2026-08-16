package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
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
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class OrLocator extends PatternLocator {
    protected PatternLocator[] patternLocators;

    public OrLocator(OrPattern orPattern) {
        super(orPattern);
        SearchPattern[] searchPatternArr = orPattern.patterns;
        int length = searchPatternArr.length;
        this.patternLocators = new PatternLocator[length];
        for (int i10 = 0; i10 < length; i10++) {
            this.patternLocators[i10] = PatternLocator.patternLocator(searchPatternArr[i10]);
        }
    }

    @Override
    public void initializePolymorphicSearch(MatchLocator matchLocator) {
        int length = this.patternLocators.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.patternLocators[i10].initializePolymorphicSearch(matchLocator);
        }
    }

    @Override
    public int match(Annotation annotation, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(annotation, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int matchContainer() {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i10 |= this.patternLocators[i11].matchContainer();
        }
        return i10;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0057 A[EDGE_INSN: B:29:0x0057->B:23:0x0057 BREAK  A[LOOP:0: B:11:0x003e->B:20:0x005f], SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void matchLevelAndReportImportRef(ImportReference importReference, Binding binding, MatchLocator matchLocator) throws CoreException {
        Binding binding2;
        int length;
        PatternLocator patternLocator;
        int i10;
        if (importReference.isStatic()) {
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
            }
            length = this.patternLocators.length;
            patternLocator = null;
            i10 = 0;
            int i11 = 0;
            while (true) {
                if (i10 < length) {
                    break;
                }
                PatternLocator patternLocator2 = this.patternLocators[i10];
                int resolveLevel = patternLocator2.referenceType() == 0 ? 0 : patternLocator2.resolveLevel(binding2);
                if (resolveLevel > i11) {
                    if (resolveLevel == 3) {
                        patternLocator = patternLocator2;
                        break;
                    } else {
                        patternLocator = patternLocator2;
                        i11 = resolveLevel;
                    }
                }
                i10++;
            }
            if (patternLocator == null) {
                patternLocator.matchLevelAndReportImportRef(importReference, binding, matchLocator);
                return;
            }
            return;
        }
        binding2 = binding;
        length = this.patternLocators.length;
        patternLocator = null;
        i10 = 0;
        int i112 = 0;
        while (true) {
            if (i10 < length) {
            }
            i10++;
        }
        if (patternLocator == null) {
        }
    }

    @Override
    public void matchReportImportRef(ImportReference importReference, Binding binding, IJavaElement iJavaElement, int i10, MatchLocator matchLocator) throws CoreException {
        int length = this.patternLocators.length;
        PatternLocator patternLocator = null;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            int matchLevel = this.patternLocators[i12].matchLevel(importReference);
            if (matchLevel > i11) {
                patternLocator = this.patternLocators[i12];
                if (matchLevel == 3) {
                    break;
                } else {
                    i11 = matchLevel;
                }
            }
        }
        PatternLocator patternLocator2 = patternLocator;
        if (patternLocator2 != null) {
            patternLocator2.matchReportImportRef(importReference, binding, iJavaElement, i10, matchLocator);
        }
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        PatternLocator patternLocator;
        int length = this.patternLocators.length;
        PatternLocator patternLocator2 = null;
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (i11 >= length) {
                patternLocator = patternLocator2;
                break;
            }
            PatternLocator patternLocator3 = this.patternLocators[i11];
            int resolveLevel = patternLocator3.referenceType() == 0 ? 0 : patternLocator3.resolveLevel(aSTNode);
            if (resolveLevel > i12) {
                if (resolveLevel == 3) {
                    patternLocator = patternLocator3;
                    break;
                } else {
                    patternLocator2 = patternLocator3;
                    i12 = resolveLevel;
                }
            }
            i11++;
        }
        if (patternLocator != null) {
            patternLocator.matchReportReference(aSTNode, iJavaElement, iJavaElement2, iJavaElementArr, binding, i10, matchLocator);
        }
    }

    @Override
    public SearchMatch newDeclarationMatch(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, int i11, MatchLocator matchLocator) {
        PatternLocator patternLocator;
        int length = this.patternLocators.length;
        PatternLocator patternLocator2 = null;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i12 >= length) {
                patternLocator = patternLocator2;
                break;
            }
            PatternLocator patternLocator3 = this.patternLocators[i12];
            int resolveLevel = patternLocator3.referenceType() == 0 ? 0 : patternLocator3.resolveLevel(aSTNode);
            if (resolveLevel > i13) {
                if (resolveLevel == 3) {
                    patternLocator = patternLocator3;
                    break;
                }
                patternLocator2 = patternLocator3;
                i13 = resolveLevel;
            }
            i12++;
        }
        return patternLocator != null ? patternLocator.newDeclarationMatch(aSTNode, iJavaElement, binding, i10, i11, matchLocator) : matchLocator.newDeclarationMatch(iJavaElement, binding, i10, aSTNode.sourceStart, i11);
    }

    @Override
    public void recordResolution(QualifiedTypeReference qualifiedTypeReference, TypeBinding typeBinding) {
        int length = this.patternLocators.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.patternLocators[i10].recordResolution(qualifiedTypeReference, typeBinding);
        }
    }

    @Override
    public int resolveLevel(ASTNode aSTNode) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int resolveLevel = this.patternLocators[i11].resolveLevel(aSTNode);
            if (resolveLevel > i10) {
                if (resolveLevel == 3) {
                    return 3;
                }
                i10 = resolveLevel;
            }
        }
        return i10;
    }

    @Override
    public void setFlavors(int i10) {
        int length = this.patternLocators.length;
        for (int i11 = 0; i11 < length; i11++) {
            this.patternLocators[i11].setFlavors(i10);
        }
    }

    @Override
    public int match(ASTNode aSTNode, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(aSTNode, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int resolveLevel(Binding binding) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int resolveLevel = this.patternLocators[i11].resolveLevel(binding);
            if (resolveLevel > i10) {
                if (resolveLevel == 3) {
                    return 3;
                }
                i10 = resolveLevel;
            }
        }
        return i10;
    }

    @Override
    public int match(ConstructorDeclaration constructorDeclaration, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(constructorDeclaration, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        matchReportReference(aSTNode, iJavaElement, null, null, binding, i10, matchLocator);
    }

    @Override
    public int match(Expression expression, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(expression, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(FieldDeclaration fieldDeclaration, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(fieldDeclaration, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(LambdaExpression lambdaExpression, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(lambdaExpression, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(LocalDeclaration localDeclaration, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(localDeclaration, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(MethodDeclaration methodDeclaration, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(methodDeclaration, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(MemberValuePair memberValuePair, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(memberValuePair, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(MessageSend messageSend, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(messageSend, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(Reference reference, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(reference, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(ReferenceExpression referenceExpression, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(referenceExpression, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(TypeDeclaration typeDeclaration, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(typeDeclaration, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(TypeParameter typeParameter, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(typeParameter, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }

    @Override
    public int match(TypeReference typeReference, MatchingNodeSet matchingNodeSet) {
        int length = this.patternLocators.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int match = this.patternLocators[i11].match(typeReference, matchingNodeSet);
            if (match > i10) {
                if (match == 3) {
                    return 3;
                }
                i10 = match;
            }
        }
        return i10;
    }
}
