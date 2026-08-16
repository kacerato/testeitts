package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.lang.reflect.AccessFlag;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface InnerClassInfo {
    ClassEntry innerClass();

    Optional<ClassEntry> outerClass();

    Optional<Utf8Entry> innerName();

    int flagsMask();

    default Set<AccessFlag> flags() {
        return AccessFlag.maskToAccessFlags(flagsMask(), AccessFlag.Location.INNER_CLASS);
    }

    default boolean has(AccessFlag flag) {
        return Util.has(AccessFlag.Location.INNER_CLASS, flagsMask(), flag);
    }

    static InnerClassInfo of(ClassEntry innerClass, Optional<ClassEntry> outerClass, Optional<Utf8Entry> innerName, int flags) {
        return new UnboundAttribute.UnboundInnerClassInfo(innerClass, outerClass, innerName, flags);
    }

    static InnerClassInfo of(ClassDesc innerClass, Optional<ClassDesc> outerClass, Optional<String> innerName, int flags) {
        ClassEntry classEntry = TemporaryConstantPool.INSTANCE.classEntry(innerClass);
        TemporaryConstantPool temporaryConstantPool = TemporaryConstantPool.INSTANCE;
        Objects.requireNonNull(temporaryConstantPool);
        Optional<U> map = outerClass.map(temporaryConstantPool::classEntry);
        TemporaryConstantPool temporaryConstantPool2 = TemporaryConstantPool.INSTANCE;
        Objects.requireNonNull(temporaryConstantPool2);
        return new UnboundAttribute.UnboundInnerClassInfo(classEntry, map, innerName.map(temporaryConstantPool2::utf8Entry), flags);
    }

    static InnerClassInfo of(ClassDesc innerClass, Optional<ClassDesc> outerClass, Optional<String> innerName, AccessFlag... flags) {
        return of(innerClass, outerClass, innerName, Util.flagsToBits(AccessFlag.Location.INNER_CLASS, flags));
    }
}
