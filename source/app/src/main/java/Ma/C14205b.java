package ma;

import JAVARuntime.Component;
import com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Component.Reflection.ComponentMethodNode;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ga.C13308d;
import ga.H;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C14205b {

    public static final Set<String> f96913a = new HashSet(Arrays.asList("clone", "componentClassMatch", "deserialize", "genericInterface", "getEngineComponent", "hashCode", "inspectorController", "serialize", "setRuntime", "toString", "validate"));

    public static List<c> f96914b;

    public class a implements Comparator<Method> {
        @Override
        public int compare(Method a10, Method b10) {
            int compareToIgnoreCase = a10.getName().compareToIgnoreCase(b10.getName());
            return compareToIgnoreCase != 0 ? compareToIgnoreCase : a10.toGenericString().compareToIgnoreCase(b10.toGenericString());
        }
    }

    public class C1874b implements Comparator<c> {
        @Override
        public int compare(c a10, c b10) {
            int compareToIgnoreCase = a10.f96915a.compareToIgnoreCase(b10.f96915a);
            if (compareToIgnoreCase != 0) {
                return compareToIgnoreCase;
            }
            int compareToIgnoreCase2 = a10.f96916b.compareToIgnoreCase(b10.f96916b);
            return compareToIgnoreCase2 != 0 ? compareToIgnoreCase2 : a10.f96917c.compareToIgnoreCase(b10.f96917c);
        }
    }

    public static final class c {

        public final String f96915a;

        public final String f96916b;

        public final String f96917c;

        public final H f96918d;

        public final String f96919e;

        public final String f96920f;

        public final SteppedArrayList<String> f96921g;

        public c(String category, String componentName, String menuTitle, H componentType, String runtimeClassName, String methodName, SteppedArrayList<String> parameterTypeNames) {
            this.f96915a = category;
            this.f96916b = componentName;
            this.f96917c = menuTitle;
            this.f96918d = componentType;
            this.f96919e = runtimeClassName;
            this.f96920f = methodName;
            this.f96921g = parameterTypeNames;
        }

        public ComponentMethodNode a() {
            ComponentMethodNode componentMethodNode = new ComponentMethodNode();
            componentMethodNode.G0(this.f96918d, this.f96919e, this.f96920f, this.f96921g);
            return componentMethodNode;
        }
    }

    public static List<c> a() {
        Class<? extends Component> j10;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (H h10 : H.values()) {
            if (C13308d.o(h10) && (j10 = C13308d.j(h10)) != null) {
                String h11 = C14204a.h(j10);
                String simpleName = j10.getSimpleName();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Class<? extends Component> cls = j10; cls != null && Component.class.isAssignableFrom(cls) && cls != Component.class; cls = cls.getSuperclass()) {
                    Method[] declaredMethods = cls.getDeclaredMethods();
                    Arrays.sort(declaredMethods, new a());
                    for (Method method : declaredMethods) {
                        c b10 = b(h10, j10, h11, simpleName, method);
                        if (b10 != null) {
                            String d10 = d(b10);
                            if (!linkedHashMap.containsKey(d10)) {
                                linkedHashMap.put(d10, b10);
                            }
                        }
                    }
                }
                steppedArrayList.addAll(linkedHashMap.values());
            }
        }
        Collections.sort(steppedArrayList, new C1874b());
        return steppedArrayList;
    }

    public static c b(H componentType, Class<? extends Component> runtimeClass, String category, String componentName, Method method) {
        if (method == null || !Modifier.isPublic(method.getModifiers()) || Modifier.isStatic(method.getModifiers()) || method.isSynthetic() || method.isBridge() || C14204a.l(method) || f96913a.contains(method.getName())) {
            return null;
        }
        if (method.getReturnType() != Void.TYPE && C14204a.f(method.getReturnType()) == null) {
            return null;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        SteppedArrayList steppedArrayList = new SteppedArrayList(parameterTypes.length);
        for (int i10 = 0; i10 < parameterTypes.length; i10++) {
            if (C14204a.f(parameterTypes[i10]) == null) {
                return null;
            }
            steppedArrayList.add(parameterTypes[i10].getName());
        }
        return new c(category, componentName, C14204a.a(method), componentType, runtimeClass.getName(), method.getName(), steppedArrayList);
    }

    public static List<c> c() {
        List<c> list;
        synchronized (C14205b.class) {
            try {
                if (f96914b == null) {
                    f96914b = Collections.unmodifiableList(a());
                }
                list = f96914b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return list;
    }

    public static String d(c entry) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(entry.f96919e);
        sb2.append(JavaElement.JEM_IMPORTDECLARATION);
        sb2.append(entry.f96920f);
        sb2.append('(');
        for (int i10 = 0; i10 < entry.f96921g.size(); i10++) {
            if (i10 > 0) {
                sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            sb2.append(entry.f96921g.get(i10));
        }
        sb2.append(')');
        return sb2.toString();
    }
}
