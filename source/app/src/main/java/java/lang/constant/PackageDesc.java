package java.lang.constant;

import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.PackageDescImpl;

public interface PackageDesc {
    String internalName();

    boolean equals(Object obj);

    static PackageDesc of(String name) {
        ConstantUtils.validateBinaryPackageName(name);
        return new PackageDescImpl(ConstantUtils.binaryToInternal(name));
    }

    static PackageDesc ofInternalName(String name) {
        ConstantUtils.validateInternalPackageName(name);
        return new PackageDescImpl(name);
    }

    default String name() {
        return ConstantUtils.internalToBinary(internalName());
    }
}
