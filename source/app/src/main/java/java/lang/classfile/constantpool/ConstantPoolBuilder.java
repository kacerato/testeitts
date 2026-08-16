package java.lang.classfile.constantpool;

import java.lang.classfile.BootstrapMethodEntry;
import java.lang.classfile.ClassModel;
import java.lang.constant.ClassDesc;
import java.lang.constant.ConstantDesc;
import java.lang.constant.DirectMethodHandleDesc;
import java.lang.constant.DynamicCallSiteDesc;
import java.lang.constant.DynamicConstantDesc;
import java.lang.constant.MethodTypeDesc;
import java.lang.constant.ModuleDesc;
import java.lang.constant.PackageDesc;
import java.util.List;
import java.util.Objects;
import jdk.internal.classfile.impl.AbstractPoolEntry;
import jdk.internal.classfile.impl.SplitConstantPool;
import jdk.internal.classfile.impl.Util;

public interface ConstantPoolBuilder extends ConstantPool {
    boolean canWriteDirect(ConstantPool constantPool);

    Utf8Entry utf8Entry(String str);

    ClassEntry classEntry(Utf8Entry utf8Entry);

    PackageEntry packageEntry(Utf8Entry utf8Entry);

    ModuleEntry moduleEntry(Utf8Entry utf8Entry);

    NameAndTypeEntry nameAndTypeEntry(Utf8Entry utf8Entry, Utf8Entry utf8Entry2);

    FieldRefEntry fieldRefEntry(ClassEntry classEntry, NameAndTypeEntry nameAndTypeEntry);

    MethodRefEntry methodRefEntry(ClassEntry classEntry, NameAndTypeEntry nameAndTypeEntry);

    InterfaceMethodRefEntry interfaceMethodRefEntry(ClassEntry classEntry, NameAndTypeEntry nameAndTypeEntry);

    MethodTypeEntry methodTypeEntry(MethodTypeDesc methodTypeDesc);

    MethodTypeEntry methodTypeEntry(Utf8Entry utf8Entry);

    MethodHandleEntry methodHandleEntry(int i10, MemberRefEntry memberRefEntry);

    InvokeDynamicEntry invokeDynamicEntry(BootstrapMethodEntry bootstrapMethodEntry, NameAndTypeEntry nameAndTypeEntry);

    ConstantDynamicEntry constantDynamicEntry(BootstrapMethodEntry bootstrapMethodEntry, NameAndTypeEntry nameAndTypeEntry);

    IntegerEntry intEntry(int i10);

    FloatEntry floatEntry(float f10);

    LongEntry longEntry(long j10);

    DoubleEntry doubleEntry(double d10);

    StringEntry stringEntry(Utf8Entry utf8Entry);

    BootstrapMethodEntry bsmEntry(MethodHandleEntry methodHandleEntry, List<LoadableConstantEntry> list);

    static ConstantPoolBuilder of(ClassModel classModel) {
        return new SplitConstantPool(classModel.constantPool());
    }

    static ConstantPoolBuilder of() {
        return new SplitConstantPool();
    }

    default Utf8Entry utf8Entry(ClassDesc desc) {
        return utf8Entry(desc.descriptorString());
    }

    default Utf8Entry utf8Entry(MethodTypeDesc desc) {
        return utf8Entry(desc.descriptorString());
    }

    default ClassEntry classEntry(ClassDesc classDesc) {
        if (((ClassDesc) Objects.requireNonNull(classDesc)).isPrimitive()) {
            throw new IllegalArgumentException("Cannot be encoded as ClassEntry: " + classDesc.displayName());
        }
        AbstractPoolEntry.ClassEntryImpl ret = classEntry(utf8Entry(classDesc.isArray() ? classDesc.descriptorString() : Util.toInternalName(classDesc)));
        ret.sym = classDesc;
        return ret;
    }

    default PackageEntry packageEntry(PackageDesc packageDesc) {
        return packageEntry(utf8Entry(packageDesc.internalName()));
    }

    default ModuleEntry moduleEntry(ModuleDesc moduleDesc) {
        return moduleEntry(utf8Entry(moduleDesc.name()));
    }

    default NameAndTypeEntry nameAndTypeEntry(String name, ClassDesc type) {
        return nameAndTypeEntry(utf8Entry(name), utf8Entry(type));
    }

    default NameAndTypeEntry nameAndTypeEntry(String name, MethodTypeDesc type) {
        return nameAndTypeEntry(utf8Entry(name), utf8Entry(type));
    }

    default FieldRefEntry fieldRefEntry(ClassDesc owner, String name, ClassDesc type) {
        return fieldRefEntry(classEntry(owner), nameAndTypeEntry(name, type));
    }

    default MethodRefEntry methodRefEntry(ClassDesc owner, String name, MethodTypeDesc type) {
        return methodRefEntry(classEntry(owner), nameAndTypeEntry(name, type));
    }

    default InterfaceMethodRefEntry interfaceMethodRefEntry(ClassDesc owner, String name, MethodTypeDesc type) {
        return interfaceMethodRefEntry(classEntry(owner), nameAndTypeEntry(name, type));
    }

