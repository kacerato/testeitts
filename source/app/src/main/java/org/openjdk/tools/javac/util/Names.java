package org.openjdk.tools.javac.util;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.ardor3d.util.export.xml.XMLExporter;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers.Array;
import java.lang.classfile.Attributes;
import java.lang.constant.ConstantDescs;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.openjdk.tools.doclint.DocLint;
import org.openjdk.tools.javac.util.Context;
import org.openjdk.tools.javac.util.Name;

public class Names {
    public static final Context.Key<Names> namesKey = new Context.Key<>();
    public final Name.Table table;
    public final Name asterisk = fromString("*");
    public final Name comma = fromString(DocLint.SEPARATOR);
    public final Name empty = fromString("");
    public final Name hyphen = fromString("-");
    public final Name one = fromString("1");
    public final Name period = fromString(".");
    public final Name semicolon = fromString(";");
    public final Name slash = fromString("/");
    public final Name slashequals = fromString("/=");
    public final Name _class = fromString("class");
    public final Name _default = fromString("default");
    public final Name _super = fromString("super");
    public final Name _this = fromString("this");
    public final Name exports = fromString("exports");
    public final Name opens = fromString("opens");
    public final Name module = fromString(IClasspathAttribute.MODULE);
    public final Name provides = fromString("provides");
    public final Name requires = fromString("requires");
    public final Name to = fromString(TypedValues.TransitionType.S_TO);
    public final Name transitive = fromString("transitive");
    public final Name uses = fromString("uses");
    public final Name open = fromString(AbstractCircuitBreaker.PROPERTY_NAME);
    public final Name with = fromString("with");
    public final Name _name = fromString("name");
    public final Name addSuppressed = fromString("addSuppressed");
    public final Name any = fromString("<any>");
    public final Name append = fromString("append");
    public final Name clinit = fromString(ConstantDescs.CLASS_INIT_NAME);
    public final Name clone = fromString("clone");
    public final Name close = fromString("close");
    public final Name compareTo = fromString("compareTo");
    public final Name deserializeLambda = fromString("$deserializeLambda$");
    public final Name desiredAssertionStatus = fromString("desiredAssertionStatus");
    public final Name equals = fromString("equals");
    public final Name error = fromString("<error>");
    public final Name family = fromString("family");
    public final Name finalize = fromString("finalize");
    public final Name forName = fromString("forName");
    public final Name forRemoval = fromString("forRemoval");
    public final Name getClass = fromString("getClass");
    public final Name getClassLoader = fromString("getClassLoader");
    public final Name getComponentType = fromString("getComponentType");
    public final Name getDeclaringClass = fromString("getDeclaringClass");
    public final Name getMessage = fromString("getMessage");
    public final Name hasNext = fromString("hasNext");
    public final Name hashCode = fromString("hashCode");
    public final Name init = fromString(ConstantDescs.INIT_NAME);
    public final Name initCause = fromString("initCause");
    public final Name iterator = fromString("iterator");
    public final Name length = fromString("length");
    public final Name next = fromString("next");
    public final Name ordinal = fromString("ordinal");
    public final Name provider = fromString("provider");
    public final Name serialVersionUID = fromString("serialVersionUID");
    public final Name toString = fromString("toString");
    public final Name value = fromString("value");
    public final Name valueOf = fromString("valueOf");
    public final Name values = fromString("values");
    public final Name dollarThis = fromString("$this");
    public final Name java_io_Serializable = fromString("java.io.Serializable");
    public final Name java_lang_AutoCloseable = fromString("java.lang.AutoCloseable");
    public final Name java_lang_Class = fromString("java.lang.Class");
    public final Name java_lang_Cloneable = fromString("java.lang.Cloneable");
    public final Name java_lang_Enum = fromString("java.lang.Enum");
    public final Name java_lang_Object = fromString("java.lang.Object");
    public final Name java_lang_invoke_MethodHandle = fromString("java.lang.invoke.MethodHandle");
    public final Name Array = fromString(Array.f73819J);
    public final Name Bound = fromString("Bound");
    public final Name Method = fromString("Method");
    public final Name java_lang = fromString("java.lang");
    public final Name java_base = fromString(JRTUtil.JAVA_BASE);
    public final Name Annotation = fromString("Annotation");
    public final Name AnnotationDefault = fromString("AnnotationDefault");
    public final Name BootstrapMethods = fromString(Attributes.NAME_BOOTSTRAP_METHODS);
    public final Name Bridge = fromString("Bridge");
    public final Name CharacterRangeTable = fromString(Attributes.NAME_CHARACTER_RANGE_TABLE);
    public final Name Code = fromString("Code");
    public final Name CompilationID = fromString(Attributes.NAME_COMPILATION_ID);
    public final Name ConstantValue = fromString("ConstantValue");
    public final Name Deprecated = fromString("Deprecated");
    public final Name EnclosingMethod = fromString("EnclosingMethod");
    public final Name Enum = fromString("Enum");
    public final Name Exceptions = fromString("Exceptions");
    public final Name InnerClasses = fromString("InnerClasses");
    public final Name LineNumberTable = fromString("LineNumberTable");
    public final Name LocalVariableTable = fromString("LocalVariableTable");
    public final Name LocalVariableTypeTable = fromString("LocalVariableTypeTable");
    public final Name MethodParameters = fromString(Attributes.NAME_METHOD_PARAMETERS);
    public final Name Module = fromString(Attributes.NAME_MODULE);
    public final Name ModuleResolution = fromString(Attributes.NAME_MODULE_RESOLUTION);
    public final Name RuntimeInvisibleAnnotations = fromString("RuntimeInvisibleAnnotations");
    public final Name RuntimeInvisibleParameterAnnotations = fromString("RuntimeInvisibleParameterAnnotations");
    public final Name RuntimeInvisibleTypeAnnotations = fromString(Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);
    public final Name RuntimeVisibleAnnotations = fromString("RuntimeVisibleAnnotations");
    public final Name RuntimeVisibleParameterAnnotations = fromString("RuntimeVisibleParameterAnnotations");
    public final Name RuntimeVisibleTypeAnnotations = fromString(Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);
    public final Name Signature = fromString("Signature");
    public final Name SourceFile = fromString("SourceFile");
    public final Name SourceID = fromString(Attributes.NAME_SOURCE_ID);
    public final Name StackMap = fromString("StackMap");
    public final Name StackMapTable = fromString(Attributes.NAME_STACK_MAP_TABLE);
    public final Name Synthetic = fromString("Synthetic");
    public final Name Value = fromString(XMLExporter.ELEMENT_VALUE);
    public final Name Varargs = fromString("Varargs");
    public final Name ANNOTATION_TYPE = fromString("ANNOTATION_TYPE");
    public final Name CONSTRUCTOR = fromString("CONSTRUCTOR");
    public final Name FIELD = fromString("FIELD");
    public final Name LOCAL_VARIABLE = fromString("LOCAL_VARIABLE");
    public final Name METHOD = fromString("METHOD");
    public final Name MODULE = fromString("MODULE");
    public final Name PACKAGE = fromString("PACKAGE");
    public final Name PARAMETER = fromString("PARAMETER");
    public final Name TYPE = fromString("TYPE");
    public final Name TYPE_PARAMETER = fromString("TYPE_PARAMETER");
    public final Name TYPE_USE = fromString("TYPE_USE");
    public final Name CLASS = fromString(SuffixConstants.EXTENSION_CLASS);
    public final Name RUNTIME = fromString("RUNTIME");
    public final Name SOURCE = fromString("SOURCE");

