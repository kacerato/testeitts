package com.android.tools.r8.internal;

import java.util.List;

@InterfaceC9597tW(d1 = {"\u0000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005\",\u0010\b\u001a\u0004\u0018\u00010\u0007*\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f\",\u0010\r\u001a\u0004\u0018\u00010\u0007*\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\f\"\u001b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00108F\u00a2\u0006\u0006\u001a\u0004\b\u0004\u0010\u0011\",\u0010\b\u001a\u0004\u0018\u00010\u0007*\u00020\u00102\b\u0010\u0006\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\t\u0010\u0012\"\u0004\b\u000b\u0010\u0013\",\u0010\u0015\u001a\u0004\u0018\u00010\u0014*\u00020\u00162\b\u0010\u0006\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a\",\u0010\u001b\u001a\u0004\u0018\u00010\u0007*\u00020\u00162\b\u0010\u0006\u001a\u0004\u0018\u00010\u00078F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f\",\u0010!\u001a\u0004\u0018\u00010 *\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010 8F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%\",\u0010&\u001a\u0004\u0018\u00010\u0014*\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*\",\u0010+\u001a\u0004\u0018\u00010\u0014*\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b,\u0010(\"\u0004\b-\u0010*\",\u0010.\u001a\u0004\u0018\u00010\u0014*\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b/\u0010(\"\u0004\b0\u0010*\",\u00101\u001a\u0004\u0018\u00010\u0014*\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b2\u0010(\"\u0004\b3\u0010*\",\u0010\u0015\u001a\u0004\u0018\u00010\u0014*\u0002042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00148F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b\u0017\u00105\"\u0004\b\u0019\u00106\"\u001b\u00107\u001a\b\u0012\u0004\u0012\u0002080\u0001*\u0002098F\u00a2\u0006\u0006\u001a\u0004\b:\u0010;\"(\u0010=\u001a\u00020<*\u00020>2\u0006\u0010\u0006\u001a\u00020<8F@FX\u0086\u000e\u00a2\u0006\f\u001a\u0004\b=\u0010?\"\u0004\b@\u0010A\"\u001b\u00107\u001a\b\u0012\u0004\u0012\u0002080\u0001*\u00020>8F\u00a2\u0006\u0006\u001a\u0004\b:\u0010B\"\u0015\u0010C\u001a\u00020\u0007*\u00020D8F\u00a2\u0006\u0006\u001a\u0004\bE\u0010F\u00a8\u0006G"}, d2 = {"localDelegatedProperties", "", "Lkotlin/metadata/KmProperty;", "Lkotlin/metadata/KmClass;", "getLocalDelegatedProperties", "(Lkotlin/metadata/KmClass;)Ljava/util/List;", "value", "", "moduleName", "getModuleName", "(Lkotlin/metadata/KmClass;)Ljava/lang/String;", "setModuleName", "(Lkotlin/metadata/KmClass;Ljava/lang/String;)V", "anonymousObjectOriginName", "getAnonymousObjectOriginName", "setAnonymousObjectOriginName", "Lkotlin/metadata/KmPackage;", "(Lkotlin/metadata/KmPackage;)Ljava/util/List;", "(Lkotlin/metadata/KmPackage;)Ljava/lang/String;", "(Lkotlin/metadata/KmPackage;Ljava/lang/String;)V", "Lkotlin/metadata/jvm/JvmMethodSignature;", "signature", "Lkotlin/metadata/KmFunction;", "getSignature", "(Lkotlin/metadata/KmFunction;)Lkotlin/metadata/jvm/JvmMethodSignature;", "setSignature", "(Lkotlin/metadata/KmFunction;Lkotlin/metadata/jvm/JvmMethodSignature;)V", "lambdaClassOriginName", "getLambdaClassOriginName", "(Lkotlin/metadata/KmFunction;)Ljava/lang/String;", "setLambdaClassOriginName", "(Lkotlin/metadata/KmFunction;Ljava/lang/String;)V", "Lkotlin/metadata/jvm/JvmFieldSignature;", "fieldSignature", "getFieldSignature", "(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/jvm/JvmFieldSignature;", "setFieldSignature", "(Lkotlin/metadata/KmProperty;Lkotlin/metadata/jvm/JvmFieldSignature;)V", "getterSignature", "getGetterSignature", "(Lkotlin/metadata/KmProperty;)Lkotlin/metadata/jvm/JvmMethodSignature;", "setGetterSignature", "(Lkotlin/metadata/KmProperty;Lkotlin/metadata/jvm/JvmMethodSignature;)V", "setterSignature", "getSetterSignature", "setSetterSignature", "syntheticMethodForAnnotations", "getSyntheticMethodForAnnotations", "setSyntheticMethodForAnnotations", "syntheticMethodForDelegate", "getSyntheticMethodForDelegate", "setSyntheticMethodForDelegate", "Lkotlin/metadata/KmConstructor;", "(Lkotlin/metadata/KmConstructor;)Lkotlin/metadata/jvm/JvmMethodSignature;", "(Lkotlin/metadata/KmConstructor;Lkotlin/metadata/jvm/JvmMethodSignature;)V", "annotations", "Lkotlin/metadata/KmAnnotation;", "Lkotlin/metadata/KmTypeParameter;", "getAnnotations", "(Lkotlin/metadata/KmTypeParameter;)Ljava/util/List;", "", "isRaw", "Lkotlin/metadata/KmType;", "(Lkotlin/metadata/KmType;)Z", "setRaw", "(Lkotlin/metadata/KmType;Z)V", "(Lkotlin/metadata/KmType;)Ljava/util/List;", "JVM_PLATFORM_TYPE_ID", "Lkotlin/metadata/KmFlexibleTypeUpperBound$Companion;", "getJVM_PLATFORM_TYPE_ID", "(Lkotlin/metadata/KmFlexibleTypeUpperBound$Companion;)Ljava/lang/String;", "kotlin-metadata-jvm"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class BL {
    public static final OL a(C8918pQ c8918pQ) {
        GJ.c(c8918pQ, "<this>");
        return AL.a(c8918pQ).f39834a;
    }

    public static final OL b(C9919vQ c9919vQ) {
        GJ.c(c9919vQ, "<this>");
        return AL.a(c9919vQ).f45666c;
    }

    public static final OL c(C9919vQ c9919vQ) {
        GJ.c(c9919vQ, "<this>");
        return AL.a(c9919vQ).f45667d;
    }

    public static final CL a(C9919vQ c9919vQ) {
        GJ.c(c9919vQ, "<this>");
        return AL.a(c9919vQ).f45665b;
    }

    public static final boolean b(C10420yQ c10420yQ) {
        GJ.c(c10420yQ, "<this>");
        return AL.a(c10420yQ).f52343a;
    }

    public static final OL a(C7083eQ c7083eQ) {
        GJ.c(c7083eQ, "<this>");
        return AL.a(c7083eQ).f54358a;
    }

    public static final List<GP> a(C10420yQ c10420yQ) {
        GJ.c(c10420yQ, "<this>");
        return AL.a(c10420yQ).f52344b;
    }
}
