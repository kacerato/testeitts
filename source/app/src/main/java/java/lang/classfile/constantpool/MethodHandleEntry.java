package java.lang.classfile.constantpool;

import java.lang.constant.ConstantDesc;
import java.lang.constant.DirectMethodHandleDesc;

public interface MethodHandleEntry extends LoadableConstantEntry {
    int kind();

    MemberRefEntry reference();

    DirectMethodHandleDesc asSymbol();

    @Override
    default ConstantDesc constantValue() {
        return asSymbol();
    }
}
