package java.lang.classfile.attribute;

import java.lang.classfile.Annotation;
import java.lang.classfile.Attribute;
import java.lang.classfile.MethodElement;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface RuntimeInvisibleParameterAnnotationsAttribute extends Attribute<RuntimeInvisibleParameterAnnotationsAttribute>, MethodElement {
    List<List<Annotation>> parameterAnnotations();

    static RuntimeInvisibleParameterAnnotationsAttribute of(List<List<Annotation>> parameterAnnotations) {
        return new UnboundAttribute.UnboundRuntimeInvisibleParameterAnnotationsAttribute(parameterAnnotations);
    }
}
