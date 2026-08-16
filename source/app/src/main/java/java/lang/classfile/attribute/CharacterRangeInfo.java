package java.lang.classfile.attribute;

import jdk.internal.classfile.impl.UnboundAttribute;

public interface CharacterRangeInfo {
    int startPc();

    int endPc();

    int characterRangeStart();

    int characterRangeEnd();

    int flags();

    static CharacterRangeInfo of(int startPc, int endPc, int characterRangeStart, int characterRangeEnd, int flags) {
        return new UnboundAttribute.UnboundCharacterRangeInfo(startPc, endPc, characterRangeStart, characterRangeEnd, flags);
    }
}
