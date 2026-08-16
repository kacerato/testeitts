package org.eclipse.jdt.core.util;

import java.lang.classfile.Attributes;

public interface IAttributeNamesConstants {
    public static final char[] SYNTHETIC = "Synthetic".toCharArray();
    public static final char[] CONSTANT_VALUE = "ConstantValue".toCharArray();
    public static final char[] LINE_NUMBER = "LineNumberTable".toCharArray();
    public static final char[] LOCAL_VARIABLE = "LocalVariableTable".toCharArray();
    public static final char[] INNER_CLASSES = "InnerClasses".toCharArray();
    public static final char[] CODE = "Code".toCharArray();
    public static final char[] EXCEPTIONS = "Exceptions".toCharArray();
    public static final char[] SOURCE = "SourceFile".toCharArray();
    public static final char[] DEPRECATED = "Deprecated".toCharArray();
    public static final char[] SIGNATURE = "Signature".toCharArray();
    public static final char[] ENCLOSING_METHOD = "EnclosingMethod".toCharArray();
    public static final char[] LOCAL_VARIABLE_TYPE_TABLE = "LocalVariableTypeTable".toCharArray();
    public static final char[] RUNTIME_VISIBLE_ANNOTATIONS = "RuntimeVisibleAnnotations".toCharArray();
    public static final char[] RUNTIME_INVISIBLE_ANNOTATIONS = "RuntimeInvisibleAnnotations".toCharArray();
    public static final char[] RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS = "RuntimeVisibleParameterAnnotations".toCharArray();
    public static final char[] RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS = "RuntimeInvisibleParameterAnnotations".toCharArray();
    public static final char[] ANNOTATION_DEFAULT = "AnnotationDefault".toCharArray();
    public static final char[] STACK_MAP_TABLE = Attributes.NAME_STACK_MAP_TABLE.toCharArray();
    public static final char[] STACK_MAP = "StackMap".toCharArray();
    public static final char[] RUNTIME_VISIBLE_TYPE_ANNOTATIONS = Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS.toCharArray();
    public static final char[] RUNTIME_INVISIBLE_TYPE_ANNOTATIONS = Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS.toCharArray();
    public static final char[] BOOTSTRAP_METHODS = Attributes.NAME_BOOTSTRAP_METHODS.toCharArray();
    public static final char[] METHOD_PARAMETERS = Attributes.NAME_METHOD_PARAMETERS.toCharArray();
    public static final char[] MODULE = Attributes.NAME_MODULE.toCharArray();
    public static final char[] MODULE_PACKAGES = Attributes.NAME_MODULE_PACKAGES.toCharArray();
    public static final char[] MODULE_MAIN_CLASS = Attributes.NAME_MODULE_MAIN_CLASS.toCharArray();
    public static final char[] NEST_HOST = Attributes.NAME_NEST_HOST.toCharArray();
    public static final char[] NEST_MEMBERS = Attributes.NAME_NEST_MEMBERS.toCharArray();
}
