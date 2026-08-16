package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.NameAndTypeEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.lang.constant.MethodTypeDesc;
import java.util.Optional;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;
import jdk.internal.classfile.impl.Util;

public interface EnclosingMethodAttribute extends Attribute<EnclosingMethodAttribute>, ClassElement {
    ClassEntry enclosingClass();

    Optional<NameAndTypeEntry> enclosingMethod();

    default Optional<Utf8Entry> enclosingMethodName() {
        return enclosingMethod().map((v0) -> {
            return v0.name();
        });
    }

    default Optional<Utf8Entry> enclosingMethodType() {
        return enclosingMethod().map((v0) -> {
            return v0.type();
        });
    }

    default Optional<MethodTypeDesc> enclosingMethodTypeSymbol() {
        return enclosingMethodType().map(Util::methodTypeSymbol);
    }

    static EnclosingMethodAttribute of(ClassEntry className, Optional<NameAndTypeEntry> method) {
        return new UnboundAttribute.UnboundEnclosingMethodAttribute(className, method.orElse(null));
    }

    static EnclosingMethodAttribute of(ClassDesc className, Optional<String> methodName, Optional<MethodTypeDesc> methodType) {
        NameAndTypeEntry nameAndTypeEntry;
        ClassEntry classEntry = TemporaryConstantPool.INSTANCE.classEntry(className);
        if (methodName.isPresent() && methodType.isPresent()) {
            nameAndTypeEntry = TemporaryConstantPool.INSTANCE.nameAndTypeEntry(methodName.get(), methodType.get());
        } else {
            nameAndTypeEntry = null;
        }
        return new UnboundAttribute.UnboundEnclosingMethodAttribute(classEntry, nameAndTypeEntry);
    }
}
