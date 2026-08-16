package z3;

import JAVARuntime.MethodArgs;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.k;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Comparator;
import java.util.Locale;
import o8.InterfaceC14489c;
import w2.C15883c;

public class h extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                String J10 = h.J(text);
                if (J10 == null) {
                    return "ERROR: invalid argument. Use javaruntime.[ClassName]. or [ClassName].";
                }
                Class K10 = h.K(J10);
                return K10 == null ? "ERROR: class not found" : h.G(K10);
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public h() {
        super("jr.methods", "Lists public methods of a JAVARuntime API class.", new a());
        b("className", "JAVARuntime class name, with or without the javaruntime. prefix.", true);
        B("className");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LEVEL_EDITION, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.PLANNING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static String G(Class<?> cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        SteppedArrayList<Method> steppedArrayList = new SteppedArrayList();
        for (Method method : declaredMethods) {
            if (Modifier.isPublic(method.getModifiers()) && method.getAnnotation(H6.g.class) == null && method.getAnnotation(InterfaceC14489c.class) == null) {
                steppedArrayList.add(method);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int I10;
                I10 = h.I((Method) obj, (Method) obj2);
                return I10;
            }
        });
        StringBuilder sb2 = new StringBuilder();
        for (Method method2 : steppedArrayList) {
            if (sb2.length() > 0) {
                sb2.append("\n");
            }
            sb2.append(".");
            sb2.append(method2.getName());
            sb2.append("(");
            sb2.append(String.join(", ", L(method2)));
            sb2.append(")");
        }
        return sb2.length() == 0 ? "ERROR: no public methods found" : sb2.toString();
    }

    public static String H(String text) {
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

    public static int I(Method method, Method method2) {
        int compareToIgnoreCase = method.getName().compareToIgnoreCase(method2.getName());
        return compareToIgnoreCase != 0 ? compareToIgnoreCase : Integer.compare(method.getParameterCount(), method2.getParameterCount());
    }

    public static String J(String text) {
        if (text == null) {
            return null;
        }
        String trim = text.trim();
        if (trim.toLowerCase(Locale.ROOT).startsWith("javaruntime.")) {
            String trim2 = trim.substring(12).trim();
            if (trim2.endsWith(".")) {
                trim2 = trim2.substring(0, trim2.length() - 1).trim();
            }
            if (trim2.isEmpty() || trim2.contains("(") || trim2.contains(")")) {
                return null;
            }
            return trim2;
        }
        if (trim.contains("(") || trim.contains(")")) {
            return null;
        }
        if (trim.endsWith(".")) {
            trim = trim.substring(0, trim.length() - 1).trim();
        }
        if (trim.isEmpty()) {
            return null;
        }
        return trim;
    }

    public static Class<?> K(String className) {
        if (className == null || className.trim().isEmpty()) {
            return null;
        }
        return k.u(className.trim());
    }

    public static String[] L(Method method) {
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
                str = H(str2);
            }
            strArr[i10] = str;
            i10++;
        }
        return strArr;
    }
}
