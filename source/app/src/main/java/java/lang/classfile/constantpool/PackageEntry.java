package java.lang.classfile.constantpool;

import java.lang.constant.PackageDesc;

public interface PackageEntry extends PoolEntry {
    Utf8Entry name();

    PackageDesc asSymbol();

    boolean matches(PackageDesc packageDesc);
}
