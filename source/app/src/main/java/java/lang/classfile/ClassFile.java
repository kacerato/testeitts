package java.lang.classfile;

import java.io.IOException;
import java.lang.classfile.attribute.ModuleAttribute;
import java.lang.classfile.constantpool.ClassEntry;
import java.lang.classfile.constantpool.ConstantPoolBuilder;
import java.lang.classfile.constantpool.Utf8Entry;
import java.lang.constant.ClassDesc;
import java.lang.reflect.AccessFlag;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import jdk.internal.classfile.impl.ClassFileImpl;
import jdk.internal.classfile.impl.TemporaryConstantPool;
import jdk.internal.constant.ConstantUtils;

public interface ClassFile {
    public static final int MAGIC_NUMBER = -889275714;
    public static final int ACC_PUBLIC = 1;
    public static final int ACC_PROTECTED = 4;
    public static final int ACC_PRIVATE = 2;
    public static final int ACC_INTERFACE = 512;
    public static final int ACC_ENUM = 16384;
    public static final int ACC_ANNOTATION = 8192;
    public static final int ACC_SUPER = 32;
    public static final int ACC_ABSTRACT = 1024;
    public static final int ACC_VOLATILE = 64;
    public static final int ACC_TRANSIENT = 128;
    public static final int ACC_SYNTHETIC = 4096;
    public static final int ACC_STATIC = 8;
    public static final int ACC_FINAL = 16;
    public static final int ACC_SYNCHRONIZED = 32;
    public static final int ACC_BRIDGE = 64;
    public static final int ACC_VARARGS = 128;
    public static final int ACC_NATIVE = 256;
    public static final int ACC_STRICT = 2048;
    public static final int ACC_MODULE = 32768;
    public static final int ACC_OPEN = 32;
    public static final int ACC_MANDATED = 32768;
    public static final int ACC_TRANSITIVE = 32;
    public static final int ACC_STATIC_PHASE = 64;
    public static final int JAVA_1_VERSION = 45;
    public static final int JAVA_2_VERSION = 46;
    public static final int JAVA_3_VERSION = 47;
    public static final int JAVA_4_VERSION = 48;
    public static final int JAVA_5_VERSION = 49;
    public static final int JAVA_6_VERSION = 50;
    public static final int JAVA_7_VERSION = 51;
    public static final int JAVA_8_VERSION = 52;
    public static final int JAVA_9_VERSION = 53;
    public static final int JAVA_10_VERSION = 54;
    public static final int JAVA_11_VERSION = 55;
    public static final int JAVA_12_VERSION = 56;
    public static final int JAVA_13_VERSION = 57;
    public static final int JAVA_14_VERSION = 58;
    public static final int JAVA_15_VERSION = 59;
    public static final int JAVA_16_VERSION = 60;
    public static final int JAVA_17_VERSION = 61;
    public static final int JAVA_18_VERSION = 62;
    public static final int JAVA_19_VERSION = 63;
    public static final int JAVA_20_VERSION = 64;
    public static final int JAVA_21_VERSION = 65;
    public static final int JAVA_22_VERSION = 66;
    public static final int JAVA_23_VERSION = 67;
    public static final int JAVA_24_VERSION = 68;
    public static final int JAVA_25_VERSION = 69;
    public static final int PREVIEW_MINOR_VERSION = 65535;

    public enum AttributesProcessingOption implements Option {
        PASS_ALL_ATTRIBUTES,
        DROP_UNKNOWN_ATTRIBUTES,
        DROP_UNSTABLE_ATTRIBUTES
    }

    public enum ConstantPoolSharingOption implements Option {
        SHARED_POOL,
        NEW_POOL
    }

    public enum DeadCodeOption implements Option {
        PATCH_DEAD_CODE,
        KEEP_DEAD_CODE
    }

    public enum DeadLabelsOption implements Option {
        FAIL_ON_DEAD_LABELS,
        DROP_DEAD_LABELS
    }

    public enum DebugElementsOption implements Option {
        PASS_DEBUG,
        DROP_DEBUG
    }

