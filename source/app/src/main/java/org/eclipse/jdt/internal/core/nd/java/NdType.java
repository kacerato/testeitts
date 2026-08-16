package org.eclipse.jdt.internal.core.nd.java;

import java.util.Arrays;
import java.util.List;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.core.nd.IndexExceptionBuilder;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldByte;
import org.eclipse.jdt.internal.core.nd.field.FieldInt;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldLong;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;

public class NdType extends NdBinding {
    public static final FieldList<NdAnnotation> ANNOTATIONS;
    public static final FieldManyToOne<NdTypeId> DECLARING_TYPE;
    public static final FieldString ENCLOSING_METHOD;
    public static final FieldString FIELD_DESCRIPTOR_FROM_CLASS;
    public static final FieldManyToOne<NdResourceFile> FILE;
    public static final FieldByte FLAGS;
    public static final byte FLG_GENERIC_SIGNATURE_PRESENT = 8;
    public static final byte FLG_TYPE_ANONYMOUS = 1;
    public static final byte FLG_TYPE_LOCAL = 2;
    public static final byte FLG_TYPE_MEMBER = 4;
    public static final FieldString INNER_CLASS_SOURCE_NAME;
    public static final FieldOneToMany<NdTypeInterface> INTERFACES;
    public static final FieldList<NdMethod> METHODS;
    public static final FieldString MISSING_TYPE_NAMES;
    public static final FieldString SOURCE_FILE_NAME;
    public static final FieldManyToOne<NdTypeSignature> SUPERCLASS;
    public static final FieldLong TAG_BITS;
    public static final FieldManyToOne<NdTypeId> TYPENAME;
    public static final FieldList<NdTypeAnnotation> TYPE_ANNOTATIONS;
    public static final FieldList<NdVariable> VARIABLES;
    public static final StructDef<NdType> type;

    static {
        StructDef<NdType> create = StructDef.create(NdType.class, NdBinding.type);
        type = create;
        FILE = FieldManyToOne.createOwner(create, NdResourceFile.TYPES);
        TYPENAME = FieldManyToOne.create(create, NdTypeId.TYPES);
        DECLARING_TYPE = FieldManyToOne.create(create, NdTypeId.DECLARED_TYPES);
        INTERFACES = FieldOneToMany.create(create, NdTypeInterface.APPLIES_TO);
        SUPERCLASS = FieldManyToOne.create(create, NdTypeSignature.SUBCLASSES);
        METHODS = FieldList.create(create, NdMethod.type);
        TYPE_ANNOTATIONS = FieldList.create(create, NdTypeAnnotation.type);
        ANNOTATIONS = FieldList.create(create, NdAnnotation.type);
        VARIABLES = FieldList.create(create, NdVariable.type);
        MISSING_TYPE_NAMES = create.addString();
        SOURCE_FILE_NAME = create.addString();
        INNER_CLASS_SOURCE_NAME = create.addString();
        FLAGS = create.addByte();
        TAG_BITS = create.addLong();
        FIELD_DESCRIPTOR_FROM_CLASS = create.addString();
        ENCLOSING_METHOD = create.addString();
        create.done();
    }

