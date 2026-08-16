package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface RecordAttribute extends Attribute<RecordAttribute>, ClassElement {
    List<RecordComponentInfo> components();

    static RecordAttribute of(List<RecordComponentInfo> components) {
        return new UnboundAttribute.UnboundRecordAttribute(components);
    }

    static RecordAttribute of(RecordComponentInfo... components) {
        return of((List<RecordComponentInfo>) List.of(components));
    }
}
