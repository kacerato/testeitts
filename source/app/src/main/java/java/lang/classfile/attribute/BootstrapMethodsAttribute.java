package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.BootstrapMethodEntry;
import java.util.List;

public interface BootstrapMethodsAttribute extends Attribute<BootstrapMethodsAttribute> {
    List<BootstrapMethodEntry> bootstrapMethods();

    int bootstrapMethodsSize();
}
