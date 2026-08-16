package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.ModuleEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ModuleDesc;
import java.lang.reflect.AccessFlag;
import java.util.Collection;
import java.util.Optional;
import java.util.Set;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface ModuleRequireInfo {
    ModuleEntry requires();

    int requiresFlagsMask();

    Optional<Utf8Entry> requiresVersion();

    default Set<AccessFlag> requiresFlags() {
        return AccessFlag.maskToAccessFlags(requiresFlagsMask(), AccessFlag.Location.MODULE_REQUIRES);
    }

    default boolean has(AccessFlag flag) {
        return Util.has(AccessFlag.Location.MODULE_REQUIRES, requiresFlagsMask(), flag);
    }

    static ModuleRequireInfo of(ModuleEntry requires, int requiresFlags, Utf8Entry requiresVersion) {
        return new UnboundAttribute.UnboundModuleRequiresInfo(requires, requiresFlags, Optional.ofNullable(requiresVersion));
    }

    static ModuleRequireInfo of(ModuleEntry requires, Collection<AccessFlag> requiresFlags, Utf8Entry requiresVersion) {
        return of(requires, Util.flagsToBits(AccessFlag.Location.MODULE_REQUIRES, requiresFlags), requiresVersion);
    }

    static ModuleRequireInfo of(ModuleDesc requires, int requiresFlags, String requiresVersion) {
        return new UnboundAttribute.UnboundModuleRequiresInfo(TemporaryConstantPool.INSTANCE.moduleEntry(TemporaryConstantPool.INSTANCE.utf8Entry(requires.name())), requiresFlags, Optional.ofNullable(requiresVersion).map(s10 -> {
            return TemporaryConstantPool.INSTANCE.utf8Entry(s10);
        }));
    }

    static ModuleRequireInfo of(ModuleDesc requires, Collection<AccessFlag> requiresFlags, String requiresVersion) {
        return of(requires, Util.flagsToBits(AccessFlag.Location.MODULE_REQUIRES, requiresFlags), requiresVersion);
    }
}
