package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface SourceFileAttribute extends Attribute<SourceFileAttribute>, ClassElement {
    Utf8Entry sourceFile();

    static SourceFileAttribute of(String sourceFile) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(sourceFile));
    }

    static SourceFileAttribute of(Utf8Entry sourceFile) {
        return new UnboundAttribute.UnboundSourceFileAttribute(sourceFile);
    }
}
