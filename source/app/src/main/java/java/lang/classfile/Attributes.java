package java.lang.classfile;

import java.lang.classfile.attribute.AnnotationDefaultAttribute;
import java.lang.classfile.attribute.BootstrapMethodsAttribute;
import java.lang.classfile.attribute.CharacterRangeTableAttribute;
import java.lang.classfile.attribute.CodeAttribute;
import java.lang.classfile.attribute.CompilationIDAttribute;
import java.lang.classfile.attribute.ConstantValueAttribute;
import java.lang.classfile.attribute.DeprecatedAttribute;
import java.lang.classfile.attribute.EnclosingMethodAttribute;
import java.lang.classfile.attribute.ExceptionsAttribute;
import java.lang.classfile.attribute.InnerClassesAttribute;
import java.lang.classfile.attribute.LineNumberTableAttribute;
import java.lang.classfile.attribute.LocalVariableTableAttribute;
import java.lang.classfile.attribute.LocalVariableTypeTableAttribute;
import java.lang.classfile.attribute.MethodParametersAttribute;
import java.lang.classfile.attribute.ModuleAttribute;
import java.lang.classfile.attribute.ModuleHashesAttribute;
import java.lang.classfile.attribute.ModuleMainClassAttribute;
import java.lang.classfile.attribute.ModulePackagesAttribute;
import java.lang.classfile.attribute.ModuleResolutionAttribute;
import java.lang.classfile.attribute.ModuleTargetAttribute;
import java.lang.classfile.attribute.NestHostAttribute;
import java.lang.classfile.attribute.NestMembersAttribute;
import java.lang.classfile.attribute.PermittedSubclassesAttribute;
import java.lang.classfile.attribute.RecordAttribute;
import java.lang.classfile.attribute.RuntimeInvisibleAnnotationsAttribute;
import java.lang.classfile.attribute.RuntimeInvisibleParameterAnnotationsAttribute;
import java.lang.classfile.attribute.RuntimeInvisibleTypeAnnotationsAttribute;
import java.lang.classfile.attribute.RuntimeVisibleAnnotationsAttribute;
import java.lang.classfile.attribute.RuntimeVisibleParameterAnnotationsAttribute;
import java.lang.classfile.attribute.RuntimeVisibleTypeAnnotationsAttribute;
import java.lang.classfile.attribute.SignatureAttribute;
import java.lang.classfile.attribute.SourceDebugExtensionAttribute;
import java.lang.classfile.attribute.SourceFileAttribute;
import java.lang.classfile.attribute.SourceIDAttribute;
import java.lang.classfile.attribute.StackMapTableAttribute;
import java.lang.classfile.attribute.SyntheticAttribute;
import jdk.internal.classfile.impl.AbstractAttributeMapper;

