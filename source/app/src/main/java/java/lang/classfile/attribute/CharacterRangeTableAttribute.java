package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface CharacterRangeTableAttribute extends Attribute<CharacterRangeTableAttribute> {
    List<CharacterRangeInfo> characterRangeTable();

    static CharacterRangeTableAttribute of(List<CharacterRangeInfo> ranges) {
        return new UnboundAttribute.UnboundCharacterRangeTableAttribute(ranges);
    }
}
