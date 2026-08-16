package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.FieldElement;
import java.lang.classfile.MethodElement;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface DeprecatedAttribute extends Attribute<DeprecatedAttribute>, ClassElement, MethodElement, FieldElement {
    static DeprecatedAttribute of() {
        return new UnboundAttribute.UnboundDeprecatedAttribute();
    }
}
