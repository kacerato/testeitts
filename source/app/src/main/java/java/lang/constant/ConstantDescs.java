package java.lang.constant;

import java.lang.constant.DirectMethodHandleDesc;
import jdk.internal.constant.ClassOrInterfaceDescImpl;
import jdk.internal.constant.ConstantUtils;
import jdk.internal.constant.MethodTypeDescImpl;
import jdk.internal.constant.PrimitiveClassDescImpl;

public final class ConstantDescs {
    public static final String DEFAULT_NAME = "_";
    public static final ClassDesc CD_Object = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Object;");
    public static final ClassDesc CD_String = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/String;");
    public static final ClassDesc CD_Class = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Class;");
    public static final ClassDesc CD_Number = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Number;");
    public static final ClassDesc CD_Integer = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Integer;");
    public static final ClassDesc CD_Long = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Long;");
    public static final ClassDesc CD_Float = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Float;");
    public static final ClassDesc CD_Double = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Double;");
    public static final ClassDesc CD_Short = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Short;");
    public static final ClassDesc CD_Byte = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Byte;");
    public static final ClassDesc CD_Character = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Character;");
    public static final ClassDesc CD_Boolean = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Boolean;");
    public static final ClassDesc CD_Void = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Void;");
    public static final ClassDesc CD_Throwable = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Throwable;");
    public static final ClassDesc CD_Exception = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Exception;");
    public static final ClassDesc CD_Enum = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Enum;");
    public static final ClassDesc CD_VarHandle = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/VarHandle;");
    public static final ClassDesc CD_MethodHandles = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodHandles;");
    public static final ClassDesc CD_MethodHandles_Lookup = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodHandles$Lookup;");
    public static final ClassDesc CD_MethodHandle = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodHandle;");
    public static final ClassDesc CD_MethodType = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/MethodType;");
    public static final ClassDesc CD_CallSite = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/CallSite;");
    public static final ClassDesc CD_Collection = ClassOrInterfaceDescImpl.ofValidated("Ljava/util/Collection;");
    public static final ClassDesc CD_List = ClassOrInterfaceDescImpl.ofValidated("Ljava/util/List;");
    public static final ClassDesc CD_Set = ClassOrInterfaceDescImpl.ofValidated("Ljava/util/Set;");
    public static final ClassDesc CD_Map = ClassOrInterfaceDescImpl.ofValidated("Ljava/util/Map;");
    public static final ClassDesc CD_ConstantDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/ConstantDesc;");
    public static final ClassDesc CD_ClassDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/ClassDesc;");
    public static final ClassDesc CD_EnumDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/Enum$EnumDesc;");
    public static final ClassDesc CD_MethodTypeDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/MethodTypeDesc;");
    public static final ClassDesc CD_MethodHandleDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/MethodHandleDesc;");
    public static final ClassDesc CD_DirectMethodHandleDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/DirectMethodHandleDesc;");
    public static final ClassDesc CD_VarHandleDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/VarHandle$VarHandleDesc;");
    public static final ClassDesc CD_MethodHandleDesc_Kind = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/DirectMethodHandleDesc$Kind;");
    public static final ClassDesc CD_DynamicConstantDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/DynamicConstantDesc;");
    public static final ClassDesc CD_DynamicCallSiteDesc = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/constant/DynamicCallSiteDesc;");
    public static final ClassDesc CD_ConstantBootstraps = ClassOrInterfaceDescImpl.ofValidated("Ljava/lang/invoke/ConstantBootstraps;");
    private static final ClassDesc[] INDY_BOOTSTRAP_ARGS;
    private static final ClassDesc[] CONDY_BOOTSTRAP_ARGS;
    public static final DirectMethodHandleDesc BSM_PRIMITIVE_CLASS;
    public static final DirectMethodHandleDesc BSM_ENUM_CONSTANT;
    public static final DirectMethodHandleDesc BSM_GET_STATIC_FINAL;
    public static final DirectMethodHandleDesc BSM_NULL_CONSTANT;
    public static final DirectMethodHandleDesc BSM_VARHANDLE_FIELD;
    public static final DirectMethodHandleDesc BSM_VARHANDLE_STATIC_FIELD;
    public static final DirectMethodHandleDesc BSM_VARHANDLE_ARRAY;
    public static final DirectMethodHandleDesc BSM_INVOKE;
    public static final DirectMethodHandleDesc BSM_EXPLICIT_CAST;
    public static final ClassDesc CD_int;
    public static final ClassDesc CD_long;
    public static final ClassDesc CD_float;
    public static final ClassDesc CD_double;
    public static final ClassDesc CD_short;
    public static final ClassDesc CD_byte;
    public static final ClassDesc CD_char;
    public static final ClassDesc CD_boolean;
    public static final ClassDesc CD_void;
    public static final DirectMethodHandleDesc BSM_CLASS_DATA;
    public static final DirectMethodHandleDesc BSM_CLASS_DATA_AT;
    public static final ConstantDesc NULL;
    public static final DynamicConstantDesc<Boolean> TRUE;
    public static final DynamicConstantDesc<Boolean> FALSE;
    public static final String INIT_NAME = "<init>";
    public static final String CLASS_INIT_NAME = "<clinit>";
    public static final MethodTypeDesc MTD_void;
    static final DirectMethodHandleDesc MHD_METHODHANDLE_ASTYPE;

