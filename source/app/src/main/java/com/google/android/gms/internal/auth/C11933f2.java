package com.google.android.gms.internal.auth;

import com.google.protobuf.C12667d1;
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

public final class C11933f2 {

    public static final char[] f61734a;

    static {
        char[] cArr = new char[80];
        f61734a = cArr;
        Arrays.fill(cArr, C15883c.f126249O);
    }

    public static String a(InterfaceC11925d2 interfaceC11925d2, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        d(interfaceC11925d2, sb2, 0);
        return sb2.toString();
    }

    public static void b(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb2, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb2, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb2.append('\n');
        c(i10, sb2);
        if (!str.isEmpty()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(Character.toLowerCase(str.charAt(0)));
            for (int i11 = 1; i11 < str.length(); i11++) {
                char charAt = str.charAt(i11);
                if (Character.isUpperCase(charAt)) {
                    sb3.append(ConstantDescs.DEFAULT_NAME);
                }
                sb3.append(Character.toLowerCase(charAt));
            }
            str = sb3.toString();
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            sb2.append(E2.a(new C11944i1(((String) obj).getBytes(H1.f61615b))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof AbstractC11956l1) {
            sb2.append(": \"");
            sb2.append(E2.a((AbstractC11956l1) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof B1) {
            sb2.append(" {");
            d((B1) obj, sb2, i10 + 2);
            sb2.append("\n");
            c(i10, sb2);
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj);
            return;
        }
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i12 = i10 + 2;
        b(sb2, i12, "key", entry.getKey());
        b(sb2, i12, "value", entry.getValue());
        sb2.append("\n");
        c(i10, sb2);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
    }

    public static void c(int i10, StringBuilder sb2) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb2.append(f61734a, 0, i11);
            i10 -= i11;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(InterfaceC11925d2 interfaceC11925d2, StringBuilder sb2, int i10) {
        int i11;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = interfaceC11925d2.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        int i12 = 0;
        while (true) {
            i11 = 3;
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
            String substring = ((String) entry.getKey()).substring(i11);
            if (substring.endsWith(C12667d1.f69075a) && !substring.endsWith(C12667d1.f69076b) && !substring.equals(C12667d1.f69075a) && (method2 = (Method) entry.getValue()) != null && method2.getReturnType().equals(List.class)) {
                b(sb2, i10, substring.substring(0, substring.length() - 4), B1.f(method2, interfaceC11925d2, new Object[0]));
            } else if (substring.endsWith(C12667d1.f69077c) && !substring.equals(C12667d1.f69077c) && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb2, i10, substring.substring(0, substring.length() - 3), B1.f(method, interfaceC11925d2, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith(C12667d1.f69078d) || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object f10 = B1.f(method4, interfaceC11925d2, new Object[0]);
                    if (method5 != null) {
                        if (!((Boolean) B1.f(method5, interfaceC11925d2, new Object[0])).booleanValue()) {
                        }
                        b(sb2, i10, substring, f10);
                    } else if (f10 instanceof Boolean) {
                        if (!((Boolean) f10).booleanValue()) {
                        }
                        b(sb2, i10, substring, f10);
                    } else if (f10 instanceof Integer) {
                        if (((Integer) f10).intValue() == 0) {
                        }
                        b(sb2, i10, substring, f10);
                    } else if (f10 instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) f10).floatValue()) == 0) {
                        }
                        b(sb2, i10, substring, f10);
                    } else if (f10 instanceof Double) {
                        if (Double.doubleToRawLongBits(((Double) f10).doubleValue()) == 0) {
                        }
                        b(sb2, i10, substring, f10);
                    } else {
                        if (f10 instanceof String) {
                            equals = f10.equals("");
                        } else if (f10 instanceof AbstractC11956l1) {
                            equals = f10.equals(AbstractC11956l1.f61792c);
                        } else if (f10 instanceof InterfaceC11925d2) {
                            if (f10 == ((InterfaceC11925d2) f10).R1()) {
                            }
                            b(sb2, i10, substring, f10);
                        } else {
                            if ((f10 instanceof Enum) && ((Enum) f10).ordinal() == 0) {
                            }
                            b(sb2, i10, substring, f10);
                        }
                        if (equals) {
                        }
                        b(sb2, i10, substring, f10);
                    }
                }
            }
            i11 = 3;
        }
        if (interfaceC11925d2 instanceof A1) {
            throw null;
        }
        H2 h22 = ((B1) interfaceC11925d2).zzc;
        if (h22 != null) {
            h22.g(sb2, i10);
        }
    }
}
