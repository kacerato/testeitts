package org.eclipse.jdt.internal.core.nd.java;

import java.util.Collections;
import java.util.List;
import org.eclipse.jdt.internal.compiler.classfmt.JavaBinaryNames;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldInt;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldShort;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public class NdMethod extends NdBinding {
    public static final FieldOneToOne<NdMethodAnnotationData> ANNOTATION_DATA;
    public static final FieldInt DECLARATION_POSITION;
    public static final FieldOneToMany<NdVariable> DECLARED_VARIABLES;
    public static final FieldOneToOne<NdConstant> DEFAULT_VALUE;
    public static final FieldList<NdMethodException> EXCEPTIONS;
    public static final byte FLG_GENERIC_SIGNATURE_PRESENT = 1;
    public static final byte FLG_THROWS_SIGNATURE_PRESENT = 2;
    public static final FieldShort METHOD_FLAGS;
    public static final FieldString METHOD_NAME;
    public static final FieldList<NdMethodParameter> PARAMETERS;
    public static final FieldManyToOne<NdTypeSignature> RETURN_TYPE;
    public static final StructDef<NdMethod> type;

    static {
        StructDef<NdMethod> create = StructDef.create(NdMethod.class, NdBinding.type);
        type = create;
        METHOD_NAME = create.addString();
        METHOD_FLAGS = create.addShort();
        PARAMETERS = FieldList.create(create, NdMethodParameter.type);
        DECLARED_VARIABLES = FieldOneToMany.create(create, NdVariable.DECLARING_METHOD);
        DEFAULT_VALUE = FieldOneToOne.create(create, NdConstant.type, NdConstant.PARENT_METHOD);
        EXCEPTIONS = FieldList.create(create, NdMethodException.type);
        RETURN_TYPE = FieldManyToOne.create(create, NdTypeSignature.USED_AS_RETURN_TYPE);
        ANNOTATION_DATA = FieldOneToOne.create(create, NdMethodAnnotationData.type, NdMethodAnnotationData.METHOD);
        DECLARATION_POSITION = create.addInt();
        create.done();
    }

    public NdMethod(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private NdMethodAnnotationData getAnnotationData() {
        return ANNOTATION_DATA.get(getNd(), getAddress());
    }

    public void allocateAnnotations(int i10) {
        if (i10 > 0) {
            createAnnotationData().allocateAnnotations(i10);
        }
    }

    public void allocateExceptions(int i10) {
        EXCEPTIONS.allocate(this.f102534nd, this.address, i10);
    }

    public void allocateParameters(int i10) {
        PARAMETERS.allocate(this.f102534nd, this.address, i10);
    }

    public void allocateTypeAnnotations(int i10) {
        if (i10 > 0) {
            createAnnotationData().allocateTypeAnnotations(i10);
        }
    }

    public NdAnnotation createAnnotation() {
        return createAnnotationData().createAnnotation();
    }

    public NdMethodAnnotationData createAnnotationData() {
        NdMethodAnnotationData annotationData = getAnnotationData();
        return annotationData == null ? new NdMethodAnnotationData(this) : annotationData;
    }

    public NdMethodException createException(NdTypeSignature ndTypeSignature) {
        NdMethodException append = EXCEPTIONS.append(getNd(), getAddress());
        append.setExceptionType(ndTypeSignature);
        return append;
    }

    public NdMethodParameter createNewParameter() {
        return PARAMETERS.append(getNd(), getAddress());
    }

    public NdTypeAnnotation createTypeAnnotation() {
        return createAnnotationData().createTypeAnnotation();
    }

    public List<NdAnnotation> getAnnotations() {
        NdMethodAnnotationData annotationData = getAnnotationData();
        return annotationData != null ? annotationData.getAnnotations() : Collections.emptyList();
    }

    public int getDeclarationPosition() {
        return DECLARATION_POSITION.get(getNd(), getAddress());
    }

    public NdConstant getDefaultValue() {
        return DEFAULT_VALUE.get(getNd(), this.address);
    }

    public List<NdMethodException> getExceptions() {
        return EXCEPTIONS.asList(getNd(), this.address);
    }

    public int getFlags() {
        return METHOD_FLAGS.get(getNd(), this.address);
    }

    public void getGenericSignature(CharArrayBuffer charArrayBuffer, boolean z10) {
        NdTypeParameter.getSignature(charArrayBuffer, getTypeParameters());
        charArrayBuffer.append('(');
        for (NdMethodParameter ndMethodParameter : getMethodParameters()) {
            if (!ndMethodParameter.isCompilerDefined()) {
                ndMethodParameter.getType().getSignature(charArrayBuffer);
            }
        }
        charArrayBuffer.append(')');
        NdTypeSignature returnType = getReturnType();
        if (returnType == null) {
            charArrayBuffer.append('V');
        } else {
            returnType.getSignature(charArrayBuffer);
        }
        if (z10) {
            for (NdMethodException ndMethodException : getExceptions()) {
                charArrayBuffer.append('^');
                ndMethodException.getExceptionType().getSignature(charArrayBuffer);
            }
        }
    }

    public char[] getMethodDescriptor() {
        char[] chars = getMethodName().getChars();
        return CharArrayUtils.subarray(chars, CharArrayUtils.indexOf('(', chars, 0, chars.length), chars.length);
    }

    public IString getMethodName() {
        return METHOD_NAME.get(getNd(), this.address);
    }

    public List<NdMethodParameter> getMethodParameters() {
        return PARAMETERS.asList(getNd(), this.address);
    }

    public char[][] getParameterNames() {
        List<NdMethodParameter> methodParameters = getMethodParameters();
        int size = methodParameters.size();
        char[][] cArr = new char[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            NdMethodParameter ndMethodParameter = methodParameters.get(i11);
            if (!ndMethodParameter.isCompilerDefined()) {
                cArr[i10] = ndMethodParameter.getName().getChars();
                i10++;
            }
        }
        return CharArrayUtils.subarray(cArr, 0, i10);
    }

    public NdTypeSignature getReturnType() {
        return RETURN_TYPE.get(getNd(), this.address);
    }

    public char[] getSelector() {
        char[] chars = METHOD_NAME.get(getNd(), getAddress()).getChars();
        int indexOf = CharArrayUtils.indexOf('(', chars);
        if (indexOf == -1) {
            indexOf = chars.length;
        }
        return CharArrayUtils.subarray(chars, 0, indexOf);
    }

    public long getTagBits() {
        NdMethodAnnotationData annotationData = getAnnotationData();
        if (annotationData == null) {
            return 0L;
        }
        return annotationData.getTagBits();
    }

    public List<NdTypeAnnotation> getTypeAnnotations() {
        NdMethodAnnotationData annotationData = getAnnotationData();
        return annotationData != null ? annotationData.getTypeAnnotations() : Collections.emptyList();
    }

    public boolean hasAllFlags(int i10) {
        return (getFlags() & i10) == i10;
    }

    public boolean isClInit() {
        return JavaBinaryNames.isClinit(getSelector());
    }

    public boolean isConstructor() {
        return JavaBinaryNames.isConstructor(getSelector());
    }

    public void setDeclarationPosition(int i10) {
        DECLARATION_POSITION.put(getNd(), getAddress(), i10);
    }

    public void setDefaultValue(NdConstant ndConstant) {
        DEFAULT_VALUE.put(getNd(), this.address, ndConstant);
    }

    public void setFlags(int i10) {
        METHOD_FLAGS.put(getNd(), this.address, (short) (i10 | getFlags()));
    }

    public void setMethodName(char[] cArr) {
        METHOD_NAME.put(getNd(), getAddress(), cArr);
    }

    public void setReturnType(NdTypeSignature ndTypeSignature) {
        RETURN_TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public void setTagBits(long j10) {
        if (j10 != 0) {
            createAnnotationData().setTagBits(j10);
            return;
        }
        NdMethodAnnotationData annotationData = getAnnotationData();
        if (annotationData != null) {
            annotationData.setTagBits(j10);
        }
    }

    public String toString() {
        try {
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
            charArrayBuffer.append(getSelector());
            getGenericSignature(charArrayBuffer, true);
            return charArrayBuffer.toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }
}
