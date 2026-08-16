package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.FieldElement;
import java.lang.classfile.MethodElement;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface SyntheticAttribute extends Attribute<SyntheticAttribute>, ClassElement, MethodElement, FieldElement {
    static SyntheticAttribute of() {
        return new UnboundAttribute.UnboundSyntheticAttribute();
    }
}
