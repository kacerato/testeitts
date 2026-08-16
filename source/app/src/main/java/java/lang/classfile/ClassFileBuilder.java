package java.lang.classfile;

import java.lang.classfile.ClassFileBuilder;
import java.lang.classfile.ClassFileElement;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.util.function.Consumer;
import jdk.internal.classfile.impl.TransformImpl;

public interface ClassFileBuilder<E extends ClassFileElement, B extends ClassFileBuilder<E, B>> extends Consumer<E> {
    B with(E e10);

    ConstantPoolBuilder constantPool();

    @Override
    default void accept(E e10) {
        with(e10);
    }

    default B transform(CompoundElement<E> model, ClassFileTransform<?, E, B> transform) {
        TransformImpl.ResolvedTransform<E> resolved = TransformImpl.resolve(transform, this);
        resolved.startHandler().run();
        model.forEach(resolved.consumer());
        resolved.endHandler().run();
        return this;
    }
}
