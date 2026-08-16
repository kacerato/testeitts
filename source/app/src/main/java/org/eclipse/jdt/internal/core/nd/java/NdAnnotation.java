package org.eclipse.jdt.internal.core.nd.java;

import java.util.List;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldManyToOne;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdAnnotation extends NdStruct {
    public static final FieldManyToOne<NdTypeSignature> ANNOTATION_TYPE;
    public static final FieldList<NdAnnotationValuePair> ELEMENT_VALUE_PAIRS;
    public static final StructDef<NdAnnotation> type;

    static {
        StructDef<NdAnnotation> create = StructDef.create(NdAnnotation.class, NdStruct.type);
        type = create;
        ANNOTATION_TYPE = FieldManyToOne.create(create, NdTypeSignature.ANNOTATIONS_OF_THIS_TYPE);
        ELEMENT_VALUE_PAIRS = FieldList.create(create, NdAnnotationValuePair.type);
        create.done();
    }

    public NdAnnotation(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public void allocateValuePairs(int i10) {
        ELEMENT_VALUE_PAIRS.allocate(getNd(), getAddress(), i10);
    }

    public NdAnnotationValuePair createValuePair(char[] cArr) {
        NdAnnotationValuePair append = ELEMENT_VALUE_PAIRS.append(getNd(), getAddress());
        append.setName(cArr);
        return append;
    }

    public List<NdAnnotationValuePair> getElementValuePairs() {
        return ELEMENT_VALUE_PAIRS.asList(getNd(), this.address);
    }

    public NdTypeSignature getType() {
        return ANNOTATION_TYPE.get(getNd(), this.address);
    }

    public void setType(NdTypeSignature ndTypeSignature) {
        ANNOTATION_TYPE.put(getNd(), this.address, (long) ndTypeSignature);
    }
}
