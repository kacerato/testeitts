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

public interface ModuleExportInfo {
    PackageEntry exportedPackage();

    int exportsFlagsMask();

    List<ModuleEntry> exportsTo();

    default Set<AccessFlag> exportsFlags() {
        return AccessFlag.maskToAccessFlags(exportsFlagsMask(), AccessFlag.Location.MODULE_EXPORTS);
    }

    default boolean has(AccessFlag flag) {
        return Util.has(AccessFlag.Location.MODULE_EXPORTS, exportsFlagsMask(), flag);
    }

    static ModuleExportInfo of(PackageEntry exports, int exportFlags, List<ModuleEntry> exportsTo) {
        return new UnboundAttribute.UnboundModuleExportInfo(exports, exportFlags, exportsTo);
    }

    static ModuleExportInfo of(PackageEntry exports, Collection<AccessFlag> exportFlags, List<ModuleEntry> exportsTo) {
        return of(exports, Util.flagsToBits(AccessFlag.Location.MODULE_EXPORTS, exportFlags), exportsTo);
    }

    static ModuleExportInfo of(PackageEntry exports, int exportFlags, ModuleEntry... exportsTo) {
        return of(exports, exportFlags, (List<ModuleEntry>) List.of(exportsTo));
    }

    static ModuleExportInfo of(PackageEntry exports, Collection<AccessFlag> exportFlags, ModuleEntry... exportsTo) {
        return of(exports, Util.flagsToBits(AccessFlag.Location.MODULE_EXPORTS, exportFlags), exportsTo);
    }

    static ModuleExportInfo of(PackageDesc exports, int exportFlags, List<ModuleDesc> exportsTo) {
        return of(TemporaryConstantPool.INSTANCE.packageEntry(TemporaryConstantPool.INSTANCE.utf8Entry(exports.internalName())), exportFlags, (List<ModuleEntry>) Util.moduleEntryList(exportsTo));
    }

    static ModuleExportInfo of(PackageDesc exports, Collection<AccessFlag> exportFlags, List<ModuleDesc> exportsTo) {
        return of(exports, Util.flagsToBits(AccessFlag.Location.MODULE_EXPORTS, exportFlags), exportsTo);
    }

    static ModuleExportInfo of(PackageDesc exports, int exportFlags, ModuleDesc... exportsTo) {
        return of(exports, exportFlags, (List<ModuleDesc>) List.of(exportsTo));
    }

    static ModuleExportInfo of(PackageDesc exports, Collection<AccessFlag> exportFlags, ModuleDesc... exportsTo) {
        return of(exports, Util.flagsToBits(AccessFlag.Location.MODULE_EXPORTS, exportFlags), exportsTo);
    }
}
