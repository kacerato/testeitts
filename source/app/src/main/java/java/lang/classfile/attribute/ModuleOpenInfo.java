package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.ModuleEntry;
import java.lang.classfile.constantpool.PackageEntry;
import java.lang.constant.ModuleDesc;
import java.lang.constant.PackageDesc;
import java.lang.reflect.AccessFlag;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface ModuleOpenInfo {
    PackageEntry openedPackage();

    int opensFlagsMask();

    List<ModuleEntry> opensTo();

    default Set<AccessFlag> opensFlags() {
        return AccessFlag.maskToAccessFlags(opensFlagsMask(), AccessFlag.Location.MODULE_OPENS);
    }

    default boolean has(AccessFlag flag) {
        return Util.has(AccessFlag.Location.MODULE_OPENS, opensFlagsMask(), flag);
    }

    static ModuleOpenInfo of(PackageEntry opens, int opensFlags, List<ModuleEntry> opensTo) {
        return new UnboundAttribute.UnboundModuleOpenInfo(opens, opensFlags, opensTo);
    }

    static ModuleOpenInfo of(PackageEntry opens, Collection<AccessFlag> opensFlags, List<ModuleEntry> opensTo) {
        return of(opens, Util.flagsToBits(AccessFlag.Location.MODULE_OPENS, opensFlags), opensTo);
    }

    static ModuleOpenInfo of(PackageEntry opens, int opensFlags, ModuleEntry... opensTo) {
        return of(opens, opensFlags, (List<ModuleEntry>) List.of(opensTo));
    }

    static ModuleOpenInfo of(PackageEntry opens, Collection<AccessFlag> opensFlags, ModuleEntry... opensTo) {
        return of(opens, Util.flagsToBits(AccessFlag.Location.MODULE_OPENS, opensFlags), opensTo);
    }

    static ModuleOpenInfo of(PackageDesc opens, int opensFlags, List<ModuleDesc> opensTo) {
        return of(TemporaryConstantPool.INSTANCE.packageEntry(TemporaryConstantPool.INSTANCE.utf8Entry(opens.internalName())), opensFlags, (List<ModuleEntry>) Util.moduleEntryList(opensTo));
    }

    static ModuleOpenInfo of(PackageDesc opens, Collection<AccessFlag> opensFlags, List<ModuleDesc> opensTo) {
        return of(opens, Util.flagsToBits(AccessFlag.Location.MODULE_OPENS, opensFlags), opensTo);
    }

    static ModuleOpenInfo of(PackageDesc opens, int opensFlags, ModuleDesc... opensTo) {
        return of(opens, opensFlags, (List<ModuleDesc>) List.of(opensTo));
    }

    static ModuleOpenInfo of(PackageDesc opens, Collection<AccessFlag> opensFlags, ModuleDesc... opensTo) {
        return of(opens, Util.flagsToBits(AccessFlag.Location.MODULE_OPENS, opensFlags), opensTo);
    }
}
