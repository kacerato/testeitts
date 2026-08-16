package org.eclipse.jdt.internal.compiler.parser;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class RecoveredAnnotation extends RecoveredElement {
    public static final int MARKER = 0;
    public static final int NORMAL = 1;
    public static final int SINGLE_MEMBER = 2;
    public Annotation annotation;
    public boolean hasPendingMemberValueName;
    private int identifierLengthPtr;
    private int identifierPtr;
    private int kind;
    public int memberValuPairEqualEnd;
    private int sourceStart;

    public RecoveredAnnotation(int i10, int i11, int i12, RecoveredElement recoveredElement, int i13) {
        super(recoveredElement, i13);
        this.memberValuPairEqualEnd = -1;
        this.kind = 0;
        this.identifierPtr = i10;
        this.identifierLengthPtr = i11;
        this.sourceStart = i12;
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        return (this.annotation != null || (typeDeclaration.bits & 512) == 0) ? super.add(typeDeclaration, i10) : this;
    }

    public RecoveredElement addAnnotation(Annotation annotation, int i10) {
        this.annotation = annotation;
        RecoveredElement recoveredElement = this.parent;
        return recoveredElement != null ? recoveredElement : this;
    }

    @Override
    public RecoveredElement addAnnotationName(int i10, int i11, int i12, int i13) {
        return new RecoveredAnnotation(i10, i11, i12, this, i13);
    }

    @Override
    public ASTNode parseTree() {
        return this.annotation;
    }

    @Override
    public void resetPendingModifiers() {
        RecoveredElement recoveredElement = this.parent;
        if (recoveredElement != null) {
            recoveredElement.resetPendingModifiers();
        }
    }

    public void setKind(int i10) {
        this.kind = i10;
    }

    @Override
    public int sourceEnd() {
        Annotation annotation = this.annotation;
        if (annotation != null) {
            return annotation.declarationSourceEnd;
        }
        Parser parser = parser();
        int i10 = this.identifierPtr;
        long[] jArr = parser.identifierPositionStack;
        return i10 < jArr.length ? (int) jArr[i10] : this.sourceStart;
    }

    @Override
    public String toString(int i10) {
        if (this.annotation != null) {
            return String.valueOf(tabString(i10)) + "Recovered annotation:\n" + ((Object) this.annotation.print(i10 + 1, new StringBuffer(10)));
        }
        return String.valueOf(tabString(i10)) + "Recovered annotation: identiferPtr=" + this.identifierPtr + " identiferlengthPtr=" + this.identifierLengthPtr + "\n";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0, types: [org.eclipse.jdt.internal.compiler.parser.RecoveredAnnotation, org.eclipse.jdt.internal.compiler.parser.RecoveredElement] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7, types: [org.eclipse.jdt.internal.compiler.ast.Annotation, org.eclipse.jdt.internal.compiler.ast.ASTNode] */
    /* JADX WARN: Type inference failed for: r4v8, types: [org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation, org.eclipse.jdt.internal.compiler.ast.Annotation, org.eclipse.jdt.internal.compiler.ast.ASTNode] */
    /* JADX WARN: Type inference failed for: r4v9, types: [org.eclipse.jdt.internal.compiler.ast.NormalAnnotation, org.eclipse.jdt.internal.compiler.ast.Annotation, org.eclipse.jdt.internal.compiler.ast.ASTNode] */
    @Override
    public void updateFromParserState() {
        int i10;
        int i11;
        MemberValuePair memberValuePair;
        MemberValuePair[] memberValuePairArr;
        int i12;
        int i13;
        Parser parser = parser();
        if (this.annotation != null || (i10 = this.identifierPtr) > (i11 = parser.identifierPtr)) {
            return;
        }
        ?? r42 = 0;
        boolean z10 = true;
        if (!this.hasPendingMemberValueName || i10 >= i11) {
            memberValuePair = null;
        } else {
            char[] cArr = parser.identifierStack[i10 + 1];
            long j10 = parser.identifierPositionStack[i10 + 1];
            int i14 = (int) (j10 >>> 32);
            int i15 = (int) j10;
            int i16 = this.memberValuPairEqualEnd;
            if (i16 <= -1) {
                i16 = i15;
            }
            long j11 = i16;
            memberValuePair = new MemberValuePair(cArr, i14, i15, new SingleNameReference(RecoveryScanner.FAKE_IDENTIFIER, ((1 + j11) << 32) + j11));
        }
        parser.identifierPtr = this.identifierPtr;
        parser.identifierLengthPtr = this.identifierLengthPtr;
        TypeReference annotationType = parser.getAnnotationType();
        int i17 = this.kind;
        if (i17 != 1) {
            if (i17 == 2 && (i13 = parser.expressionPtr) > -1) {
                Expression[] expressionArr = parser.expressionStack;
                parser.expressionPtr = i13 - 1;
                Expression expression = expressionArr[i13];
                SingleMemberAnnotation singleMemberAnnotation = new SingleMemberAnnotation(annotationType, this.sourceStart);
                singleMemberAnnotation.memberValue = expression;
                singleMemberAnnotation.declarationSourceEnd = expression.sourceEnd;
                singleMemberAnnotation.bits |= 32;
                r42 = singleMemberAnnotation;
            }
            z10 = false;
        } else {
            int i18 = parser.astPtr;
            if (i18 > -1) {
                ASTNode[] aSTNodeArr = parser.astStack;
                if (aSTNodeArr[i18] instanceof MemberValuePair) {
                    int i19 = parser.astLengthStack[parser.astLengthPtr];
                    int i20 = (i18 - i19) + 1;
                    if (i19 > 0) {
                        if (memberValuePair != null) {
                            memberValuePairArr = new MemberValuePair[i19 + 1];
                            System.arraycopy(aSTNodeArr, i20, memberValuePairArr, 0, i19);
                            parser.astLengthPtr--;
                            parser.astPtr -= i19;
                            memberValuePairArr[i19] = memberValuePair;
                            i12 = memberValuePair.sourceEnd;
                        } else {
                            memberValuePairArr = new MemberValuePair[i19];
                            System.arraycopy(aSTNodeArr, i20, memberValuePairArr, 0, i19);
                            parser.astLengthPtr--;
                            parser.astPtr -= i19;
                            MemberValuePair memberValuePair2 = memberValuePairArr[i19 - 1];
                            Expression expression2 = memberValuePair2.value;
                            i12 = expression2 != null ? expression2 instanceof Annotation ? ((Annotation) expression2).declarationSourceEnd : expression2.sourceEnd : memberValuePair2.sourceEnd;
                        }
                        NormalAnnotation normalAnnotation = new NormalAnnotation(annotationType, this.sourceStart);
                        normalAnnotation.memberValuePairs = memberValuePairArr;
                        normalAnnotation.declarationSourceEnd = i12;
                        normalAnnotation.bits |= 32;
                        r42 = normalAnnotation;
                    }
                }
            }
            z10 = false;
        }
        if (!z10) {
            if (memberValuePair != null) {
                r42 = new NormalAnnotation(annotationType, this.sourceStart);
                r42.memberValuePairs = new MemberValuePair[]{memberValuePair};
                r42.declarationSourceEnd = memberValuePair.value.sourceEnd;
                r42.bits |= 32;
            } else {
                r42 = new MarkerAnnotation(annotationType, this.sourceStart);
                r42.declarationSourceEnd = r42.sourceEnd;
                r42.bits |= 32;
            }
        }
        parser.currentElement = addAnnotation(r42, this.identifierPtr);
        parser.annotationRecoveryCheckPoint(r42.sourceStart, r42.declarationSourceEnd);
        RecoveredElement recoveredElement = this.parent;
        if (recoveredElement != null) {
            recoveredElement.updateFromParserState();
        }
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        int i12 = this.bracketBalance;
        if (i12 > 0) {
            this.bracketBalance = i12 - 1;
            return this;
        }
        RecoveredElement recoveredElement = this.parent;
        return recoveredElement != null ? recoveredElement.updateOnClosingBrace(i10, i11) : this;
    }

    @Override
    public void updateParseTree() {
        updatedAnnotationReference();
    }

    public Annotation updatedAnnotationReference() {
        return this.annotation;
    }
}
