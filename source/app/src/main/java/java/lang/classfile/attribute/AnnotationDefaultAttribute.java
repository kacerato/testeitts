package java.lang.classfile.attribute;

import java.lang.classfile.AnnotationValue;
import java.lang.classfile.Attribute;
import java.lang.classfile.MethodElement;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface AnnotationDefaultAttribute extends Attribute<AnnotationDefaultAttribute>, MethodElement {
    AnnotationValue defaultValue();

    static AnnotationDefaultAttribute of(AnnotationValue annotationDefault) {
        return new UnboundAttribute.UnboundAnnotationDefaultAttribute(annotationDefault);
    }
}
