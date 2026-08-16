package java.lang.constant;

import java.lang.invoke.MethodHandles;
import java.lang.invoke.TypeDescriptor;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;

public interface ClassDesc extends ConstantDesc, TypeDescriptor.OfField<ClassDesc> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    ClassDesc arrayType();

    ClassDesc arrayType(int i10);

    String displayName();

    @Override
    String descriptorString();

    @Override
    Class<?> resolveConstantDesc(MethodHandles.Lookup lookup) throws ReflectiveOperationException;

    boolean equals(Object obj);

    static ClassDesc of(String name) {
        ConstantUtils.validateBinaryClassName(name);
        return ConstantUtils.binaryNameToDesc(name);
    }

    static ClassDesc ofInternalName(String name) {
        ConstantUtils.validateInternalClassName(name);
        return ConstantUtils.internalNameToDesc(name);
    }

    static ClassDesc of(String packageName, String className) {
        ConstantUtils.validateBinaryPackageName(packageName);
        ConstantUtils.validateMemberName(className, false);
        if (packageName.isEmpty()) {
            return ConstantUtils.internalNameToDesc(className);
        }
        return ClassOrInterfaceDescImpl.ofValidated('L' + ConstantUtils.binaryToInternal(packageName) + '/' + className + ';');
    }

    static ClassDesc ofDescriptor(String descriptor) {
        if (descriptor.length() == 1) {
            return ConstantUtils.forPrimitiveType(descriptor, 0);
        }
        return ConstantUtils.parseReferenceTypeDesc(descriptor);
    }

    default ClassDesc nested(String nestedName) {
        throw new IllegalStateException("Outer class is not a class or interface type");
    }

    default ClassDesc nested(String firstNestedName, String... moreNestedNames) {
        throw new IllegalStateException("Outer class is not a class or interface type");
    }

    @Override
    default boolean isArray() {
        return false;
    }

    @Override
    default boolean isPrimitive() {
        return false;
    }

    default boolean isClassOrInterface() {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    default ClassDesc componentType() {
        return null;
    }

    default String packageName() {
        return "";
    }
}
