package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ModuleResolutionAttribute extends Attribute<ModuleResolutionAttribute>, ClassElement {
    int resolutionFlags();

    static ModuleResolutionAttribute of(int resolutionFlags) {
        return new UnboundAttribute.UnboundModuleResolutionAttribute(resolutionFlags);
    }
}
