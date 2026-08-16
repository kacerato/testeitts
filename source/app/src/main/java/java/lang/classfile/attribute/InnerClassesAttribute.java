package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface InnerClassesAttribute extends Attribute<InnerClassesAttribute>, ClassElement {
    List<InnerClassInfo> classes();

    static InnerClassesAttribute of(List<InnerClassInfo> innerClasses) {
        return new UnboundAttribute.UnboundInnerClassesAttribute(innerClasses);
    }

    static InnerClassesAttribute of(InnerClassInfo... innerClasses) {
        return new UnboundAttribute.UnboundInnerClassesAttribute(List.of(innerClasses));
    }
}