public final class Attributes {
    public static final String NAME_ANNOTATION_DEFAULT = "AnnotationDefault";
    public static final String NAME_BOOTSTRAP_METHODS = "BootstrapMethods";
    public static final String NAME_CHARACTER_RANGE_TABLE = "CharacterRangeTable";
    public static final String NAME_CODE = "Code";
    public static final String NAME_COMPILATION_ID = "CompilationID";
    public static final String NAME_CONSTANT_VALUE = "ConstantValue";
    public static final String NAME_DEPRECATED = "Deprecated";
    public static final String NAME_ENCLOSING_METHOD = "EnclosingMethod";
    public static final String NAME_EXCEPTIONS = "Exceptions";
    public static final String NAME_INNER_CLASSES = "InnerClasses";
    public static final String NAME_LINE_NUMBER_TABLE = "LineNumberTable";
    public static final String NAME_LOCAL_VARIABLE_TABLE = "LocalVariableTable";
    public static final String NAME_LOCAL_VARIABLE_TYPE_TABLE = "LocalVariableTypeTable";
    public static final String NAME_METHOD_PARAMETERS = "MethodParameters";
    public static final String NAME_MODULE = "Module";
    public static final String NAME_MODULE_HASHES = "ModuleHashes";
    public static final String NAME_MODULE_MAIN_CLASS = "ModuleMainClass";
    public static final String NAME_MODULE_PACKAGES = "ModulePackages";
    public static final String NAME_MODULE_RESOLUTION = "ModuleResolution";
    public static final String NAME_MODULE_TARGET = "ModuleTarget";
    public static final String NAME_NEST_HOST = "NestHost";
    public static final String NAME_NEST_MEMBERS = "NestMembers";
    public static final String NAME_PERMITTED_SUBCLASSES = "PermittedSubclasses";
    public static final String NAME_RECORD = "Record";
    public static final String NAME_RUNTIME_INVISIBLE_ANNOTATIONS = "RuntimeInvisibleAnnotations";
    public static final String NAME_RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS = "RuntimeInvisibleParameterAnnotations";
    public static final String NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS = "RuntimeInvisibleTypeAnnotations";
    public static final String NAME_RUNTIME_VISIBLE_ANNOTATIONS = "RuntimeVisibleAnnotations";
    public static final String NAME_RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS = "RuntimeVisibleParameterAnnotations";
    public static final String NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS = "RuntimeVisibleTypeAnnotations";
    public static final String NAME_SIGNATURE = "Signature";
    public static final String NAME_SOURCE_DEBUG_EXTENSION = "SourceDebugExtension";
    public static final String NAME_SOURCE_FILE = "SourceFile";
    public static final String NAME_SOURCE_ID = "SourceID";
    public static final String NAME_STACK_MAP_TABLE = "StackMapTable";
    public static final String NAME_SYNTHETIC = "Synthetic";

    private Attributes() {
    }

    public static AttributeMapper<AnnotationDefaultAttribute> annotationDefault() {
        return AbstractAttributeMapper.AnnotationDefaultMapper.INSTANCE;
    }

    public static AttributeMapper<BootstrapMethodsAttribute> bootstrapMethods() {
        return AbstractAttributeMapper.BootstrapMethodsMapper.INSTANCE;
    }

    public static AttributeMapper<CharacterRangeTableAttribute> characterRangeTable() {
        return AbstractAttributeMapper.CharacterRangeTableMapper.INSTANCE;
    }

    public static AttributeMapper<CodeAttribute> code() {
        return AbstractAttributeMapper.CodeMapper.INSTANCE;
    }

    public static AttributeMapper<CompilationIDAttribute> compilationId() {
        return AbstractAttributeMapper.CompilationIDMapper.INSTANCE;
    }

    public static AttributeMapper<ConstantValueAttribute> constantValue() {
        return AbstractAttributeMapper.ConstantValueMapper.INSTANCE;
    }

    public static AttributeMapper<DeprecatedAttribute> deprecated() {
        return AbstractAttributeMapper.DeprecatedMapper.INSTANCE;
    }

    public static AttributeMapper<EnclosingMethodAttribute> enclosingMethod() {
        return AbstractAttributeMapper.EnclosingMethodMapper.INSTANCE;
    }

    public static AttributeMapper<ExceptionsAttribute> exceptions() {
        return AbstractAttributeMapper.ExceptionsMapper.INSTANCE;
    }

    public static AttributeMapper<InnerClassesAttribute> innerClasses() {
        return AbstractAttributeMapper.InnerClassesMapper.INSTANCE;
    }

    public static AttributeMapper<LineNumberTableAttribute> lineNumberTable() {
        return AbstractAttributeMapper.LineNumberTableMapper.INSTANCE;
    }

    public static AttributeMapper<LocalVariableTableAttribute> localVariableTable() {
        return AbstractAttributeMapper.LocalVariableTableMapper.INSTANCE;
    }

    public static AttributeMapper<LocalVariableTypeTableAttribute> localVariableTypeTable() {
        return AbstractAttributeMapper.LocalVariableTypeTableMapper.INSTANCE;
    }

    public static AttributeMapper<MethodParametersAttribute> methodParameters() {
        return AbstractAttributeMapper.MethodParametersMapper.INSTANCE;
    }

