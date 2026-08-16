package org.eclipse.jdt.internal.compiler.codegen;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Modifiers.Array;
import java.lang.constant.ConstantDescs;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeIds;
import org.eclipse.jdt.internal.compiler.util.HashtableOfInteger;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ConstantPool implements ClassFileConstants, TypeIds {
    public static final char[] ALTMETAFACTORY;
    public static final char[] AddSuppressed;
    public static final char[] AddSuppressedSignature;
    public static final int CLASS_INITIAL_SIZE = 86;
    public static final int CONSTANTPOOL_GROW_SIZE = 6000;
    public static final int CONSTANTPOOL_INITIAL_SIZE = 2000;
    public static final char[] ClinitSignature;
    public static final char[] Clone;
    public static final char[] CloneSignature;
    public static final char[] Close;
    public static final char[] CloseSignature;
    public static final char[] DOUBLEVALUE_DOUBLE_METHOD_NAME;
    public static final char[] DOUBLEVALUE_DOUBLE_METHOD_SIGNATURE;
    public static final int DOUBLE_INITIAL_SIZE = 5;
    public static final int DYNAMIC_INITIAL_SIZE = 10;
    public static final char[] DefaultConstructorSignature;
    public static final char[] DesiredAssertionStatus;
    public static final char[] DesiredAssertionStatusSignature;
    public static final char[] DoubleConstrSignature;
    public static final char[] EnumName;
    public static final char[] EnumOrdinal;
    public static final char[] Equals;
    public static final char[] EqualsSignature;
    public static final char[] Exit;
    public static final char[] ExitIntSignature;
    public static final char[] FLOATVALUE_FLOAT_METHOD_NAME;
    public static final char[] FLOATVALUE_FLOAT_METHOD_SIGNATURE;
    public static final int FLOAT_INITIAL_SIZE = 3;
    public static final char[] FloatConstrSignature;
    public static final char[] ForName;
    public static final char[] ForNameSignature;
    public static final char[] GETDECLAREDCONSTRUCTOR_NAME;
    public static final char[] GETDECLAREDCONSTRUCTOR_SIGNATURE;
    public static final char[] GETDECLAREDFIELD_NAME;
    public static final char[] GETDECLAREDFIELD_SIGNATURE;
    public static final char[] GETDECLAREDMETHOD_NAME;
    public static final char[] GETDECLAREDMETHOD_SIGNATURE;
    public static final char[] GET_BOOLEAN_METHOD_NAME;
    public static final char[] GET_BOOLEAN_METHOD_SIGNATURE;
    public static final char[] GET_BYTE_METHOD_NAME;
    public static final char[] GET_BYTE_METHOD_SIGNATURE;
    public static final char[] GET_CHAR_METHOD_NAME;
    public static final char[] GET_CHAR_METHOD_SIGNATURE;
    public static final char[] GET_DOUBLE_METHOD_NAME;
    public static final char[] GET_DOUBLE_METHOD_SIGNATURE;
    public static final char[] GET_FLOAT_METHOD_NAME;
    public static final char[] GET_FLOAT_METHOD_SIGNATURE;
    public static final char[] GET_INT_METHOD_NAME;
    public static final char[] GET_INT_METHOD_SIGNATURE;
    public static final char[] GET_LONG_METHOD_NAME;
    public static final char[] GET_LONG_METHOD_SIGNATURE;
    public static final char[] GET_OBJECT_METHOD_NAME;
    public static final char[] GET_OBJECT_METHOD_SIGNATURE;
    public static final char[] GET_SHORT_METHOD_NAME;
    public static final char[] GET_SHORT_METHOD_SIGNATURE;
    public static final char[] GetCapturedArg;
    public static final char[] GetCapturedArgSignature;
    public static final char[] GetClass;
    public static final char[] GetClassSignature;
    public static final char[] GetComponentType;
    public static final char[] GetComponentTypeSignature;
    public static final char[] GetConstructor;
    public static final char[] GetConstructorSignature;
    public static final char[] GetFunctionalInterfaceClass;
    public static final char[] GetFunctionalInterfaceClassSignature;
    public static final char[] GetFunctionalInterfaceMethodName;
    public static final char[] GetFunctionalInterfaceMethodNameSignature;
    public static final char[] GetFunctionalInterfaceMethodSignature;
    public static final char[] GetFunctionalInterfaceMethodSignatureSignature;
    public static final char[] GetImplClass;
    public static final char[] GetImplClassSignature;
    public static final char[] GetImplMethodKind;
    public static final char[] GetImplMethodKindSignature;
    public static final char[] GetImplMethodName;
    public static final char[] GetImplMethodNameSignature;
    public static final char[] GetImplMethodSignature;
    public static final char[] GetImplMethodSignatureSignature;
    public static final char[] GetMessage;
    public static final char[] GetMessageSignature;
    public static final char[] HasNext;
    public static final char[] HasNextSignature;
    public static final char[] HashCode;
    public static final char[] HashCodeSignature;
    public static final char[] INTVALUE_INTEGER_METHOD_NAME;
    public static final char[] INTVALUE_INTEGER_METHOD_SIGNATURE;
    public static final int INT_INITIAL_SIZE = 248;
    public static final char[] INVOKE_METHOD_METHOD_NAME;
    public static final char[] INVOKE_METHOD_METHOD_SIGNATURE;
    public static final char[] ITERATOR_NAME;
    public static final char[] ITERATOR_SIGNATURE;
    public static final char[] IllegalArgumentExceptionConstructorSignature;
    public static final char[] Init;
    public static final char[] IntConstrSignature;
    public static final char[] IntIntegerSignature;
    public static final char[] Intern;
    public static final char[] InternSignature;
    public static final char[] JAVALANGREFLECTACCESSIBLEOBJECT_CONSTANTPOOLNAME;
    public static final char[] JAVALANGREFLECTARRAY_CONSTANTPOOLNAME;
    public static final char[] JAVALANGREFLECTFIELD_CONSTANTPOOLNAME;
    public static final char[] JAVALANGREFLECTMETHOD_CONSTANTPOOLNAME;
    public static final char[] JAVA_LANG_ANNOTATION_DOCUMENTED;
    public static final char[] JAVA_LANG_ANNOTATION_ELEMENTTYPE;
    public static final char[] JAVA_LANG_ANNOTATION_INHERITED;
    public static final char[] JAVA_LANG_ANNOTATION_REPEATABLE;
    public static final char[] JAVA_LANG_ANNOTATION_RETENTION;
    public static final char[] JAVA_LANG_ANNOTATION_RETENTIONPOLICY;
    public static final char[] JAVA_LANG_ANNOTATION_TARGET;
    public static final char[] JAVA_LANG_DEPRECATED;
    public static final char[] JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_ALTMETAFACTORY_SIGNATURE;
    public static final char[] JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_METAFACTORY_SIGNATURE;
    public static final char[] JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE;
    public static final char[][] JAVA_LANG_REFLECT_ACCESSIBLEOBJECT;
    public static final char[][] JAVA_LANG_REFLECT_ARRAY;
    public static final char[] JAVA_LANG_SAFEVARARGS;
    public static final char[] JavaIoPrintStreamSignature;
    public static final char[] JavaLangAssertionErrorConstantPoolName;
    public static final char[] JavaLangBooleanConstantPoolName;
    public static final char[] JavaLangByteConstantPoolName;
    public static final char[] JavaLangCharacterConstantPoolName;
    public static final char[] JavaLangClassConstantPoolName;
    public static final char[] JavaLangClassNotFoundExceptionConstantPoolName;
    public static final char[] JavaLangClassSignature;
    public static final char[] JavaLangDoubleConstantPoolName;
    public static final char[] JavaLangEnumConstantPoolName;
    public static final char[] JavaLangErrorConstantPoolName;
    public static final char[] JavaLangExceptionConstantPoolName;
    public static final char[] JavaLangFloatConstantPoolName;
    public static final char[] JavaLangIllegalArgumentExceptionConstantPoolName;
    public static final char[] JavaLangIncompatibleClassChangeErrorConstantPoolName;
    public static final char[] JavaLangIntegerConstantPoolName;
    public static final char[] JavaLangInvokeSerializedLambda;
    public static final char[] JavaLangInvokeSerializedLambdaConstantPoolName;
    public static final char[] JavaLangLongConstantPoolName;
    public static final char[] JavaLangNoClassDefFoundErrorConstantPoolName;
    public static final char[] JavaLangNoSuchFieldErrorConstantPoolName;
    public static final char[] JavaLangObjectConstantPoolName;
    public static final char[] JavaLangObjectSignature;
    public static final char[] JavaLangReflectConstructorConstantPoolName;
    public static final char[] JavaLangReflectConstructorNewInstanceSignature;
    public static final char[] JavaLangShortConstantPoolName;
    public static final char[] JavaLangStringBufferConstantPoolName;
    public static final char[] JavaLangStringBuilderConstantPoolName;
    public static final char[] JavaLangStringConstantPoolName;
    public static final char[] JavaLangStringSignature;
    public static final char[] JavaLangSystemConstantPoolName;
    public static final char[] JavaLangThrowableConstantPoolName;
    public static final char[] JavaLangVoidConstantPoolName;
    public static final char[] JavaUtilIteratorConstantPoolName;
    public static final char[] LONGVALUE_LONG_METHOD_NAME;
    public static final char[] LONGVALUE_LONG_METHOD_SIGNATURE;
    public static final int LONG_INITIAL_SIZE = 5;
    public static final char[] LongConstrSignature;
    public static final char[] METAFACTORY;
    public static final int METHODS_AND_FIELDS_INITIAL_SIZE = 450;
    public static final int NAMEANDTYPE_INITIAL_SIZE = 272;
    public static final char[] Name;
    public static final char[] NewInstance;
    public static final char[] NewInstanceSignature;
    public static final char[] Next;
    public static final char[] NextSignature;
    public static final char[] ObjectConstrSignature;
    public static final char[] ObjectSignature;
    public static final char[] Ordinal;
    public static final char[] OrdinalSignature;
    public static final char[] Out;
    public static final char[] SETACCESSIBLE_NAME;
    public static final char[] SETACCESSIBLE_SIGNATURE;
    public static final char[] SET_BOOLEAN_METHOD_NAME;
    public static final char[] SET_BOOLEAN_METHOD_SIGNATURE;
    public static final char[] SET_BYTE_METHOD_NAME;
    public static final char[] SET_BYTE_METHOD_SIGNATURE;
    public static final char[] SET_CHAR_METHOD_NAME;
    public static final char[] SET_CHAR_METHOD_SIGNATURE;
    public static final char[] SET_DOUBLE_METHOD_NAME;
    public static final char[] SET_DOUBLE_METHOD_SIGNATURE;
    public static final char[] SET_FLOAT_METHOD_NAME;
    public static final char[] SET_FLOAT_METHOD_SIGNATURE;
    public static final char[] SET_INT_METHOD_NAME;
    public static final char[] SET_INT_METHOD_SIGNATURE;
    public static final char[] SET_LONG_METHOD_NAME;
    public static final char[] SET_LONG_METHOD_SIGNATURE;
    public static final char[] SET_OBJECT_METHOD_NAME;
    public static final char[] SET_OBJECT_METHOD_SIGNATURE;
    public static final char[] SET_SHORT_METHOD_NAME;
    public static final char[] SET_SHORT_METHOD_SIGNATURE;
    public static final char[] SHORTVALUE_SHORT_METHOD_NAME;
    public static final char[] SHORTVALUE_SHORT_METHOD_SIGNATURE;
    public static final int STRING_INITIAL_SIZE = 761;
    public static final char[] ShortConstrSignature;
    public static final char[] StringBufferAppendBooleanSignature;
    public static final char[] StringBufferAppendCharSignature;
    public static final char[] StringBufferAppendDoubleSignature;
    public static final char[] StringBufferAppendFloatSignature;
    public static final char[] StringBufferAppendIntSignature;
    public static final char[] StringBufferAppendLongSignature;
    public static final char[] StringBufferAppendObjectSignature;
    public static final char[] StringBufferAppendStringSignature;
    public static final char[] StringBuilderAppendBooleanSignature;
    public static final char[] StringBuilderAppendCharSignature;
    public static final char[] StringBuilderAppendDoubleSignature;
    public static final char[] StringBuilderAppendFloatSignature;
    public static final char[] StringBuilderAppendIntSignature;
    public static final char[] StringBuilderAppendLongSignature;
    public static final char[] StringBuilderAppendObjectSignature;
    public static final char[] StringBuilderAppendStringSignature;
    public static final char[] StringConstructorSignature;
    public static final char[] TYPE;
    public static final char[] This;
    public static final char[] ToString;
    public static final char[] ToStringSignature;
    public static final int UTF8_INITIAL_SIZE = 778;
    public static final char[] ValueOf;
    public static final char[] ValueOfBooleanSignature;
    public static final char[] ValueOfCharSignature;
    public static final char[] ValueOfDoubleSignature;
    public static final char[] ValueOfFloatSignature;
    public static final char[] ValueOfIntSignature;
    public static final char[] ValueOfLongSignature;
    public static final char[] ValueOfObjectSignature;
    public static final char[] ValueOfStringClassSignature;
    public static final char[] doubleDoubleSignature;
    public static final char[] floatFloatSignature;
    public static final char[] longLongSignature;
    public static final char[] shortShortSignature;
    public ClassFile classFile;
    public int currentOffset;
    protected DoubleCache doubleCache;
    protected FloatCache floatCache;
    protected IntegerCache intCache;
    protected LongCache longCache;
    public byte[] poolContent;
    public static final char[] Append = "append".toCharArray();
    public static final char[] ARRAY_NEWINSTANCE_NAME = "newInstance".toCharArray();
    public static final char[] ARRAY_NEWINSTANCE_SIGNATURE = "(Ljava/lang/Class;[I)Ljava/lang/Object;".toCharArray();
    public static final char[] ArrayCopy = "arraycopy".toCharArray();
    public static final char[] ArrayCopySignature = "(Ljava/lang/Object;ILjava/lang/Object;II)V".toCharArray();
    public static final char[] ArrayJavaLangClassConstantPoolName = "[Ljava/lang/Class;".toCharArray();
    public static final char[] ArrayJavaLangObjectConstantPoolName = "[Ljava/lang/Object;".toCharArray();
    public static final char[] booleanBooleanSignature = "(Z)Ljava/lang/Boolean;".toCharArray();
    public static final char[] BooleanConstrSignature = "(Z)V".toCharArray();
    public static final char[] BOOLEANVALUE_BOOLEAN_METHOD_NAME = "booleanValue".toCharArray();
    public static final char[] BOOLEANVALUE_BOOLEAN_METHOD_SIGNATURE = "()Z".toCharArray();
    public static final char[] byteByteSignature = "(B)Ljava/lang/Byte;".toCharArray();
    public static final char[] ByteConstrSignature = "(B)V".toCharArray();
    public static final char[] BYTEVALUE_BYTE_METHOD_NAME = "byteValue".toCharArray();
    public static final char[] BYTEVALUE_BYTE_METHOD_SIGNATURE = "()B".toCharArray();
    public static final char[] charCharacterSignature = "(C)Ljava/lang/Character;".toCharArray();
    public static final char[] CharConstrSignature = "(C)V".toCharArray();
    public static final char[] CHARVALUE_CHARACTER_METHOD_NAME = "charValue".toCharArray();
    public static final char[] CHARVALUE_CHARACTER_METHOD_SIGNATURE = "()C".toCharArray();
    public static final char[] Clinit = ConstantDescs.CLASS_INIT_NAME.toCharArray();
    public int currentIndex = 1;
    public CharArrayCache UTF8Cache = new CharArrayCache(UTF8_INITIAL_SIZE);
    protected CharArrayCache stringCache = new CharArrayCache(STRING_INITIAL_SIZE);
    protected HashtableOfObject methodsAndFieldsCache = new HashtableOfObject(450);
    protected CharArrayCache classCache = new CharArrayCache(86);
    protected CharArrayCache moduleCache = new CharArrayCache(5);
    protected CharArrayCache packageCache = new CharArrayCache(5);
    protected HashtableOfObject nameAndTypeCacheForFieldsAndMethods = new HashtableOfObject(272);
    protected HashtableOfInteger dynamicCache = new HashtableOfInteger(10);
    public int[] offsets = new int[5];

    static {
        char[] charArray = "()V".toCharArray();
        DefaultConstructorSignature = charArray;
        ClinitSignature = charArray;
        Close = "close".toCharArray();
        CloseSignature = "()V".toCharArray();
        DesiredAssertionStatus = "desiredAssertionStatus".toCharArray();
        DesiredAssertionStatusSignature = "()Z".toCharArray();
        DoubleConstrSignature = "(D)V".toCharArray();
        doubleDoubleSignature = "(D)Ljava/lang/Double;".toCharArray();
        DOUBLEVALUE_DOUBLE_METHOD_NAME = "doubleValue".toCharArray();
        DOUBLEVALUE_DOUBLE_METHOD_SIGNATURE = "()D".toCharArray();
        EnumName = "$enum$name".toCharArray();
        EnumOrdinal = "$enum$ordinal".toCharArray();
        Exit = "exit".toCharArray();
        ExitIntSignature = "(I)V".toCharArray();
        FloatConstrSignature = "(F)V".toCharArray();
        floatFloatSignature = "(F)Ljava/lang/Float;".toCharArray();
        FLOATVALUE_FLOAT_METHOD_NAME = "floatValue".toCharArray();
        FLOATVALUE_FLOAT_METHOD_SIGNATURE = "()F".toCharArray();
        ForName = "forName".toCharArray();
        ForNameSignature = "(Ljava/lang/String;)Ljava/lang/Class;".toCharArray();
        GET_BOOLEAN_METHOD_NAME = "getBoolean".toCharArray();
        GET_BOOLEAN_METHOD_SIGNATURE = "(Ljava/lang/Object;)Z".toCharArray();
        GET_BYTE_METHOD_NAME = "getByte".toCharArray();
        GET_BYTE_METHOD_SIGNATURE = "(Ljava/lang/Object;)B".toCharArray();
        GET_CHAR_METHOD_NAME = "getChar".toCharArray();
        GET_CHAR_METHOD_SIGNATURE = "(Ljava/lang/Object;)C".toCharArray();
        GET_DOUBLE_METHOD_NAME = "getDouble".toCharArray();
        GET_DOUBLE_METHOD_SIGNATURE = "(Ljava/lang/Object;)D".toCharArray();
        GET_FLOAT_METHOD_NAME = "getFloat".toCharArray();
        GET_FLOAT_METHOD_SIGNATURE = "(Ljava/lang/Object;)F".toCharArray();
        GET_INT_METHOD_NAME = "getInt".toCharArray();
        GET_INT_METHOD_SIGNATURE = "(Ljava/lang/Object;)I".toCharArray();
        GET_LONG_METHOD_NAME = "getLong".toCharArray();
        GET_LONG_METHOD_SIGNATURE = "(Ljava/lang/Object;)J".toCharArray();
        GET_OBJECT_METHOD_NAME = "get".toCharArray();
        GET_OBJECT_METHOD_SIGNATURE = "(Ljava/lang/Object;)Ljava/lang/Object;".toCharArray();
        GET_SHORT_METHOD_NAME = "getShort".toCharArray();
        GET_SHORT_METHOD_SIGNATURE = "(Ljava/lang/Object;)S".toCharArray();
        GetClass = "getClass".toCharArray();
        char[] charArray2 = "()Ljava/lang/Class;".toCharArray();
        GetClassSignature = charArray2;
        GetComponentType = "getComponentType".toCharArray();
        GetComponentTypeSignature = charArray2;
        GetConstructor = "getConstructor".toCharArray();
        GetConstructorSignature = "([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;".toCharArray();
        GETDECLAREDCONSTRUCTOR_NAME = "getDeclaredConstructor".toCharArray();
        GETDECLAREDCONSTRUCTOR_SIGNATURE = "([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;".toCharArray();
        GETDECLAREDFIELD_NAME = "getDeclaredField".toCharArray();
        GETDECLAREDFIELD_SIGNATURE = "(Ljava/lang/String;)Ljava/lang/reflect/Field;".toCharArray();
        GETDECLAREDMETHOD_NAME = "getDeclaredMethod".toCharArray();
        GETDECLAREDMETHOD_SIGNATURE = "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;".toCharArray();
        GetMessage = "getMessage".toCharArray();
        char[] charArray3 = "()Ljava/lang/String;".toCharArray();
        GetMessageSignature = charArray3;
        HasNext = "hasNext".toCharArray();
        HasNextSignature = "()Z".toCharArray();
        Init = ConstantDescs.INIT_NAME.toCharArray();
        IntConstrSignature = "(I)V".toCharArray();
        ITERATOR_NAME = "iterator".toCharArray();
        ITERATOR_SIGNATURE = "()Ljava/util/Iterator;".toCharArray();
        Intern = "intern".toCharArray();
        InternSignature = charArray3;
        IntIntegerSignature = "(I)Ljava/lang/Integer;".toCharArray();
        INTVALUE_INTEGER_METHOD_NAME = "intValue".toCharArray();
        INTVALUE_INTEGER_METHOD_SIGNATURE = "()I".toCharArray();
        INVOKE_METHOD_METHOD_NAME = "invoke".toCharArray();
        INVOKE_METHOD_METHOD_SIGNATURE = "(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;".toCharArray();
        char[] cArr = TypeConstants.JAVA;
        char[] cArr2 = TypeConstants.LANG;
        char[] cArr3 = TypeConstants.REFLECT;
        JAVA_LANG_REFLECT_ACCESSIBLEOBJECT = new char[][]{cArr, cArr2, cArr3, "AccessibleObject".toCharArray()};
        JAVA_LANG_REFLECT_ARRAY = new char[][]{cArr, cArr2, cArr3, Array.f73819J.toCharArray()};
        IllegalArgumentExceptionConstructorSignature = "(Ljava/lang/String;)V".toCharArray();
        JavaIoPrintStreamSignature = "Ljava/io/PrintStream;".toCharArray();
        JavaLangAssertionErrorConstantPoolName = "java/lang/AssertionError".toCharArray();
        JavaLangBooleanConstantPoolName = "java/lang/Boolean".toCharArray();
        JavaLangByteConstantPoolName = "java/lang/Byte".toCharArray();
        JavaLangCharacterConstantPoolName = "java/lang/Character".toCharArray();
        JavaLangClassConstantPoolName = "java/lang/Class".toCharArray();
        JavaLangClassNotFoundExceptionConstantPoolName = "java/lang/ClassNotFoundException".toCharArray();
        JavaLangClassSignature = "Ljava/lang/Class;".toCharArray();
        JavaLangDoubleConstantPoolName = "java/lang/Double".toCharArray();
        JavaLangEnumConstantPoolName = "java/lang/Enum".toCharArray();
        JavaLangErrorConstantPoolName = "java/lang/Error".toCharArray();
        JavaLangIncompatibleClassChangeErrorConstantPoolName = "java/lang/IncompatibleClassChangeError".toCharArray();
        JavaLangExceptionConstantPoolName = "java/lang/Exception".toCharArray();
        JavaLangFloatConstantPoolName = "java/lang/Float".toCharArray();
        JavaLangIntegerConstantPoolName = "java/lang/Integer".toCharArray();
        JavaLangLongConstantPoolName = "java/lang/Long".toCharArray();
        JavaLangNoClassDefFoundErrorConstantPoolName = "java/lang/NoClassDefFoundError".toCharArray();
        JavaLangNoSuchFieldErrorConstantPoolName = "java/lang/NoSuchFieldError".toCharArray();
        JavaLangObjectConstantPoolName = "java/lang/Object".toCharArray();
        JAVALANGREFLECTACCESSIBLEOBJECT_CONSTANTPOOLNAME = "java/lang/reflect/AccessibleObject".toCharArray();
        JAVALANGREFLECTARRAY_CONSTANTPOOLNAME = "java/lang/reflect/Array".toCharArray();
        JavaLangReflectConstructorConstantPoolName = "java/lang/reflect/Constructor".toCharArray();
        JavaLangReflectConstructorNewInstanceSignature = "([Ljava/lang/Object;)Ljava/lang/Object;".toCharArray();
        JAVALANGREFLECTFIELD_CONSTANTPOOLNAME = "java/lang/reflect/Field".toCharArray();
        JAVALANGREFLECTMETHOD_CONSTANTPOOLNAME = "java/lang/reflect/Method".toCharArray();
        JavaLangShortConstantPoolName = "java/lang/Short".toCharArray();
        JavaLangStringBufferConstantPoolName = "java/lang/StringBuffer".toCharArray();
        JavaLangStringBuilderConstantPoolName = "java/lang/StringBuilder".toCharArray();
        JavaLangStringConstantPoolName = "java/lang/String".toCharArray();
        JavaLangStringSignature = "Ljava/lang/String;".toCharArray();
        JavaLangObjectSignature = "Ljava/lang/Object;".toCharArray();
        JavaLangSystemConstantPoolName = "java/lang/System".toCharArray();
        JavaLangThrowableConstantPoolName = "java/lang/Throwable".toCharArray();
        JavaLangIllegalArgumentExceptionConstantPoolName = "java/lang/IllegalArgumentException".toCharArray();
        JavaLangVoidConstantPoolName = "java/lang/Void".toCharArray();
        JavaUtilIteratorConstantPoolName = "java/util/Iterator".toCharArray();
        LongConstrSignature = "(J)V".toCharArray();
        longLongSignature = "(J)Ljava/lang/Long;".toCharArray();
        LONGVALUE_LONG_METHOD_NAME = "longValue".toCharArray();
        LONGVALUE_LONG_METHOD_SIGNATURE = "()J".toCharArray();
        Name = "name".toCharArray();
        NewInstance = "newInstance".toCharArray();
        NewInstanceSignature = "(Ljava/lang/Class;[I)Ljava/lang/Object;".toCharArray();
        Next = "next".toCharArray();
        NextSignature = "()Ljava/lang/Object;".toCharArray();
        ObjectConstrSignature = "(Ljava/lang/Object;)V".toCharArray();
        ObjectSignature = "Ljava/lang/Object;".toCharArray();
        Ordinal = "ordinal".toCharArray();
        OrdinalSignature = "()I".toCharArray();
        Out = "out".toCharArray();
        SET_BOOLEAN_METHOD_NAME = "setBoolean".toCharArray();
        SET_BOOLEAN_METHOD_SIGNATURE = "(Ljava/lang/Object;Z)V".toCharArray();
        SET_BYTE_METHOD_NAME = "setByte".toCharArray();
        SET_BYTE_METHOD_SIGNATURE = "(Ljava/lang/Object;B)V".toCharArray();
        SET_CHAR_METHOD_NAME = "setChar".toCharArray();
        SET_CHAR_METHOD_SIGNATURE = "(Ljava/lang/Object;C)V".toCharArray();
        SET_DOUBLE_METHOD_NAME = "setDouble".toCharArray();
        SET_DOUBLE_METHOD_SIGNATURE = "(Ljava/lang/Object;D)V".toCharArray();
        SET_FLOAT_METHOD_NAME = "setFloat".toCharArray();
        SET_FLOAT_METHOD_SIGNATURE = "(Ljava/lang/Object;F)V".toCharArray();
        SET_INT_METHOD_NAME = "setInt".toCharArray();
        SET_INT_METHOD_SIGNATURE = "(Ljava/lang/Object;I)V".toCharArray();
        SET_LONG_METHOD_NAME = "setLong".toCharArray();
        SET_LONG_METHOD_SIGNATURE = "(Ljava/lang/Object;J)V".toCharArray();
        SET_OBJECT_METHOD_NAME = "set".toCharArray();
        SET_OBJECT_METHOD_SIGNATURE = "(Ljava/lang/Object;Ljava/lang/Object;)V".toCharArray();
        SET_SHORT_METHOD_NAME = "setShort".toCharArray();
        SET_SHORT_METHOD_SIGNATURE = "(Ljava/lang/Object;S)V".toCharArray();
        SETACCESSIBLE_NAME = "setAccessible".toCharArray();
        SETACCESSIBLE_SIGNATURE = "(Z)V".toCharArray();
        ShortConstrSignature = "(S)V".toCharArray();
        shortShortSignature = "(S)Ljava/lang/Short;".toCharArray();
        SHORTVALUE_SHORT_METHOD_NAME = "shortValue".toCharArray();
        SHORTVALUE_SHORT_METHOD_SIGNATURE = "()S".toCharArray();
        StringBufferAppendBooleanSignature = "(Z)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendCharSignature = "(C)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendDoubleSignature = "(D)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendFloatSignature = "(F)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendIntSignature = "(I)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendLongSignature = "(J)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendObjectSignature = "(Ljava/lang/Object;)Ljava/lang/StringBuffer;".toCharArray();
        StringBufferAppendStringSignature = "(Ljava/lang/String;)Ljava/lang/StringBuffer;".toCharArray();
        StringBuilderAppendBooleanSignature = "(Z)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendCharSignature = "(C)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendDoubleSignature = "(D)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendFloatSignature = "(F)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendIntSignature = "(I)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendLongSignature = "(J)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendObjectSignature = "(Ljava/lang/Object;)Ljava/lang/StringBuilder;".toCharArray();
        StringBuilderAppendStringSignature = "(Ljava/lang/String;)Ljava/lang/StringBuilder;".toCharArray();
        StringConstructorSignature = "(Ljava/lang/String;)V".toCharArray();
        This = "this".toCharArray();
        ToString = "toString".toCharArray();
        ToStringSignature = charArray3;
        TYPE = "TYPE".toCharArray();
        ValueOf = "valueOf".toCharArray();
        ValueOfBooleanSignature = "(Z)Ljava/lang/String;".toCharArray();
        ValueOfCharSignature = "(C)Ljava/lang/String;".toCharArray();
        ValueOfDoubleSignature = "(D)Ljava/lang/String;".toCharArray();
        ValueOfFloatSignature = "(F)Ljava/lang/String;".toCharArray();
        ValueOfIntSignature = "(I)Ljava/lang/String;".toCharArray();
        ValueOfLongSignature = "(J)Ljava/lang/String;".toCharArray();
        ValueOfObjectSignature = "(Ljava/lang/Object;)Ljava/lang/String;".toCharArray();
        ValueOfStringClassSignature = "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;".toCharArray();
        JAVA_LANG_ANNOTATION_DOCUMENTED = "Ljava/lang/annotation/Documented;".toCharArray();
        JAVA_LANG_ANNOTATION_ELEMENTTYPE = "Ljava/lang/annotation/ElementType;".toCharArray();
        JAVA_LANG_ANNOTATION_RETENTION = "Ljava/lang/annotation/Retention;".toCharArray();
        JAVA_LANG_ANNOTATION_RETENTIONPOLICY = "Ljava/lang/annotation/RetentionPolicy;".toCharArray();
        JAVA_LANG_ANNOTATION_TARGET = "Ljava/lang/annotation/Target;".toCharArray();
        JAVA_LANG_DEPRECATED = "Ljava/lang/Deprecated;".toCharArray();
        JAVA_LANG_ANNOTATION_INHERITED = "Ljava/lang/annotation/Inherited;".toCharArray();
        JAVA_LANG_SAFEVARARGS = "Ljava/lang/SafeVarargs;".toCharArray();
        JAVA_LANG_INVOKE_METHODHANDLE_POLYMORPHICSIGNATURE = "Ljava/lang/invoke/MethodHandle$PolymorphicSignature;".toCharArray();
        METAFACTORY = "metafactory".toCharArray();
        JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_METAFACTORY_SIGNATURE = "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;".toCharArray();
        ALTMETAFACTORY = "altMetafactory".toCharArray();
        JAVA_LANG_INVOKE_LAMBDAMETAFACTORY_ALTMETAFACTORY_SIGNATURE = "(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;[Ljava/lang/Object;)Ljava/lang/invoke/CallSite;".toCharArray();
        JavaLangInvokeSerializedLambda = "Ljava/lang/invoke/SerializedLambda;".toCharArray();
        JavaLangInvokeSerializedLambdaConstantPoolName = "java/lang/invoke/SerializedLambda".toCharArray();
        GetImplMethodName = "getImplMethodName".toCharArray();
        GetImplMethodNameSignature = "()Ljava/lang/String;".toCharArray();
        GetImplMethodKind = "getImplMethodKind".toCharArray();
        GetImplMethodKindSignature = "()I".toCharArray();
        GetFunctionalInterfaceClass = "getFunctionalInterfaceClass".toCharArray();
        GetFunctionalInterfaceClassSignature = "()Ljava/lang/String;".toCharArray();
        GetFunctionalInterfaceMethodName = "getFunctionalInterfaceMethodName".toCharArray();
        GetFunctionalInterfaceMethodNameSignature = "()Ljava/lang/String;".toCharArray();
        GetFunctionalInterfaceMethodSignature = "getFunctionalInterfaceMethodSignature".toCharArray();
        GetFunctionalInterfaceMethodSignatureSignature = "()Ljava/lang/String;".toCharArray();
        GetImplClass = "getImplClass".toCharArray();
        GetImplClassSignature = "()Ljava/lang/String;".toCharArray();
        GetImplMethodSignature = "getImplMethodSignature".toCharArray();
        GetImplMethodSignatureSignature = "()Ljava/lang/String;".toCharArray();
        GetCapturedArg = "getCapturedArg".toCharArray();
        GetCapturedArgSignature = "(I)Ljava/lang/Object;".toCharArray();
        JAVA_LANG_ANNOTATION_REPEATABLE = "Ljava/lang/annotation/Repeatable;".toCharArray();
        HashCode = "hashCode".toCharArray();
        HashCodeSignature = "()I".toCharArray();
        Equals = "equals".toCharArray();
        EqualsSignature = "(Ljava/lang/Object;)Z".toCharArray();
        AddSuppressed = "addSuppressed".toCharArray();
        AddSuppressedSignature = "(Ljava/lang/Throwable;)V".toCharArray();
        Clone = "clone".toCharArray();
        CloneSignature = "()Ljava/lang/Object;".toCharArray();
    }

    public ConstantPool(ClassFile classFile) {
        initialize(classFile);
    }

    private int literalIndexForInvokeAndConstantDynamic(int i10, char[] cArr, char[] cArr2, int i11) {
        int putInDynamicCacheIfAbsent = putInDynamicCacheIfAbsent(i10, cArr, cArr2, this.currentIndex);
        if (putInDynamicCacheIfAbsent < 0) {
            this.currentIndex++;
            putInDynamicCacheIfAbsent = -putInDynamicCacheIfAbsent;
            if (putInDynamicCacheIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putInDynamicCacheIfAbsent) {
                int[] iArr2 = new int[putInDynamicCacheIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putInDynamicCacheIfAbsent] = this.currentOffset;
            writeU1(i11);
            int i12 = this.currentOffset;
            if (i12 + 4 >= this.poolContent.length) {
                resizePoolContents(4);
            }
            this.currentOffset += 4;
            int literalIndexForNameAndType = literalIndexForNameAndType(cArr, cArr2);
            byte[] bArr = this.poolContent;
            bArr[i12] = (byte) (i10 >> 8);
            bArr[i12 + 1] = (byte) i10;
            bArr[i12 + 2] = (byte) (literalIndexForNameAndType >> 8);
            bArr[i12 + 3] = (byte) literalIndexForNameAndType;
        }
        return putInDynamicCacheIfAbsent;
    }

    private int putInCacheIfAbsent(char[] cArr, char[] cArr2, char[] cArr3, int i10) {
        HashtableOfObject hashtableOfObject = (HashtableOfObject) this.methodsAndFieldsCache.get(cArr);
        if (hashtableOfObject == null) {
            HashtableOfObject hashtableOfObject2 = new HashtableOfObject();
            this.methodsAndFieldsCache.put(cArr, hashtableOfObject2);
            CachedIndexEntry cachedIndexEntry = new CachedIndexEntry(cArr3, i10);
            int i11 = -i10;
            hashtableOfObject2.put(cArr2, cachedIndexEntry);
            return i11;
        }
        Object obj = hashtableOfObject.get(cArr2);
        if (obj == null) {
            CachedIndexEntry cachedIndexEntry2 = new CachedIndexEntry(cArr3, i10);
            int i12 = -i10;
            hashtableOfObject.put(cArr2, cachedIndexEntry2);
            return i12;
        }
        if (!(obj instanceof CachedIndexEntry)) {
            return ((CharArrayCache) obj).putIfAbsent(cArr3, i10);
        }
        CachedIndexEntry cachedIndexEntry3 = (CachedIndexEntry) obj;
        if (CharOperation.equals(cArr3, cachedIndexEntry3.signature)) {
            return cachedIndexEntry3.index;
        }
        CharArrayCache charArrayCache = new CharArrayCache();
        charArrayCache.putIfAbsent(cachedIndexEntry3.signature, cachedIndexEntry3.index);
        int putIfAbsent = charArrayCache.putIfAbsent(cArr3, i10);
        hashtableOfObject.put(cArr2, charArrayCache);
        return putIfAbsent;
    }

    private int putInDynamicCacheIfAbsent(int i10, char[] cArr, char[] cArr2, int i11) {
        HashtableOfObject hashtableOfObject = (HashtableOfObject) this.dynamicCache.get(i10);
        if (hashtableOfObject == null) {
            HashtableOfObject hashtableOfObject2 = new HashtableOfObject();
            this.dynamicCache.put(i10, hashtableOfObject2);
            CachedIndexEntry cachedIndexEntry = new CachedIndexEntry(cArr2, i11);
            int i12 = -i11;
            hashtableOfObject2.put(cArr, cachedIndexEntry);
            return i12;
        }
        Object obj = hashtableOfObject.get(cArr);
        if (obj == null) {
            CachedIndexEntry cachedIndexEntry2 = new CachedIndexEntry(cArr2, i11);
            int i13 = -i11;
            hashtableOfObject.put(cArr, cachedIndexEntry2);
            return i13;
        }
        if (!(obj instanceof CachedIndexEntry)) {
            return ((CharArrayCache) obj).putIfAbsent(cArr2, i11);
        }
        CachedIndexEntry cachedIndexEntry3 = (CachedIndexEntry) obj;
        if (CharOperation.equals(cArr2, cachedIndexEntry3.signature)) {
            return cachedIndexEntry3.index;
        }
        CharArrayCache charArrayCache = new CharArrayCache();
        charArrayCache.putIfAbsent(cachedIndexEntry3.signature, cachedIndexEntry3.index);
        int putIfAbsent = charArrayCache.putIfAbsent(cArr2, i11);
        hashtableOfObject.put(cArr, charArrayCache);
        return putIfAbsent;
    }

    private int putInNameAndTypeCacheIfAbsent(char[] cArr, char[] cArr2, int i10) {
        Object obj = this.nameAndTypeCacheForFieldsAndMethods.get(cArr);
        if (obj == null) {
            CachedIndexEntry cachedIndexEntry = new CachedIndexEntry(cArr2, i10);
            int i11 = -i10;
            this.nameAndTypeCacheForFieldsAndMethods.put(cArr, cachedIndexEntry);
            return i11;
        }
        if (!(obj instanceof CachedIndexEntry)) {
            return ((CharArrayCache) obj).putIfAbsent(cArr2, i10);
        }
        CachedIndexEntry cachedIndexEntry2 = (CachedIndexEntry) obj;
        if (CharOperation.equals(cArr2, cachedIndexEntry2.signature)) {
            return cachedIndexEntry2.index;
        }
        CharArrayCache charArrayCache = new CharArrayCache();
        charArrayCache.putIfAbsent(cachedIndexEntry2.signature, cachedIndexEntry2.index);
        int putIfAbsent = charArrayCache.putIfAbsent(cArr2, i10);
        this.nameAndTypeCacheForFieldsAndMethods.put(cArr, charArrayCache);
        return putIfAbsent;
    }

    private final void resizePoolContents(int i10) {
        byte[] bArr = this.poolContent;
        int length = bArr.length;
        if (length >= i10) {
            i10 = length;
        }
        byte[] bArr2 = new byte[i10 + length];
        this.poolContent = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, length);
    }

    public byte[] dumpBytes() {
        byte[] bArr = this.poolContent;
        int i10 = this.currentOffset;
        byte[] bArr2 = new byte[i10];
        this.poolContent = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i10);
        return this.poolContent;
    }

    public void initialize(ClassFile classFile) {
        this.poolContent = classFile.header;
        this.currentOffset = classFile.headerOffset;
        this.currentIndex = 1;
        this.classFile = classFile;
    }

    public int literalIndex(byte[] bArr, char[] cArr) {
        int putIfAbsent = this.UTF8Cache.putIfAbsent(cArr, this.currentIndex);
        if (putIfAbsent < 0) {
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            this.currentIndex++;
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(1);
            int length2 = bArr.length;
            if (this.currentOffset + 2 + length2 >= this.poolContent.length) {
                resizePoolContents(length2 + 2);
            }
            byte[] bArr2 = this.poolContent;
            int i10 = this.currentOffset;
            int i11 = i10 + 1;
            this.currentOffset = i11;
            bArr2[i10] = (byte) (length2 >> 8);
            int i12 = i10 + 2;
            this.currentOffset = i12;
            bArr2[i11] = (byte) length2;
            System.arraycopy(bArr, 0, bArr2, i12, length2);
            this.currentOffset += length2;
        }
        return putIfAbsent;
    }

    public int literalIndexForDynamic(int i10, char[] cArr, char[] cArr2) {
        return literalIndexForInvokeAndConstantDynamic(i10, cArr, cArr2, 17);
    }

    public int literalIndexForField(char[] cArr, char[] cArr2, char[] cArr3) {
        int putInCacheIfAbsent = putInCacheIfAbsent(cArr, cArr2, cArr3, this.currentIndex);
        if (putInCacheIfAbsent < 0) {
            this.currentIndex++;
            putInCacheIfAbsent = -putInCacheIfAbsent;
            if (putInCacheIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putInCacheIfAbsent) {
                int[] iArr2 = new int[putInCacheIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putInCacheIfAbsent] = this.currentOffset;
            writeU1(9);
            int i10 = this.currentOffset;
            if (i10 + 4 >= this.poolContent.length) {
                resizePoolContents(4);
            }
            this.currentOffset += 4;
            int literalIndexForType = literalIndexForType(cArr);
            int literalIndexForNameAndType = literalIndexForNameAndType(cArr2, cArr3);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndexForType >> 8);
            bArr[i10 + 1] = (byte) literalIndexForType;
            bArr[i10 + 2] = (byte) (literalIndexForNameAndType >> 8);
            bArr[i10 + 3] = (byte) literalIndexForNameAndType;
        }
        return putInCacheIfAbsent;
    }

    public int literalIndexForInvokeDynamic(int i10, char[] cArr, char[] cArr2) {
        return literalIndexForInvokeAndConstantDynamic(i10, cArr, cArr2, 18);
    }

    public int literalIndexForLdc(char[] cArr) {
        int i10 = this.currentIndex;
        int i11 = this.currentOffset;
        int putIfAbsent = this.stringCache.putIfAbsent(cArr, i10);
        if (putIfAbsent < 0) {
            putIfAbsent = -putIfAbsent;
            int i12 = 65535;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            char c10 = 1;
            this.currentIndex++;
            int[] iArr = this.offsets;
            int length = iArr.length;
            int i13 = 0;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(8);
            int i14 = this.currentOffset;
            if (i14 + 2 >= this.poolContent.length) {
                resizePoolContents(2);
            }
            this.currentOffset += 2;
            int putIfAbsent2 = this.UTF8Cache.putIfAbsent(cArr, this.currentIndex);
            if (putIfAbsent2 < 0) {
                int i15 = -putIfAbsent2;
                if (i15 > 65535) {
                    this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
                }
                this.currentIndex++;
                int[] iArr3 = this.offsets;
                int length2 = iArr3.length;
                if (length2 <= i15) {
                    int[] iArr4 = new int[i15 * 2];
                    this.offsets = iArr4;
                    System.arraycopy(iArr3, 0, iArr4, 0, length2);
                }
                this.offsets[i15] = this.currentOffset;
                writeU1(1);
                int i16 = this.currentOffset;
                if (i16 + 2 >= this.poolContent.length) {
                    resizePoolContents(2);
                }
                this.currentOffset += 2;
                int i17 = 0;
                int i18 = 0;
                while (i17 < cArr.length) {
                    char c11 = cArr[i17];
                    if (c11 >= c10 && c11 <= '\u007f') {
                        i18++;
                        if (this.currentOffset + c10 >= this.poolContent.length) {
                            resizePoolContents(c10);
                        }
                        byte[] bArr = this.poolContent;
                        int i19 = this.currentOffset;
                        this.currentOffset = i19 + 1;
                        bArr[i19] = (byte) c11;
                    } else if (c11 > '\u07ff') {
                        i18 += 3;
                        if (this.currentOffset + 3 >= this.poolContent.length) {
                            resizePoolContents(3);
                        }
                        byte[] bArr2 = this.poolContent;
                        int i20 = this.currentOffset;
                        int i21 = i20 + 1;
                        this.currentOffset = i21;
                        bArr2[i20] = (byte) (((c11 >> '\f') & 15) | 224);
                        int i22 = i20 + 2;
                        this.currentOffset = i22;
                        bArr2[i21] = (byte) (((c11 >> 6) & 63) | 128);
                        this.currentOffset = i20 + 3;
                        bArr2[i22] = (byte) ((c11 & '?') | 128);
                    } else {
                        if (this.currentOffset + 2 >= this.poolContent.length) {
                            resizePoolContents(2);
                        }
                        i18 += 2;
                        byte[] bArr3 = this.poolContent;
                        int i23 = this.currentOffset;
                        int i24 = i23 + 1;
                        this.currentOffset = i24;
                        bArr3[i23] = (byte) (((c11 >> 6) & 31) | 192);
                        this.currentOffset = i23 + 2;
                        bArr3[i24] = (byte) ((c11 & '?') | 128);
                    }
                    i17++;
                    i12 = 65535;
                    c10 = 1;
                    i13 = 0;
                }
                if (i18 >= i12) {
                    this.currentOffset = i11;
                    this.currentIndex = i10;
                    this.stringCache.remove(cArr);
                    this.UTF8Cache.remove(cArr);
                    return i13;
                }
                byte[] bArr4 = this.poolContent;
                bArr4[i16] = (byte) (i18 >> 8);
                bArr4[i16 + 1] = (byte) i18;
                putIfAbsent2 = i15;
            }
            byte[] bArr5 = this.poolContent;
            bArr5[i14] = (byte) (putIfAbsent2 >> 8);
            bArr5[i14 + 1] = (byte) putIfAbsent2;
        }
        return putIfAbsent;
    }

    public int literalIndexForMethod(char[] cArr, char[] cArr2, char[] cArr3, boolean z10) {
        int putInCacheIfAbsent = putInCacheIfAbsent(cArr, cArr2, cArr3, this.currentIndex);
        if (putInCacheIfAbsent < 0) {
            this.currentIndex++;
            putInCacheIfAbsent = -putInCacheIfAbsent;
            if (putInCacheIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putInCacheIfAbsent) {
                int[] iArr2 = new int[putInCacheIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putInCacheIfAbsent] = this.currentOffset;
            writeU1(z10 ? 11 : 10);
            int i10 = this.currentOffset;
            if (i10 + 4 >= this.poolContent.length) {
                resizePoolContents(4);
            }
            this.currentOffset += 4;
            int literalIndexForType = literalIndexForType(cArr);
            int literalIndexForNameAndType = literalIndexForNameAndType(cArr2, cArr3);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndexForType >> 8);
            bArr[i10 + 1] = (byte) literalIndexForType;
            bArr[i10 + 2] = (byte) (literalIndexForNameAndType >> 8);
            bArr[i10 + 3] = (byte) literalIndexForNameAndType;
        }
        return putInCacheIfAbsent;
    }

    public int literalIndexForMethodHandle(MethodBinding methodBinding) {
        int i10;
        boolean isInterface = methodBinding.declaringClass.isInterface();
        int i11 = 7;
        if (isInterface) {
            if (!methodBinding.isStatic()) {
                if (!methodBinding.isPrivate()) {
                    i11 = 9;
                }
                i10 = i11;
            }
            i10 = 6;
        } else {
            if (methodBinding.isConstructor()) {
                i11 = 8;
            } else {
                if (!methodBinding.isStatic()) {
                    if (!methodBinding.isPrivate()) {
                        i11 = 5;
                    }
                }
                i10 = 6;
            }
            i10 = i11;
        }
        return literalIndexForMethodHandle(i10, methodBinding.declaringClass, methodBinding.selector, methodBinding.signature(), isInterface);
    }

    public int literalIndexForMethodType(char[] cArr) {
        int literalIndex = literalIndex(cArr);
        int i10 = this.currentIndex;
        this.currentIndex = i10 + 1;
        int[] iArr = this.offsets;
        int length = iArr.length;
        if (length <= i10) {
            int[] iArr2 = new int[i10 * 2];
            this.offsets = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.offsets[i10] = this.currentOffset;
        writeU1(16);
        writeU2(literalIndex);
        return i10;
    }

    public int literalIndexForModule(char[] cArr) {
        int putIfAbsent = this.moduleCache.putIfAbsent(cArr, this.currentIndex);
        if (putIfAbsent < 0) {
            this.currentIndex++;
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(19);
            int i10 = this.currentOffset;
            if (i10 + 2 >= this.poolContent.length) {
                resizePoolContents(2);
            }
            this.currentOffset += 2;
            int literalIndex = literalIndex(cArr);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndex >> 8);
            bArr[i10 + 1] = (byte) literalIndex;
        }
        return putIfAbsent;
    }

    public int literalIndexForNameAndType(char[] cArr, char[] cArr2) {
        int putInNameAndTypeCacheIfAbsent = putInNameAndTypeCacheIfAbsent(cArr, cArr2, this.currentIndex);
        if (putInNameAndTypeCacheIfAbsent < 0) {
            this.currentIndex++;
            putInNameAndTypeCacheIfAbsent = -putInNameAndTypeCacheIfAbsent;
            if (putInNameAndTypeCacheIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putInNameAndTypeCacheIfAbsent) {
                int[] iArr2 = new int[putInNameAndTypeCacheIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putInNameAndTypeCacheIfAbsent] = this.currentOffset;
            writeU1(12);
            int i10 = this.currentOffset;
            if (i10 + 4 >= this.poolContent.length) {
                resizePoolContents(4);
            }
            this.currentOffset += 4;
            int literalIndex = literalIndex(cArr);
            int literalIndex2 = literalIndex(cArr2);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndex >> 8);
            bArr[i10 + 1] = (byte) literalIndex;
            bArr[i10 + 2] = (byte) (literalIndex2 >> 8);
            bArr[i10 + 3] = (byte) literalIndex2;
        }
        return putInNameAndTypeCacheIfAbsent;
    }

    public int literalIndexForPackage(char[] cArr) {
        int putIfAbsent = this.packageCache.putIfAbsent(cArr, this.currentIndex);
        if (putIfAbsent < 0) {
            this.currentIndex++;
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(20);
            int i10 = this.currentOffset;
            if (i10 + 2 >= this.poolContent.length) {
                resizePoolContents(2);
            }
            this.currentOffset += 2;
            int literalIndex = literalIndex(cArr);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndex >> 8);
            bArr[i10 + 1] = (byte) literalIndex;
        }
        return putIfAbsent;
    }

    public int literalIndexForType(char[] cArr) {
        int putIfAbsent = this.classCache.putIfAbsent(cArr, this.currentIndex);
        if (putIfAbsent < 0) {
            this.currentIndex++;
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(7);
            int i10 = this.currentOffset;
            if (i10 + 2 >= this.poolContent.length) {
                resizePoolContents(2);
            }
            this.currentOffset += 2;
            int literalIndex = literalIndex(cArr);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndex >> 8);
            bArr[i10 + 1] = (byte) literalIndex;
        }
        return putIfAbsent;
    }

    public void reset() {
        DoubleCache doubleCache = this.doubleCache;
        if (doubleCache != null) {
            doubleCache.clear();
        }
        FloatCache floatCache = this.floatCache;
        if (floatCache != null) {
            floatCache.clear();
        }
        IntegerCache integerCache = this.intCache;
        if (integerCache != null) {
            integerCache.clear();
        }
        LongCache longCache = this.longCache;
        if (longCache != null) {
            longCache.clear();
        }
        this.UTF8Cache.clear();
        this.stringCache.clear();
        this.methodsAndFieldsCache.clear();
        this.classCache.clear();
        this.packageCache.clear();
        this.moduleCache.clear();
        this.nameAndTypeCacheForFieldsAndMethods.clear();
        this.dynamicCache.clear();
        this.currentIndex = 1;
        this.currentOffset = 0;
    }

    public void resetForClinit(int i10, int i11) {
        this.currentIndex = i10;
        this.currentOffset = i11;
        CharArrayCache charArrayCache = this.UTF8Cache;
        char[] cArr = AttributeNamesConstants.CodeName;
        if (charArrayCache.get(cArr) >= i10) {
            this.UTF8Cache.remove(cArr);
        }
        CharArrayCache charArrayCache2 = this.UTF8Cache;
        char[] cArr2 = ClinitSignature;
        if (charArrayCache2.get(cArr2) >= i10) {
            this.UTF8Cache.remove(cArr2);
        }
        CharArrayCache charArrayCache3 = this.UTF8Cache;
        char[] cArr3 = Clinit;
        if (charArrayCache3.get(cArr3) >= i10) {
            this.UTF8Cache.remove(cArr3);
        }
    }

    public final void writeU1(int i10) {
        if (this.currentOffset + 1 >= this.poolContent.length) {
            resizePoolContents(1);
        }
        byte[] bArr = this.poolContent;
        int i11 = this.currentOffset;
        this.currentOffset = i11 + 1;
        bArr[i11] = (byte) i10;
    }

    public final void writeU2(int i10) {
        if (this.currentOffset + 2 >= this.poolContent.length) {
            resizePoolContents(2);
        }
        byte[] bArr = this.poolContent;
        int i11 = this.currentOffset;
        int i12 = i11 + 1;
        this.currentOffset = i12;
        bArr[i11] = (byte) (i10 >>> 8);
        this.currentOffset = i11 + 2;
        bArr[i12] = (byte) i10;
    }

    public int literalIndexForMethodHandle(int i10, TypeBinding typeBinding, char[] cArr, char[] cArr2, boolean z10) {
        int literalIndexForMethod = literalIndexForMethod(typeBinding, cArr, cArr2, z10);
        int i11 = this.currentIndex;
        this.currentIndex = i11 + 1;
        int[] iArr = this.offsets;
        int length = iArr.length;
        if (length <= i11) {
            int[] iArr2 = new int[i11 * 2];
            this.offsets = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.offsets[i11] = this.currentOffset;
        writeU1(15);
        writeU1(i10);
        writeU2(literalIndexForMethod);
        return i11;
    }

    public int literalIndex(TypeBinding typeBinding) {
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        if ((leafComponentType.tagBits & 2048) != 0) {
            Util.recordNestedType(this.classFile, leafComponentType);
        }
        return literalIndex(typeBinding.signature());
    }

    public int literalIndexForType(TypeBinding typeBinding) {
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        if ((leafComponentType.tagBits & 2048) != 0) {
            Util.recordNestedType(this.classFile, leafComponentType);
        }
        return literalIndexForType(typeBinding.constantPoolName());
    }

    public int literalIndexForMethod(TypeBinding typeBinding, char[] cArr, char[] cArr2, boolean z10) {
        if ((typeBinding.tagBits & 2048) != 0) {
            Util.recordNestedType(this.classFile, typeBinding);
        }
        return literalIndexForMethod(typeBinding.constantPoolName(), cArr, cArr2, z10);
    }

    public int literalIndex(char[] cArr) {
        int putIfAbsent = this.UTF8Cache.putIfAbsent(cArr, this.currentIndex);
        if (putIfAbsent >= 0) {
            return putIfAbsent;
        }
        int i10 = -putIfAbsent;
        if (i10 > 65535) {
            this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
        }
        int[] iArr = this.offsets;
        int length = iArr.length;
        if (length <= i10) {
            int[] iArr2 = new int[i10 * 2];
            this.offsets = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.offsets[i10] = this.currentOffset;
        writeU1(1);
        int i11 = this.currentOffset;
        if (i11 + 2 >= this.poolContent.length) {
            resizePoolContents(2);
        }
        this.currentOffset += 2;
        int i12 = 0;
        for (char c10 : cArr) {
            if (c10 >= 1 && c10 <= '\u007f') {
                writeU1(c10);
                i12++;
            } else if (c10 > '\u07ff') {
                i12 += 3;
                writeU1(((c10 >> '\f') & 15) | 224);
                writeU1(((c10 >> 6) & 63) | 128);
                writeU1((c10 & '?') | 128);
            } else {
                i12 += 2;
                writeU1(((c10 >> 6) & 31) | 192);
                writeU1((c10 & '?') | 128);
            }
        }
        if (i12 >= 65535) {
            this.currentOffset = i11 - 1;
            this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceForConstant(this.classFile.referenceBinding.scope.referenceType());
        }
        if (i10 > 65535) {
            this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
        }
        this.currentIndex++;
        byte[] bArr = this.poolContent;
        bArr[i11] = (byte) (i12 >> 8);
        bArr[i11 + 1] = (byte) i12;
        return i10;
    }

    public int literalIndex(char[] cArr, byte[] bArr) {
        int putIfAbsent = this.stringCache.putIfAbsent(cArr, this.currentIndex);
        if (putIfAbsent < 0) {
            this.currentIndex++;
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(8);
            int i10 = this.currentOffset;
            if (i10 + 2 >= this.poolContent.length) {
                resizePoolContents(2);
            }
            this.currentOffset += 2;
            int literalIndex = literalIndex(bArr, cArr);
            byte[] bArr2 = this.poolContent;
            bArr2[i10] = (byte) (literalIndex >> 8);
            bArr2[i10 + 1] = (byte) literalIndex;
        }
        return putIfAbsent;
    }

    public int literalIndex(double d10) {
        if (this.doubleCache == null) {
            this.doubleCache = new DoubleCache(5);
        }
        int putIfAbsent = this.doubleCache.putIfAbsent(d10, this.currentIndex);
        if (putIfAbsent < 0) {
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            this.currentIndex += 2;
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(6);
            long doubleToLongBits = Double.doubleToLongBits(d10);
            if (this.currentOffset + 8 >= this.poolContent.length) {
                resizePoolContents(8);
            }
            byte[] bArr = this.poolContent;
            int i10 = this.currentOffset;
            int i11 = i10 + 1;
            this.currentOffset = i11;
            bArr[i10] = (byte) (doubleToLongBits >>> 56);
            int i12 = i10 + 2;
            this.currentOffset = i12;
            bArr[i11] = (byte) (doubleToLongBits >>> 48);
            int i13 = i10 + 3;
            this.currentOffset = i13;
            bArr[i12] = (byte) (doubleToLongBits >>> 40);
            int i14 = i10 + 4;
            this.currentOffset = i14;
            bArr[i13] = (byte) (doubleToLongBits >>> 32);
            int i15 = i10 + 5;
            this.currentOffset = i15;
            bArr[i14] = (byte) (doubleToLongBits >>> 24);
            int i16 = i10 + 6;
            this.currentOffset = i16;
            bArr[i15] = (byte) (doubleToLongBits >>> 16);
            int i17 = i10 + 7;
            this.currentOffset = i17;
            bArr[i16] = (byte) (doubleToLongBits >>> 8);
            this.currentOffset = i10 + 8;
            bArr[i17] = (byte) doubleToLongBits;
        }
        return putIfAbsent;
    }

    public int literalIndex(float f10) {
        if (this.floatCache == null) {
            this.floatCache = new FloatCache(3);
        }
        int putIfAbsent = this.floatCache.putIfAbsent(f10, this.currentIndex);
        if (putIfAbsent < 0) {
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            this.currentIndex++;
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(4);
            int floatToIntBits = Float.floatToIntBits(f10);
            if (this.currentOffset + 4 >= this.poolContent.length) {
                resizePoolContents(4);
            }
            byte[] bArr = this.poolContent;
            int i10 = this.currentOffset;
            int i11 = i10 + 1;
            this.currentOffset = i11;
            bArr[i10] = (byte) (floatToIntBits >>> 24);
            int i12 = i10 + 2;
            this.currentOffset = i12;
            bArr[i11] = (byte) (floatToIntBits >>> 16);
            int i13 = i10 + 3;
            this.currentOffset = i13;
            bArr[i12] = (byte) (floatToIntBits >>> 8);
            this.currentOffset = i10 + 4;
            bArr[i13] = (byte) floatToIntBits;
        }
        return putIfAbsent;
    }

    public int literalIndex(int i10) {
        if (this.intCache == null) {
            this.intCache = new IntegerCache(248);
        }
        int putIfAbsent = this.intCache.putIfAbsent(i10, this.currentIndex);
        if (putIfAbsent < 0) {
            this.currentIndex++;
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(3);
            if (this.currentOffset + 4 >= this.poolContent.length) {
                resizePoolContents(4);
            }
            byte[] bArr = this.poolContent;
            int i11 = this.currentOffset;
            int i12 = i11 + 1;
            this.currentOffset = i12;
            bArr[i11] = (byte) (i10 >>> 24);
            int i13 = i11 + 2;
            this.currentOffset = i13;
            bArr[i12] = (byte) (i10 >>> 16);
            int i14 = i11 + 3;
            this.currentOffset = i14;
            bArr[i13] = (byte) (i10 >>> 8);
            this.currentOffset = i11 + 4;
            bArr[i14] = (byte) i10;
        }
        return putIfAbsent;
    }

    public int literalIndex(long j10) {
        if (this.longCache == null) {
            this.longCache = new LongCache(5);
        }
        int putIfAbsent = this.longCache.putIfAbsent(j10, this.currentIndex);
        if (putIfAbsent < 0) {
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            this.currentIndex += 2;
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(5);
            if (this.currentOffset + 8 >= this.poolContent.length) {
                resizePoolContents(8);
            }
            byte[] bArr = this.poolContent;
            int i10 = this.currentOffset;
            int i11 = i10 + 1;
            this.currentOffset = i11;
            bArr[i10] = (byte) (j10 >>> 56);
            int i12 = i10 + 2;
            this.currentOffset = i12;
            bArr[i11] = (byte) (j10 >>> 48);
            int i13 = i10 + 3;
            this.currentOffset = i13;
            bArr[i12] = (byte) (j10 >>> 40);
            int i14 = i10 + 4;
            this.currentOffset = i14;
            bArr[i13] = (byte) (j10 >>> 32);
            int i15 = i10 + 5;
            this.currentOffset = i15;
            bArr[i14] = (byte) (j10 >>> 24);
            int i16 = i10 + 6;
            this.currentOffset = i16;
            bArr[i15] = (byte) (j10 >>> 16);
            int i17 = i10 + 7;
            this.currentOffset = i17;
            bArr[i16] = (byte) (j10 >>> 8);
            this.currentOffset = i10 + 8;
            bArr[i17] = (byte) j10;
        }
        return putIfAbsent;
    }

    public int literalIndex(String str) {
        char[] charArray = str.toCharArray();
        int putIfAbsent = this.stringCache.putIfAbsent(charArray, this.currentIndex);
        if (putIfAbsent < 0) {
            this.currentIndex++;
            putIfAbsent = -putIfAbsent;
            if (putIfAbsent > 65535) {
                this.classFile.referenceBinding.scope.problemReporter().noMoreAvailableSpaceInConstantPool(this.classFile.referenceBinding.scope.referenceType());
            }
            int[] iArr = this.offsets;
            int length = iArr.length;
            if (length <= putIfAbsent) {
                int[] iArr2 = new int[putIfAbsent * 2];
                this.offsets = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.offsets[putIfAbsent] = this.currentOffset;
            writeU1(8);
            int i10 = this.currentOffset;
            if (i10 + 2 >= this.poolContent.length) {
                resizePoolContents(2);
            }
            this.currentOffset += 2;
            int literalIndex = literalIndex(charArray);
            byte[] bArr = this.poolContent;
            bArr[i10] = (byte) (literalIndex >> 8);
            bArr[i10 + 1] = (byte) literalIndex;
        }
        return putIfAbsent;
    }
}
