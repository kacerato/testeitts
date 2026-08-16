package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC5513Ll0;
import com.android.tools.r8.internal.C5105Ek0;
import com.android.tools.r8.internal.C5163Fk0;
import com.android.tools.r8.internal.C5480Ky;
import com.android.tools.r8.internal.M40;
import com.android.tools.r8.internal.WE;
import com.android.tools.r8.naming.V;
import com.android.tools.r8.references.ArrayReference;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

public final class C10996s {

    public static final boolean f56050g = true;

    public HashMap f56051a = new HashMap();

    public final ArrayList f56052b = new ArrayList();

    public HashMap f56053c = new HashMap();

    public final HashMap f56054d = new HashMap();

    public final HashMap f56055e = new HashMap();

    public final ArrayList f56056f = new ArrayList();

    public static void b(r rVar, V.c cVar) {
        cVar.getClass();
        if (cVar instanceof V.a) {
            rVar.f56036c.remove(cVar.a());
        } else {
            rVar.f56038e.remove(cVar.b());
            rVar.f56037d.remove(cVar.b());
        }
    }

    public final void a(C10996s c10996s, C10912b c10912b) {
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : c10996s.f56051a.entrySet()) {
            String str = (String) entry.getKey();
            r rVar = (r) entry.getValue();
            hashSet.add(rVar.f56034a);
            r rVar2 = (r) this.f56051a.get(rVar.f56034a);
            if (rVar2 != null) {
                a(c10996s, rVar2);
                rVar = rVar2.a(rVar);
            }
            hashMap.put(str, rVar);
        }
        for (Map.Entry entry2 : this.f56051a.entrySet()) {
            if (!hashSet.contains(entry2.getKey())) {
                r rVar3 = (r) entry2.getValue();
                a(c10996s, rVar3);
                if (((r) hashMap.put((String) entry2.getKey(), rVar3)) != null) {
                    throw new MappingComposeException("Duplicate class mapping. Both '" + rVar3.f56034a + "' and '" + c10912b.b((String) entry2.getKey()).f55951a + "' maps to '" + rVar3.f56035b + "'.");
                }
            }
        }
        this.f56051a = hashMap;
    }

    public final void c(C10996s c10996s, C10912b c10912b) {
        final Map<String, String> map = c10912b.d().f48186b;
        ArrayList arrayList = this.f56052b;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            ((C5163Fk0) obj).f40299a.forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    C10996s.this.a(map, (C5105Ek0) obj2);
                }
            });
        }
        this.f56052b.addAll(c10996s.f56052b);
    }

    public final void b(final C10996s c10996s, C10912b c10912b) {
        final HashMap hashMap = new HashMap();
        final Map<String, String> map = c10912b.d().f48186b;
        this.f56053c.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C10996s.this.a(c10996s, map, hashMap, (C10962l) obj, (M40) obj2);
            }
        });
        hashMap.putAll(c10996s.f56053c);
        this.f56053c = hashMap;
    }

    public static TypeReference b(Map map, TypeReference typeReference) {
        if (typeReference == null || typeReference.isPrimitive()) {
            return typeReference;
        }
        if (typeReference.isArray()) {
            ArrayReference asArray = typeReference.asArray();
            return Reference.array(b(map, asArray.getBaseType()), asArray.getDimensions());
        }
        if (!f56050g && !typeReference.isClass()) {
            throw new AssertionError();
        }
        String str = (String) map.get(typeReference.getTypeName());
        return str == null ? typeReference : Reference.classFromTypeName(str);
    }

    public static void a(C10996s c10996s, final r rVar) {
        Set set = (Set) c10996s.f56055e.get(rVar.f56034a);
        if (set == null) {
            return;
        }
        set.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10996s.b(r.this, (V.c) obj);
            }
        });
    }

    public final void a(r rVar, V.c cVar) {
        ((Set) this.f56055e.computeIfAbsent(rVar.f56034a, C5480Ky.a(new Supplier() {
            @Override
            public final Object get() {
                return AbstractC5513Ll0.b();
            }
        }))).add(cVar);
    }

    public final void a(Map map, C5105Ek0 c5105Ek0) {
        c5105Ek0.getClass();
        c5105Ek0.f40006a = b(map, c5105Ek0.f40006a).asClass();
    }

    public final void a(C10996s c10996s, Map map, Map map2, C10962l c10962l, M40 m40) {
        C11006u c11006u = (C11006u) c10996s.f56054d.get(c10962l);
        String methodName = m40.f42157b.getMethodName();
        if (c11006u != null) {
            final C11001t a10 = C11001t.a(c11006u.f56073a);
            final WE we2 = new WE(16);
            m40.f42156a.forEach(new BiConsumer() {
                @Override
                public final void accept(Object obj, Object obj2) {
                    C11001t.this.a(((Integer) obj).intValue(), new Consumer() {
                        @Override
                        public final void accept(Object obj3) {
                            C10996s.a(WE.this, r2, (Integer) obj3);
                        }
                    });
                }
            });
            m40.f42156a = we2;
            methodName = c11006u.f56074b;
        }
        MethodReference methodReference = m40.f42157b;
        ClassReference asClass = b(map, methodReference.getHolderClass()).asClass();
        m40.f42157b = Reference.method(asClass, methodName, a(methodReference.getFormalTypes(), map), b(map, methodReference.getReturnType()));
        map2.put(new C10962l(asClass.getTypeName(), c10962l.f55989b), m40);
    }

    public static void a(WE we2, Integer num, Integer num2) {
        we2.getClass();
        int intValue = num2.intValue();
        we2.a(intValue);
        we2.b(intValue, num.intValue());
    }

    public final C11006u a(String str, String str2, final String str3) {
        return (C11006u) this.f56054d.computeIfAbsent(new C10962l(str, str2), new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10996s.a(String.this, (C10962l) obj);
            }
        });
    }

    public static C11006u a(String str, C10962l c10962l) {
        return new C11006u(str);
    }

    public final TypeReference a(Map map, TypeReference typeReference) {
        return b(map, typeReference);
    }

    public final List a(List list, final Map map) {
        return AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10996s.this.a(map, (TypeReference) obj);
            }
        });
    }
}
