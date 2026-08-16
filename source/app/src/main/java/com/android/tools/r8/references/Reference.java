package com.android.tools.r8.references;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.WB;
import java.lang.constant.ConstantDescs;
import java.lang.reflect.Constructor;
import java.lang.reflect.Executable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class Reference {

    static final boolean f56211a = true;
    public static PrimitiveReference BOOL = PrimitiveReference.f56202a;
    public static PrimitiveReference BYTE = PrimitiveReference.f56203b;
    public static PrimitiveReference CHAR = PrimitiveReference.f56204c;
    public static PrimitiveReference SHORT = PrimitiveReference.f56205d;
    public static PrimitiveReference INT = PrimitiveReference.f56206e;
    public static PrimitiveReference FLOAT = PrimitiveReference.f56207f;
    public static PrimitiveReference LONG = PrimitiveReference.f56208g;
    public static PrimitiveReference DOUBLE = PrimitiveReference.f56209h;

    public static ArrayReference array(TypeReference typeReference, int i10) {
        return ArrayReference.a(typeReference, i10);
    }

    public static ArrayReference arrayFromDescriptor(String str) {
        return ArrayReference.a(str);
    }

    public static MethodReference classConstructor(ClassReference classReference) {
        return method(classReference, ConstantDescs.CLASS_INIT_NAME, Collections.EMPTY_LIST, null);
    }

    public static ClassReference classFromBinaryName(String str) {
        return classFromDescriptor(C4932Bl.k(str));
    }

    public static ClassReference classFromClass(Class<?> cls) {
        return classFromTypeName(cls.getTypeName());
    }

    public static ClassReference classFromDescriptor(String str) {
        return ClassReference.a(str);
    }

    public static ClassReference classFromTypeName(String str) {
        return classFromDescriptor(C4932Bl.H(str));
    }

    public static FieldReference field(ClassReference classReference, String str, TypeReference typeReference) {
        return new FieldReference(classReference, str, typeReference);
    }

    public static FieldReference fieldFromField(Field field) {
        Class<?> declaringClass = field.getDeclaringClass();
        return field(classFromClass(declaringClass), field.getName(), typeFromDescriptor(C4932Bl.H(field.getType().getTypeName())));
    }

    public static MethodReference method(ClassReference classReference, String str, List<TypeReference> list, TypeReference typeReference) {
        return new MethodReference(classReference, str, AbstractC7552hC.a(list), typeReference);
    }

    public static MethodReference methodFromDescriptor(String str, String str2, String str3) {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        String[] e10 = C4932Bl.e(str3);
        int length = e10.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            TypeReference typeFromDescriptor = typeFromDescriptor(e10[i11]);
            typeFromDescriptor.getClass();
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = typeFromDescriptor;
            i11++;
            i12 = i13;
        }
        String t10 = C4932Bl.t(str3);
        return method(classFromDescriptor(str), str2, AbstractC7552hC.b(i12, objArr), t10.equals("V") ? null : typeFromDescriptor(t10));
    }

    public static MethodReference methodFromMethod(Executable executable) {
        if (executable instanceof Constructor) {
            return methodFromMethod((Constructor<?>) executable);
        }
        if (f56211a || (executable instanceof Method)) {
            return methodFromMethod((Method) executable);
        }
        throw new AssertionError();
    }

    public static PackageReference packageFromPackage(Package r12) {
        return new PackageReference(r12.getName());
    }

    public static PackageReference packageFromString(String str) {
        return new PackageReference(str);
    }

    public static PrimitiveReference primitiveFromDescriptor(String str) {
        return PrimitiveReference.a(str);
    }

    public static TypeReference returnTypeFromDescriptor(String str) {
        if (str.equals("V")) {
            return null;
        }
        return typeFromDescriptor(str);
    }

    public static TypeReference returnTypeFromTypeName(String str) {
        if (str.equals("void")) {
            return null;
        }
        return typeFromTypeName(str);
    }

    public static TypeReference typeFromDescriptor(String str) {
        char charAt = str.charAt(0);
        return charAt != 'L' ? charAt != '[' ? primitiveFromDescriptor(str) : arrayFromDescriptor(str) : classFromDescriptor(str);
    }

    public static TypeReference typeFromTypeName(String str) {
        return typeFromDescriptor(C4932Bl.H(str));
    }

    public static MethodReference methodFromMethod(Method method) {
        String name = method.getName();
        Class<?> declaringClass = method.getDeclaringClass();
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class<?> returnType = method.getReturnType();
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int length = parameterTypes.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            TypeReference typeFromDescriptor = typeFromDescriptor(C4932Bl.H(parameterTypes[i11].getTypeName()));
            typeFromDescriptor.getClass();
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = typeFromDescriptor;
            i11++;
            i12 = i13;
        }
        return method(classFromClass(declaringClass), name, AbstractC7552hC.b(i12, objArr), returnType == Void.TYPE ? null : typeFromDescriptor(C4932Bl.H(returnType.getTypeName())));
    }

    public static MethodReference methodFromDescriptor(ClassReference classReference, String str, String str2) {
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        String[] e10 = C4932Bl.e(str2);
        int length = e10.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            TypeReference typeFromDescriptor = typeFromDescriptor(e10[i11]);
            typeFromDescriptor.getClass();
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = typeFromDescriptor;
            i11++;
            i12 = i13;
        }
        String t10 = C4932Bl.t(str2);
        return method(classReference, str, AbstractC7552hC.b(i12, objArr), t10.equals("V") ? null : typeFromDescriptor(t10));
    }

    public static MethodReference methodFromMethod(Constructor<?> constructor) {
        Class<?> declaringClass = constructor.getDeclaringClass();
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        int length = parameterTypes.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            TypeReference typeFromDescriptor = typeFromDescriptor(C4932Bl.H(parameterTypes[i11].getTypeName()));
            typeFromDescriptor.getClass();
            int i13 = i12 + 1;
            if (objArr.length < i13) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i13));
            }
            objArr[i12] = typeFromDescriptor;
            i11++;
            i12 = i13;
        }
        return method(classFromClass(declaringClass), ConstantDescs.INIT_NAME, AbstractC7552hC.b(i12, objArr), null);
    }
}
