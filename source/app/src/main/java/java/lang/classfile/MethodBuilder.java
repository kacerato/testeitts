package java.lang.classfile;

import java.lang.reflect.AccessFlag;
import java.util.function.Consumer;
import jdk.internal.classfile.impl.AccessFlagsImpl;

public interface MethodBuilder extends ClassFileBuilder<MethodElement, MethodBuilder> {
    MethodBuilder withCode(Consumer<? super CodeBuilder> consumer);

    MethodBuilder transformCode(CodeModel codeModel, CodeTransform codeTransform);

    default MethodBuilder withFlags(int flags) {
        return with(new AccessFlagsImpl(AccessFlag.Location.METHOD, flags));
    }

    default MethodBuilder withFlags(AccessFlag... flags) {
        return with(new AccessFlagsImpl(AccessFlag.Location.METHOD, flags));
    }
}
