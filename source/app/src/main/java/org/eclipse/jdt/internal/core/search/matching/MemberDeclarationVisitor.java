package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IAnnotatable;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.HashtableOfIntValues;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;

public class MemberDeclarationVisitor extends ASTVisitor {
    IJavaElement[][] allOtherElements;
    private Annotation annotation;
    private final IJavaElement enclosingElement;
    HashtableOfIntValues inTypeOccurrencesCounts;
    private LocalDeclaration localDeclaration;
    IJavaElement localElement;
    IJavaElement[] localElements;
    private final MatchLocator locator;
    private final ASTNode matchingNode;
    private final ASTNode[] matchingNodes;
    private final MatchingNodeSet nodeSet;
    int nodesCount;
    IJavaElement[] otherElements;
    int[] ptrs;
    private boolean typeInHierarchy;
    int ptr = -1;
    HashtableOfIntValues occurrencesCounts = new HashtableOfIntValues();

    public MemberDeclarationVisitor(IJavaElement iJavaElement, ASTNode[] aSTNodeArr, MatchingNodeSet matchingNodeSet, MatchLocator matchLocator, boolean z10) {
        this.nodesCount = 0;
        this.enclosingElement = iJavaElement;
        this.typeInHierarchy = z10;
        this.nodeSet = matchingNodeSet;
        this.locator = matchLocator;
        this.inTypeOccurrencesCounts = matchLocator.inTypeOccurrencesCounts;
        if (aSTNodeArr == null) {
            this.matchingNode = null;
            this.matchingNodes = null;
            return;
        }
        int length = aSTNodeArr.length;
        this.nodesCount = length;
        if (aSTNodeArr.length == 1) {
            this.matchingNode = aSTNodeArr[0];
            this.matchingNodes = null;
            return;
        }
        this.matchingNode = null;
        this.matchingNodes = aSTNodeArr;
        this.localElements = new IJavaElement[length];
        this.ptrs = new int[length];
        this.allOtherElements = new IJavaElement[length];
    }

