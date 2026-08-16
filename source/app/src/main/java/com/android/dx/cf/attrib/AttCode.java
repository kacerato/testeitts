package com.android.dx.cf.attrib;

import com.android.dx.cf.code.ByteCatchList;
import com.android.dx.cf.code.BytecodeArray;
import com.android.dx.cf.iface.AttributeList;
import com.android.dx.util.MutabilityException;

public final class AttCode extends BaseAttribute {
    public static final String ATTRIBUTE_NAME = "Code";
    private final AttributeList attributes;
    private final ByteCatchList catches;
    private final BytecodeArray code;
    private final int maxLocals;
    private final int maxStack;

    public AttCode(int i10, int i11, BytecodeArray bytecodeArray, ByteCatchList byteCatchList, AttributeList attributeList) {
        super("Code");
        if (i10 < 0) {
            throw new IllegalArgumentException("maxStack < 0");
        }
        if (i11 < 0) {
            throw new IllegalArgumentException("maxLocals < 0");
        }
        if (bytecodeArray == null) {
            throw new NullPointerException("code == null");
        }
        try {
            if (byteCatchList.isMutable()) {
                throw new MutabilityException("catches.isMutable()");
            }
            try {
                if (attributeList.isMutable()) {
                    throw new MutabilityException("attributes.isMutable()");
                }
                this.maxStack = i10;
                this.maxLocals = i11;
                this.code = bytecodeArray;
                this.catches = byteCatchList;
                this.attributes = attributeList;
            } catch (NullPointerException unused) {
                throw new NullPointerException("attributes == null");
            }
        } catch (NullPointerException unused2) {
            throw new NullPointerException("catches == null");
        }
    }

    @Override
    public int byteLength() {
        return this.code.byteLength() + 10 + this.catches.byteLength() + this.attributes.byteLength();
    }

    public AttributeList getAttributes() {
        return this.attributes;
    }

    public ByteCatchList getCatches() {
        return this.catches;
    }

    public BytecodeArray getCode() {
        return this.code;
    }

    public int getMaxLocals() {
        return this.maxLocals;
    }

    public int getMaxStack() {
        return this.maxStack;
    }
}
