package java.lang.classfile.constantpool;

import java.lang.constant.ConstantDesc;
import java.lang.constant.DynamicCallSiteDesc;
import java.lang.constant.MethodTypeDesc;
import jdk.internal.classfile.impl.Util;

public interface InvokeDynamicEntry extends DynamicConstantPoolEntry {
    default MethodTypeDesc typeSymbol() {
        return Util.methodTypeSymbol(type());
    }

    default DynamicCallSiteDesc asSymbol() {
        return DynamicCallSiteDesc.of(bootstrap().bootstrapMethod().asSymbol(), name().stringValue(), typeSymbol(), (ConstantDesc[]) bootstrap().arguments().stream().map((v0) -> {
            return v0.constantValue();
        }).toArray(x$0 -> {
            return new ConstantDesc[x$0];
        }));
    }
}