    private int matchNode(ASTNode aSTNode) {
        ASTNode aSTNode2 = this.matchingNode;
        if (aSTNode2 != null) {
            return aSTNode2 == aSTNode ? 0 : -1;
        }
        int length = this.matchingNodes.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.matchingNodes[i10] == aSTNode) {
                return i10;
            }
        }
        return -1;
    }

    private void storeHandle(int i10) {
        LocalDeclaration localDeclaration = this.localDeclaration;
        if (localDeclaration == null) {
            return;
        }
        IJavaElement createHandle = this.locator.createHandle(localDeclaration, this.enclosingElement);
        if (this.nodesCount == 1) {
            if (this.localElement == null) {
                Annotation annotation = this.annotation;
                if (annotation == null) {
                    this.localElement = createHandle;
                    return;
                }
                IJavaElement createHandle2 = this.locator.createHandle(annotation, (IAnnotatable) createHandle);
                if (createHandle2 == null) {
                    createHandle2 = this.locator.createHandle(this.annotation, (IAnnotatable) this.enclosingElement);
                }
                if (createHandle2 != null) {
                    createHandle = createHandle2;
                }
                this.localElement = createHandle;
                return;
            }
            int i11 = this.ptr + 1;
            this.ptr = i11;
            if (i11 == 0) {
                this.otherElements = new IJavaElement[10];
            } else {
                IJavaElement[] iJavaElementArr = this.otherElements;
                int length = iJavaElementArr.length;
                if (i11 == length) {
                    IJavaElement[] iJavaElementArr2 = new IJavaElement[length + 10];
                    this.otherElements = iJavaElementArr2;
                    System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, length);
                }
            }
            Annotation annotation2 = this.annotation;
            if (annotation2 == null) {
                this.otherElements[this.ptr] = createHandle;
                return;
            }
            IJavaElement createHandle3 = this.locator.createHandle(annotation2, (IAnnotatable) createHandle);
            if (createHandle3 == null) {
                createHandle3 = this.locator.createHandle(this.annotation, (IAnnotatable) this.enclosingElement);
            }
            IJavaElement[] iJavaElementArr3 = this.otherElements;
            int i12 = this.ptr;
            if (createHandle3 != null) {
                createHandle = createHandle3;
            }
            iJavaElementArr3[i12] = createHandle;
            return;
        }
        IJavaElement[] iJavaElementArr4 = this.localElements;
        if (iJavaElementArr4[i10] == null) {
            Annotation annotation3 = this.annotation;
            if (annotation3 == null) {
                iJavaElementArr4[i10] = createHandle;
            } else {
                IJavaElement createHandle4 = this.locator.createHandle(annotation3, (IAnnotatable) createHandle);
                if (createHandle4 == null) {
                    createHandle4 = this.locator.createHandle(this.annotation, (IAnnotatable) this.enclosingElement);
                }
                IJavaElement[] iJavaElementArr5 = this.localElements;
                if (createHandle4 != null) {
                    createHandle = createHandle4;
                }
                iJavaElementArr5[i10] = createHandle;
            }
            this.ptrs[i10] = -1;
            return;
        }
        int[] iArr = this.ptrs;
        int i13 = iArr[i10] + 1;
        iArr[i10] = i13;
        if (i13 == 0) {
            this.allOtherElements[i10] = new IJavaElement[10];
        } else {
            IJavaElement[][] iJavaElementArr6 = this.allOtherElements;
            IJavaElement[] iJavaElementArr7 = iJavaElementArr6[i10];
            int length2 = iJavaElementArr7.length;
            if (i13 == length2) {
                IJavaElement[] iJavaElementArr8 = new IJavaElement[length2 + 10];
                iJavaElementArr6[i10] = iJavaElementArr8;
                System.arraycopy(iJavaElementArr7, 0, iJavaElementArr8, 0, length2);
            }
        }
        Annotation annotation4 = this.annotation;
        if (annotation4 == null) {
            this.allOtherElements[i10][i13] = createHandle;
            return;
        }
        IJavaElement createHandle5 = this.locator.createHandle(annotation4, (IAnnotatable) createHandle);
        if (createHandle5 == null) {
            createHandle5 = this.locator.createHandle(this.annotation, (IAnnotatable) this.enclosingElement);
        }
        IJavaElement[] iJavaElementArr9 = this.allOtherElements[i10];
        if (createHandle5 != null) {
            createHandle = createHandle5;
        }
        iJavaElementArr9[i13] = createHandle;
    }

    @Override
    public void endVisit(Argument argument, BlockScope blockScope) {
        this.localDeclaration = null;
    }

    public int getInTypeOccurrenceCountForBinaryAnonymousType(TypeDeclaration typeDeclaration, char[] cArr, IJavaElement iJavaElement, int i10) {
        if ((typeDeclaration.bits & 512) != 0 && (this.enclosingElement instanceof IMember) && ((IMember) iJavaElement).isBinary()) {
            int i11 = this.inTypeOccurrencesCounts.get(cArr);
            i10 = i11 != Integer.MIN_VALUE ? i11 + 1 : 1;
            this.inTypeOccurrencesCounts.put(cArr, i10);
        }
        return i10;
    }

    public IJavaElement getLocalElement(int i10) {
        if (this.nodesCount == 1) {
            return this.localElement;
        }
        IJavaElement[] iJavaElementArr = this.localElements;
        if (iJavaElementArr != null) {
            return iJavaElementArr[i10];
        }
        return null;
    }

    public IJavaElement[] getOtherElements(int i10) {
        if (this.nodesCount == 1) {
            IJavaElement[] iJavaElementArr = this.otherElements;
            if (iJavaElementArr != null) {
                int length = iJavaElementArr.length;
                int i11 = this.ptr;
                if (i11 < length - 1) {
                    IJavaElement[] iJavaElementArr2 = new IJavaElement[i11 + 1];
                    this.otherElements = iJavaElementArr2;
                    System.arraycopy(iJavaElementArr, 0, iJavaElementArr2, 0, i11 + 1);
                }
            }
            return this.otherElements;
        }
        IJavaElement[][] iJavaElementArr3 = this.allOtherElements;
        IJavaElement[] iJavaElementArr4 = iJavaElementArr3 == null ? null : iJavaElementArr3[i10];
        if (iJavaElementArr4 == null) {
            return iJavaElementArr4;
        }
        int length2 = iJavaElementArr4.length;
        int i12 = this.ptrs[i10];
        if (i12 >= length2 - 1) {
            return iJavaElementArr4;
        }
        IJavaElement[] iJavaElementArr5 = new IJavaElement[i12 + 1];
        iJavaElementArr3[i10] = iJavaElementArr5;
        System.arraycopy(iJavaElementArr4, 0, iJavaElementArr5, 0, i12 + 1);
        return iJavaElementArr5;
    }

    @Override
    public boolean visit(Argument argument, BlockScope blockScope) {
        this.localDeclaration = argument;
        return true;
    }

    @Override
    public void endVisit(LocalDeclaration localDeclaration, BlockScope blockScope) {
        this.localDeclaration = null;
    }

    @Override
    public boolean visit(LambdaExpression lambdaExpression, BlockScope blockScope) {
        Integer num = (Integer) this.nodeSet.matchingNodes.removeKey(lambdaExpression);
        try {
            TypeBinding typeBinding = lambdaExpression.resolvedType;
            if (typeBinding == null || !typeBinding.isValidBinding() || (lambdaExpression.descriptor instanceof ProblemMethodBinding)) {
                return true;
            }
            this.locator.reportMatching(lambdaExpression, this.enclosingElement, num != null ? num.intValue() : -1, this.nodeSet, this.typeInHierarchy);
            return false;
        } catch (CoreException e10) {
            throw new MatchLocator.WrappedCoreException(e10);
        }
    }

    @Override
    public void endVisit(MarkerAnnotation markerAnnotation, BlockScope blockScope) {
        this.annotation = null;
    }

    @Override
    public void endVisit(NormalAnnotation normalAnnotation, BlockScope blockScope) {
        this.annotation = null;
    }

    @Override
    public void endVisit(SingleMemberAnnotation singleMemberAnnotation, BlockScope blockScope) {
        this.annotation = null;
    }

    @Override
    public boolean visit(LocalDeclaration localDeclaration, BlockScope blockScope) {
        this.localDeclaration = localDeclaration;
        return true;
    }

    @Override
    public boolean visit(MarkerAnnotation markerAnnotation, BlockScope blockScope) {
        this.annotation = markerAnnotation;
        return true;
    }

    @Override
    public boolean visit(NormalAnnotation normalAnnotation, BlockScope blockScope) {
        this.annotation = normalAnnotation;
        return true;
    }

    @Override
    public boolean visit(QualifiedNameReference qualifiedNameReference, BlockScope blockScope) {
        int matchNode;
        if (this.nodesCount <= 0 || (matchNode = matchNode(qualifiedNameReference)) < 0) {
            return false;
        }
        storeHandle(matchNode);
        return false;
    }

    @Override
    public boolean visit(QualifiedTypeReference qualifiedTypeReference, BlockScope blockScope) {
        int matchNode;
        if (this.nodesCount <= 0 || (matchNode = matchNode(qualifiedTypeReference)) < 0) {
            return false;
        }
        storeHandle(matchNode);
        return false;
    }

    @Override
    public boolean visit(SingleMemberAnnotation singleMemberAnnotation, BlockScope blockScope) {
        this.annotation = singleMemberAnnotation;
        return true;
    }

    @Override
    public boolean visit(SingleNameReference singleNameReference, BlockScope blockScope) {
        int matchNode;
        if (this.nodesCount <= 0 || (matchNode = matchNode(singleNameReference)) < 0) {
            return false;
        }
        storeHandle(matchNode);
        return false;
    }

    @Override
    public boolean visit(SingleTypeReference singleTypeReference, BlockScope blockScope) {
        int matchNode;
        if (this.nodesCount <= 0 || (matchNode = matchNode(singleTypeReference)) < 0) {
            return false;
        }
        storeHandle(matchNode);
        return false;
    }

    @Override
    public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
        char[] cArr;
        try {
            if ((typeDeclaration.bits & 512) != 0) {
                cArr = CharOperation.NO_CHAR;
            } else {
                cArr = typeDeclaration.name;
            }
            int i10 = this.occurrencesCounts.get(cArr);
            int i11 = 1;
            if (i10 != Integer.MIN_VALUE) {
                i11 = 1 + i10;
            }
            int inTypeOccurrenceCountForBinaryAnonymousType = getInTypeOccurrenceCountForBinaryAnonymousType(typeDeclaration, cArr, this.enclosingElement, i11);
            this.occurrencesCounts.put(cArr, inTypeOccurrenceCountForBinaryAnonymousType);
            HashtableOfIntValues hashtableOfIntValues = this.inTypeOccurrencesCounts;
            this.locator.inTypeOccurrencesCounts = new HashtableOfIntValues();
            if ((typeDeclaration.bits & 512) != 0) {
                this.locator.reportMatching(typeDeclaration, this.enclosingElement, -1, this.nodeSet, inTypeOccurrenceCountForBinaryAnonymousType);
            } else {
                Integer num = (Integer) this.nodeSet.matchingNodes.removeKey(typeDeclaration);
                this.locator.reportMatching(typeDeclaration, this.enclosingElement, num != null ? num.intValue() : -1, this.nodeSet, inTypeOccurrenceCountForBinaryAnonymousType);
            }
            this.locator.inTypeOccurrencesCounts = hashtableOfIntValues;
            return false;
        } catch (CoreException e10) {
            throw new MatchLocator.WrappedCoreException(e10);
        }
    }
}