    public final Name f103304T = fromString(ExifInterface.GPS_DIRECTION_TRUE);
    public final Name deprecated = fromString("deprecated");
    public final Name ex = fromString("ex");
    public final Name module_info = fromString("module-info");
    public final Name package_info = fromString("package-info");
    public final Name requireNonNull = fromString("requireNonNull");
    public final Name lambda = fromString("lambda$");
    public final Name metafactory = fromString("metafactory");
    public final Name altMetafactory = fromString("altMetafactory");
    public final Name makeConcat = fromString("makeConcat");
    public final Name makeConcatWithConstants = fromString("makeConcatWithConstants");

    public Names(Context context) {
        this.table = createTable(Options.instance(context));
    }

    public static Names instance(Context context) {
        Context.Key<Names> key = namesKey;
        Names names = (Names) context.get(key);
        if (names != null) {
            return names;
        }
        Names names2 = new Names(context);
        context.put((Context.Key<Context.Key<Names>>) key, (Context.Key<Names>) names2);
        return names2;
    }

    public Name.Table createTable(Options options) {
        return options.isSet("useUnsharedTable") ? UnsharedNameTable.create(this) : SharedNameTable.create(this);
    }

    public void dispose() {
        this.table.dispose();
    }

    public Name fromChars(char[] cArr, int i10, int i11) {
        return this.table.fromChars(cArr, i10, i11);
    }

    public Name fromString(String str) {
        return this.table.fromString(str);
    }

    public Name fromUtf(byte[] bArr) {
        return this.table.fromUtf(bArr);
    }

    public Name fromUtf(byte[] bArr, int i10, int i11) {
        return this.table.fromUtf(bArr, i10, i11);
    }
}
