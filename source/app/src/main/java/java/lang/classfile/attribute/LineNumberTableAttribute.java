package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface LineNumberTableAttribute extends Attribute<LineNumberTableAttribute> {
    List<LineNumberInfo> lineNumbers();

    static LineNumberTableAttribute of(List<LineNumberInfo> lines) {
        return new UnboundAttribute.UnboundLineNumberTableAttribute(lines);
    }
}
