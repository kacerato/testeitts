package org.eclipse.jdt.internal.compiler.lookup;

import java.lang.reflect.Field;
import org.eclipse.jdt.core.compiler.CharOperation;

public class ProblemReferenceBinding extends ReferenceBinding {
    ReferenceBinding closestMatch;
    private int problemReason;

    public ProblemReferenceBinding(char[][] cArr, ReferenceBinding referenceBinding, int i10) {
        this.compoundName = cArr;
        this.closestMatch = referenceBinding;
        this.problemReason = i10;
    }

    public static String problemReasonString(int i10) {
        try {
            String name = ProblemReasons.class.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf >= 0) {
                name = name.substring(lastIndexOf + 1);
            }
            for (Field field : ProblemReasons.class.getFields()) {
                if (field.getType().equals(Integer.TYPE) && field.getInt(ProblemReasons.class) == i10) {
                    return String.valueOf(name) + '.' + field.getName();
                }
            }
            return "unknown";
        } catch (IllegalAccessException unused) {
            return "unknown";
        }
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        throw new IllegalStateException();
    }

    @Override
    public TypeBinding closestMatch() {
        return this.closestMatch;
    }

    public ReferenceBinding closestReferenceMatch() {
        return this.closestMatch;
    }

    @Override
    public boolean hasTypeBit(int i10) {
        ReferenceBinding referenceBinding = this.closestMatch;
        if (referenceBinding != null) {
            return referenceBinding.hasTypeBit(i10);
        }
        return false;
    }

    @Override
    public int problemId() {
        return this.problemReason;
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
    }

    @Override
    public char[] shortReadableName() {
        return readableName();
    }

    @Override
    public char[] sourceName() {
        char[][] cArr = this.compoundName;
        if (cArr.length == 0) {
            return null;
        }
        return cArr[cArr.length - 1];
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append("ProblemType:[compoundName=");
        char[][] cArr = this.compoundName;
        stringBuffer.append(cArr == null ? "<null>" : new String(CharOperation.concatWith(cArr, '.')));
        stringBuffer.append("][problemID=");
        stringBuffer.append(problemReasonString(this.problemReason));
        stringBuffer.append("][closestMatch=");
        ReferenceBinding referenceBinding = this.closestMatch;
        stringBuffer.append(referenceBinding != null ? referenceBinding.toString() : "<null>");
        stringBuffer.append("]");
        return stringBuffer.toString();
    }
}
