package org.eclipse.jdt.internal.compiler.lookup;

public class TypeBound extends ReductionResult {
    boolean isSoft;
    InferenceVariable left;
    long nullHints;

    public TypeBound(InferenceVariable inferenceVariable, TypeBinding typeBinding, int i10) {
        this(inferenceVariable, typeBinding, i10, false);
    }

    public static TypeBound createBoundOrDependency(InferenceSubstitution inferenceSubstitution, TypeBinding typeBinding, InferenceVariable inferenceVariable) {
        return new TypeBound(inferenceVariable, inferenceSubstitution.substitute(inferenceSubstitution, typeBinding), 2, true);
    }

    public boolean equals(Object obj) {
        if (obj instanceof TypeBound) {
            TypeBound typeBound = (TypeBound) obj;
            if (this.relation == typeBound.relation && TypeBinding.equalsEquals(this.left, typeBound.left) && TypeBinding.equalsEquals(this.right, typeBound.right)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.left.hashCode() + this.right.hashCode() + this.relation;
    }

    public boolean isBound() {
        return this.right.isProperType(true);
    }

    public String toString() {
        boolean isProperType = this.right.isProperType(true);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(isProperType ? "TypeBound  " : "Dependency ");
        stringBuffer.append(this.left.sourceName);
        stringBuffer.append(ReductionResult.relationToString(this.relation));
        stringBuffer.append(this.right.readableName());
        return stringBuffer.toString();
    }

    public TypeBound(InferenceVariable inferenceVariable, TypeBinding typeBinding, int i10, boolean z10) {
        this.left = inferenceVariable;
        this.right = typeBinding;
        long j10 = inferenceVariable.tagBits;
        long j11 = typeBinding.tagBits;
        long j12 = TagBits.AnnotationNullMASK;
        if (((j10 | j11) & TagBits.AnnotationNullMASK) != 0) {
            if ((j10 & TagBits.AnnotationNullMASK) == (j11 & TagBits.AnnotationNullMASK)) {
                this.left = (InferenceVariable) inferenceVariable.withoutToplevelNullAnnotation();
                this.right = this.right.withoutToplevelNullAnnotation();
            } else {
                if (i10 == 2) {
                    j12 = 72057594037927936L;
                } else if (i10 == 3) {
                    j12 = 36028797018963968L;
                } else if (i10 != 4) {
                    j12 = 0;
                }
                inferenceVariable.prototype().nullHints |= this.right.tagBits & j12;
            }
        }
        this.relation = i10;
        this.isSoft = z10;
    }
}
