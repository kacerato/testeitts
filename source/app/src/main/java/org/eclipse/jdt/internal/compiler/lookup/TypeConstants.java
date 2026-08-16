package org.eclipse.jdt.internal.compiler.lookup;

import android.app.Instrumentation;
import android.content.ContentResolver;
import android.provider.ContactsContract;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.protobuf.C12667d1;
import com.itsmagic.engine.Activities.Editor.Panels.Objects.ObjectsPanel;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.lang.constant.ConstantDescs;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;

public interface TypeConstants {
    public static final char[] ANNOTATION;
    public static final char[] ANNOTATION_PREFIX;
    public static final char[] ANNOTATION_SUFFIX;
    public static final char[] ANONYMOUS_METHOD;
    public static final char[] ANONYM_PREFIX;
    public static final char[] ANONYM_SUFFIX;
    public static final char[] APACHE;
    public static final char[][] APACHE_DBUTILS;
    public static final char[][] APACHE_IOUTILS;
    public static final char[] ASSERT_CLASS;
    public static final char[] ASSERT_FALSE;
    public static final char[] ASSERT_NOTNULL;
    public static final char[] ASSERT_NULL;
    public static final char[] ASSERT_TRUE;
    public static final String AUTOMATIC_MODULE_NAME = "Automatic-Module-Name";
    public static final char[] AUTOWIRED;
    public static final char[] BEANS;
    public static final char[] BOOLEAN;
    public static final char[] BYTE;
    public static final char[] CAPTURE18;
    public static final char[] CHAR;
    public static final char[] CHECK_ARGUMENT;
    public static final char[] CHECK_NOT_NULL;
    public static final char[] CHECK_STATE;
    public static final char[] CLINIT;
    public static final char[] CLONE;
    public static final char[] CLOSE;
    public static final char[] CLOSE_QUIETLY;
    public static final char[] COM;
    public static final char[] COMMONS;
    public static final char[] COMPILER;
    public static final char[][] COM_GOOGLE_COMMON_BASE_PRECONDITIONS;
    public static final char[][] COM_GOOGLE_INJECT_INJECT;
    public static final int CONSTRAINT_EQUAL = 0;
    public static final int CONSTRAINT_EXTENDS = 1;
    public static final int CONSTRAINT_SUPER = 2;
    public static final char[] CONTAINS;
    public static final char[] CONTAINS_ALL;
    public static final char[] CONTAINS_KEY;
    public static final char[] CONTAINS_VALUE;
    public static final char[] CORE;
    public static final char[] CharArray_JAVA_IO_OBJECTINPUTSTREAM;
    public static final char[] CharArray_JAVA_IO_OBJECTOUTPUTSTREAM;
    public static final char[] CharArray_JAVA_IO_OBJECTSTREAMFIELD;
    public static final char[] CharArray_JAVA_LANG_ANNOTATION_ANNOTATION;
    public static final char[] CharArray_JAVA_LANG_ENUM;
    public static final char[] CharArray_JAVA_LANG_OBJECT;
    public static final char[] DEFAULT_LOCATION__ARRAY_CONTENTS;
    public static final char[] DEFAULT_LOCATION__FIELD;
    public static final char[] DEFAULT_LOCATION__PARAMETER;
    public static final char[] DEFAULT_LOCATION__RETURN_TYPE;
    public static final char[] DEFAULT_LOCATION__TYPE_ARGUMENT;
    public static final char[] DEFAULT_LOCATION__TYPE_BOUND;
    public static final char[] DEFAULT_LOCATION__TYPE_PARAMETER;
    public static final char[] DESERIALIZE_LAMBDA;
    public static final char[] DOM;
    public static final char[] DOUBLE;
    public static final char[] ECLIPSE;
    public static final char[] EQUALS;
    public static final char[] FACTORY;
    public static final char[] FLOAT;
    public static final char[] FOR_REMOVAL;
    public static final char[] FRAMEWORK;
    public static final char[] GET;
    public static final char[] GETCLASS;
    public static final char[] GOOGLE;
    public static final char[][] GUAVA_CLOSEABLES;
    public static final char[] HASHCODE;
    public static final char[] INDEX_OF;
    public static final char[] INIT;
    public static final char[] INJECT_PACKAGE;
    public static final char[] INJECT_TYPE;
    public static final char[] INT;
    public static final char[] INTERNAL;
    public static final char[] INVOKE;
    public static final char[] IO;
    public static final char[] IS_NOTNULL;
    public static final char[] IS_TRUE;
    public static final char[] ITYPEBINDING;
    public static final char[] JAVA;
    public static final char[] JAVAX;
    public static final char[][] JAVAX_ANNOTATION_INJECT_INJECT;
    public static final char[][] JAVAX_RMI_CORBA_STUB;
    public static final char[] JAVA_BASE;
    public static final char[][] JAVA_IO;
    public static final char[][] JAVA_IO_CLOSEABLE;
    public static final char[][] JAVA_IO_EXTERNALIZABLE;
    public static final char[][] JAVA_IO_IOEXCEPTION;
    public static final char[][] JAVA_IO_OBJECTINPUTSTREAM;
    public static final char[][] JAVA_IO_OBJECTOUTPUTSTREAM;
    public static final char[][] JAVA_IO_OBJECTSTREAMEXCEPTION;
    public static final char[][] JAVA_IO_PRINTSTREAM;
    public static final char[][] JAVA_IO_RESOURCE_FREE_CLOSEABLES;
    public static final char[][] JAVA_IO_SERIALIZABLE;
    public static final char[][] JAVA_IO_WRAPPER_CLOSEABLES;
    public static final char[][] JAVA_LANG;
    public static final char[][] JAVA_LANG_ANNOTATION;
    public static final char[][] JAVA_LANG_ANNOTATION_ANNOTATION;
    public static final char[][] JAVA_LANG_ANNOTATION_DOCUMENTED;
    public static final char[][] JAVA_LANG_ANNOTATION_ELEMENTTYPE;
    public static final char[][] JAVA_LANG_ANNOTATION_INHERITED;
    public static final char[][] JAVA_LANG_ANNOTATION_REPEATABLE;
    public static final char[][] JAVA_LANG_ANNOTATION_RETENTION;
    public static final char[][] JAVA_LANG_ANNOTATION_RETENTIONPOLICY;
    public static final char[][] JAVA_LANG_ANNOTATION_TARGET;
    public static final char[][] JAVA_LANG_ASSERTIONERROR;
    public static final char[][] JAVA_LANG_AUTOCLOSEABLE;
    public static final char[][] JAVA_LANG_BOOLEAN;
    public static final char[][] JAVA_LANG_BYTE;
    public static final char[][] JAVA_LANG_CHARACTER;
    public static final char[][] JAVA_LANG_CLASS;
    public static final char[][] JAVA_LANG_CLASSNOTFOUNDEXCEPTION;
    public static final char[][] JAVA_LANG_CLONEABLE;
    public static final char[][] JAVA_LANG_DEPRECATED;
    public static final char[][] JAVA_LANG_DOUBLE;
    public static final char[][] JAVA_LANG_ENUM;
    public static final char[][] JAVA_LANG_ERROR;
    public static final char[][] JAVA_LANG_EXCEPTION;
    public static final char[][] JAVA_LANG_FLOAT;
    public static final char[][] JAVA_LANG_FUNCTIONAL_INTERFACE;
    public static final char[][] JAVA_LANG_ILLEGALARGUMENTEXCEPTION;
    public static final char[][] JAVA_LANG_INTEGER;
    public static final char[][] JAVA_LANG_INVOKE_LAMBDAMETAFACTORY;
    public static final char[][] JAVA_LANG_INVOKE_METHODHANDLES;
    public static final char[][] JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE;
    public static final char[][] JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE;
    public static final char[][] JAVA_LANG_INVOKE_SERIALIZEDLAMBDA;
    public static final char[][] JAVA_LANG_ITERABLE;
    public static final char[][] JAVA_LANG_LONG;
    public static final char[][] JAVA_LANG_NOCLASSDEFERROR;
    public static final char[][] JAVA_LANG_OBJECT;
    public static final char[][] JAVA_LANG_OVERRIDE;
    public static final char[][] JAVA_LANG_REFLECT_CONSTRUCTOR;
    public static final char[][] JAVA_LANG_REFLECT_FIELD;
    public static final char[][] JAVA_LANG_REFLECT_METHOD;
    public static final char[][] JAVA_LANG_RUNTIMEEXCEPTION;
    public static final char[][] JAVA_LANG_SAFEVARARGS;
    public static final char[][] JAVA_LANG_SHORT;
    public static final char[][] JAVA_LANG_STRING;
    public static final char[][] JAVA_LANG_STRINGBUFFER;
    public static final char[][] JAVA_LANG_STRINGBUILDER;
    public static final char[][] JAVA_LANG_SUPPRESSWARNINGS;
    public static final char[][] JAVA_LANG_SYSTEM;
    public static final char[][] JAVA_LANG_THROWABLE;
    public static final char[][] JAVA_LANG_VOID;
    public static final char[][] JAVA_NIO_FILE_FILES;
    public static final char[][] JAVA_UTIL_COLLECTION;
    public static final char[][] JAVA_UTIL_ITERATOR;
    public static final char[][] JAVA_UTIL_LIST;
    public static final char[][] JAVA_UTIL_MAP;
    public static final char[][] JAVA_UTIL_OBJECTS;
    public static final char[][] JAVA_UTIL_STREAM;
    public static final char[][] JAVA_UTIL_ZIP_WRAPPER_CLOSEABLES;
    public static final char[] JDT;
    public static final char[] JUNIT;
    public static final char[][] JUNIT_FRAMEWORK_ASSERT;
    public static final char[] JUPITER;
    public static final char[] LAMBDA_TYPE;
    public static final char[] LANG;
    public static final char[] LANG3;
    public static final char[] LAST_INDEX_OF;
    public static final char[] LENGTH;
    public static final char[] LONG;
    public static final char[] LOOKUP;
    public static final char[] MAIN;
    public static final String META_INF_MANIFEST_MF = "META-INF/MANIFEST.MF";
    public static final char[] METHOD_SOURCE;
    public static final char[] MODULE_INFO_CLASS_NAME;
    public static final String MODULE_INFO_CLASS_NAME_STRING = "module-info.class";
    public static final char[] MODULE_INFO_FILE_NAME;
    public static final String MODULE_INFO_FILE_NAME_STRING = "module-info.java";
    public static final char[] MODULE_INFO_NAME;
    public static final String MODULE_INFO_NAME_STRING = "module-info";
    public static final char[] NOT_NULL;
    public static final char[] NULL;
    public static final char[] OBJECT;
    public static final char[] OPTIONAL;
    public static final char[] ORG;
    public static final char[][] ORG_APACHE_COMMONS_LANG3_VALIDATE;
    public static final char[][] ORG_APACHE_COMMONS_LANG_VALIDATE;
    public static final char[][] ORG_ECLIPSE_CORE_RUNTIME_ASSERT;
    public static final char[][] ORG_ECLIPSE_JDT_CORE_DOM_ITYPEBINDING;
    public static final char[][] ORG_ECLIPSE_JDT_INTERNAL_COMPILER_LOOKUP_TYPEBINDING;
    public static final char[][] ORG_JUNIT_ASSERT;
    public static final char[][] ORG_JUNIT_METHOD_SOURCE;
    public static final char[][] ORG_SPRING_AUTOWIRED;
    public static final char[][][] OTHER_WRAPPER_CLOSEABLES;
    public static final char[] PACKAGE_INFO_NAME;
    public static final char[] PARAMS;
    public static final char[] PROVIDER;
    public static final char[] READOBJECT;
    public static final char[] READRESOLVE;
    public static final char[] REFLECT;
    public static final char[] REMOVE;
    public static final char[] REMOVE_ALL;
    public static final char[] REQUIRED;
    public static final char[] REQUIRE_NON_NULL;
    public static final char[][] RESOURCE_FREE_CLOSEABLE_J_U_STREAMS;
    public static final char[] RETAIN_ALL;
    public static final char[] RUNTIME;
    public static final char[] SERIALPERSISTENTFIELDS;
    public static final char[] SERIALVERSIONUID;
    public static final char[] SHORT;
    public static final char[] SINCE;
    public static final char[] SPRING;
    public static final char[] SYNTHETIC_ACCESS_METHOD_PREFIX;
    public static final char[] SYNTHETIC_ASSERT_DISABLED;
    public static final char[] SYNTHETIC_CLASS;
    public static final char[] SYNTHETIC_ENCLOSING_INSTANCE_PREFIX;
    public static final char[] SYNTHETIC_ENUM_CONSTANT_INITIALIZATION_METHOD_PREFIX;
    public static final char[] SYNTHETIC_ENUM_VALUES;
    public static final char[] SYNTHETIC_OUTER_LOCAL_PREFIX;
    public static final char[] SYNTHETIC_STATIC_FACTORY;
    public static final char[] SYNTHETIC_SWITCH_ENUM_TABLE;
    public static final char[] TYPE;
    public static final char[] TYPEBINDING;
    public static final char[] TYPE_PARAMETER_TARGET;
    public static final char[] TYPE_USE_TARGET;
    public static final char[] UPPER_ANNOTATION_TYPE;
    public static final char[] UPPER_CLASS;
    public static final char[] UPPER_CONSTRUCTOR;
    public static final char[] UPPER_FIELD;
    public static final char[] UPPER_LOCAL_VARIABLE;
    public static final char[] UPPER_METHOD;
    public static final char[] UPPER_MODULE;
    public static final char[] UPPER_PACKAGE;
    public static final char[] UPPER_PARAMETER;
    public static final char[] UPPER_RUNTIME;
    public static final char[] UPPER_SOURCE;
    public static final char[] UTIL;
    public static final char[] VALIDATE_CLASS;
    public static final char[] VALUE;
    public static final char[] VALUEOF;
    public static final char[] VALUES;
    public static final char[] VAR;
    public static final char[] VOID;
    public static final char[] WILDCARD_CAPTURE;
    public static final char[] WILDCARD_CAPTURE_NAME_PREFIX;
    public static final char[] WILDCARD_CAPTURE_NAME_SUFFIX;
    public static final char[] WILDCARD_CAPTURE_SIGNABLE_NAME_SUFFIX;
    public static final char[] WILDCARD_EXTENDS;
    public static final char[] WILDCARD_MINUS;
    public static final char[] WILDCARD_NAME;
    public static final char[] WILDCARD_PLUS;
    public static final char[] WILDCARD_STAR;
    public static final char[] WILDCARD_SUPER;
    public static final char[] WRITEOBJECT;
    public static final char[] WRITEREPLACE;
    public static final char[] ZIP;
    public static final CloseMethodRecord[] closeMethods;

