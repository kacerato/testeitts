package java.lang.classfile;

import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.lang.constant.MethodTypeDesc;
import java.lang.reflect.AccessFlag;
import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import jdk.internal.classfile.impl.AccessFlagsImpl;
import jdk.internal.classfile.impl.Util;

public interface ClassBuilder extends ClassFileBuilder<ClassElement, ClassBuilder> {
    ClassBuilder withField(Utf8Entry utf8Entry, Utf8Entry utf8Entry2, Consumer<? super FieldBuilder> consumer);

    ClassBuilder transformField(FieldModel fieldModel, FieldTransform fieldTransform);

    ClassBuilder withMethod(Utf8Entry utf8Entry, Utf8Entry utf8Entry2, int i10, Consumer<? super MethodBuilder> consumer);

    ClassBuilder transformMethod(MethodModel methodModel, MethodTransform methodTransform);

    default ClassBuilder withVersion(int major, int minor) {
        return with(ClassFileVersion.of(major, minor));
    }

    default ClassBuilder withFlags(int flags) {
        return with(new AccessFlagsImpl(AccessFlag.Location.CLASS, flags));
    }

    default ClassBuilder withFlags(AccessFlag... flags) {
        return with(new AccessFlagsImpl(AccessFlag.Location.CLASS, flags));
    }

    default ClassBuilder withSuperclass(ClassEntry superclassEntry) {
        return with(Superclass.of(superclassEntry));
    }

    default ClassBuilder withSuperclass(ClassDesc desc) {
        return withSuperclass(constantPool().classEntry(desc));
    }

    default ClassBuilder withInterfaces(List<ClassEntry> interfaces) {
        return with(Interfaces.of(interfaces));
    }

    default ClassBuilder withInterfaces(ClassEntry... interfaces) {
        return withInterfaces(List.of(interfaces));
    }

    default ClassBuilder withInterfaceSymbols(List<ClassDesc> interfaces) {
        return withInterfaces(Util.entryList(interfaces));
    }

    default ClassBuilder withInterfaceSymbols(ClassDesc... interfaces) {
        return withInterfaceSymbols(Arrays.asList(interfaces));
    }

    default ClassBuilder withField(Utf8Entry name, Utf8Entry descriptor, int flags) {
        return withField(name, descriptor, Util.buildingFlags(flags));
    }

    default ClassBuilder withField(String name, ClassDesc descriptor, Consumer<? super FieldBuilder> handler) {
        return withField(constantPool().utf8Entry(name), constantPool().utf8Entry(descriptor), handler);
    }

    default ClassBuilder withField(String name, ClassDesc descriptor, int flags) {
        return withField(constantPool().utf8Entry(name), constantPool().utf8Entry(descriptor), flags);
    }

    default ClassBuilder withMethodBody(Utf8Entry name, Utf8Entry descriptor, int methodFlags, Consumer<? super CodeBuilder> handler) {
        return withMethod(name, descriptor, methodFlags, Util.buildingCode(handler));
    }

    default ClassBuilder withMethod(String name, MethodTypeDesc descriptor, int methodFlags, Consumer<? super MethodBuilder> handler) {
        return withMethod(constantPool().utf8Entry(name), constantPool().utf8Entry(descriptor), methodFlags, handler);
    }

    default ClassBuilder withMethodBody(String name, MethodTypeDesc descriptor, int methodFlags, Consumer<? super CodeBuilder> handler) {
        return withMethod(name, descriptor, methodFlags, Util.buildingCode(handler));
    }
}
