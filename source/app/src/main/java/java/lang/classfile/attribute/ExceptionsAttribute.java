package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.MethodElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import java.util.Arrays;
import java.util.List;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface ExceptionsAttribute extends Attribute<ExceptionsAttribute>, MethodElement {
    List<ClassEntry> exceptions();

    static ExceptionsAttribute of(List<ClassEntry> exceptions) {
        return new UnboundAttribute.UnboundExceptionsAttribute(exceptions);
    }

    static ExceptionsAttribute of(ClassEntry... exceptions) {
        return of((List<ClassEntry>) List.of(exceptions));
    }

    static ExceptionsAttribute ofSymbols(List<ClassDesc> exceptions) {
        return of((List<ClassEntry>) Util.entryList(exceptions));
    }

    static ExceptionsAttribute ofSymbols(ClassDesc... exceptions) {
        return ofSymbols((List<ClassDesc>) Arrays.asList(exceptions));
    }
}
