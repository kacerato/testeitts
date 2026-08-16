package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.MethodElement;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface MethodParametersAttribute extends Attribute<MethodParametersAttribute>, MethodElement {
    List<MethodParameterInfo> parameters();

    static MethodParametersAttribute of(List<MethodParameterInfo> parameters) {
        return new UnboundAttribute.UnboundMethodParametersAttribute(parameters);
    }

    static MethodParametersAttribute of(MethodParameterInfo... parameters) {
        return of((List<MethodParameterInfo>) List.of(parameters));
    }
}
