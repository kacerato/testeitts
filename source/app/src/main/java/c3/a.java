package C3;

import H6.g;
import JAVARuntime.MethodArgs;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.m;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.n;
import com.itsmagic.engine.Activities.Editor.Extensions.AIAgent.q;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import d8.j;
import e8.C13044a;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import o8.InterfaceC14489c;
import okhttp3.v;
import w2.C15883c;
import z3.C16258a;

public class a {
    public static String a(String prompt, String apiClassContext) {
        if (prompt == null) {
            prompt = "";
        }
        StringBuilder sb2 = new StringBuilder(prompt);
        if (apiClassContext == null || apiClassContext.trim().isEmpty()) {
            return sb2.toString();
        }
        if (sb2.length() > 0 && sb2.charAt(sb2.length() - 1) != '\n') {
            sb2.append('\n');
        }
        sb2.append(apiClassContext);
        return sb2.toString();
    }

    public static List<String> b(Class<?> cls) {
        SteppedArrayList<Constructor> steppedArrayList = new SteppedArrayList();
        try {
            steppedArrayList.addAll(Arrays.asList(cls.getConstructors()));
        } catch (Error | Exception unused) {
        }
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (Constructor constructor : steppedArrayList) {
            if (constructor != null && Modifier.isPublic(constructor.getModifiers()) && constructor.getAnnotation(g.class) == null) {
                steppedArrayList2.add(cls.getSimpleName() + "(" + j(constructor.getParameterTypes(), k(constructor)) + ")");
            }
        }
        steppedArrayList2.sort(new C16258a());
        return steppedArrayList2;
    }

