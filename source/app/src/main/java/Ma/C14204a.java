package ma;

import H6.g;
import JAVARuntime.Animation;
import JAVARuntime.AnimationFile;
import JAVARuntime.AnimationMask;
import JAVARuntime.AnimationMaskFile;
import JAVARuntime.ClassCategory;
import JAVARuntime.Collision;
import JAVARuntime.Color;
import JAVARuntime.ColorGradient;
import JAVARuntime.Component;
import JAVARuntime.InputDialog;
import JAVARuntime.MethodArgs;
import JAVARuntime.ObjectFile;
import JAVARuntime.ProjectFile;
import JAVARuntime.SoundFile;
import JAVARuntime.SpatialObject;
import JAVARuntime.Texture;
import JAVARuntime.WorldFile;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import b3.s;
import cc.e;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Gradient.Gradient;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.Vector4;
import ec.EnumC13053a;
import ga.C13308d;
import ga.G;
import ga.H;
import ga.m;
import j9.C13813a;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import okhttp3.v;
import ub.p;
import w2.C15883c;

public final class C14204a {

    public static final Map<Class<?>, H> f96912a;

    static {
        HashMap hashMap = new HashMap();
        f96912a = hashMap;
        Class<Boolean> cls = Boolean.TYPE;
        H h10 = H.BOOLEAN;
        hashMap.put(cls, h10);
        hashMap.put(Boolean.class, h10);
        Class<Byte> cls2 = Byte.TYPE;
        H h11 = H.NUMBER;
        hashMap.put(cls2, h11);
        hashMap.put(Byte.class, h11);
        hashMap.put(Short.TYPE, h11);
        hashMap.put(Short.class, h11);
        hashMap.put(Integer.TYPE, h11);
        hashMap.put(Integer.class, h11);
        Class<Long> cls3 = Long.TYPE;
        H h12 = H.BIG_NUMBER;
        hashMap.put(cls3, h12);
        hashMap.put(Long.class, h12);
        hashMap.put(Float.TYPE, h11);
        hashMap.put(Float.class, h11);
        hashMap.put(Double.TYPE, h12);
        hashMap.put(Double.class, h12);
        H h13 = H.TEXT;
        hashMap.put(String.class, h13);
        hashMap.put(CharSequence.class, h13);
        H h14 = H.FLOAT2;
        hashMap.put(Vector2.class, h14);
        H h15 = H.FLOAT3;
        hashMap.put(Vector3.class, h15);
        H h16 = H.FLOAT4;
        hashMap.put(Vector4.class, h16);
        H h17 = H.QUATERNION;
        hashMap.put(Quaternion.class, h17);
        H h18 = H.COLOR;
        hashMap.put(ColorINT.class, h18);
        H h19 = H.COLOR_GRADIENT;
        hashMap.put(Gradient.class, h19);
        H h20 = H.MATERIAL;
        hashMap.put(Material.class, h20);
        H h21 = H.TEXTURE;
        hashMap.put(p.class, h21);
        H h22 = H.FILE;
        hashMap.put(File.class, h22);
        hashMap.put(JAVARuntime.File.class, h22);
        hashMap.put(ProjectFile.class, H.PROJECT_FILE);
        hashMap.put(InputStream.class, H.INPUT_STREAM);
        hashMap.put(AnimationFile.class, H.ANIMATION_FILE);
        hashMap.put(AnimationMaskFile.class, H.ANIMATION_MASK_FILE);
        hashMap.put(Animation.class, H.ANIMATION);
        hashMap.put(AnimationMask.class, H.ANIMATION_MASK);
        H h23 = H.GAME_OBJECT;
        hashMap.put(GameObject.class, h23);
        hashMap.put(JAVARuntime.Vector2.class, h14);
        hashMap.put(JAVARuntime.Vector3.class, h15);
        hashMap.put(JAVARuntime.Vector4.class, h16);
        hashMap.put(JAVARuntime.Quaternion.class, h17);
        hashMap.put(Color.class, h18);
        hashMap.put(ColorGradient.class, h19);
        hashMap.put(JAVARuntime.Material.class, h20);
        hashMap.put(Texture.class, h21);
        hashMap.put(ObjectFile.class, H.OBJECT_FILE);
        hashMap.put(WorldFile.class, H.WORLD_FILE);
        hashMap.put(SoundFile.class, H.SOUND_FILE);
        hashMap.put(Collision.class, H.COLLISION);
        hashMap.put(Collision.Contact.class, H.CONTACT);
        hashMap.put(SpatialObject.class, h23);
        hashMap.put(EnumC13053a.class, H.BLENDING_MODE);
        hashMap.put(e.class, H.UV_SOURCE);
        hashMap.put(InputDialog.Type.class, H.INPUT_DIALOG_TYPE);
        hashMap.put(G.class, H.POPUP_DIALOG_TYPE);
    }

