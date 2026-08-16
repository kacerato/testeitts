package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.ModuleEntry;
import java.lang.constant.ModuleDesc;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ModuleHashInfo {
    ModuleEntry moduleName();

    byte[] hash();

    static ModuleHashInfo of(ModuleEntry moduleName, byte[] hash) {
        return new UnboundAttribute.UnboundModuleHashInfo(moduleName, hash);
    }

    static ModuleHashInfo of(ModuleDesc moduleDesc, byte[] hash) {
        return new UnboundAttribute.UnboundModuleHashInfo(TemporaryConstantPool.INSTANCE.moduleEntry(TemporaryConstantPool.INSTANCE.utf8Entry(moduleDesc.name())), hash);
    }
}
