package java.lang.classfile;

import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.util.Arrays;
import java.util.List;
import jdk.internal.classfile.impl.InterfacesImpl;
import jdk.internal.classfile.impl.Util;

public interface Interfaces extends ClassElement {
    List<ClassEntry> interfaces();

    static Interfaces of(List<ClassEntry> interfaces) {
        return new InterfacesImpl(interfaces);
    }

    static Interfaces of(ClassEntry... interfaces) {
        return of((List<ClassEntry>) List.of(interfaces));
    }

    static Interfaces ofSymbols(List<ClassDesc> interfaces) {
        return of((List<ClassEntry>) Util.entryList(interfaces));
    }

    static Interfaces ofSymbols(ClassDesc... interfaces) {
        return ofSymbols((List<ClassDesc>) Arrays.asList(interfaces));
    }
}
