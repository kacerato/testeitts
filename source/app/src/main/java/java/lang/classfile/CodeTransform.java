package java.lang.classfile;

import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Supplier;
import jdk.internal.classfile.impl.TransformImpl;

@FunctionalInterface
public interface CodeTransform extends ClassFileTransform<CodeTransform, CodeElement, CodeBuilder> {
    public static final CodeTransform ACCEPT_ALL = new CodeTransform() {
        @Override
        public void accept(CodeBuilder builder, CodeElement element) {
            builder.with(element);
        }
    };

    static CodeTransform ofStateful(Supplier<CodeTransform> supplier) {
        return new TransformImpl.SupplierCodeTransform((Supplier) Objects.requireNonNull(supplier));
    }

    static CodeTransform endHandler(final Consumer<CodeBuilder> finisher) {
        Objects.requireNonNull(finisher);
        return new CodeTransform() {
            @Override
            public void accept(CodeBuilder builder, CodeElement element) {
                builder.with(element);
            }

            @Override
            public void atEnd(CodeBuilder builder) {
                Consumer.this.accept(builder);
            }
        };
    }

    @Override
    default CodeTransform andThen(CodeTransform t10) {
        return new TransformImpl.ChainedCodeTransform(this, (CodeTransform) Objects.requireNonNull(t10));
    }
}
