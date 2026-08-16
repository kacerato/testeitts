package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface LocalVariableTypeTableAttribute extends Attribute<LocalVariableTypeTableAttribute> {
    List<LocalVariableTypeInfo> localVariableTypes();

    static LocalVariableTypeTableAttribute of(List<LocalVariableTypeInfo> locals) {
        return new UnboundAttribute.UnboundLocalVariableTypeTableAttribute(locals);
    }
}
