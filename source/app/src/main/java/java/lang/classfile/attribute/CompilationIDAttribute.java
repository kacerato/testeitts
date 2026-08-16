package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface CompilationIDAttribute extends Attribute<CompilationIDAttribute>, ClassElement {
    Utf8Entry compilationId();

    static CompilationIDAttribute of(Utf8Entry id2) {
        return new UnboundAttribute.UnboundCompilationIDAttribute(id2);
    }

    static CompilationIDAttribute of(String id2) {
        return new UnboundAttribute.UnboundCompilationIDAttribute(TemporaryConstantPool.INSTANCE.utf8Entry(id2));
    }
}
