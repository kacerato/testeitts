package org.eclipse.jdt.internal.core.nd.java;

import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldLong;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdMethodAnnotationData extends NdNode {
    public static final FieldList<NdAnnotation> ANNOTATIONS;
    public static final FieldOneToOne<NdMethod> METHOD;
    public static final FieldLong TAG_BITS;
    public static final FieldList<NdTypeAnnotation> TYPE_ANNOTATIONS;
    public static final StructDef<NdMethodAnnotationData> type;

    static {
        StructDef<NdMethodAnnotationData> create = StructDef.create(NdMethodAnnotationData.class, NdNode.type);
        type = create;
        METHOD = FieldOneToOne.createOwner(create, NdMethod.type, NdMethod.ANNOTATION_DATA);
        TAG_BITS = create.addLong();
        ANNOTATIONS = FieldList.create(create, NdAnnotation.type);
        TYPE_ANNOTATIONS = FieldList.create(create, NdTypeAnnotation.type);
        create.done();
    }

    public NdMethodAnnotationData(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public void allocateAnnotations(int i10) {
        ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public void allocateTypeAnnotations(int i10) {
        TYPE_ANNOTATIONS.allocate(getNd(), getAddress(), i10);
    }

    public NdAnnotation createAnnotation() {
        return ANNOTATIONS.append(getNd(), getAddress());
    }

    public NdTypeAnnotation createTypeAnnotation() {
        return TYPE_ANNOTATIONS.append(getNd(), getAddress());
    }

    public List<NdAnnotation> getAnnotations() {
        return ANNOTATIONS.asList(getNd(), this.address);
    }

    public long getTagBits() {
        return TAG_BITS.get(getNd(), this.address);
    }

    public List<NdTypeAnnotation> getTypeAnnotations() {
        return TYPE_ANNOTATIONS.asList(getNd(), this.address);
    }

    public void setTagBits(long j10) {
        TAG_BITS.put(getNd(), this.address, j10);
    }

    public NdMethodAnnotationData(NdMethod ndMethod) {
        super(ndMethod.getNd());
        METHOD.put(getNd(), this.address, ndMethod);
    }
}
