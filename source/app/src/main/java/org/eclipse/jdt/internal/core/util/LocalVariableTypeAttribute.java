package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableEntry;

public class LocalVariableTypeAttribute extends ClassFileAttribute implements ILocalVariableTypeTableAttribute {
    private static final ILocalVariableTypeTableEntry[] NO_ENTRIES = new ILocalVariableTypeTableEntry[0];
    private ILocalVariableTypeTableEntry[] localVariableTypeTableEntries;
    private int localVariableTypeTableLength;

    public LocalVariableTypeAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.localVariableTypeTableLength = u2At;
        if (u2At == 0) {
            this.localVariableTypeTableEntries = NO_ENTRIES;
            return;
        }
        this.localVariableTypeTableEntries = new ILocalVariableTypeTableEntry[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.localVariableTypeTableEntries[i12] = new LocalVariableTypeTableEntry(bArr, iConstantPool, i10 + i11);
            i11 += 10;
        }
    }

    @Override
    public ILocalVariableTypeTableEntry[] getLocalVariableTypeTable() {
        return this.localVariableTypeTableEntries;
    }

    @Override
    public int getLocalVariableTypeTableLength() {
        return this.localVariableTypeTableLength;
    }
}