    public enum LineNumbersOption implements Option {
        PASS_LINE_NUMBERS,
        DROP_LINE_NUMBERS
    }

    public interface Option {
    }

    public enum ShortJumpsOption implements Option {
        FIX_SHORT_JUMPS,
        FAIL_ON_SHORT_JUMPS
    }

    public enum StackMapsOption implements Option {
        STACK_MAPS_WHEN_REQUIRED,
        GENERATE_STACK_MAPS,
        DROP_STACK_MAPS
    }

    ClassFile withOptions(Option... optionArr);

    ClassModel parse(byte[] bArr);

    byte[] build(ClassEntry classEntry, ConstantPoolBuilder constantPoolBuilder, Consumer<? super ClassBuilder> consumer);

    byte[] transformClass(ClassModel classModel, ClassEntry classEntry, ClassTransform classTransform);

    List<VerifyError> verify(ClassModel classModel);

    List<VerifyError> verify(byte[] bArr);

    static ClassFile of() {
        return ClassFileImpl.DEFAULT_CONTEXT;
    }

    static ClassFile of(Option... options) {
        return of().withOptions(options);
    }

    public interface AttributeMapperOption extends Option {
        Function<Utf8Entry, AttributeMapper<?>> attributeMapper();

        static AttributeMapperOption of(Function<Utf8Entry, AttributeMapper<?>> attributeMapper) {
            Objects.requireNonNull(attributeMapper);
            return new ClassFileImpl.AttributeMapperOptionImpl(attributeMapper);
        }
    }

    public interface ClassHierarchyResolverOption extends Option {
        ClassHierarchyResolver classHierarchyResolver();

        static ClassHierarchyResolverOption of(ClassHierarchyResolver classHierarchyResolver) {
            Objects.requireNonNull(classHierarchyResolver);
            return new ClassFileImpl.ClassHierarchyResolverOptionImpl(classHierarchyResolver);
        }
    }

    default ClassModel parse(Path path) throws IOException {
        return parse(Files.readAllBytes(path));
    }

    default byte[] build(ClassDesc thisClass, Consumer<? super ClassBuilder> handler) {
        ConstantPoolBuilder pool = ConstantPoolBuilder.of();
        return build(pool.classEntry(thisClass), pool, handler);
    }

    default void buildTo(Path path, ClassDesc thisClass, Consumer<ClassBuilder> handler) throws IOException {
        Files.write(path, build(thisClass, handler), new OpenOption[0]);
    }

    default void buildTo(Path path, ClassEntry thisClassEntry, ConstantPoolBuilder constantPool, Consumer<? super ClassBuilder> handler) throws IOException {
        Files.write(path, build(thisClassEntry, constantPool, handler), new OpenOption[0]);
    }

    default byte[] buildModule(ModuleAttribute moduleAttribute) {
        return buildModule(moduleAttribute, clb -> {
        });
    }

    default byte[] buildModule(ModuleAttribute moduleAttribute, Consumer<? super ClassBuilder> handler) {
        return build(ConstantUtils.CD_module_info, clb -> {
            clb.withFlags(AccessFlag.MODULE);
            clb.with(moduleAttribute);
            handler.accept(clb);
        });
    }

    default void buildModuleTo(Path path, ModuleAttribute moduleAttribute) throws IOException {
        buildModuleTo(path, moduleAttribute, clb -> {
        });
    }

    default void buildModuleTo(Path path, ModuleAttribute moduleAttribute, Consumer<? super ClassBuilder> handler) throws IOException {
        Files.write(path, buildModule(moduleAttribute, handler), new OpenOption[0]);
    }

    default byte[] transformClass(ClassModel model, ClassTransform transform) {
        return transformClass(model, model.thisClass(), transform);
    }

    default byte[] transformClass(ClassModel model, ClassDesc newClassName, ClassTransform transform) {
        return transformClass(model, TemporaryConstantPool.INSTANCE.classEntry(newClassName), transform);
    }

    default List<VerifyError> verify(Path path) throws IOException {
        return verify(Files.readAllBytes(path));
    }

    static int latestMajorVersion() {
        return 69;
    }

    static int latestMinorVersion() {
        return 0;
    }
}
