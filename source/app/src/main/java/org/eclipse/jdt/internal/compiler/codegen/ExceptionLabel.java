package org.eclipse.jdt.internal.compiler.codegen;

import okhttp3.v;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.openjdk.tools.doclint.DocLint;

public class ExceptionLabel extends Label {
    private int count;
    public TypeBinding exceptionType;
    public TypeReference exceptionTypeReference;
    public int[] ranges;
    public Annotation[] se7Annotations;

    public ExceptionLabel(CodeStream codeStream, TypeBinding typeBinding, TypeReference typeReference, Annotation[] annotationArr) {
        super(codeStream);
        this.ranges = new int[]{-1, -1};
        this.count = 0;
        this.exceptionType = typeBinding;
        this.exceptionTypeReference = typeReference;
        this.se7Annotations = annotationArr;
    }

    public int getCount() {
        return this.count;
    }

    @Override
    public void place() {
        this.codeStream.registerExceptionHandler(this);
        this.position = this.codeStream.getPosition();
    }

    public void placeEnd() {
        int i10 = this.codeStream.position;
        int[] iArr = this.ranges;
        int i11 = this.count;
        if (iArr[i11 - 1] == i10) {
            this.count = i11 - 1;
        } else {
            this.count = i11 + 1;
            iArr[i11] = i10;
        }
    }

    public void placeStart() {
        int i10 = this.codeStream.position;
        int i11 = this.count;
        if (i11 > 0 && this.ranges[i11 - 1] == i10) {
            this.count = i11 - 1;
            return;
        }
        int[] iArr = this.ranges;
        int length = iArr.length;
        if (i11 == length) {
            int[] iArr2 = new int[length * 2];
            this.ranges = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        int[] iArr3 = this.ranges;
        int i12 = this.count;
        this.count = i12 + 1;
        iArr3[i12] = i10;
    }

    public String toString() {
        int i10;
        String name = getClass().getName();
        StringBuffer stringBuffer = new StringBuffer(name.substring(name.lastIndexOf(46) + 1));
        stringBuffer.append('@');
        stringBuffer.append(Integer.toHexString(hashCode()));
        stringBuffer.append("(type=");
        TypeBinding typeBinding = this.exceptionType;
        stringBuffer.append(typeBinding == null ? CharOperation.NO_CHAR : typeBinding.readableName());
        stringBuffer.append(", position=");
        stringBuffer.append(this.position);
        stringBuffer.append(", ranges = ");
        if (this.count == 0) {
            stringBuffer.append(v.f99450n);
        } else {
            int i11 = 0;
            while (true) {
                i10 = this.count;
                if (i11 >= i10) {
                    break;
                }
                if ((i11 & 1) == 0) {
                    stringBuffer.append("[");
                    stringBuffer.append(this.ranges[i11]);
                } else {
                    stringBuffer.append(DocLint.SEPARATOR);
                    stringBuffer.append(this.ranges[i11]);
                    stringBuffer.append("]");
                }
                i11++;
            }
            if ((i10 & 1) == 1) {
                stringBuffer.append(",?]");
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public ExceptionLabel(CodeStream codeStream, TypeBinding typeBinding) {
        super(codeStream);
        this.ranges = new int[]{-1, -1};
        this.count = 0;
        this.exceptionType = typeBinding;
    }
}
