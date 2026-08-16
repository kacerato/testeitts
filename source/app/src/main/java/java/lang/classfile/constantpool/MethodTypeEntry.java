package java.lang.classfile.constantpool;

import java.lang.constant.ConstantDesc;
import java.lang.constant.MethodTypeDesc;

public interface MethodTypeEntry extends LoadableConstantEntry {
    Utf8Entry descriptor();

    MethodTypeDesc asSymbol();

    boolean matches(MethodTypeDesc methodTypeDesc);

    @Override
    default ConstantDesc constantValue() {
        return asSymbol();
    }
}
