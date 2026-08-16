package java.lang.constant;

import java.util.Objects;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.ModuleDescImpl;

public interface ModuleDesc {
    String name();

    boolean equals(Object obj);

    static ModuleDesc of(String name) {
        ConstantUtils.validateModuleName((String) Objects.requireNonNull(name));
        return new ModuleDescImpl(name);
    }
}
