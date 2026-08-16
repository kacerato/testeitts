package com.google.protobuf;

import com.google.protobuf.AbstractC12719v0;
import java.lang.constant.ConstantDescs;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.math3.geometry.VectorFormat;
import w2.C15883c;

public final class C12667d1 {

    public static final String f69075a = "List";

    public static final String f69076b = "OrBuilderList";

    public static final String f69077c = "Map";

    public static final String f69078d = "Bytes";

    public static final char[] f69079e;

    static {
        char[] cArr = new char[80];
        f69079e = cArr;
        Arrays.fill(cArr, C15883c.f126249O);
    }

    public static void a(int indent, StringBuilder buffer) {
        while (indent > 0) {
            char[] cArr = f69079e;
            int length = indent > cArr.length ? cArr.length : indent;
            buffer.append(cArr, 0, length);
            indent -= length;
        }
    }

    public static boolean b(Object o10) {
        return o10 instanceof Boolean ? !((Boolean) o10).booleanValue() : o10 instanceof Integer ? ((Integer) o10).intValue() == 0 : o10 instanceof Float ? Float.floatToRawIntBits(((Float) o10).floatValue()) == 0 : o10 instanceof Double ? Double.doubleToRawLongBits(((Double) o10).doubleValue()) == 0 : o10 instanceof String ? o10.equals("") : o10 instanceof AbstractC12724x ? o10.equals(AbstractC12724x.f69696g) : o10 instanceof InterfaceC12659b1 ? o10 == ((InterfaceC12659b1) o10).getDefaultInstanceForType() : (o10 instanceof Enum) && ((Enum) o10).ordinal() == 0;
    }

    public static String c(String pascalCase) {
        if (pascalCase.isEmpty()) {
            return pascalCase;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Character.toLowerCase(pascalCase.charAt(0)));
        for (int i10 = 1; i10 < pascalCase.length(); i10++) {
            char charAt = pascalCase.charAt(i10);
            if (Character.isUpperCase(charAt)) {
                sb2.append(ConstantDescs.DEFAULT_NAME);
            }
            sb2.append(Character.toLowerCase(charAt));
        }
        return sb2.toString();
    }

    public static void d(StringBuilder buffer, int indent, String name, Object object) {
        if (object instanceof List) {
            Iterator it = ((List) object).iterator();
            while (it.hasNext()) {
                d(buffer, indent, name, it.next());
            }
            return;
        }
        if (object instanceof Map) {
            Iterator it2 = ((Map) object).entrySet().iterator();
            while (it2.hasNext()) {
                d(buffer, indent, name, (Map.Entry) it2.next());
            }
            return;
        }
        buffer.append('\n');
        a(indent, buffer);
        buffer.append(c(name));
        if (object instanceof String) {
            buffer.append(": \"");
            buffer.append(C12664c2.e((String) object));
            buffer.append('\"');
            return;
        }
        if (object instanceof AbstractC12724x) {
            buffer.append(": \"");
            buffer.append(C12664c2.a((AbstractC12724x) object));
            buffer.append('\"');
            return;
        }
        if (object instanceof AbstractC12719v0) {
            buffer.append(" {");
            e((AbstractC12719v0) object, buffer, indent + 2);
            buffer.append("\n");
            a(indent, buffer);
            buffer.append(VectorFormat.DEFAULT_SUFFIX);
            return;
        }
        if (!(object instanceof Map.Entry)) {
            buffer.append(": ");
            buffer.append(object);
            return;
        }
        buffer.append(" {");
        Map.Entry entry = (Map.Entry) object;
        int i10 = indent + 2;
        d(buffer, i10, "key", entry.getKey());
        d(buffer, i10, "value", entry.getValue());
        buffer.append("\n");
        a(indent, buffer);
        buffer.append(VectorFormat.DEFAULT_SUFFIX);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x016f, code lost:
    
        if (r5.containsKey("get" + r9.substring(0, r9.length() - 5)) != false) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(InterfaceC12659b1 messageLite, StringBuilder buffer, int indent) {
        int i10;
        int i11;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = messageLite.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i12 = 0;
        while (true) {
            i10 = 3;
            if (i12 >= length) {
                break;
            }
            Method method3 = declaredMethods[i12];
            if (!Modifier.isStatic(method3.getModifiers()) && method3.getName().length() >= 3) {
                if (method3.getName().startsWith("set")) {
                    hashSet.add(method3.getName());
                } else if (Modifier.isPublic(method3.getModifiers()) && method3.getParameterTypes().length == 0) {
                    if (method3.getName().startsWith("has")) {
                        hashMap.put(method3.getName(), method3);
                    } else if (method3.getName().startsWith("get")) {
                        treeMap.put(method3.getName(), method3);
                    }
                }
            }
            i12++;
        }
        Iterator it = treeMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String substring = ((String) entry.getKey()).substring(i10);
            if (!substring.endsWith(f69075a) || substring.endsWith(f69076b) || substring.equals(f69075a) || (method2 = (Method) entry.getValue()) == null || !method2.getReturnType().equals(List.class)) {
                if (!substring.endsWith(f69077c) || substring.equals(f69077c) || (method = (Method) entry.getValue()) == null || !method.getReturnType().equals(Map.class) || method.isAnnotationPresent(Deprecated.class) || !Modifier.isPublic(method.getModifiers())) {
                    i11 = 3;
                    if (hashSet.contains("set" + substring)) {
                        if (substring.endsWith(f69078d)) {
                        }
                        Method method4 = (Method) entry.getValue();
                        Method method5 = (Method) hashMap.get("has" + substring);
                        if (method4 != null) {
                            Object D62 = AbstractC12719v0.D6(method4, messageLite, new Object[0]);
                            if (method5 == null ? !b(D62) : ((Boolean) AbstractC12719v0.D6(method5, messageLite, new Object[0])).booleanValue()) {
                                d(buffer, indent, substring, D62);
                            }
                        }
                    }
                } else {
                    i11 = 3;
                    d(buffer, indent, substring.substring(0, substring.length() - 3), AbstractC12719v0.D6(method, messageLite, new Object[0]));
                }
                i10 = i11;
            } else {
                d(buffer, indent, substring.substring(0, substring.length() - 4), AbstractC12719v0.D6(method2, messageLite, new Object[0]));
                i10 = 3;
            }
        }
        if (messageLite instanceof AbstractC12719v0.e) {
            Iterator<Map.Entry<AbstractC12719v0.g, Object>> I10 = ((AbstractC12719v0.e) messageLite).f69600i.I();
            while (I10.hasNext()) {
                Map.Entry<AbstractC12719v0.g, Object> next = I10.next();
                d(buffer, indent, "[" + next.getKey().getNumber() + "]", next.getValue());
            }
        }
        s2 s2Var = ((AbstractC12719v0) messageLite).f69595c;
        if (s2Var != null) {
            s2Var.q(buffer, indent);
        }
    }

    public static String f(InterfaceC12659b1 messageLite, String commentString) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(commentString);
        e(messageLite, sb2, 0);
        return sb2.toString();
    }
}
