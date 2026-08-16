package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ModuleTargetAttribute extends Attribute<ModuleTargetAttribute>, ClassElement {
    Utf8Entry targetPlatform();

    static ModuleTargetAttribute of(String targetPlatform) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(targetPlatform));
    }

    static ModuleTargetAttribute of(Utf8Entry targetPlatform) {
        return new UnboundAttribute.UnboundModuleTargetAttribute(targetPlatform);
    }
}
