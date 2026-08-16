package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
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
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class AndLocator extends PatternLocator {
    final int[] levels;
    final PatternLocator[] patternLocators;

    public AndLocator(AndPattern andPattern) {
        super(andPattern);
        SearchPattern[] searchPatternArr = andPattern.patterns;
        PatternLocator[] patternLocatorArr = new PatternLocator[searchPatternArr.length];
        this.levels = new int[searchPatternArr.length];
        int length = searchPatternArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            patternLocatorArr[i10] = PatternLocator.patternLocator(searchPatternArr[i10]);
            this.levels[i10] = 0;
        }
        this.patternLocators = patternLocatorArr;
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
        int i10 = 15;
        for (int i11 = 0; i11 < length; i11++) {
            i10 &= this.patternLocators[i11].matchContainer();
        }
        return i10;
    }

    @Override
    public void matchReportImportRef(ImportReference importReference, Binding binding, IJavaElement iJavaElement, int i10, MatchLocator matchLocator) throws CoreException {
        int length = this.patternLocators.length;
        PatternLocator patternLocator = null;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            int matchLevel = this.patternLocators[i12].matchLevel(importReference);
            if (matchLevel == 0) {
                return;
            }
            if (patternLocator == null || matchLevel < i11) {
                patternLocator = this.patternLocators[i12];
                i11 = matchLevel;
            }
        }
        patternLocator.matchReportImportRef(importReference, binding, iJavaElement, i10, matchLocator);
    }

    @Override
    public void matchReportReference(ASTNode aSTNode, IJavaElement iJavaElement, IJavaElement iJavaElement2, IJavaElement[] iJavaElementArr, Binding binding, int i10, MatchLocator matchLocator) throws CoreException {
        int resolveLevel;
        int length = this.patternLocators.length;
        PatternLocator patternLocator = null;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            if (this.patternLocators[i12].referenceType() == 0 || (resolveLevel = this.patternLocators[i12].resolveLevel(aSTNode)) == 0) {
                return;
            }
            if (patternLocator == null || resolveLevel < i11) {
                patternLocator = this.patternLocators[i12];
                i11 = resolveLevel;
            }
        }
        patternLocator.matchReportReference(aSTNode, iJavaElement, iJavaElement2, iJavaElementArr, binding, i10, matchLocator);
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
        int i10 = 3;
        for (int i11 = 0; i11 < length; i11++) {
            int resolveLevel = this.patternLocators[i11].resolveLevel(aSTNode);
            if (resolveLevel == 0) {
                return 0;
            }
            this.levels[i11] = resolveLevel;
            if (resolveLevel < i10) {
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
        int i10 = 3;
        for (int i11 = 0; i11 < length; i11++) {
            int resolveLevel = this.patternLocators[i11].resolveLevel(binding);
            if (resolveLevel == 0) {
                return 0;
            }
            this.levels[i11] = resolveLevel;
            if (resolveLevel < i10) {
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