    public static String a(Method method) {
        if (method == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(method.getName());
        sb2.append('(');
        Class<?>[] parameterTypes = method.getParameterTypes();
        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(m(parameterTypes[i10]));
        }
        sb2.append(')');
        return sb2.toString();
    }

    public static String b(String runtimeClassName, String methodName) {
        return "" + n(runtimeClassName) + s.f32937c + k(methodName);
    }

    public static String c(Method method) {
        if (method == null) {
            return "Result";
        }
        String name = method.getName();
        return (!name.startsWith("get") || name.length() <= 3) ? (!name.startsWith("is") || name.length() <= 2) ? (!name.startsWith("find") || name.length() <= 4) ? "Result" : g(name.substring(4)) : g(name.substring(2)) : g(name.substring(3));
    }

    public static Object d(Class<?> targetClass) {
        if (!targetClass.isPrimitive()) {
            return null;
        }
        if (targetClass == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (targetClass == Byte.TYPE) {
            return (byte) 0;
        }
        if (targetClass == Short.TYPE) {
            return (short) 0;
        }
        if (targetClass == Integer.TYPE) {
            return 0;
        }
        if (targetClass == Long.TYPE) {
            return 0L;
        }
        return targetClass == Float.TYPE ? Float.valueOf(0.0f) : targetClass == Double.TYPE ? Double.valueOf(0.0d) : targetClass == Character.TYPE ? (char) 0 : null;
    }

    public static Object e(Object value, H desiredType) {
        Object p10 = p(value);
        return (desiredType == null || desiredType == H.DYNAMIC) ? p10 : m.c(p10, desiredType);
    }

    public static H f(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        H h10 = f96912a.get(cls);
        if (h10 != null) {
            return h10;
        }
        if (CharSequence.class.isAssignableFrom(cls)) {
            return H.TEXT;
        }
        if (GameObject.class.isAssignableFrom(cls) || SpatialObject.class.isAssignableFrom(cls)) {
            return H.GAME_OBJECT;
        }
        if (Material.class.isAssignableFrom(cls) || JAVARuntime.Material.class.isAssignableFrom(cls)) {
            return H.MATERIAL;
        }
        if (p.class.isAssignableFrom(cls) || Texture.class.isAssignableFrom(cls)) {
            return H.TEXTURE;
        }
        if (File.class.isAssignableFrom(cls) || JAVARuntime.File.class.isAssignableFrom(cls)) {
            return H.FILE;
        }
        if (ProjectFile.class.isAssignableFrom(cls)) {
            return H.PROJECT_FILE;
        }
        if (InputStream.class.isAssignableFrom(cls)) {
            return H.INPUT_STREAM;
        }
        if (AnimationFile.class.isAssignableFrom(cls)) {
            return H.ANIMATION_FILE;
        }
        if (AnimationMaskFile.class.isAssignableFrom(cls)) {
            return H.ANIMATION_MASK_FILE;
        }
        if (Animation.class.isAssignableFrom(cls)) {
            return H.ANIMATION;
        }
        if (AnimationMask.class.isAssignableFrom(cls)) {
            return H.ANIMATION_MASK;
        }
        if (Gradient.class.isAssignableFrom(cls) || ColorGradient.class.isAssignableFrom(cls)) {
            return H.COLOR_GRADIENT;
        }
        if (Component.class.isAssignableFrom(cls)) {
            if (cls == Component.class) {
                return H.ANY_COMPONENT;
            }
            for (H h11 : H.values()) {
                if (C13308d.o(h11) && C13308d.j(h11) == cls) {
                    f96912a.put(cls, h11);
                    return h11;
                }
            }
        }
        return null;
    }

    public static String g(String text) {
        if (text == null || text.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        char c10 = 0;
        while (i10 < text.length()) {
            char charAt = text.charAt(i10);
            if (i10 == 0) {
                sb2.append(Character.toUpperCase(charAt));
            } else {
                if (Character.isUpperCase(charAt) && !Character.isUpperCase(c10)) {
                    sb2.append(C15883c.f126249O);
                } else if (charAt == '_' || charAt == '-') {
                    sb2.append(C15883c.f126249O);
                }
                sb2.append(charAt);
            }
            i10++;
            c10 = charAt;
        }
        return sb2.toString().trim();
    }

    public static String h(Class<?> runtimeClass) {
        String str;
        ClassCategory classCategory = runtimeClass != null ? (ClassCategory) runtimeClass.getAnnotation(ClassCategory.class) : null;
        return (classCategory == null || classCategory.cat().length == 0 || (str = classCategory.cat()[0]) == null || str.trim().isEmpty()) ? "Components" : str.trim();
    }

    public static Class<?> i(String className) throws ClassNotFoundException {
        if (className == null || className.isEmpty()) {
            throw new ClassNotFoundException("Empty class name");
        }
        char c10 = '\uffff';
        switch (className.hashCode()) {
            case -1325958191:
                if (className.equals("double")) {
                    c10 = 0;
                    break;
                }
                break;
            case 104431:
                if (className.equals("int")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3039496:
                if (className.equals("byte")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3052374:
                if (className.equals("char")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3327612:
                if (className.equals("long")) {
                    c10 = 4;
                    break;
                }
                break;
            case 64711720:
                if (className.equals(TypedValues.Custom.S_BOOLEAN)) {
                    c10 = 5;
                    break;
                }
                break;
            case 97526364:
                if (className.equals(TypedValues.Custom.S_FLOAT)) {
                    c10 = 6;
                    break;
                }
                break;
            case 109413500:
                if (className.equals("short")) {
                    c10 = 7;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Double.TYPE;
            case 1:
                return Integer.TYPE;
            case 2:
                return Byte.TYPE;
            case 3:
                return Character.TYPE;
            case 4:
                return Long.TYPE;
            case 5:
                return Boolean.TYPE;
            case 6:
                return Float.TYPE;
            case 7:
                return Short.TYPE;
            default:
                return Class.forName(className);
        }
    }

    public static String[] j(Method method) {
        String str;
        int i10 = 0;
        if (method == null) {
            return new String[0];
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        String[] strArr = new String[parameterTypes.length];
        MethodArgs methodArgs = (MethodArgs) method.getAnnotation(MethodArgs.class);
        String[] value = methodArgs != null ? methodArgs.value() : null;
        while (i10 < parameterTypes.length) {
            String str2 = (value == null || i10 >= value.length) ? null : value[i10];
            if (str2 == null || str2.trim().isEmpty()) {
                str = "Arg " + (i10 + 1);
            } else {
                str = g(str2);
            }
            strArr[i10] = str;
            i10++;
        }
        return strArr;
    }

    public static String k(String value) {
        return value != null ? value : "";
    }

    public static boolean l(Method method) {
        return method == null || method.getAnnotation(g.class) != null;
    }

    public static String m(Class<?> cls) {
        if (cls == null) {
            return "unknown";
        }
        if (!cls.isArray()) {
            return cls.getSimpleName();
        }
        return m(cls.getComponentType()) + v.f99450n;
    }

    public static String n(String className) {
        if (className == null || className.isEmpty()) {
            return "Component";
        }
        int lastIndexOf = className.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            className = className.substring(lastIndexOf + 1);
        }
        int lastIndexOf2 = className.lastIndexOf(36);
        return lastIndexOf2 >= 0 ? className.substring(lastIndexOf2 + 1) : className;
    }

    public static Object o(Object value, Class<?> targetClass) {
        if (targetClass == null) {
            return value;
        }
        if (value == null) {
            return d(targetClass);
        }
        H f10 = f(targetClass);
        if (f10 != null) {
            value = m.c(value, f10);
        }
        if (targetClass.isInstance(value)) {
            return value;
        }
        if (targetClass == Boolean.TYPE || targetClass == Boolean.class) {
            return Boolean.valueOf(m.O(value));
        }
        if (targetClass == Byte.TYPE || targetClass == Byte.class) {
            return Byte.valueOf((byte) m.V(value));
        }
        if (targetClass == Short.TYPE || targetClass == Short.class) {
            return Short.valueOf((short) m.V(value));
        }
        if (targetClass == Integer.TYPE || targetClass == Integer.class) {
            return Integer.valueOf((int) m.V(value));
        }
        if (targetClass == Long.TYPE || targetClass == Long.class) {
            return Long.valueOf(m.M(value).g());
        }
        if (targetClass == Float.TYPE || targetClass == Float.class) {
            return Float.valueOf(m.V(value));
        }
        if (targetClass == Double.TYPE || targetClass == Double.class) {
            return Double.valueOf(m.M(value).d());
        }
        if (targetClass == String.class || CharSequence.class.isAssignableFrom(targetClass)) {
            return m.i0(value);
        }
        if (targetClass == Vector2.class) {
            return m.l0(value);
        }
        if (targetClass == Vector3.class) {
            return m.n0(value);
        }
        if (targetClass == Vector4.class) {
            return m.p0(value);
        }
        if (targetClass == Quaternion.class) {
            return m.f0(value);
        }
        if (targetClass == ColorINT.class) {
            return m.Q(value);
        }
        if (targetClass == Gradient.class) {
            return m.W(value);
        }
        if (targetClass == Material.class) {
            return m.b0(value);
        }
        if (targetClass == p.class) {
            return m.j0(value);
        }
        if (targetClass == File.class || targetClass == JAVARuntime.File.class) {
            return m.U(value);
        }
        if (targetClass == ProjectFile.class || targetClass == ProjectFile.class) {
            return m.e0(value);
        }
        if (targetClass == InputStream.class) {
            return m.Z(value);
        }
        if (targetClass == GameObject.class) {
            return C13308d.A(value);
        }
        if (targetClass == JAVARuntime.Vector2.class) {
            Vector2 l02 = m.l0(value);
            if (l02 != null) {
                return l02.K0();
            }
            return null;
        }
        if (targetClass == JAVARuntime.Vector3.class) {
            Vector3 n02 = m.n0(value);
            if (n02 != null) {
                return n02.toJAVARuntime();
            }
            return null;
        }
        if (targetClass == JAVARuntime.Vector4.class) {
            Vector4 p02 = m.p0(value);
            if (p02 != null) {
                return p02.q();
            }
            return null;
        }
        if (targetClass == JAVARuntime.Quaternion.class) {
            Quaternion f02 = m.f0(value);
            if (f02 != null) {
                return f02.N0();
            }
            return null;
        }
        if (targetClass == Color.class) {
            ColorINT Q10 = m.Q(value);
            if (Q10 != null) {
                return Q10.e0();
            }
            return null;
        }
        if (targetClass == ColorGradient.class) {
            Gradient W10 = m.W(value);
            if (W10 != null) {
                return W10.s();
            }
            return null;
        }
        if (targetClass == JAVARuntime.Material.class) {
            Material b02 = m.b0(value);
            if (b02 != null) {
                return b02.k0();
            }
            return null;
        }
        if (targetClass == Texture.class) {
            p j02 = m.j0(value);
            if (j02 != null) {
                return j02.p0();
            }
            return null;
        }
        if (targetClass == ObjectFile.class) {
            return m.c0(value);
        }
        if (targetClass == WorldFile.class) {
            return m.r0(value);
        }
        if (targetClass == SoundFile.class) {
            return m.h0(value);
        }
        if (targetClass == Collision.class) {
            C13813a P10 = m.P(value);
            if (P10 != null) {
                return P10.h();
            }
            return null;
        }
        if (targetClass == Collision.Contact.class) {
            C13813a.C1794a S10 = m.S(value);
            if (S10 != null) {
                return S10.b();
            }
            return null;
        }
        if (targetClass == SpatialObject.class) {
            GameObject A10 = C13308d.A(value);
            if (A10 != null) {
                return A10.W1();
            }
            return null;
        }
        if (!Component.class.isAssignableFrom(targetClass)) {
            return targetClass == EnumC13053a.class ? m.N(value) : targetClass == e.class ? m.k0(value) : targetClass == InputDialog.Type.class ? m.Y(value) : targetClass == G.class ? m.d0(value) : value;
        }
        if ((value instanceof Component) && targetClass.isInstance(value)) {
            return value;
        }
        return null;
    }

    public static Object p(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof SpatialObject) {
            WeakReference weakReference = ((SpatialObject) value).instance;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }
        if (value instanceof JAVARuntime.Vector2) {
            Vector2 vector2 = ((JAVARuntime.Vector2) value).instance;
            return vector2 != null ? vector2.clone() : new Vector2();
        }
        if (value instanceof JAVARuntime.Vector3) {
            Vector3 vector3 = ((JAVARuntime.Vector3) value).instance;
            return vector3 != null ? vector3.m1249clone() : new Vector3();
        }
        if (value instanceof JAVARuntime.Vector4) {
            Vector4 vector4 = ((JAVARuntime.Vector4) value).instance;
            return vector4 != null ? vector4.clone() : new Vector4();
        }
        if (value instanceof JAVARuntime.Quaternion) {
            Quaternion quaternion = ((JAVARuntime.Quaternion) value).instance;
            return quaternion != null ? quaternion.clone() : new Quaternion();
        }
        if (value instanceof Color) {
            ColorINT colorINT = ((Color) value).instance;
            return colorINT != null ? colorINT.clone() : new ColorINT();
        }
        if (!(value instanceof ColorGradient)) {
            return value instanceof JAVARuntime.Material ? ((JAVARuntime.Material) value).material : value instanceof Texture ? ((Texture) value).instance : value instanceof Collision ? ((Collision) value).instance : value instanceof Collision.Contact ? ((Collision.Contact) value).instance : value;
        }
        Gradient gradient = ((ColorGradient) value).instance;
        return gradient != null ? gradient : m.W(null);
    }
}
