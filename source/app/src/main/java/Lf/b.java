package Lf;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.lang.annotation.Annotation;
import kotlin.jvm.internal.InterfaceC14023u;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.n0;
import kotlin.reflect.KClass;
import nf.EnumC14431q;
import nf.InterfaceC14412g0;
import nf.InterfaceC14422l0;
import nf.InterfaceC14427o;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@j(name = "JvmClassMappingKt")
public final class b {
    @NotNull
    public static final <T extends Annotation> KClass<? extends T> a(@NotNull T t10) {
        M.p(t10, "<this>");
        Class<? extends Annotation> annotationType = t10.annotationType();
        M.o(annotationType, "annotationType(...)");
        KClass<? extends T> i10 = i(annotationType);
        M.n(i10, "null cannot be cast to non-null type kotlin.reflect.KClass<out T of kotlin.jvm.JvmClassMappingKt.<get-annotationClass>>");
        return i10;
    }

    public static final <E extends Enum<E>> Class<E> b(Enum<E> r12) {
        M.p(r12, "<this>");
        Class<E> declaringClass = r12.getDeclaringClass();
        M.o(declaringClass, "getDeclaringClass(...)");
        return declaringClass;
    }

    @Ef.f
    @InterfaceC14422l0(version = "1.7")
    public static void c(Enum r02) {
    }

    @NotNull
    public static final <T> Class<T> d(@NotNull T t10) {
        M.p(t10, "<this>");
        Class<T> cls = (Class<T>) t10.getClass();
        M.n(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaClass>>");
        return cls;
    }

    @j(name = "getJavaClass")
    @NotNull
    public static final <T> Class<T> e(@NotNull KClass<T> kClass) {
        M.p(kClass, "<this>");
        Class<T> cls = (Class<T>) ((InterfaceC14023u) kClass).f();
        M.n(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        return cls;
    }

    public static void f(KClass kClass) {
    }

    @NotNull
    public static final <T> Class<T> g(@NotNull KClass<T> kClass) {
        M.p(kClass, "<this>");
        Class<T> cls = (Class<T>) ((InterfaceC14023u) kClass).f();
        if (!cls.isPrimitive()) {
            M.n(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
            return cls;
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (name.equals("double")) {
                    cls = (Class<T>) Double.class;
                    break;
                }
                break;
            case 104431:
                if (name.equals("int")) {
                    cls = (Class<T>) Integer.class;
                    break;
                }
                break;
            case 3039496:
                if (name.equals("byte")) {
                    cls = (Class<T>) Byte.class;
                    break;
                }
                break;
            case 3052374:
                if (name.equals("char")) {
                    cls = (Class<T>) Character.class;
                    break;
                }
                break;
            case 3327612:
                if (name.equals("long")) {
                    cls = (Class<T>) Long.class;
                    break;
                }
                break;
            case 3625364:
                if (name.equals("void")) {
                    cls = (Class<T>) Void.class;
                    break;
                }
                break;
            case 64711720:
                if (name.equals(TypedValues.Custom.S_BOOLEAN)) {
                    cls = (Class<T>) Boolean.class;
                    break;
                }
                break;
            case 97526364:
                if (name.equals(TypedValues.Custom.S_FLOAT)) {
                    cls = (Class<T>) Float.class;
                    break;
                }
                break;
            case 109413500:
                if (name.equals("short")) {
                    cls = (Class<T>) Short.class;
                    break;
                }
                break;
        }
        M.n(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaObjectType>>");
        return cls;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static final <T> Class<T> h(@NotNull KClass<T> kClass) {
        M.p(kClass, "<this>");
        Class<T> cls = (Class<T>) ((InterfaceC14023u) kClass).f();
        if (cls.isPrimitive()) {
            M.n(cls, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-javaPrimitiveType>>");
            return cls;
        }
        String name = cls.getName();
        switch (name.hashCode()) {
            case -2056817302:
                if (name.equals("java.lang.Integer")) {
                    return (Class<T>) Integer.TYPE;
                }
                return null;
            case -527879800:
                if (name.equals("java.lang.Float")) {
                    return (Class<T>) Float.TYPE;
                }
                return null;
            case -515992664:
                if (name.equals("java.lang.Short")) {
                    return (Class<T>) Short.TYPE;
                }
                return null;
            case 155276373:
                if (name.equals("java.lang.Character")) {
                    return (Class<T>) Character.TYPE;
                }
                return null;
            case 344809556:
                if (name.equals("java.lang.Boolean")) {
                    return (Class<T>) Boolean.TYPE;
                }
                return null;
            case 398507100:
                if (name.equals("java.lang.Byte")) {
                    return (Class<T>) Byte.TYPE;
                }
                return null;
            case 398795216:
                if (name.equals("java.lang.Long")) {
                    return (Class<T>) Long.TYPE;
                }
                return null;
            case 399092968:
                if (name.equals("java.lang.Void")) {
                    return (Class<T>) Void.TYPE;
                }
                return null;
            case 761287205:
                if (name.equals("java.lang.Double")) {
                    return (Class<T>) Double.TYPE;
                }
                return null;
            default:
                return null;
        }
    }

    @j(name = "getKotlinClass")
    @NotNull
    public static final <T> KClass<T> i(@NotNull Class<T> cls) {
        M.p(cls, "<this>");
        return n0.d(cls);
    }

    @j(name = "getRuntimeClassOfKClassInstance")
    @NotNull
    public static final <T> Class<KClass<T>> j(@NotNull KClass<T> kClass) {
        M.p(kClass, "<this>");
        Class<KClass<T>> cls = (Class<KClass<T>>) kClass.getClass();
        M.n(cls, "null cannot be cast to non-null type java.lang.Class<kotlin.reflect.KClass<T of kotlin.jvm.JvmClassMappingKt.<get-javaClass>>>");
        return cls;
    }

    @InterfaceC14427o(level = EnumC14431q.ERROR, message = "Use 'java' property to get Java class corresponding to this Kotlin class or cast this instance to Any if you really want to get the runtime Java class of this implementation of KClass.", replaceWith = @InterfaceC14412g0(expression = "(this as Any).javaClass", imports = {}))
    public static void k(KClass kClass) {
    }

    public static final boolean l(Object[] objArr) {
        M.p(objArr, "<this>");
        M.y(4, ExifInterface.GPS_DIRECTION_TRUE);
        return Object.class.isAssignableFrom(objArr.getClass().getComponentType());
    }
}
