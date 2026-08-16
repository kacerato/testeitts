package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ModuleMainClassAttribute extends Attribute<ModuleMainClassAttribute>, ClassElement {
    ClassEntry mainClass();

    static ModuleMainClassAttribute of(ClassEntry mainClass) {
        return new UnboundAttribute.UnboundModuleMainClassAttribute(mainClass);
    }

    static ModuleMainClassAttribute of(ClassDesc mainClass) {
        return new UnboundAttribute.UnboundModuleMainClassAttribute(TemporaryConstantPool.INSTANCE.classEntry(mainClass));
    }
}
