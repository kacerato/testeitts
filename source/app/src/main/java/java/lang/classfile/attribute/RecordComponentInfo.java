package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.AttributedElement;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.util.List;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface RecordComponentInfo extends AttributedElement {
    Utf8Entry name();

    Utf8Entry descriptor();

    default ClassDesc descriptorSymbol() {
        return Util.fieldTypeSymbol(descriptor());
    }

    static RecordComponentInfo of(Utf8Entry name, Utf8Entry descriptor, List<Attribute<?>> attributes) {
        return new UnboundAttribute.UnboundRecordComponentInfo(name, descriptor, attributes);
    }

    static RecordComponentInfo of(Utf8Entry name, Utf8Entry descriptor, Attribute<?>... attributes) {
        return of(name, descriptor, (List<Attribute<?>>) List.of(attributes));
    }

    static RecordComponentInfo of(String name, ClassDesc descriptor, List<Attribute<?>> attributes) {
        return new UnboundAttribute.UnboundRecordComponentInfo(TemporaryConstantPool.INSTANCE.utf8Entry(name), TemporaryConstantPool.INSTANCE.utf8Entry(descriptor), attributes);
    }

    static RecordComponentInfo of(String name, ClassDesc descriptor, Attribute<?>... attributes) {
        return of(name, descriptor, (List<Attribute<?>>) List.of(attributes));
    }
}
