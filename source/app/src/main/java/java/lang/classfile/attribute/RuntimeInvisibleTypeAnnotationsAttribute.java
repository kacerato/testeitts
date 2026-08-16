package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.CodeElement;
import java.lang.classfile.FieldElement;
import java.lang.classfile.MethodElement;
import java.lang.classfile.TypeAnnotation;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface RuntimeInvisibleTypeAnnotationsAttribute extends Attribute<RuntimeInvisibleTypeAnnotationsAttribute>, ClassElement, MethodElement, FieldElement, CodeElement {
    List<TypeAnnotation> annotations();

    static RuntimeInvisibleTypeAnnotationsAttribute of(List<TypeAnnotation> annotations) {
        return new UnboundAttribute.UnboundRuntimeInvisibleTypeAnnotationsAttribute(annotations);
    }

    static RuntimeInvisibleTypeAnnotationsAttribute of(TypeAnnotation... annotations) {
        return of((List<TypeAnnotation>) List.of(annotations));
    }
}
