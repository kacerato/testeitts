package java.lang.classfile.attribute;

import java.lang.classfile.Attribute;
import java.lang.classfile.FieldElement;
import java.lang.classfile.constantpool.ConstantValueEntry;
import java.lang.constant.ConstantDesc;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.runtime.SwitchBootstraps;
import java.util.Objects;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.classfile.impl.UnboundAttribute;

public interface ConstantValueAttribute extends Attribute<ConstantValueAttribute>, FieldElement {
    ConstantValueEntry constant();

    static ConstantValueAttribute of(ConstantValueEntry value) {
        return new UnboundAttribute.UnboundConstantValueAttribute(value);
    }

    static ConstantValueAttribute of(ConstantDesc value) {
        ConstantValueEntry stringEntry;
        Objects.requireNonNull(value);
        switch ((int) SwitchBootstraps.typeSwitch(MethodHandles.lookup(), "typeSwitch", MethodType.methodType(Integer.TYPE, ConstantDesc.class, Integer.TYPE), Integer.class, Float.class, Long.class, Double.class, String.class).dynamicInvoker().invoke(value, 0) /* invoke-custom */) {
            case 0:
                Integer i10 = (Integer) value;
                stringEntry = TemporaryConstantPool.INSTANCE.intEntry(i10.intValue());
                break;
            case 1:
                Float f10 = (Float) value;
                stringEntry = TemporaryConstantPool.INSTANCE.floatEntry(f10.floatValue());
                break;
            case 2:
                Long l10 = (Long) value;
                stringEntry = TemporaryConstantPool.INSTANCE.longEntry(l10.longValue());
                break;
            case 3:
                Double d10 = (Double) value;
                stringEntry = TemporaryConstantPool.INSTANCE.doubleEntry(d10.doubleValue());
                break;
            case 4:
                String s10 = (String) value;
                stringEntry = TemporaryConstantPool.INSTANCE.stringEntry(s10);
                break;
            default:
                throw new IllegalArgumentException("Invalid ConstantValueAttribute value: " + ((Object) value));
        }
        return of(stringEntry);
    }
}
