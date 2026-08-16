package com.google.android.gms.internal.measurement;

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

public final class Y5 {

    public static final char[] f62182a;

    static {
        char[] cArr = new char[80];
        f62182a = cArr;
        Arrays.fill(cArr, C15883c.f126249O);
    }

    public static String a(W5 w52, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        c(w52, sb2, 0);
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
        d(i10, sb2);
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
            S4 s42 = S4.f62112c;
            sb2.append(C12172r6.a(new R4(((String) obj).getBytes(A5.f61885a))));
            sb2.append('\"');
            return;
        }
        if (obj instanceof S4) {
            sb2.append(": \"");
            sb2.append(C12172r6.a((S4) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof AbstractC12163q5) {
            sb2.append(" {");
            c((AbstractC12163q5) obj, sb2, i10 + 2);
            sb2.append("\n");
            d(i10, sb2);
            sb2.append(VectorFormat.DEFAULT_SUFFIX);
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb2.append(": ");
            sb2.append(obj);
            return;
        }
        int i12 = i10 + 2;
        sb2.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        b(sb2, i12, "key", entry.getKey());
        b(sb2, i12, "value", entry.getValue());
        sb2.append("\n");
        d(i10, sb2);
        sb2.append(VectorFormat.DEFAULT_SUFFIX);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(W5 w52, StringBuilder sb2, int i10) {
        int i11;
        boolean equals;
        Method method;
        Method method2;
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        TreeMap treeMap = new TreeMap();
        Method[] declaredMethods = w52.getClass().getDeclaredMethods();
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
                b(sb2, i10, substring.substring(0, substring.length() - 4), AbstractC12163q5.v(method2, w52, new Object[0]));
            } else if (substring.endsWith(C12667d1.f69077c) && !substring.equals(C12667d1.f69077c) && (method = (Method) entry.getValue()) != null && method.getReturnType().equals(Map.class) && !method.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method.getModifiers())) {
                b(sb2, i10, substring.substring(0, substring.length() - 3), AbstractC12163q5.v(method, w52, new Object[0]));
            } else if (hashSet.contains("set".concat(substring)) && (!substring.endsWith(C12667d1.f69078d) || !treeMap.containsKey("get".concat(String.valueOf(substring.substring(0, substring.length() - 5)))))) {
                Method method4 = (Method) entry.getValue();
                Method method5 = (Method) hashMap.get("has".concat(substring));
                if (method4 != null) {
                    Object v10 = AbstractC12163q5.v(method4, w52, new Object[0]);
                    if (method5 != null) {
                        if (!((Boolean) AbstractC12163q5.v(method5, w52, new Object[0])).booleanValue()) {
                        }
                        b(sb2, i10, substring, v10);
                    } else if (v10 instanceof Boolean) {
                        if (!((Boolean) v10).booleanValue()) {
                        }
                        b(sb2, i10, substring, v10);
                    } else if (v10 instanceof Integer) {
                        if (((Integer) v10).intValue() == 0) {
                        }
                        b(sb2, i10, substring, v10);
                    } else if (v10 instanceof Float) {
                        if (Float.floatToRawIntBits(((Float) v10).floatValue()) == 0) {
                        }
                        b(sb2, i10, substring, v10);
                    } else if (v10 instanceof Double) {
                        if (Double.doubleToRawLongBits(((Double) v10).doubleValue()) == 0) {
                        }
                        b(sb2, i10, substring, v10);
                    } else {
                        if (v10 instanceof String) {
                            equals = v10.equals("");
                        } else if (v10 instanceof S4) {
                            equals = v10.equals(S4.f62112c);
                        } else if (v10 instanceof W5) {
                            if (v10 == ((W5) v10).e()) {
                            }
                            b(sb2, i10, substring, v10);
                        } else {
                            if ((v10 instanceof Enum) && ((Enum) v10).ordinal() == 0) {
                            }
                            b(sb2, i10, substring, v10);
                        }
                        if (equals) {
                        }
                        b(sb2, i10, substring, v10);
                    }
                }
            }
            i11 = 3;
        }
        if (w52 instanceof AbstractC12136n5) {
            Iterator c10 = ((AbstractC12136n5) w52).zzb.c();
            if (c10.hasNext()) {
                throw null;
            }
        }
        C12190t6 c12190t6 = ((AbstractC12163q5) w52).zzc;
        if (c12190t6 != null) {
            c12190t6.j(sb2, i10);
        }
    }

    public static void d(int i10, StringBuilder sb2) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb2.append(f62182a, 0, i11);
            i10 -= i11;
        }
    }
}
