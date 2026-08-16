package L6;

import JAVARuntime.Component;
import java.util.List;

public final class b implements l {
    @Override
    public void a(List<M6.b> suggestions, j context) {
        List<String> list;
        if (suggestions == null || suggestions.isEmpty() || context == null || context.f11621f == null) {
            return;
        }
        for (M6.b bVar : suggestions) {
            if (bVar != null && bVar.f14572f && (list = bVar.f14580n) != null && list.size() == 1 && c(bVar.f14580n.get(0)) && d(bVar, context)) {
                String b10 = b(context.f11621f);
                if (!b10.isEmpty()) {
                    bVar.f14581o = b10;
                }
            }
        }
    }

    public final String b(Class<?> cls) {
        if (cls == null) {
            return "";
        }
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null || canonicalName.isEmpty()) {
            canonicalName = cls.getName().replace('$', '.');
        }
        if (canonicalName.startsWith("JAVARuntime.")) {
            canonicalName = canonicalName.substring(12);
        }
        return canonicalName + ".class";
    }

    public final boolean c(String typeName) {
        if (typeName == null) {
            return false;
        }
        String trim = typeName.trim();
        return "Class".equals(trim) || "java.lang.Class".equals(trim) || trim.startsWith("Class<") || trim.startsWith("java.lang.Class<");
    }

    public final boolean d(M6.b suggestion, j context) {
        String str;
        Class<?> e10;
        if (context == null || context.f11621f == null || suggestion == null || (str = suggestion.f14579m) == null || str.isEmpty() || (e10 = e(suggestion.f14579m)) == null || Component.class.isAssignableFrom(e10)) {
            return true;
        }
        return context.f11621f.isAssignableFrom(e10);
    }

    public final Class<?> e(String typeName) {
        try {
            return Class.forName(typeName);
        } catch (Throwable unused) {
            return d8.k.u(typeName);
        }
    }
}