    public static List<String> c(e8.c officialClass) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        try {
            for (Field field : officialClass.a().getDeclaredFields()) {
                if (field != null && Modifier.isPublic(field.getModifiers()) && field.getAnnotation(g.class) == null && field.getAnnotation(InterfaceC14489c.class) == null) {
                    String str = (Modifier.isStatic(field.getModifiers()) ? "static " : "") + field.getName() + ": " + n(field.getType());
                    if (linkedHashSet.add(field.getName())) {
                        steppedArrayList.add(str);
                    }
                }
            }
        } catch (Error | Exception unused) {
        }
        for (int i10 = 0; i10 < officialClass.e().b(); i10++) {
            try {
                C13044a a10 = officialClass.e().a(i10);
                if (a10 != null && a10.d() != null && linkedHashSet.add(a10.c())) {
                    steppedArrayList.add((a10.f85395e ? "static " : "") + a10.c() + ": " + n(a10.d()));
                }
            } catch (Error | Exception unused2) {
            }
        }
        steppedArrayList.sort(new C16258a());
        return steppedArrayList;
    }

    public static String d(String prompt) {
        if (prompt == null || prompt.trim().isEmpty()) {
            return "";
        }
        List<e8.c> i10 = i(prompt);
        if (i10.isEmpty()) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Engine API context:");
        Iterator<e8.c> it = i10.iterator();
        while (it.hasNext()) {
            String f10 = f(it.next());
            if (!f10.isEmpty()) {
                sb2.append("\n\n");
                sb2.append(f10);
            }
        }
        return sb2.toString();
    }

    public static List<String> e(Class<?> cls) {
        SteppedArrayList<Method> steppedArrayList = new SteppedArrayList();
        try {
            steppedArrayList.addAll(Arrays.asList(cls.getDeclaredMethods()));
        } catch (Error | Exception unused) {
        }
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (Method method : steppedArrayList) {
            if (method != null && Modifier.isPublic(method.getModifiers()) && method.getAnnotation(g.class) == null && method.getAnnotation(InterfaceC14489c.class) == null) {
                StringBuilder sb2 = new StringBuilder();
                if (Modifier.isStatic(method.getModifiers())) {
                    sb2.append("static ");
                }
                sb2.append(method.getName());
                sb2.append("(");
                sb2.append(j(method.getParameterTypes(), l(method)));
                sb2.append(") -> ");
                sb2.append(n(method.getReturnType()));
                steppedArrayList2.add(sb2.toString());
            }
        }
        steppedArrayList2.sort(new C16258a());
        return steppedArrayList2;
    }

    public static String f(e8.c officialClass) {
        if (officialClass == null || officialClass.a() == null) {
            return "";
        }
        Class a10 = officialClass.a();
        String m10 = m(officialClass.b());
        String m11 = m(officialClass.c());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Class: ");
        sb2.append(m10);
        if (!m11.isEmpty()) {
            sb2.append("\nPackage: ");
            sb2.append(m11);
        }
        List<String> b10 = b(a10);
        if (!b10.isEmpty()) {
            sb2.append("\nConstructors:");
            for (String str : b10) {
                sb2.append("\n- ");
                sb2.append(str);
            }
        }
        List<String> c10 = c(officialClass);
        if (!c10.isEmpty()) {
            sb2.append("\nFields:");
            for (String str2 : c10) {
                sb2.append("\n- ");
                sb2.append(str2);
            }
        }
        List<String> e10 = e(a10);
        if (!e10.isEmpty()) {
            sb2.append("\nMethods:");
            for (String str3 : e10) {
                sb2.append("\n- ");
                sb2.append(str3);
            }
        }
        return sb2.toString();
    }

    public static boolean g(String prompt, String className) {
        if (prompt == null || className == null || className.trim().isEmpty()) {
            return false;
        }
        return Pattern.compile("(?i)(?<![\\p{L}\\p{N}_$])" + Pattern.quote(className.trim()) + "(?![\\p{L}\\p{N}_$])").matcher(prompt).find();
    }

    public static String h(String prompt, q toChat) {
        String d10 = d(prompt);
        if (!d10.isEmpty() && toChat != null) {
            toChat.a(new m(n.CONTEXT, d10, 1));
        }
        return prompt;
    }

    public static List<e8.c> i(String prompt) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i10 = 0; i10 < j.k0(); i10++) {
            try {
                e8.c j02 = j.j0(i10);
                if (j02 != null && j02.a() != null) {
                    String m10 = m(j02.b());
                    String m11 = m(j02.d());
                    if (!m10.isEmpty() && !m11.isEmpty()) {
                        Locale locale = Locale.ROOT;
                        String substring = m10.toLowerCase(locale).startsWith("javaruntime.") ? m10.substring(12) : m10;
                        if ((g(prompt, m10) || g(prompt, substring) || g(prompt, m11)) && linkedHashSet.add(m10.toLowerCase(locale))) {
                            steppedArrayList.add(j02);
                        }
                    }
                }
            } catch (Error | Exception unused) {
            }
        }
        return steppedArrayList;
    }

    public static String j(Class<?>[] parameterTypes, String[] parameterNames) {
        if (parameterTypes == null || parameterTypes.length == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        while (i10 < parameterTypes.length) {
            if (i10 > 0) {
                sb2.append(", ");
            }
            sb2.append(n(parameterTypes[i10]));
            String str = (parameterNames == null || i10 >= parameterNames.length) ? null : parameterNames[i10];
            if (str == null || str.trim().isEmpty()) {
                str = "arg" + (i10 + 1);
            }
            sb2.append(C15883c.f126249O);
            sb2.append(str.trim());
            i10++;
        }
        return sb2.toString();
    }

    public static String[] k(Constructor<?> constructor) {
        MethodArgs methodArgs = (MethodArgs) constructor.getAnnotation(MethodArgs.class);
        if (methodArgs != null) {
            return methodArgs.value();
        }
        return null;
    }

    public static String[] l(Method method) {
        MethodArgs methodArgs = (MethodArgs) method.getAnnotation(MethodArgs.class);
        if (methodArgs != null) {
            return methodArgs.value();
        }
        return null;
    }

    public static String m(String className) {
        return className == null ? "" : className.trim().replace('$', '.');
    }

    public static String n(Class<?> cls) {
        if (cls == null) {
            return "unknown";
        }
        if (cls.isArray()) {
            return n(cls.getComponentType()) + v.f99450n;
        }
        if (cls.isPrimitive()) {
            return cls.getName();
        }
        String m10 = m(cls.getName());
        return m10.startsWith("java.lang.") ? cls.getSimpleName() : m10;
    }
}
