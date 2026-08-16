package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.ClassElement;
import java.lang.classfile.CodeElement;
import java.lang.classfile.FieldElement;
import java.lang.classfile.MethodElement;

public interface UnknownAttribute extends Attribute<UnknownAttribute>, ClassElement, MethodElement, FieldElement, CodeElement {
    byte[] contents();
}