    private ConstantDescs() {
    }

    static {
        ConstantUtils.CD_Object_array = CD_Object.arrayType();
        INDY_BOOTSTRAP_ARGS = new ClassDesc[]{CD_MethodHandles_Lookup, CD_String, CD_MethodType};
        CONDY_BOOTSTRAP_ARGS = new ClassDesc[]{CD_MethodHandles_Lookup, CD_String, CD_Class};
        BSM_PRIMITIVE_CLASS = ofConstantBootstrap(CD_ConstantBootstraps, "primitiveClass", CD_Class, new ClassDesc[0]);
        BSM_ENUM_CONSTANT = ofConstantBootstrap(CD_ConstantBootstraps, "enumConstant", CD_Enum, new ClassDesc[0]);
        BSM_GET_STATIC_FINAL = ofConstantBootstrap(CD_ConstantBootstraps, "getStaticFinal", CD_Object, CD_Class);
        BSM_NULL_CONSTANT = ofConstantBootstrap(CD_ConstantBootstraps, "nullConstant", CD_Object, new ClassDesc[0]);
        BSM_VARHANDLE_FIELD = ofConstantBootstrap(CD_ConstantBootstraps, "fieldVarHandle", CD_VarHandle, CD_Class, CD_Class);
        BSM_VARHANDLE_STATIC_FIELD = ofConstantBootstrap(CD_ConstantBootstraps, "staticFieldVarHandle", CD_VarHandle, CD_Class, CD_Class);
        BSM_VARHANDLE_ARRAY = ofConstantBootstrap(CD_ConstantBootstraps, "arrayVarHandle", CD_VarHandle, CD_Class);
        BSM_INVOKE = ofConstantBootstrap(CD_ConstantBootstraps, "invoke", CD_Object, CD_MethodHandle, ConstantUtils.CD_Object_array);
        BSM_EXPLICIT_CAST = ofConstantBootstrap(CD_ConstantBootstraps, "explicitCast", CD_Object, CD_Object);
        CD_int = PrimitiveClassDescImpl.CD_int;
        CD_long = PrimitiveClassDescImpl.CD_long;
        CD_float = PrimitiveClassDescImpl.CD_float;
        CD_double = PrimitiveClassDescImpl.CD_double;
        CD_short = PrimitiveClassDescImpl.CD_short;
        CD_byte = PrimitiveClassDescImpl.CD_byte;
        CD_char = PrimitiveClassDescImpl.CD_char;
        CD_boolean = PrimitiveClassDescImpl.CD_boolean;
        CD_void = PrimitiveClassDescImpl.CD_void;
        BSM_CLASS_DATA = ofConstantBootstrap(CD_MethodHandles, "classData", CD_Object, new ClassDesc[0]);
        BSM_CLASS_DATA_AT = ofConstantBootstrap(CD_MethodHandles, "classDataAt", CD_Object, CD_int);
        NULL = DynamicConstantDesc.ofNamed(BSM_NULL_CONSTANT, DEFAULT_NAME, CD_Object, new ConstantDesc[0]);
        TRUE = DynamicConstantDesc.ofNamed(BSM_GET_STATIC_FINAL, "TRUE", CD_Boolean, CD_Boolean);
        FALSE = DynamicConstantDesc.ofNamed(BSM_GET_STATIC_FINAL, "FALSE", CD_Boolean, CD_Boolean);
        MTD_void = MethodTypeDesc.of(CD_void);
        MHD_METHODHANDLE_ASTYPE = MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.VIRTUAL, CD_MethodHandle, "asType", MethodTypeDesc.of(CD_MethodHandle, CD_MethodType));
    }

    public static DirectMethodHandleDesc ofCallsiteBootstrap(ClassDesc owner, String name, ClassDesc returnType, ClassDesc... paramTypes) {
        int prefixLen = INDY_BOOTSTRAP_ARGS.length;
        ClassDesc[] fullParamTypes = new ClassDesc[paramTypes.length + prefixLen];
        System.arraycopy(INDY_BOOTSTRAP_ARGS, 0, fullParamTypes, 0, prefixLen);
        System.arraycopy(paramTypes, 0, fullParamTypes, prefixLen, paramTypes.length);
        return MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.STATIC, owner, name, MethodTypeDescImpl.ofTrusted(returnType, fullParamTypes));
    }

    public static DirectMethodHandleDesc ofConstantBootstrap(ClassDesc owner, String name, ClassDesc returnType, ClassDesc... paramTypes) {
        int prefixLen = CONDY_BOOTSTRAP_ARGS.length;
        ClassDesc[] fullParamTypes = new ClassDesc[paramTypes.length + prefixLen];
        System.arraycopy(CONDY_BOOTSTRAP_ARGS, 0, fullParamTypes, 0, prefixLen);
        System.arraycopy(paramTypes, 0, fullParamTypes, prefixLen, paramTypes.length);
        return MethodHandleDesc.ofMethod(DirectMethodHandleDesc.Kind.STATIC, owner, name, MethodTypeDescImpl.ofTrusted(returnType, fullParamTypes));
    }
}
