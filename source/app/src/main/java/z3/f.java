package z3;

import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.u;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.v;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.k;
import e8.C13044a;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.LinkedHashMap;
import java.util.Locale;
import o8.InterfaceC14489c;

public class f extends v {

    public class a implements u {
        @Override
        public String a(String text) {
            try {
                String G10 = f.G(text);
                if (G10 == null) {
                    return "ERROR: invalid argument. Use javaruntime.[ClassName]. or [ClassName].";
                }
                Class H10 = f.H(G10);
                return H10 == null ? "ERROR: class not found" : f.F(H10);
            } catch (Exception e10) {
                return "ERROR: " + e10.getMessage();
            }
        }
    }

    public f() {
        super("jr.fields", "Lists public fields of a JAVARuntime API class.", new a());
        b("className", "JAVARuntime class name, with or without the javaruntime. prefix.", true);
        B("className");
        A(com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.JAVA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.LUA_CODING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.EXPLAIN, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.PLANNING, com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.g.NORMAL);
    }

    public static String F(Class<?> cls) {
        Field[] declaredFields = cls.getDeclaredFields();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Field field : declaredFields) {
            if (Modifier.isPublic(field.getModifiers()) && field.getAnnotation(H6.g.class) == null && field.getAnnotation(InterfaceC14489c.class) == null) {
                linkedHashMap.put(field.getName(), I(field.getType()));
            }
        }
        e8.d dVar = new e8.d();
        dVar.c(cls);
        for (int i10 = 0; i10 < dVar.b(); i10++) {
            C13044a a10 = dVar.a(i10);
            if (a10 != null && a10.d() != null && !linkedHashMap.containsKey(a10.c())) {
                linkedHashMap.put(a10.c(), I(a10.d()));
            }
        }
        StringBuilder sb2 = new StringBuilder();
        SteppedArrayList<String> steppedArrayList = new SteppedArrayList(linkedHashMap.o());
        steppedArrayList.sort(new C16258a());
        for (String str : steppedArrayList) {
            if (sb2.length() > 0) {
                sb2.append("\n");
            }
            sb2.append(str);
            sb2.append(": ");
            sb2.append((String) linkedHashMap.get(str));
        }
        return sb2.length() == 0 ? "ERROR: no public fields found" : sb2.toString();
    }

    public static String G(String text) {
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

    public static Class<?> H(String className) {
        if (className == null || className.trim().isEmpty()) {
            return null;
        }
        return k.u(className.trim());
    }

    public static String I(Class<?> cls) {
        if (cls == null) {
            return "unknown";
        }
        if (!cls.isArray()) {
            return cls.getSimpleName();
        }
        return I(cls.getComponentType()) + okhttp3.v.f99450n;
    }
}
