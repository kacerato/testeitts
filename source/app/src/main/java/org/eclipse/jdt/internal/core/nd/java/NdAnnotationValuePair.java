package org.eclipse.jdt.internal.core.nd.java;

import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdStruct;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToOne;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdAnnotationValuePair extends NdStruct {
    public static final FieldString NAME;
    public static final FieldOneToOne<NdConstant> VALUE;
    public static final StructDef<NdAnnotationValuePair> type;

    static {
        StructDef<NdAnnotationValuePair> create = StructDef.create(NdAnnotationValuePair.class, NdStruct.type);
        type = create;
        NAME = create.addString();
        VALUE = FieldOneToOne.create(create, NdConstant.type, NdConstant.PARENT_ANNOTATION_VALUE);
        create.done();
    }

    public NdAnnotationValuePair(Nd nd2, long j10) {
        super(nd2, j10);
    }

    public IString getName() {
        return NAME.get(getNd(), this.address);
    }

    public NdConstant getValue() {
        return VALUE.get(getNd(), this.address);
    }

    public void setName(char[] cArr) {
        NAME.put(getNd(), this.address, cArr);
    }

    public void setValue(NdConstant ndConstant) {
        VALUE.put(getNd(), this.address, ndConstant);
    }
}
