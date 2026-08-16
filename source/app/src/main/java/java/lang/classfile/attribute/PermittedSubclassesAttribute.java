package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.util.Arrays;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface PermittedSubclassesAttribute extends Attribute<PermittedSubclassesAttribute>, ClassElement {
    List<ClassEntry> permittedSubclasses();

    static PermittedSubclassesAttribute of(List<ClassEntry> permittedSubclasses) {
        return new UnboundAttribute.UnboundPermittedSubclassesAttribute(permittedSubclasses);
    }

    static PermittedSubclassesAttribute of(ClassEntry... permittedSubclasses) {
        return of((List<ClassEntry>) List.of(permittedSubclasses));
    }

    static PermittedSubclassesAttribute ofSymbols(List<ClassDesc> permittedSubclasses) {
        return of((List<ClassEntry>) Util.entryList(permittedSubclasses));
    }

    static PermittedSubclassesAttribute ofSymbols(ClassDesc... permittedSubclasses) {
        return ofSymbols((List<ClassDesc>) Arrays.asList(permittedSubclasses));
    }
}
