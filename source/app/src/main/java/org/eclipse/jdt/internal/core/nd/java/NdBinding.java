package org.eclipse.jdt.internal.core.nd.java;

import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.field.FieldInt;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.util.CharArrayBuffer;

public abstract class NdBinding extends NdNode implements IAdaptable {
    public static final FieldInt MODIFIERS;
    public static final FieldList<NdTypeParameter> TYPE_PARAMETERS;
    public static final StructDef<NdBinding> type;

    static {
        StructDef<NdBinding> create = StructDef.create(NdBinding.class, NdNode.type);
        type = create;
        MODIFIERS = create.addInt();
        TYPE_PARAMETERS = FieldList.create(create, NdTypeParameter.type);
        create.done();
    }

    public NdBinding(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private char[] getSignatureFor(NdTypeParameter ndTypeParameter) {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer();
        ndTypeParameter.getSignature(charArrayBuffer);
        return charArrayBuffer.getContents();
    }

    public void allocateTypeParameters(int i10) {
        TYPE_PARAMETERS.allocate(getNd(), getAddress(), i10);
    }

    public NdTypeParameter createTypeParameter() {
        return TYPE_PARAMETERS.append(getNd(), getAddress());
    }

    public Object getAdapter(Class cls) {
        if (cls.isAssignableFrom(NdBinding.class)) {
            return this;
        }
        return null;
    }

    public final int getBindingConstant() {
        return getNodeType();
    }

    public int getModifiers() {
        return MODIFIERS.get(getNd(), this.address);
    }

    public char[][] getTypeParameterSignatures() {
        List<NdTypeParameter> typeParameters = getTypeParameters();
        char[][] cArr = new char[typeParameters.size()];
        Iterator<NdTypeParameter> it = typeParameters.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            cArr[i10] = getSignatureFor(it.next());
            i10++;
        }
        return cArr;
    }

    public List<NdTypeParameter> getTypeParameters() {
        return TYPE_PARAMETERS.asList(getNd(), this.address);
    }

    public boolean hasModifier(int i10) {
        return (i10 & MODIFIERS.get(getNd(), this.address)) != 0;
    }

    public void setModifiers(int i10) {
        MODIFIERS.put(getNd(), this.address, i10);
    }

    public NdBinding(Nd nd2) {
        super(nd2);
    }
}
