package org.eclipse.jdt.internal.compiler.codegen;

import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnionTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class MultiCatchExceptionLabel extends ExceptionLabel {
    ExceptionLabel[] exceptionLabels;

    public MultiCatchExceptionLabel(CodeStream codeStream, TypeBinding typeBinding) {
        super(codeStream, typeBinding);
    }

    @Override
    public int getCount() {
        int length = this.exceptionLabels.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            i10 += this.exceptionLabels[i11].getCount();
        }
        return i10;
    }

    public void initialize(UnionTypeReference unionTypeReference, Annotation[] annotationArr) {
        TypeReference[] typeReferenceArr = unionTypeReference.typeReferences;
        int length = typeReferenceArr.length;
        this.exceptionLabels = new ExceptionLabel[length];
        int i10 = 0;
        while (i10 < length) {
            ExceptionLabel[] exceptionLabelArr = this.exceptionLabels;
            CodeStream codeStream = this.codeStream;
            TypeReference typeReference = typeReferenceArr[i10];
            exceptionLabelArr[i10] = new ExceptionLabel(codeStream, typeReference.resolvedType, typeReference, i10 == 0 ? annotationArr : null);
            i10++;
        }
    }

    @Override
    public void place() {
        int length = this.exceptionLabels.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.exceptionLabels[i10].place();
        }
    }

    @Override
    public void placeEnd() {
        int length = this.exceptionLabels.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.exceptionLabels[i10].placeEnd();
        }
    }

    @Override
    public void placeStart() {
        int length = this.exceptionLabels.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.exceptionLabels[i10].placeStart();
        }
    }
}
