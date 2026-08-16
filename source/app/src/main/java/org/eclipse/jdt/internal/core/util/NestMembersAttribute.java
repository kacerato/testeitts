package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.INestMemberAttributeEntry;
import org.eclipse.jdt.core.util.INestMembersAttribute;

public class NestMembersAttribute extends ClassFileAttribute implements INestMembersAttribute {
    private static final INestMemberAttributeEntry[] NO_ENTRIES = new INestMemberAttributeEntry[0];
    private INestMemberAttributeEntry[] entries;
    private int nestMembers;

    public NestMembersAttribute(byte[] bArr, IConstantPool iConstantPool, int i10) throws ClassFormatException {
        super(bArr, iConstantPool, i10);
        int u2At = u2At(bArr, 6, i10);
        this.nestMembers = u2At;
        if (u2At == 0) {
            this.entries = NO_ENTRIES;
            return;
        }
        this.entries = new INestMemberAttributeEntry[u2At];
        int i11 = 8;
        for (int i12 = 0; i12 < u2At; i12++) {
            this.entries[i12] = new NestMembersAttributeEntry(bArr, iConstantPool, i10 + i11);
            i11 += 2;
        }
    }

    @Override
    public INestMemberAttributeEntry[] getNestMemberAttributesEntries() {
        return this.entries;
    }

    @Override
    public int getNumberOfNestMembers() {
        return this.nestMembers;
    }
}
