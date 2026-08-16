package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface SourceIDAttribute extends Attribute<SourceIDAttribute>, ClassElement {
    Utf8Entry sourceId();

    static SourceIDAttribute of(Utf8Entry sourceId) {
        return new UnboundAttribute.UnboundSourceIDAttribute(sourceId);
    }

    static SourceIDAttribute of(String sourceId) {
        return of(TemporaryConstantPool.INSTANCE.utf8Entry(sourceId));
    }
}
