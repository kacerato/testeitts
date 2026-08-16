package z3;

import JAVARuntime.MethodArgs;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.k;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Parameter;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Locale;
import w2.C15883c;

public class d extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                String J10 = d.J(text);
                if (J10 == null) {
                    return "ERROR: invalid argument. Use javaruntime.[ClassName]. or [ClassName].";
                }
                Class K10 = d.K(J10);
                return K10 == null ? "ERROR: class not found" : d.G(K10);
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public d() {
        super("jr.constructors", "Lists public constructors of a JAVARuntime API class.", new a());
        b("className", "JAVARuntime class name, with or without the javaruntime. prefix.", true);
        B("className");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.PLANNING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static String G(Class<?> cls) {
        Constructor<?>[] constructors = cls.getConstructors();
        SteppedArrayList<Constructor> steppedArrayList = new SteppedArrayList();
        for (Constructor<?> constructor : constructors) {
            if (constructor != null && Modifier.isPublic(constructor.getModifiers()) && constructor.getAnnotation(H6.g.class) == null) {
                steppedArrayList.add(constructor);
            }
        }
        steppedArrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int I10;
                I10 = d.I((Constructor) obj, (Constructor) obj2);
                return I10;
            }
        });
        StringBuilder sb2 = new StringBuilder();
        for (Constructor constructor2 : steppedArrayList) {
            if (sb2.length() > 0) {
                sb2.append("\n");
            }
            sb2.append(".");
            sb2.append(cls.getSimpleName());
            sb2.append("(");
            sb2.append(String.join(", ", L(constructor2)));
            sb2.append(")");
        }
        return sb2.length() == 0 ? "ERROR: no public constructors found" : sb2.toString();
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

    public static int I(Constructor constructor, Constructor constructor2) {
        int compare = Integer.compare(constructor.getParameterCount(), constructor2.getParameterCount());
        return compare != 0 ? compare : Arrays.toString(constructor.getParameterTypes()).compareToIgnoreCase(Arrays.toString(constructor2.getParameterTypes()));
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

    public static String[] L(Constructor<?> constructor) {
        String name;
        int i10 = 0;
        if (constructor == null) {
            return new String[0];
        }
        Parameter[] parameters = constructor.getParameters();
        String[] strArr = new String[parameters.length];
        MethodArgs methodArgs = (MethodArgs) constructor.getAnnotation(MethodArgs.class);
        String[] value = methodArgs != null ? methodArgs.value() : null;
        while (i10 < parameters.length) {
            String str = (value == null || i10 >= value.length) ? null : value[i10];
            if (str == null || str.trim().isEmpty()) {
                Parameter parameter = parameters[i10];
                if (parameter != null && parameter.isNamePresent() && (name = parameter.getName()) != null && !name.trim().isEmpty() && !name.startsWith("arg")) {
                    str = H(name);
                }
            } else {
                str = H(str);
            }
            if (str == null || str.trim().isEmpty()) {
                str = "Arg " + (i10 + 1);
            }
            strArr[i10] = str;
            i10++;
        }
        return strArr;
    }
}
