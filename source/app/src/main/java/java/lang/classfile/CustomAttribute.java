package java.lang.classfile;

import java.lang.classfile.CustomAttribute;
import java.lang.classfile.constantpool.Utf8Entry;
import jdk.internal.classfile.impl.TemporaryConstantPool;

public abstract class CustomAttribute<T extends CustomAttribute<T>> implements Attribute<T>, CodeElement, ClassElement, MethodElement, FieldElement {
    private final AttributeMapper<T> mapper;

    protected CustomAttribute(AttributeMapper<T> mapper) {
        this.mapper = mapper;
    }

    @Override
    public final AttributeMapper<T> attributeMapper() {
        return this.mapper;
    }

    @Override
    public Utf8Entry attributeName() {
        return TemporaryConstantPool.INSTANCE.utf8Entry(this.mapper.name());
    }

    public String toString() {
        return String.format("CustomAttribute[name=%s]", this.mapper.name());
    }
}
