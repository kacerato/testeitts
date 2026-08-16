package java.lang.classfile.attribute;

import jdk.internal.classfile.impl.UnboundAttribute;

public interface LineNumberInfo {
    int startPc();

    int lineNumber();

    static LineNumberInfo of(int startPc, int lineNumber) {
        return new UnboundAttribute.UnboundLineNumberInfo(startPc, lineNumber);
    }
}