    default MethodHandleEntry methodHandleEntry(DirectMethodHandleDesc descriptor) {
        MemberRefEntry methodRefEntry;
        ClassEntry owner = classEntry(descriptor.owner());
        NameAndTypeEntry nat = nameAndTypeEntry(utf8Entry(descriptor.methodName()), utf8Entry(descriptor.lookupDescriptor()));
        int refKind = descriptor.refKind();
        switch (descriptor.kind()) {
            case GETTER:
            case SETTER:
            case STATIC_GETTER:
            case STATIC_SETTER:
                methodRefEntry = fieldRefEntry(owner, nat);
                break;
            case INTERFACE_STATIC:
            case INTERFACE_VIRTUAL:
            case INTERFACE_SPECIAL:
                methodRefEntry = interfaceMethodRefEntry(owner, nat);
                break;
            case STATIC:
            case VIRTUAL:
            case SPECIAL:
            case CONSTRUCTOR:
                methodRefEntry = methodRefEntry(owner, nat);
                break;
            default:
                throw new MatchException(null, null);
        }
        AbstractPoolEntry.MethodHandleEntryImpl methodHandleEntry = methodHandleEntry(refKind, methodRefEntry);
        methodHandleEntry.sym = descriptor;
        return methodHandleEntry;
    }

    default InvokeDynamicEntry invokeDynamicEntry(DynamicCallSiteDesc dcsd) {
        AbstractPoolEntry.InvokeDynamicEntryImpl invokeDynamicEntry = invokeDynamicEntry(bsmEntry((DirectMethodHandleDesc) dcsd.bootstrapMethod(), List.of(dcsd.bootstrapArgs())), nameAndTypeEntry(dcsd.invocationName(), dcsd.invocationType()));
        invokeDynamicEntry.sym = dcsd;
        return invokeDynamicEntry;
    }

    default ConstantDynamicEntry constantDynamicEntry(DynamicConstantDesc<?> dcd) {
        AbstractPoolEntry.ConstantDynamicEntryImpl constantDynamicEntry = constantDynamicEntry(bsmEntry(dcd.bootstrapMethod(), List.of(dcd.bootstrapArgs())), nameAndTypeEntry(dcd.constantName(), dcd.constantType()));
        constantDynamicEntry.sym = dcd;
        return constantDynamicEntry;
    }

    default StringEntry stringEntry(String value) {
        return stringEntry(utf8Entry(value));
    }

    default ConstantValueEntry constantValueEntry(ConstantDesc c10) {
        if (c10 instanceof Integer) {
            Integer i10 = (Integer) c10;
            return intEntry(i10.intValue());
        }
        if (c10 instanceof String) {
            String s10 = (String) c10;
            return stringEntry(s10);
        }
        if (c10 instanceof Long) {
            Long l10 = (Long) c10;
            return longEntry(l10.longValue());
        }
        if (c10 instanceof Float) {
            Float f10 = (Float) c10;
            return floatEntry(f10.floatValue());
        }
        if (!(c10 instanceof Double)) {
            throw new IllegalArgumentException("Illegal type: " + ((Object) (c10 == null ? null : c10.getClass())));
        }
        Double d10 = (Double) c10;
        return doubleEntry(d10.doubleValue());
    }

    default LoadableConstantEntry loadableConstantEntry(ConstantDesc c10) {
        if (c10 instanceof Integer) {
            Integer i10 = (Integer) c10;
            return intEntry(i10.intValue());
        }
        if (c10 instanceof String) {
            String s10 = (String) c10;
            return stringEntry(s10);
        }
        if (c10 instanceof Long) {
            Long l10 = (Long) c10;
            return longEntry(l10.longValue());
        }
        if (c10 instanceof Float) {
            Float f10 = (Float) c10;
            return floatEntry(f10.floatValue());
        }
        if (c10 instanceof Double) {
            Double d10 = (Double) c10;
            return doubleEntry(d10.doubleValue());
        }
        if (c10 instanceof ClassDesc) {
            ClassDesc cd2 = (ClassDesc) c10;
            if (!cd2.isPrimitive()) {
                return classEntry(cd2);
            }
        }
        if (c10 instanceof MethodTypeDesc) {
            MethodTypeDesc mtd = (MethodTypeDesc) c10;
            return methodTypeEntry(mtd);
        }
        if (c10 instanceof DirectMethodHandleDesc) {
            DirectMethodHandleDesc dmhd = (DirectMethodHandleDesc) c10;
            return methodHandleEntry(dmhd);
        }
        if (!(c10 instanceof DynamicConstantDesc)) {
            throw new IllegalArgumentException("Illegal type: " + ((Object) (c10 == null ? null : c10.getClass())));
        }
        DynamicConstantDesc<?> dcd = (DynamicConstantDesc) c10;
        return constantDynamicEntry(dcd);
    }

    default BootstrapMethodEntry bsmEntry(DirectMethodHandleDesc methodReference, List<ConstantDesc> arguments) {
        return bsmEntry(methodHandleEntry(methodReference), arguments.stream().map(this::loadableConstantEntry).toList());
    }
}