    public enum BoundCheckStatus {
        OK,
        NULL_PROBLEM,
        UNCHECKED,
        MISMATCH;

        private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus;

        public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus() {
            int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[valuesCustom().length];
            try {
                iArr2[MISMATCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[NULL_PROBLEM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[UNCHECKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus = iArr2;
            return iArr2;
        }

        public static BoundCheckStatus[] valuesCustom() {
            BoundCheckStatus[] valuesCustom = values();
            int length = valuesCustom.length;
            BoundCheckStatus[] boundCheckStatusArr = new BoundCheckStatus[length];
            System.arraycopy(valuesCustom, 0, boundCheckStatusArr, 0, length);
            return boundCheckStatusArr;
        }

        public BoundCheckStatus betterOf(BoundCheckStatus boundCheckStatus) {
            return ordinal() < boundCheckStatus.ordinal() ? this : boundCheckStatus;
        }

        public boolean isOKbyJLS() {
            int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[ordinal()];
            return i10 == 1 || i10 == 2;
        }
    }

    public static class CloseMethodRecord {
        public int numCloseableArgs;
        public char[] selector;
        public char[][] typeName;

        public CloseMethodRecord(char[][] cArr, char[] cArr2, int i10) {
            this.typeName = cArr;
            this.selector = cArr2;
            this.numCloseableArgs = i10;
        }
    }

    public enum DangerousMethod {
        Contains,
        Remove,
        RemoveAll,
        ContainsAll,
        RetainAll,
        Get,
        ContainsKey,
        ContainsValue,
        IndexOf,
        LastIndexOf,
        Equals;

        public static DangerousMethod detectSelector(char[] cArr) {
            char c10 = cArr[0];
            if (c10 == 'c') {
                char[] cArr2 = TypeConstants.CONTAINS;
                if (!CharOperation.prefixEquals(cArr2, cArr)) {
                    return null;
                }
                if (CharOperation.equals(cArr, cArr2)) {
                    return Contains;
                }
                if (CharOperation.equals(cArr, TypeConstants.CONTAINS_ALL)) {
                    return ContainsAll;
                }
                if (CharOperation.equals(cArr, TypeConstants.CONTAINS_KEY)) {
                    return ContainsKey;
                }
                if (CharOperation.equals(cArr, TypeConstants.CONTAINS_VALUE)) {
                    return ContainsValue;
                }
                return null;
            }
            if (c10 == 'e') {
                if (CharOperation.equals(cArr, TypeConstants.EQUALS)) {
                    return Equals;
                }
                return null;
            }
            if (c10 == 'g') {
                if (CharOperation.equals(cArr, TypeConstants.GET)) {
                    return Get;
                }
                return null;
            }
            if (c10 == 'i') {
                if (CharOperation.equals(cArr, TypeConstants.INDEX_OF)) {
                    return IndexOf;
                }
                return null;
            }
            if (c10 == 'l') {
                if (CharOperation.equals(cArr, TypeConstants.LAST_INDEX_OF)) {
                    return LastIndexOf;
                }
                return null;
            }
            if (c10 != 'r') {
                return null;
            }
            char[] cArr3 = TypeConstants.REMOVE;
            if (!CharOperation.prefixEquals(cArr3, cArr)) {
                if (CharOperation.equals(cArr, TypeConstants.RETAIN_ALL)) {
                    return RetainAll;
                }
                return null;
            }
            if (CharOperation.equals(cArr, cArr3)) {
                return Remove;
            }
            if (CharOperation.equals(cArr, TypeConstants.REMOVE_ALL)) {
                return RemoveAll;
            }
            return null;
        }

        public static DangerousMethod[] valuesCustom() {
            DangerousMethod[] valuesCustom = values();
            int length = valuesCustom.length;
            DangerousMethod[] dangerousMethodArr = new DangerousMethod[length];
            System.arraycopy(valuesCustom, 0, dangerousMethodArr, 0, length);
            return dangerousMethodArr;
        }
    }

    static {
        char[] charArray = SuffixConstants.EXTENSION_java.toCharArray();
        JAVA = charArray;
        char[] charArray2 = "javax".toCharArray();
        JAVAX = charArray2;
        char[] charArray3 = "lang".toCharArray();
        LANG = charArray3;
        char[] charArray4 = "io".toCharArray();
        IO = charArray4;
        char[] charArray5 = "util".toCharArray();
        UTIL = charArray5;
        ZIP = "zip".toCharArray();
        char[] charArray6 = "annotation".toCharArray();
        ANNOTATION = charArray6;
        char[] charArray7 = "reflect".toCharArray();
        REFLECT = charArray7;
        LENGTH = "length".toCharArray();
        CLONE = "clone".toCharArray();
        EQUALS = "equals".toCharArray();
        GETCLASS = "getClass".toCharArray();
        HASHCODE = "hashCode".toCharArray();
        char[] charArray8 = "Object".toCharArray();
        OBJECT = charArray8;
        MAIN = T5.b.f24045b.toCharArray();
        SERIALVERSIONUID = "serialVersionUID".toCharArray();
        SERIALPERSISTENTFIELDS = "serialPersistentFields".toCharArray();
        READRESOLVE = "readResolve".toCharArray();
        WRITEREPLACE = "writeReplace".toCharArray();
        READOBJECT = "readObject".toCharArray();
        WRITEOBJECT = "writeObject".toCharArray();
        CharArray_JAVA_LANG_OBJECT = "java.lang.Object".toCharArray();
        CharArray_JAVA_LANG_ENUM = "java.lang.Enum".toCharArray();
        CharArray_JAVA_LANG_ANNOTATION_ANNOTATION = "java.lang.annotation.Annotation".toCharArray();
        CharArray_JAVA_IO_OBJECTINPUTSTREAM = "java.io.ObjectInputStream".toCharArray();
        CharArray_JAVA_IO_OBJECTOUTPUTSTREAM = "java.io.ObjectOutputStream".toCharArray();
        CharArray_JAVA_IO_OBJECTSTREAMFIELD = "java.io.ObjectStreamField".toCharArray();
        ANONYM_PREFIX = "new ".toCharArray();
        ANONYM_SUFFIX = "(){}".toCharArray();
        WILDCARD_NAME = new char[]{'?'};
        WILDCARD_SUPER = " super ".toCharArray();
        WILDCARD_EXTENDS = " extends ".toCharArray();
        WILDCARD_MINUS = new char[]{'-'};
        WILDCARD_STAR = new char[]{'*'};
        WILDCARD_PLUS = new char[]{'+'};
        WILDCARD_CAPTURE_NAME_PREFIX = "capture#".toCharArray();
        WILDCARD_CAPTURE_NAME_SUFFIX = "-of ".toCharArray();
        WILDCARD_CAPTURE_SIGNABLE_NAME_SUFFIX = "capture-of ".toCharArray();
        WILDCARD_CAPTURE = new char[]{'!'};
        CAPTURE18 = new char[]{'^'};
        BYTE = "byte".toCharArray();
        SHORT = "short".toCharArray();
        INT = "int".toCharArray();
        LONG = "long".toCharArray();
        FLOAT = TypedValues.Custom.S_FLOAT.toCharArray();
        DOUBLE = "double".toCharArray();
        CHAR = "char".toCharArray();
        BOOLEAN = TypedValues.Custom.S_BOOLEAN.toCharArray();
        NULL = "null".toCharArray();
        VOID = "void".toCharArray();
        VALUE = "value".toCharArray();
        VALUES = "values".toCharArray();
        VALUEOF = "valueOf".toCharArray();
        UPPER_SOURCE = "SOURCE".toCharArray();
        UPPER_CLASS = SuffixConstants.EXTENSION_CLASS.toCharArray();
        UPPER_RUNTIME = "RUNTIME".toCharArray();
        ANNOTATION_PREFIX = "@".toCharArray();
        ANNOTATION_SUFFIX = "()".toCharArray();
        TYPE = "TYPE".toCharArray();
        UPPER_FIELD = "FIELD".toCharArray();
        UPPER_METHOD = "METHOD".toCharArray();
        UPPER_PARAMETER = "PARAMETER".toCharArray();
        UPPER_CONSTRUCTOR = "CONSTRUCTOR".toCharArray();
        UPPER_LOCAL_VARIABLE = "LOCAL_VARIABLE".toCharArray();
        UPPER_ANNOTATION_TYPE = "ANNOTATION_TYPE".toCharArray();
        UPPER_PACKAGE = "PACKAGE".toCharArray();
        ANONYMOUS_METHOD = "lambda$".toCharArray();
        DESERIALIZE_LAMBDA = "$deserializeLambda$".toCharArray();
        LAMBDA_TYPE = "<lambda>".toCharArray();
        UPPER_MODULE = "MODULE".toCharArray();
        VAR = "var".toCharArray();
        TYPE_USE_TARGET = "TYPE_USE".toCharArray();
        TYPE_PARAMETER_TARGET = "TYPE_PARAMETER".toCharArray();
        char[] charArray9 = "org".toCharArray();
        ORG = charArray9;
        char[] charArray10 = "eclipse".toCharArray();
        ECLIPSE = charArray10;
        char[] charArray11 = "core".toCharArray();
        CORE = charArray11;
        char[] charArray12 = "runtime".toCharArray();
        RUNTIME = charArray12;
        char[] charArray13 = "apache".toCharArray();
        APACHE = charArray13;
        char[] charArray14 = "commons".toCharArray();
        COMMONS = charArray14;
        char[] charArray15 = "lang3".toCharArray();
        LANG3 = charArray15;
        char[] charArray16 = "com".toCharArray();
        COM = charArray16;
        char[] charArray17 = "google".toCharArray();
        GOOGLE = charArray17;
        char[] charArray18 = "jdt".toCharArray();
        JDT = charArray18;
        char[] charArray19 = "internal".toCharArray();
        INTERNAL = charArray19;
        char[] charArray20 = "compiler".toCharArray();
        COMPILER = charArray20;
        char[] charArray21 = ContactsContract.ContactsColumns.LOOKUP_KEY.toCharArray();
        LOOKUP = charArray21;
        char[] charArray22 = "TypeBinding".toCharArray();
        TYPEBINDING = charArray22;
        char[] charArray23 = "dom".toCharArray();
        DOM = charArray23;
        char[] charArray24 = "ITypeBinding".toCharArray();
        ITYPEBINDING = charArray24;
        char[] charArray25 = "springframework".toCharArray();
        SPRING = charArray25;
        JAVA_LANG = new char[][]{charArray, charArray3};
        JAVA_IO = new char[][]{charArray, charArray4};
        JAVA_LANG_ANNOTATION = new char[][]{charArray, charArray3, charArray6};
        JAVA_LANG_ANNOTATION_ANNOTATION = new char[][]{charArray, charArray3, charArray6, "Annotation".toCharArray()};
        JAVA_LANG_ASSERTIONERROR = new char[][]{charArray, charArray3, "AssertionError".toCharArray()};
        JAVA_LANG_CLASS = new char[][]{charArray, charArray3, "Class".toCharArray()};
        JAVA_LANG_CLASSNOTFOUNDEXCEPTION = new char[][]{charArray, charArray3, "ClassNotFoundException".toCharArray()};
        JAVA_LANG_CLONEABLE = new char[][]{charArray, charArray3, "Cloneable".toCharArray()};
        JAVA_LANG_ENUM = new char[][]{charArray, charArray3, "Enum".toCharArray()};
        JAVA_LANG_EXCEPTION = new char[][]{charArray, charArray3, "Exception".toCharArray()};
        JAVA_LANG_ERROR = new char[][]{charArray, charArray3, "Error".toCharArray()};
        JAVA_LANG_ILLEGALARGUMENTEXCEPTION = new char[][]{charArray, charArray3, "IllegalArgumentException".toCharArray()};
        JAVA_LANG_ITERABLE = new char[][]{charArray, charArray3, "Iterable".toCharArray()};
        JAVA_LANG_NOCLASSDEFERROR = new char[][]{charArray, charArray3, "NoClassDefError".toCharArray()};
        JAVA_LANG_OBJECT = new char[][]{charArray, charArray3, charArray8};
        JAVA_LANG_STRING = new char[][]{charArray, charArray3, SerializableShaderEntry.f81157k.toCharArray()};
        JAVA_LANG_STRINGBUFFER = new char[][]{charArray, charArray3, "StringBuffer".toCharArray()};
        JAVA_LANG_STRINGBUILDER = new char[][]{charArray, charArray3, "StringBuilder".toCharArray()};
        JAVA_LANG_SYSTEM = new char[][]{charArray, charArray3, "System".toCharArray()};
        JAVA_LANG_RUNTIMEEXCEPTION = new char[][]{charArray, charArray3, "RuntimeException".toCharArray()};
        JAVA_LANG_THROWABLE = new char[][]{charArray, charArray3, "Throwable".toCharArray()};
        JAVA_LANG_REFLECT_CONSTRUCTOR = new char[][]{charArray, charArray3, charArray7, "Constructor".toCharArray()};
        JAVA_IO_PRINTSTREAM = new char[][]{charArray, charArray4, "PrintStream".toCharArray()};
        JAVA_IO_SERIALIZABLE = new char[][]{charArray, charArray4, "Serializable".toCharArray()};
        JAVA_LANG_BYTE = new char[][]{charArray, charArray3, "Byte".toCharArray()};
        JAVA_LANG_SHORT = new char[][]{charArray, charArray3, "Short".toCharArray()};
        JAVA_LANG_CHARACTER = new char[][]{charArray, charArray3, "Character".toCharArray()};
        JAVA_LANG_INTEGER = new char[][]{charArray, charArray3, "Integer".toCharArray()};
        JAVA_LANG_LONG = new char[][]{charArray, charArray3, "Long".toCharArray()};
        JAVA_LANG_FLOAT = new char[][]{charArray, charArray3, SerializableShaderEntry.f81148b.toCharArray()};
        JAVA_LANG_DOUBLE = new char[][]{charArray, charArray3, "Double".toCharArray()};
        JAVA_LANG_BOOLEAN = new char[][]{charArray, charArray3, "Boolean".toCharArray()};
        JAVA_LANG_VOID = new char[][]{charArray, charArray3, "Void".toCharArray()};
        JAVA_UTIL_COLLECTION = new char[][]{charArray, charArray5, "Collection".toCharArray()};
        JAVA_UTIL_ITERATOR = new char[][]{charArray, charArray5, "Iterator".toCharArray()};
        JAVA_UTIL_OBJECTS = new char[][]{charArray, charArray5, ObjectsPanel.f71767d0.toCharArray()};
        JAVA_UTIL_LIST = new char[][]{charArray, charArray5, C12667d1.f69075a.toCharArray()};
        JAVA_LANG_DEPRECATED = new char[][]{charArray, charArray3, "Deprecated".toCharArray()};
        FOR_REMOVAL = "forRemoval".toCharArray();
        SINCE = "since".toCharArray();
        JAVA_LANG_ANNOTATION_DOCUMENTED = new char[][]{charArray, charArray3, charArray6, "Documented".toCharArray()};
        JAVA_LANG_ANNOTATION_INHERITED = new char[][]{charArray, charArray3, charArray6, "Inherited".toCharArray()};
        JAVA_LANG_ANNOTATION_REPEATABLE = new char[][]{charArray, charArray3, charArray6, "Repeatable".toCharArray()};
        JAVA_LANG_OVERRIDE = new char[][]{charArray, charArray3, "Override".toCharArray()};
        JAVA_LANG_FUNCTIONAL_INTERFACE = new char[][]{charArray, charArray3, "FunctionalInterface".toCharArray()};
        JAVA_LANG_ANNOTATION_RETENTION = new char[][]{charArray, charArray3, charArray6, "Retention".toCharArray()};
        JAVA_LANG_SUPPRESSWARNINGS = new char[][]{charArray, charArray3, "SuppressWarnings".toCharArray()};
        JAVA_LANG_ANNOTATION_TARGET = new char[][]{charArray, charArray3, charArray6, "Target".toCharArray()};
        JAVA_LANG_ANNOTATION_RETENTIONPOLICY = new char[][]{charArray, charArray3, charArray6, "RetentionPolicy".toCharArray()};
        JAVA_LANG_ANNOTATION_ELEMENTTYPE = new char[][]{charArray, charArray3, charArray6, "ElementType".toCharArray()};
        JAVA_LANG_REFLECT_FIELD = new char[][]{charArray, charArray3, charArray7, "Field".toCharArray()};
        JAVA_LANG_REFLECT_METHOD = new char[][]{charArray, charArray3, charArray7, "Method".toCharArray()};
        JAVA_IO_CLOSEABLE = new char[][]{charArray, charArray4, "Closeable".toCharArray()};
        JAVA_IO_OBJECTSTREAMEXCEPTION = new char[][]{charArray, charArray4, "ObjectStreamException".toCharArray()};
        JAVA_IO_EXTERNALIZABLE = new char[][]{charArray, charArray4, "Externalizable".toCharArray()};
        JAVA_IO_IOEXCEPTION = new char[][]{charArray, charArray4, "IOException".toCharArray()};
        JAVA_IO_OBJECTOUTPUTSTREAM = new char[][]{charArray, charArray4, "ObjectOutputStream".toCharArray()};
        JAVA_IO_OBJECTINPUTSTREAM = new char[][]{charArray, charArray4, "ObjectInputStream".toCharArray()};
        JAVA_NIO_FILE_FILES = new char[][]{charArray, "nio".toCharArray(), ContentResolver.SCHEME_FILE.toCharArray(), "Files".toCharArray()};
        JAVAX_RMI_CORBA_STUB = new char[][]{charArray2, "rmi".toCharArray(), "CORBA".toCharArray(), "Stub".toCharArray()};
        JAVA_LANG_SAFEVARARGS = new char[][]{charArray, charArray3, "SafeVarargs".toCharArray()};
        char[] charArray26 = "invoke".toCharArray();
        INVOKE = charArray26;
        JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE = new char[][]{charArray, charArray3, charArray26, "MethodHandle".toCharArray(), "PolymorphicSignature".toCharArray()};
        JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE = new char[][]{charArray, charArray3, charArray26, "MethodHandle$PolymorphicSignature".toCharArray()};
        JAVA_LANG_INVOKE_LAMBDAMETAFACTORY = new char[][]{charArray, charArray3, charArray26, "LambdaMetafactory".toCharArray()};
        JAVA_LANG_INVOKE_SERIALIZEDLAMBDA = new char[][]{charArray, charArray3, charArray26, "SerializedLambda".toCharArray()};
        JAVA_LANG_INVOKE_METHODHANDLES = new char[][]{charArray, charArray3, charArray26, "MethodHandles".toCharArray()};
        JAVA_LANG_AUTOCLOSEABLE = new char[][]{charArray, charArray3, "AutoCloseable".toCharArray()};
        char[] charArray27 = "close".toCharArray();
        CLOSE = charArray27;
        char[][] cArr = {charArray16, charArray17, "common".toCharArray(), charArray4, "Closeables".toCharArray()};
        GUAVA_CLOSEABLES = cArr;
        char[][] cArr2 = {charArray9, charArray13, charArray14, charArray4, "IOUtils".toCharArray()};
        APACHE_IOUTILS = cArr2;
        char[][] cArr3 = {charArray9, charArray13, charArray14, "dbutils".toCharArray(), "DbUtils".toCharArray()};
        APACHE_DBUTILS = cArr3;
        char[] charArray28 = "closeQuietly".toCharArray();
        CLOSE_QUIETLY = charArray28;
        closeMethods = new CloseMethodRecord[]{new CloseMethodRecord(cArr, charArray28, 1), new CloseMethodRecord(cArr, charArray27, 1), new CloseMethodRecord(cArr2, charArray28, 1), new CloseMethodRecord(cArr3, charArray27, 1), new CloseMethodRecord(cArr3, charArray28, 3), new CloseMethodRecord(cArr3, "commitAndClose".toCharArray(), 1), new CloseMethodRecord(cArr3, "commitAndCloseQuietly".toCharArray(), 1), new CloseMethodRecord(cArr3, "rollbackAndClose".toCharArray(), 1), new CloseMethodRecord(cArr3, "rollbackAndCloseQuietly".toCharArray(), 1)};
        JAVA_IO_WRAPPER_CLOSEABLES = new char[][]{"BufferedInputStream".toCharArray(), "BufferedOutputStream".toCharArray(), "BufferedReader".toCharArray(), "BufferedWriter".toCharArray(), "InputStreamReader".toCharArray(), "PrintWriter".toCharArray(), "LineNumberReader".toCharArray(), "DataInputStream".toCharArray(), "DataOutputStream".toCharArray(), "ObjectInputStream".toCharArray(), "ObjectOutputStream".toCharArray(), "FilterInputStream".toCharArray(), "FilterOutputStream".toCharArray(), "DataInputStream".toCharArray(), "DataOutputStream".toCharArray(), "PushbackInputStream".toCharArray(), "SequenceInputStream".toCharArray(), "PrintStream".toCharArray(), "PushbackReader".toCharArray(), "OutputStreamWriter".toCharArray()};
        JAVA_UTIL_ZIP_WRAPPER_CLOSEABLES = new char[][]{"GZIPInputStream".toCharArray(), "InflaterInputStream".toCharArray(), "DeflaterInputStream".toCharArray(), "CheckedInputStream".toCharArray(), "ZipInputStream".toCharArray(), "JarInputStream".toCharArray(), "GZIPOutputStream".toCharArray(), "InflaterOutputStream".toCharArray(), "DeflaterOutputStream".toCharArray(), "CheckedOutputStream".toCharArray(), "ZipOutputStream".toCharArray(), "JarOutputStream".toCharArray()};
        OTHER_WRAPPER_CLOSEABLES = new char[][][]{new char[][]{charArray, "security".toCharArray(), "DigestInputStream".toCharArray()}, new char[][]{charArray, "security".toCharArray(), "DigestOutputStream".toCharArray()}, new char[][]{charArray, "beans".toCharArray(), "XMLEncoder".toCharArray()}, new char[][]{charArray, "beans".toCharArray(), "XMLDecoder".toCharArray()}, new char[][]{charArray2, "sound".toCharArray(), "sampled".toCharArray(), "AudioInputStream".toCharArray()}};
        JAVA_IO_RESOURCE_FREE_CLOSEABLES = new char[][]{"StringReader".toCharArray(), "StringWriter".toCharArray(), "ByteArrayInputStream".toCharArray(), "ByteArrayOutputStream".toCharArray(), "CharArrayReader".toCharArray(), "CharArrayWriter".toCharArray(), "StringBufferInputStream".toCharArray()};
        JAVA_UTIL_STREAM = new char[][]{charArray, charArray5, Instrumentation.REPORT_KEY_STREAMRESULT.toCharArray()};
        RESOURCE_FREE_CLOSEABLE_J_U_STREAMS = new char[][]{"Stream".toCharArray(), "DoubleStream".toCharArray(), "LongStream".toCharArray(), "IntStream".toCharArray()};
        char[] charArray29 = "Assert".toCharArray();
        ASSERT_CLASS = charArray29;
        ORG_ECLIPSE_CORE_RUNTIME_ASSERT = new char[][]{charArray9, charArray10, charArray11, charArray12, charArray29};
        IS_NOTNULL = "isNotNull".toCharArray();
        char[] charArray30 = "junit".toCharArray();
        JUNIT = charArray30;
        char[] charArray31 = "framework".toCharArray();
        FRAMEWORK = charArray31;
        char[] charArray32 = "jupiter".toCharArray();
        JUPITER = charArray32;
        char[] charArray33 = "params".toCharArray();
        PARAMS = charArray33;
        char[] charArray34 = "provider".toCharArray();
        PROVIDER = charArray34;
        JUNIT_FRAMEWORK_ASSERT = new char[][]{charArray30, charArray31, charArray29};
        ORG_JUNIT_ASSERT = new char[][]{charArray9, charArray30, charArray29};
        ASSERT_NULL = "assertNull".toCharArray();
        ASSERT_NOTNULL = "assertNotNull".toCharArray();
        ASSERT_TRUE = "assertTrue".toCharArray();
        ASSERT_FALSE = "assertFalse".toCharArray();
        char[] charArray35 = "MethodSource".toCharArray();
        METHOD_SOURCE = charArray35;
        ORG_JUNIT_METHOD_SOURCE = new char[][]{charArray9, charArray30, charArray32, charArray33, charArray34, charArray35};
        char[] charArray36 = "Validate".toCharArray();
        VALIDATE_CLASS = charArray36;
        ORG_APACHE_COMMONS_LANG_VALIDATE = new char[][]{charArray9, charArray13, charArray14, charArray3, charArray36};
        ORG_APACHE_COMMONS_LANG3_VALIDATE = new char[][]{charArray9, charArray13, charArray14, charArray15, charArray36};
        ORG_ECLIPSE_JDT_INTERNAL_COMPILER_LOOKUP_TYPEBINDING = new char[][]{charArray9, charArray10, charArray18, charArray19, charArray20, charArray21, charArray22};
        ORG_ECLIPSE_JDT_CORE_DOM_ITYPEBINDING = new char[][]{charArray9, charArray10, charArray18, charArray11, charArray23, charArray24};
        IS_TRUE = "isTrue".toCharArray();
        NOT_NULL = "notNull".toCharArray();
        COM_GOOGLE_COMMON_BASE_PRECONDITIONS = new char[][]{charArray16, charArray17, "common".toCharArray(), "base".toCharArray(), "Preconditions".toCharArray()};
        CHECK_NOT_NULL = "checkNotNull".toCharArray();
        CHECK_ARGUMENT = "checkArgument".toCharArray();
        CHECK_STATE = "checkState".toCharArray();
        REQUIRE_NON_NULL = "requireNonNull".toCharArray();
        char[] charArray37 = "inject".toCharArray();
        INJECT_PACKAGE = charArray37;
        char[] charArray38 = "Inject".toCharArray();
        INJECT_TYPE = charArray38;
        JAVAX_ANNOTATION_INJECT_INJECT = new char[][]{charArray2, charArray37, charArray38};
        COM_GOOGLE_INJECT_INJECT = new char[][]{charArray16, charArray17, charArray37, charArray38};
        OPTIONAL = IClasspathAttribute.OPTIONAL.toCharArray();
        JAVA_UTIL_MAP = new char[][]{charArray, charArray5, C12667d1.f69077c.toCharArray()};
        GET = "get".toCharArray();
        REMOVE = "remove".toCharArray();
        REMOVE_ALL = "removeAll".toCharArray();
        CONTAINS_ALL = "containsAll".toCharArray();
        RETAIN_ALL = "retainAll".toCharArray();
        CONTAINS_KEY = "containsKey".toCharArray();
        CONTAINS_VALUE = "containsValue".toCharArray();
        CONTAINS = "contains".toCharArray();
        INDEX_OF = "indexOf".toCharArray();
        LAST_INDEX_OF = "lastIndexOf".toCharArray();
        char[] charArray39 = "Autowired".toCharArray();
        AUTOWIRED = charArray39;
        char[] charArray40 = "beans".toCharArray();
        BEANS = charArray40;
        char[] charArray41 = "factory".toCharArray();
        FACTORY = charArray41;
        ORG_SPRING_AUTOWIRED = new char[][]{charArray9, charArray25, charArray40, charArray41, charArray6, charArray39};
        REQUIRED = "required".toCharArray();
        INIT = ConstantDescs.INIT_NAME.toCharArray();
        CLINIT = ConstantDescs.CLASS_INIT_NAME.toCharArray();
        SYNTHETIC_SWITCH_ENUM_TABLE = "$SWITCH_TABLE$".toCharArray();
        SYNTHETIC_ENUM_VALUES = "ENUM$VALUES".toCharArray();
        SYNTHETIC_ASSERT_DISABLED = "$assertionsDisabled".toCharArray();
        SYNTHETIC_CLASS = "class$".toCharArray();
        SYNTHETIC_OUTER_LOCAL_PREFIX = "val$".toCharArray();
        SYNTHETIC_ENCLOSING_INSTANCE_PREFIX = "this$".toCharArray();
        SYNTHETIC_ACCESS_METHOD_PREFIX = "access$".toCharArray();
        SYNTHETIC_ENUM_CONSTANT_INITIALIZATION_METHOD_PREFIX = " enum constant initialization$".toCharArray();
        SYNTHETIC_STATIC_FACTORY = "<factory>".toCharArray();
        DEFAULT_LOCATION__PARAMETER = "PARAMETER".toCharArray();
        DEFAULT_LOCATION__RETURN_TYPE = "RETURN_TYPE".toCharArray();
        DEFAULT_LOCATION__FIELD = "FIELD".toCharArray();
        DEFAULT_LOCATION__TYPE_ARGUMENT = "TYPE_ARGUMENT".toCharArray();
        DEFAULT_LOCATION__TYPE_PARAMETER = "TYPE_PARAMETER".toCharArray();
        DEFAULT_LOCATION__TYPE_BOUND = "TYPE_BOUND".toCharArray();
        DEFAULT_LOCATION__ARRAY_CONTENTS = "ARRAY_CONTENTS".toCharArray();
        PACKAGE_INFO_NAME = "package-info".toCharArray();
        MODULE_INFO_NAME = "module-info".toCharArray();
        MODULE_INFO_FILE_NAME = "module-info.java".toCharArray();
        MODULE_INFO_CLASS_NAME = "module-info.class".toCharArray();
        JAVA_BASE = JRTUtil.JAVA_BASE.toCharArray();
    }
}
