package java.lang.classfile.attribute;

import java.lang.classfile.Annotation;
import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.FieldElement;
import java.lang.classfile.MethodElement;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface RuntimeInvisibleAnnotationsAttribute extends Attribute<RuntimeInvisibleAnnotationsAttribute>, ClassElement, MethodElement, FieldElement {
    List<Annotation> annotations();

    static RuntimeInvisibleAnnotationsAttribute of(List<Annotation> annotations) {
        return new UnboundAttribute.UnboundRuntimeInvisibleAnnotationsAttribute(annotations);
    }

    static RuntimeInvisibleAnnotationsAttribute of(Annotation... annotations) {
        return of((List<Annotation>) List.of(annotations));
    }
}
