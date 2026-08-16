package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.CodeModel;
import java.lang.classfile.Label;

public interface CodeAttribute extends Attribute<CodeAttribute>, CodeModel {
    int maxLocals();

    int maxStack();

    int codeLength();

    byte[] codeArray();

    int labelToBci(Label label);
}
