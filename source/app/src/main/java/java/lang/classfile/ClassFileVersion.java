package java.lang.classfile;

import jdk.internal.classfile.impl.ClassFileVersionImpl;

public interface ClassFileVersion extends ClassElement {
    int majorVersion();

    int minorVersion();

    static ClassFileVersion of(int majorVersion, int minorVersion) {
        return new ClassFileVersionImpl(majorVersion, minorVersion);
    }
}
