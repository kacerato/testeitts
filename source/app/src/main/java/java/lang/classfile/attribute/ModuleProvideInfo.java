package java.lang.classfile.attribute;

import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.util.Arrays;
import java.util.List;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface ModuleProvideInfo {
    ClassEntry provides();

    List<ClassEntry> providesWith();

    static ModuleProvideInfo of(ClassEntry provides, List<ClassEntry> providesWith) {
        return new UnboundAttribute.UnboundModuleProvideInfo(provides, providesWith);
    }

    static ModuleProvideInfo of(ClassEntry provides, ClassEntry... providesWith) {
        return of(provides, (List<ClassEntry>) List.of(providesWith));
    }

    static ModuleProvideInfo of(ClassDesc provides, List<ClassDesc> providesWith) {
        return of(TemporaryConstantPool.INSTANCE.classEntry(provides), (List<ClassEntry>) Util.entryList(providesWith));
    }

    static ModuleProvideInfo of(ClassDesc provides, ClassDesc... providesWith) {
        return of(provides, (List<ClassDesc>) Arrays.asList(providesWith));
    }
}