    public static AttributeMapper<ModuleAttribute> module() {
        return AbstractAttributeMapper.ModuleMapper.INSTANCE;
    }

    public static AttributeMapper<ModuleHashesAttribute> moduleHashes() {
        return AbstractAttributeMapper.ModuleHashesMapper.INSTANCE;
    }

    public static AttributeMapper<ModuleMainClassAttribute> moduleMainClass() {
        return AbstractAttributeMapper.ModuleMainClassMapper.INSTANCE;
    }

    public static AttributeMapper<ModulePackagesAttribute> modulePackages() {
        return AbstractAttributeMapper.ModulePackagesMapper.INSTANCE;
    }

    public static AttributeMapper<ModuleResolutionAttribute> moduleResolution() {
        return AbstractAttributeMapper.ModuleResolutionMapper.INSTANCE;
    }

    public static AttributeMapper<ModuleTargetAttribute> moduleTarget() {
        return AbstractAttributeMapper.ModuleTargetMapper.INSTANCE;
    }

    public static AttributeMapper<NestHostAttribute> nestHost() {
        return AbstractAttributeMapper.NestHostMapper.INSTANCE;
    }

    public static AttributeMapper<NestMembersAttribute> nestMembers() {
        return AbstractAttributeMapper.NestMembersMapper.INSTANCE;
    }

    public static AttributeMapper<PermittedSubclassesAttribute> permittedSubclasses() {
        return AbstractAttributeMapper.PermittedSubclassesMapper.INSTANCE;
    }

    public static AttributeMapper<RecordAttribute> record() {
        return AbstractAttributeMapper.RecordMapper.INSTANCE;
    }

    public static AttributeMapper<RuntimeInvisibleAnnotationsAttribute> runtimeInvisibleAnnotations() {
        return AbstractAttributeMapper.RuntimeInvisibleAnnotationsMapper.INSTANCE;
    }

    public static AttributeMapper<RuntimeInvisibleParameterAnnotationsAttribute> runtimeInvisibleParameterAnnotations() {
        return AbstractAttributeMapper.RuntimeInvisibleParameterAnnotationsMapper.INSTANCE;
    }

    public static AttributeMapper<RuntimeInvisibleTypeAnnotationsAttribute> runtimeInvisibleTypeAnnotations() {
        return AbstractAttributeMapper.RuntimeInvisibleTypeAnnotationsMapper.INSTANCE;
    }

    public static AttributeMapper<RuntimeVisibleAnnotationsAttribute> runtimeVisibleAnnotations() {
        return AbstractAttributeMapper.RuntimeVisibleAnnotationsMapper.INSTANCE;
    }

    public static AttributeMapper<RuntimeVisibleParameterAnnotationsAttribute> runtimeVisibleParameterAnnotations() {
        return AbstractAttributeMapper.RuntimeVisibleParameterAnnotationsMapper.INSTANCE;
    }

    public static AttributeMapper<RuntimeVisibleTypeAnnotationsAttribute> runtimeVisibleTypeAnnotations() {
        return AbstractAttributeMapper.RuntimeVisibleTypeAnnotationsMapper.INSTANCE;
    }

    public static AttributeMapper<SignatureAttribute> signature() {
        return AbstractAttributeMapper.SignatureMapper.INSTANCE;
    }

    public static AttributeMapper<SourceDebugExtensionAttribute> sourceDebugExtension() {
        return AbstractAttributeMapper.SourceDebugExtensionMapper.INSTANCE;
    }

    public static AttributeMapper<SourceFileAttribute> sourceFile() {
        return AbstractAttributeMapper.SourceFileMapper.INSTANCE;
    }

    public static AttributeMapper<SourceIDAttribute> sourceId() {
        return AbstractAttributeMapper.SourceIDMapper.INSTANCE;
    }

    public static AttributeMapper<StackMapTableAttribute> stackMapTable() {
        return AbstractAttributeMapper.StackMapTableMapper.INSTANCE;
    }

    public static AttributeMapper<SyntheticAttribute> synthetic() {
        return AbstractAttributeMapper.SyntheticMapper.INSTANCE;
    }
}
