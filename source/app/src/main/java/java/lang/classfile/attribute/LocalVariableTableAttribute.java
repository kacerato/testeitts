package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface LocalVariableTableAttribute extends Attribute<LocalVariableTableAttribute> {
    List<LocalVariableInfo> localVariables();

    static LocalVariableTableAttribute of(List<LocalVariableInfo> locals) {
        return new UnboundAttribute.UnboundLocalVariableTableAttribute(locals);
    }
}
