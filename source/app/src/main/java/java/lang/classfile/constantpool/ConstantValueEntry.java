package java.lang.classfile.constantpool;

import java.lang.constant.ConstantDesc;

public interface ConstantValueEntry extends LoadableConstantEntry {
    @Override
    ConstantDesc constantValue();
}
