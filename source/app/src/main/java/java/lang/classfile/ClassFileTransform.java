package java.lang.classfile;

import java.lang.classfile.ClassFileBuilder;
import java.lang.classfile.ClassFileElement;
import java.lang.classfile.ClassFileTransform;

public interface ClassFileTransform<C extends ClassFileTransform<C, E, B>, E extends ClassFileElement, B extends ClassFileBuilder<E, B>> {
    void accept(B b10, E e10);

    C andThen(C c10);

    default void atEnd(B builder) {
    }

    default void atStart(B builder) {
    }
}
