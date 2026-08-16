package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ModuleEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.lang.constant.ModuleDesc;
import java.lang.constant.PackageDesc;
import java.lang.reflect.AccessFlag;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import jdk.internal.classfile.impl.ModuleAttributeBuilderImpl;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface ModuleAttribute extends Attribute<ModuleAttribute>, ClassElement {
    ModuleEntry moduleName();

    int moduleFlagsMask();

    Optional<Utf8Entry> moduleVersion();

    List<ModuleRequireInfo> requires();

    List<ModuleExportInfo> exports();

    List<ModuleOpenInfo> opens();

    List<ClassEntry> uses();

    List<ModuleProvideInfo> provides();

    default Set<AccessFlag> moduleFlags() {
        return AccessFlag.maskToAccessFlags(moduleFlagsMask(), AccessFlag.Location.MODULE);
    }

    default boolean has(AccessFlag flag) {
        return Util.has(AccessFlag.Location.MODULE, moduleFlagsMask(), flag);
    }

    static ModuleAttribute of(ModuleEntry moduleName, int moduleFlags, Utf8Entry moduleVersion, Collection<ModuleRequireInfo> requires, Collection<ModuleExportInfo> exports, Collection<ModuleOpenInfo> opens, Collection<ClassEntry> uses, Collection<ModuleProvideInfo> provides) {
        return new UnboundAttribute.UnboundModuleAttribute(moduleName, moduleFlags, moduleVersion, requires, exports, opens, uses, provides);
    }

    static ModuleAttribute of(ModuleDesc moduleName, Consumer<ModuleAttributeBuilder> attrHandler) {
        ModuleAttributeBuilderImpl mb2 = new ModuleAttributeBuilderImpl(moduleName);
        attrHandler.accept(mb2);
        return mb2.build();
    }

    static ModuleAttribute of(ModuleEntry moduleName, Consumer<ModuleAttributeBuilder> attrHandler) {
        ModuleAttributeBuilderImpl mb2 = new ModuleAttributeBuilderImpl(moduleName);
        attrHandler.accept(mb2);
        return mb2.build();
    }

    public interface ModuleAttributeBuilder {
        ModuleAttributeBuilder moduleName(ModuleDesc moduleDesc);

        ModuleAttributeBuilder moduleFlags(int i10);

        ModuleAttributeBuilder moduleVersion(String str);

        ModuleAttributeBuilder requires(ModuleDesc moduleDesc, int i10, String str);

        ModuleAttributeBuilder requires(ModuleRequireInfo moduleRequireInfo);

        ModuleAttributeBuilder exports(PackageDesc packageDesc, int i10, ModuleDesc... moduleDescArr);

        ModuleAttributeBuilder exports(ModuleExportInfo moduleExportInfo);

        ModuleAttributeBuilder opens(PackageDesc packageDesc, int i10, ModuleDesc... moduleDescArr);

        ModuleAttributeBuilder opens(ModuleOpenInfo moduleOpenInfo);

        ModuleAttributeBuilder uses(ClassDesc classDesc);

        ModuleAttributeBuilder uses(ClassEntry classEntry);

        ModuleAttributeBuilder provides(ClassDesc classDesc, ClassDesc... classDescArr);

        ModuleAttributeBuilder provides(ModuleProvideInfo moduleProvideInfo);

        default ModuleAttributeBuilder moduleFlags(AccessFlag... moduleFlags) {
            return moduleFlags(Util.flagsToBits(AccessFlag.Location.MODULE, moduleFlags));
        }

        default ModuleAttributeBuilder requires(ModuleDesc module, Collection<AccessFlag> requiresFlags, String version) {
            return requires(module, Util.flagsToBits(AccessFlag.Location.MODULE_REQUIRES, requiresFlags), version);
        }

        default ModuleAttributeBuilder exports(PackageDesc pkge, Collection<AccessFlag> exportsFlags, ModuleDesc... exportsToModules) {
            return exports(pkge, Util.flagsToBits(AccessFlag.Location.MODULE_EXPORTS, exportsFlags), exportsToModules);
        }

        default ModuleAttributeBuilder opens(PackageDesc pkge, Collection<AccessFlag> opensFlags, ModuleDesc... opensToModules) {
            return opens(pkge, Util.flagsToBits(AccessFlag.Location.MODULE_OPENS, opensFlags), opensToModules);
        }
    }
}
