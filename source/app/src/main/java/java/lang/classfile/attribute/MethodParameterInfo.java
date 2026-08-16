package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.reflect.AccessFlag;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface MethodParameterInfo {
    Optional<Utf8Entry> name();

    int flagsMask();

    default Set<AccessFlag> flags() {
        return AccessFlag.maskToAccessFlags(flagsMask(), AccessFlag.Location.METHOD_PARAMETER);
    }

    default boolean has(AccessFlag flag) {
        return Util.has(AccessFlag.Location.METHOD_PARAMETER, flagsMask(), flag);
    }

    static MethodParameterInfo of(Optional<Utf8Entry> name, int flags) {
        return new UnboundAttribute.UnboundMethodParameterInfo(name, flags);
    }

    static MethodParameterInfo of(Optional<String> name, AccessFlag... flags) {
        TemporaryConstantPool temporaryConstantPool = TemporaryConstantPool.INSTANCE;
        Objects.requireNonNull(temporaryConstantPool);
        return of((Optional<Utf8Entry>) name.map(temporaryConstantPool::utf8Entry), Util.flagsToBits(AccessFlag.Location.METHOD_PARAMETER, flags));
    }

    static MethodParameterInfo ofParameter(Optional<String> name, int flags) {
        TemporaryConstantPool temporaryConstantPool = TemporaryConstantPool.INSTANCE;
        Objects.requireNonNull(temporaryConstantPool);
        return of((Optional<Utf8Entry>) name.map(temporaryConstantPool::utf8Entry), flags);
    }
}
