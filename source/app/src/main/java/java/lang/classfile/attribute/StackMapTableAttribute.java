package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.CodeElement;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface StackMapTableAttribute extends Attribute<StackMapTableAttribute>, CodeElement {
    List<StackMapFrameInfo> entries();

    static StackMapTableAttribute of(List<StackMapFrameInfo> entries) {
        return new UnboundAttribute.UnboundStackMapTableAttribute(entries);
    }
}
