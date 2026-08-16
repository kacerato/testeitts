package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.PackageEntry;
import java.lang.constant.PackageDesc;
import java.util.Arrays;
import java.util.List;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ModulePackagesAttribute extends Attribute<ModulePackagesAttribute>, ClassElement {
    List<PackageEntry> packages();

    static ModulePackagesAttribute of(List<PackageEntry> packages) {
        return new UnboundAttribute.UnboundModulePackagesAttribute(packages);
    }

    static ModulePackagesAttribute of(PackageEntry... packages) {
        return of((List<PackageEntry>) List.of(packages));
    }

    static ModulePackagesAttribute ofNames(List<PackageDesc> packages) {
        PackageEntry[] p10 = new PackageEntry[packages.size()];
        for (int i10 = 0; i10 < packages.size(); i10++) {
            p10[i10] = TemporaryConstantPool.INSTANCE.packageEntry(TemporaryConstantPool.INSTANCE.utf8Entry(packages.get(i10).internalName()));
        }
        return of(p10);
    }

    static ModulePackagesAttribute ofNames(PackageDesc... packages) {
        return ofNames((List<PackageDesc>) Arrays.asList(packages));
    }
}
