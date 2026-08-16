package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.constant.ClassDesc;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface NestHostAttribute extends Attribute<NestHostAttribute>, ClassElement {
    ClassEntry nestHost();

    static NestHostAttribute of(ClassEntry nestHost) {
        return new UnboundAttribute.UnboundNestHostAttribute(nestHost);
    }

    static NestHostAttribute of(ClassDesc nestHost) {
        return of(TemporaryConstantPool.INSTANCE.classEntry(nestHost));
    }
}
