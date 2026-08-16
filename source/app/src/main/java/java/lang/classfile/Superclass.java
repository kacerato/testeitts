package java.lang.classfile;

import java.lang.classfile.constantpool.ClassEntry;
import jdk.internal.classfile.impl.SuperclassImpl;

public interface Superclass extends ClassElement {
    ClassEntry superclassEntry();

    static Superclass of(ClassEntry superclassEntry) {
        return new SuperclassImpl(superclassEntry);
    }
}
