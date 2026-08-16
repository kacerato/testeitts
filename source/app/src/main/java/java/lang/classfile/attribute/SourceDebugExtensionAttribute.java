package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface SourceDebugExtensionAttribute extends Attribute<SourceDebugExtensionAttribute>, ClassElement {
    byte[] contents();

    static SourceDebugExtensionAttribute of(byte[] contents) {
        return new UnboundAttribute.UnboundSourceDebugExtensionAttribute(contents);
    }
}
