package java.lang.classfile;

import java.lang.reflect.AccessFlag;
import jdk.internal.classfile.impl.AccessFlagsImpl;

public interface FieldBuilder extends ClassFileBuilder<FieldElement, FieldBuilder> {
    default FieldBuilder withFlags(int flags) {
        return with(new AccessFlagsImpl(AccessFlag.Location.FIELD, flags));
    }

    default FieldBuilder withFlags(AccessFlag... flags) {
        return with(new AccessFlagsImpl(AccessFlag.Location.FIELD, flags));
    }
}
