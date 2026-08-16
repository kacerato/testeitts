package java.lang.classfile;

import java.lang.classfile.Attribute;

public interface AttributeMapper<A extends Attribute<A>> {

    public enum AttributeStability {
        STATELESS,
        CP_REFS,
        LABELS,
        UNSTABLE,
        UNKNOWN
    }

    String name();

    A readAttribute(AttributedElement attributedElement, ClassReader classReader, int i10);

    void writeAttribute(BufWriter bufWriter, A a10);

    AttributeStability stability();

    default boolean allowMultiple() {
        return false;
    }
}
