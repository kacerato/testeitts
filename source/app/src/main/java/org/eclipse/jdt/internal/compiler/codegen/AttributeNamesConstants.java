package org.eclipse.jdt.internal.compiler.codegen;

import java.lang.classfile.Attributes;

public interface AttributeNamesConstants {
    public static final char[] SyntheticName = "Synthetic".toCharArray();
    public static final char[] ConstantValueName = "ConstantValue".toCharArray();
    public static final char[] LineNumberTableName = "LineNumberTable".toCharArray();
    public static final char[] LocalVariableTableName = "LocalVariableTable".toCharArray();
    public static final char[] InnerClassName = "InnerClasses".toCharArray();
    public static final char[] CodeName = "Code".toCharArray();
    public static final char[] ExceptionsName = "Exceptions".toCharArray();
    public static final char[] SourceName = "SourceFile".toCharArray();
    public static final char[] DeprecatedName = "Deprecated".toCharArray();
    public static final char[] SignatureName = "Signature".toCharArray();
    public static final char[] LocalVariableTypeTableName = "LocalVariableTypeTable".toCharArray();
    public static final char[] EnclosingMethodName = "EnclosingMethod".toCharArray();
    public static final char[] ModuleName = Attributes.NAME_MODULE.toCharArray();
    public static final char[] ModuleMainClass = Attributes.NAME_MODULE_MAIN_CLASS.toCharArray();
    public static final char[] ModulePackages = Attributes.NAME_MODULE_PACKAGES.toCharArray();
    public static final char[] AnnotationDefaultName = "AnnotationDefault".toCharArray();
    public static final char[] RuntimeInvisibleAnnotationsName = "RuntimeInvisibleAnnotations".toCharArray();
    public static final char[] RuntimeVisibleAnnotationsName = "RuntimeVisibleAnnotations".toCharArray();
    public static final char[] RuntimeInvisibleParameterAnnotationsName = "RuntimeInvisibleParameterAnnotations".toCharArray();
    public static final char[] RuntimeVisibleParameterAnnotationsName = "RuntimeVisibleParameterAnnotations".toCharArray();
    public static final char[] StackMapTableName = Attributes.NAME_STACK_MAP_TABLE.toCharArray();
    public static final char[] InconsistentHierarchy = "InconsistentHierarchy".toCharArray();
    public static final char[] VarargsName = "Varargs".toCharArray();
    public static final char[] StackMapName = "StackMap".toCharArray();
    public static final char[] MissingTypesName = "MissingTypes".toCharArray();
    public static final char[] BootstrapMethodsName = Attributes.NAME_BOOTSTRAP_METHODS.toCharArray();
    public static final char[] RuntimeVisibleTypeAnnotationsName = Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.toCharArray();
    public static final char[] RuntimeInvisibleTypeAnnotationsName = Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.toCharArray();
    public static final char[] MethodParametersName = Attributes.NAME_METHOD_PARAMETERS.toCharArray();
    public static final char[] NestHost = Attributes.NAME_NEST_HOST.toCharArray();
    public static final char[] NestMembers = Attributes.NAME_NEST_MEMBERS.toCharArray();
}
