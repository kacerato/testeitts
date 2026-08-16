package org.eclipse.jdt.internal.core.nd.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public abstract class NdTypeSignature extends NdNode {
    public static final FieldOneToMany<NdAnnotation> ANNOTATIONS_OF_THIS_TYPE;
    public static final FieldOneToMany<NdTypeInterface> IMPLEMENTATIONS;
    public static final FieldOneToMany<NdType> SUBCLASSES;
    public static final FieldOneToMany<NdConstantClass> USED_AS_CONSTANT;
    public static final FieldOneToMany<NdConstantEnum> USED_AS_ENUM_CONSTANT;
    public static final FieldOneToMany<NdMethodException> USED_AS_EXCEPTION;
    public static final FieldOneToMany<NdMethodParameter> USED_AS_METHOD_ARGUMENT;
    public static final FieldOneToMany<NdMethod> USED_AS_RETURN_TYPE;
    public static final FieldOneToMany<NdTypeArgument> USED_AS_TYPE_ARGUMENT;
    public static final FieldOneToMany<NdTypeBound> USED_AS_TYPE_BOUND;
    public static final FieldOneToMany<NdVariable> VARIABLES_OF_TYPE;
    public static StructDef<NdTypeSignature> type;

    static {
        StructDef<NdTypeSignature> createAbstract = StructDef.createAbstract(NdTypeSignature.class, NdNode.type);
        type = createAbstract;
        SUBCLASSES = FieldOneToMany.create(createAbstract, NdType.SUPERCLASS);
        ANNOTATIONS_OF_THIS_TYPE = FieldOneToMany.create(type, NdAnnotation.ANNOTATION_TYPE);
        IMPLEMENTATIONS = FieldOneToMany.create(type, NdTypeInterface.IMPLEMENTS);
        VARIABLES_OF_TYPE = FieldOneToMany.create(type, NdVariable.TYPE);
        USED_AS_CONSTANT = FieldOneToMany.create(type, NdConstantClass.VALUE);
        USED_AS_ENUM_CONSTANT = FieldOneToMany.create(type, NdConstantEnum.ENUM_TYPE);
        USED_AS_TYPE_ARGUMENT = FieldOneToMany.create(type, NdTypeArgument.TYPE_SIGNATURE);
        USED_AS_TYPE_BOUND = FieldOneToMany.create(type, NdTypeBound.TYPE);
        USED_AS_METHOD_ARGUMENT = FieldOneToMany.create(type, NdMethodParameter.ARGUMENT_TYPE);
        USED_AS_EXCEPTION = FieldOneToMany.create(type, NdMethodException.EXCEPTION_TYPE);
        USED_AS_RETURN_TYPE = FieldOneToMany.create(type, NdMethod.RETURN_TYPE);
        type.useStandardRefCounting().done();
    }

    public NdTypeSignature(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public abstract NdTypeSignature getArrayDimensionType();

    public abstract List<NdTypeSignature> getDeclaringTypeChain();

    public List<NdTypeInterface> getImplementations() {
        return IMPLEMENTATIONS.asList(getNd(), this.address);
    }

    public abstract NdTypeId getRawType();

    public final void getSignature(CharArrayBuffer charArrayBuffer) {
        getSignature(charArrayBuffer, true);
    }

    public abstract void getSignature(CharArrayBuffer charArrayBuffer, boolean z10);

    public List<NdType> getSubTypes() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getSubclasses());
        Iterator<NdTypeInterface> it = getImplementations().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getImplementation());
        }
        return arrayList;
    }

    public List<NdType> getSubclasses() {
        return SUBCLASSES.asList(getNd(), this.address);
    }

    public abstract List<NdTypeArgument> getTypeArguments();

    public abstract boolean isArrayType();

    public abstract boolean isTypeVariable();

    public String toString() {
        try {
            CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
            getSignature(charArrayBuffer);
            return charArrayBuffer.toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }

    public NdTypeSignature(Nd nd2) {
        super(nd2);
    }
}
