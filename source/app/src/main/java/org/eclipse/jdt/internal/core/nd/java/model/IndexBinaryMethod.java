package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.compiler.classfmt.BinaryTypeFormatter;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;

public final class IndexBinaryMethod implements IBinaryMethod {
    private IBinaryAnnotation[] annotations;
    private char[][] argumentNames;
    private Object defaultValue;
    private char[][] exceptionTypeNames;
    private char[] genericSignature;
    private boolean isClInit;
    private boolean isConstructor;
    private char[] methodDescriptor;
    private int modifiers;
    private IBinaryAnnotation[][] parameterAnnotations;
    private char[] selector;
    private long tagBits;
    private IBinaryTypeAnnotation[] typeAnnotations;

    public static IndexBinaryMethod create() {
        return new IndexBinaryMethod();
    }

    @Override
    public int getAnnotatedParametersCount() {
        IBinaryAnnotation[][] iBinaryAnnotationArr = this.parameterAnnotations;
        if (iBinaryAnnotationArr == null) {
            return 0;
        }
        return iBinaryAnnotationArr.length;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    @Override
    public char[][] getArgumentNames() {
        return this.argumentNames;
    }

    @Override
    public Object getDefaultValue() {
        return this.defaultValue;
    }

    @Override
    public char[][] getExceptionTypeNames() {
        return this.exceptionTypeNames;
    }

    @Override
    public char[] getGenericSignature() {
        return this.genericSignature;
    }

    @Override
    public char[] getMethodDescriptor() {
        return this.methodDescriptor;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public IBinaryAnnotation[] getParameterAnnotations(int i10, char[] cArr) {
        IBinaryAnnotation[][] iBinaryAnnotationArr = this.parameterAnnotations;
        if (iBinaryAnnotationArr == null || iBinaryAnnotationArr.length <= i10) {
            return null;
        }
        return iBinaryAnnotationArr[i10];
    }

    @Override
    public char[] getSelector() {
        return this.selector;
    }

    @Override
    public long getTagBits() {
        return this.tagBits;
    }

    @Override
    public IBinaryTypeAnnotation[] getTypeAnnotations() {
        return this.typeAnnotations;
    }

    @Override
    public boolean isClinit() {
        return this.isClInit;
    }

    @Override
    public boolean isConstructor() {
        return this.isConstructor;
    }

    public IndexBinaryMethod setAnnotations(IBinaryAnnotation[] iBinaryAnnotationArr) {
        this.annotations = iBinaryAnnotationArr;
        return this;
    }

    public IndexBinaryMethod setArgumentNames(char[][] cArr) {
        this.argumentNames = cArr;
        return this;
    }

    public IndexBinaryMethod setDefaultValue(Object obj) {
        this.defaultValue = obj;
        return this;
    }

    public IndexBinaryMethod setExceptionTypeNames(char[][] cArr) {
        this.exceptionTypeNames = cArr;
        return this;
    }

    public IndexBinaryMethod setGenericSignature(char[] cArr) {
        this.genericSignature = cArr;
        return this;
    }

    public IndexBinaryMethod setIsClInit(boolean z10) {
        this.isClInit = z10;
        return this;
    }

    public IndexBinaryMethod setIsConstructor(boolean z10) {
        this.isConstructor = z10;
        return this;
    }

    public IndexBinaryMethod setMethodDescriptor(char[] cArr) {
        this.methodDescriptor = cArr;
        return this;
    }

    public IndexBinaryMethod setModifiers(int i10) {
        this.modifiers = i10;
        return this;
    }

    public IndexBinaryMethod setParameterAnnotations(IBinaryAnnotation[][] iBinaryAnnotationArr) {
        this.parameterAnnotations = iBinaryAnnotationArr;
        return this;
    }

    public IndexBinaryMethod setSelector(char[] cArr) {
        this.selector = cArr;
        return this;
    }

    public IndexBinaryMethod setTagBits(long j10) {
        this.tagBits = j10;
        return this;
    }

    public IndexBinaryMethod setTypeAnnotations(IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr) {
        this.typeAnnotations = iBinaryTypeAnnotationArr;
        return this;
    }

    public String toString() {
        return BinaryTypeFormatter.methodToString(this);
    }
}
