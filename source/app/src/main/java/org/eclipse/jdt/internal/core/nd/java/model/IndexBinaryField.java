package org.eclipse.jdt.internal.core.nd.java.model;

import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryTypeAnnotation;
import org.eclipse.jdt.internal.compiler.impl.Constant;

public class IndexBinaryField implements IBinaryField {
    private IBinaryAnnotation[] annotations;
    private Constant constant;
    private char[] genericSignature;
    private int modifiers;
    private char[] name;
    private long tagBits;
    private IBinaryTypeAnnotation[] typeAnnotations;
    private char[] typeName;

    public IndexBinaryField(IBinaryAnnotation[] iBinaryAnnotationArr, Constant constant, char[] cArr, int i10, char[] cArr2, long j10, IBinaryTypeAnnotation[] iBinaryTypeAnnotationArr, char[] cArr3) {
        this.modifiers = i10;
        this.annotations = iBinaryAnnotationArr;
        this.typeAnnotations = iBinaryTypeAnnotationArr;
        this.constant = constant;
        this.genericSignature = cArr;
        this.name = cArr2;
        this.tagBits = j10;
        this.typeName = cArr3;
    }

    @Override
    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    @Override
    public Constant getConstant() {
        return this.constant;
    }

    @Override
    public char[] getGenericSignature() {
        return this.genericSignature;
    }

    @Override
    public int getModifiers() {
        return this.modifiers;
    }

    @Override
    public char[] getName() {
        return this.name;
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
    public char[] getTypeName() {
        return this.typeName;
    }
}
