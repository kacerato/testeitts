package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;

public class LocalVariableAttribute extends ClassFileAttribute implements ILocalVariableAttribute {
    private static final ILocalVariableTableEntry[] NO_ENTRIES = new ILocalVariableTableEntry[0];
    private ILocalVariableTableEntry[] localVariableTable;
    private int localVariableTableLength;

    public LocalVariableAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.localVariableTableLength = u2At;
        if (u2At == 0) {
            this.localVariableTable = NO_ENTRIES;
            return;
        }
        this.localVariableTable = new ILocalVariableTableEntry[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.localVariableTable[i12] = new LocalVariableTableEntry(bArr, iConstantPool, i10 + i11);
            i11 += 10;
        }
    }

    @Override
    public ILocalVariableTableEntry[] getLocalVariableTable() {
        return this.localVariableTable;
    }

    @Override
    public int getLocalVariableTableLength() {
        return this.localVariableTableLength;
    }
}
