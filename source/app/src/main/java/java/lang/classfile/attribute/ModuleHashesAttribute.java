package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.Utf8Entry;
import java.util.List;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ModuleHashesAttribute extends Attribute<ModuleHashesAttribute>, ClassElement {
    Utf8Entry algorithm();

    List<ModuleHashInfo> hashes();

    static ModuleHashesAttribute of(String algorithm, List<ModuleHashInfo> hashes) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(algorithm), hashes);
    }

    static ModuleHashesAttribute of(String algorithm, ModuleHashInfo... hashes) {
        return of(algorithm, (List<ModuleHashInfo>) List.of(hashes));
    }

    static ModuleHashesAttribute of(Utf8Entry algorithm, List<ModuleHashInfo> hashes) {
        return new UnboundAttribute.UnboundModuleHashesAttribute(algorithm, hashes);
    }

    static ModuleHashesAttribute of(Utf8Entry algorithm, ModuleHashInfo... hashes) {
        return of(algorithm, (List<ModuleHashInfo>) List.of(hashes));
    }
}
