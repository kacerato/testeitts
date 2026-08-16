package org.eclipse.jdt.core.util;

public interface INestMembersAttribute extends IClassFileAttribute {
    INestMemberAttributeEntry[] getNestMemberAttributesEntries();

    int getNumberOfNestMembers();
}