    public NdType(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public void allocateAnnotations(int i10) {
        ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public void allocateMethods(int i10) {
        METHODS.allocate(getNd(), getAddress(), i10);
    }

    public void allocateTypeAnnotations(int i10) {
        TYPE_ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public void allocateVariables(int i10) {
        VARIABLES.allocate(getNd(), getAddress(), i10);
    }

    public NdAnnotation createAnnotation() {
        return ANNOTATIONS.append(getNd(), getAddress());
    }

    public NdMethod createMethod() {
        return METHODS.append(getNd(), getAddress());
    }

    public NdTypeAnnotation createTypeAnnotation() {
        return TYPE_ANNOTATIONS.append(getNd(), getAddress());
    }

    public NdVariable createVariable() {
        return VARIABLES.append(getNd(), getAddress());
    }

    public List<NdAnnotation> getAnnotations() {
        return ANNOTATIONS.asList(getNd(), this.address);
    }

    public IString getDeclaringMethod() {
        return ENCLOSING_METHOD.get(getNd(), getAddress());
    }

    public NdTypeId getDeclaringType() {
        return DECLARING_TYPE.get(getNd(), this.address);
    }

    public IString getFieldDescriptor() {
        IString iString = FIELD_DESCRIPTOR_FROM_CLASS.get(getNd(), this.address);
        return iString.length() == 0 ? getTypeId().getFieldDescriptor() : iString;
    }

    public NdResourceFile getFile() {
        return FILE.get(getNd(), this.address);
    }

    public boolean getFlag(byte b10) {
        return (b10 & FLAGS.get(getNd(), this.address)) != 0;
    }

    public List<NdTypeInterface> getInterfaces() {
        return INTERFACES.asList(getNd(), this.address);
    }

    public List<NdMethod> getMethods() {
        return METHODS.asList(getNd(), this.address);
    }

    public List<NdMethod> getMethodsInDeclarationOrder() {
        List<NdMethod> methods = getMethods();
        int size = methods.size();
        NdMethod[] ndMethodArr = new NdMethod[size];
        for (NdMethod ndMethod : methods) {
            int declarationPosition = ndMethod.getDeclarationPosition();
            if (declarationPosition < 0 || declarationPosition >= size) {
                throw getNd().describeProblem().addProblemAddress(NdMethod.DECLARATION_POSITION, ndMethod.getAddress()).build("Method " + ndMethod.getMethodName().getString() + " reports invalid position of " + declarationPosition);
            }
            NdMethod ndMethod2 = ndMethodArr[declarationPosition];
            if (ndMethod2 != null) {
                IndexExceptionBuilder describeProblem = getNd().describeProblem();
                FieldInt fieldInt = NdMethod.DECLARATION_POSITION;
                throw describeProblem.addProblemAddress(fieldInt, ndMethod.getAddress()).addProblemAddress(fieldInt, ndMethod2.getAddress()).build("Method " + ndMethod2.getMethodName().getString() + " and method " + ndMethod.getMethodName().getString() + " both claim to be at position " + declarationPosition);
            }
            ndMethodArr[declarationPosition] = ndMethod;
        }
        return Arrays.asList(ndMethodArr);
    }

    public IString getMissingTypeNames() {
        return MISSING_TYPE_NAMES.get(getNd(), this.address);
    }

    public long getResourceAddress() {
        return FILE.getAddress(getNd(), this.address);
    }

    public NdResourceFile getResourceFile() {
        return FILE.get(getNd(), this.address);
    }

    public IString getSourceFileName() {
        return SOURCE_FILE_NAME.get(getNd(), this.address);
    }

    public char[] getSourceName() {
        IString sourceNameOverride = getSourceNameOverride();
        return sourceNameOverride.length() != 0 ? sourceNameOverride.getChars() : JavaNames.simpleNameToSourceName(getTypeId().getSimpleNameCharArray());
    }

    public IString getSourceNameOverride() {
        return INNER_CLASS_SOURCE_NAME.get(getNd(), this.address);
    }

    public NdTypeSignature getSuperclass() {
        return SUPERCLASS.get(getNd(), this.address);
    }

    public long getTagBits() {
        return TAG_BITS.get(getNd(), this.address);
    }

    public List<NdTypeAnnotation> getTypeAnnotations() {
        return TYPE_ANNOTATIONS.asList(getNd(), this.address);
    }

    public NdTypeId getTypeId() {
        return TYPENAME.get(getNd(), this.address);
    }

    @Override
    public List<NdTypeParameter> getTypeParameters() {
        return NdBinding.TYPE_PARAMETERS.asList(getNd(), this.address);
    }

    public List<NdVariable> getVariables() {
        return VARIABLES.asList(getNd(), this.address);
    }

    public boolean isAnonymous() {
        return getFlag((byte) 1);
    }

    public boolean isLocal() {
        return getFlag((byte) 2);
    }

    public boolean isMember() {
        return getFlag((byte) 4);
    }

    public void setAnonymous(boolean z10) {
        setFlag((byte) 1, z10);
    }

    public void setDeclaringMethod(char[] cArr) {
        ENCLOSING_METHOD.put(getNd(), getAddress(), cArr);
    }

    public void setDeclaringType(NdTypeId ndTypeId) {
        DECLARING_TYPE.put(getNd(), this.address, (long) ndTypeId);
    }

    public void setFieldDescriptorFromClass(char[] cArr) {
        FIELD_DESCRIPTOR_FROM_CLASS.put(getNd(), this.address, cArr);
    }

    public void setFile(NdResourceFile ndResourceFile) {
        FILE.put(getNd(), this.address, (long) ndResourceFile);
    }

    public void setFlag(byte b10, boolean z10) {
        FieldByte fieldByte = FLAGS;
        int i10 = fieldByte.get(getNd(), this.address) & (~b10);
        if (!z10) {
            b10 = 0;
        }
        fieldByte.put(getNd(), this.address, (byte) (b10 | i10));
    }

    public void setIsLocal(boolean z10) {
        setFlag((byte) 2, z10);
    }

    public void setIsMember(boolean z10) {
        setFlag((byte) 4, z10);
    }

    public void setMissingTypeNames(char[] cArr) {
        MISSING_TYPE_NAMES.put(getNd(), this.address, cArr);
    }

    public void setSourceFileName(char[] cArr) {
        SOURCE_FILE_NAME.put(getNd(), this.address, cArr);
    }

    public void setSourceNameOverride(char[] cArr) {
        if (CharArrayUtils.equals(getSourceName(), cArr)) {
            return;
        }
        INNER_CLASS_SOURCE_NAME.put(getNd(), this.address, cArr);
    }

    public void setSuperclass(NdTypeSignature ndTypeSignature) {
        SUPERCLASS.put(getNd(), this.address, (long) ndTypeSignature);
    }

    public void setTagBits(long j10) {
        TAG_BITS.put(getNd(), this.address, j10);
    }

    public void setTypeId(NdTypeId ndTypeId) {
        TYPENAME.put(getNd(), this.address, (long) ndTypeId);
    }

    public String toString() {
        try {
            return ExternalAnnotationProvider.CLASS_PREFIX + new String(getSourceName());
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }

    public NdType(Nd nd2, NdResourceFile ndResourceFile) {
        super(nd2);
        FILE.put(nd2, this.address, (long) ndResourceFile);
    }
}
