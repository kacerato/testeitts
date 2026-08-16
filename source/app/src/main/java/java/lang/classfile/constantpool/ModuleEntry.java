package java.lang.classfile.constantpool;

import java.lang.constant.ModuleDesc;

public interface ModuleEntry extends PoolEntry {
    Utf8Entry name();

    ModuleDesc asSymbol();

    boolean matches(ModuleDesc moduleDesc);
}
